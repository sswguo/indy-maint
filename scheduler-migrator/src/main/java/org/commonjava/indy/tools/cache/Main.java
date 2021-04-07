/**
 * Copyright (C) 2011-2020 Red Hat, Inc. (https://github.com/Commonjava/indy)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.commonjava.indy.tools.cache;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.commonjava.indy.action.IndyLifecycleException;
import org.commonjava.propulsor.config.ConfigurationException;
import org.infinispan.Cache;
import org.infinispan.manager.DefaultCacheManager;
import org.infinispan.manager.EmbeddedCacheManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.naming.spi.InitialContextFactory;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;

public class Main
{
    private final Logger logger = LoggerFactory.getLogger( getClass() );

    private ObjectMapper objectMapper;

    private EmbeddedCacheManager cacheManager;

    public static void main( String[] args )
    {
        MigrationOptions options = new MigrationOptions();
        try
        {
            if ( options.parseArgs( args ) )
            {
                try
                {
                    doInitialContext();
                    int result = new Main().run( options );
                    if ( result != 0 )
                    {
                        System.exit( result );
                    }
                }
                catch ( final Exception e )
                {
                    e.printStackTrace();
                    System.err.printf( "ERROR INITIALIZING BOOTER: %s", e.getMessage() );
                }
            }
        }
        catch ( final Exception e )
        {
            System.err.printf( "ERROR: %s", e.getMessage() );
        }
    }

    private static void doInitialContext() throws NamingException
    {

        try
        {
            new ConnectionPoolProvider().init();
        }
        catch ( IndyLifecycleException e )
        {
            e.printStackTrace();
        }
        catch ( ConfigurationException e )
        {
            e.printStackTrace();
        }

    }

    private int run( final MigrationOptions options ) throws Exception
    {
        try
        {
            File inXml = options.getInfinispanXml();
            if ( inXml == null )
            {
               logger.error( "Please specify the infinispan configuration file." );
            }

            cacheManager = new DefaultCacheManager( new FileInputStream( options.getInfinispanXml()) );
            cacheManager.start();

            Cache<ScheduleKey, ScheduleValue> cache = cacheManager.getCache( options.getCacheName());

            if ( MigrationCommand.dump == options.getMigrationCommand() )
            {
                dumpScheduler( cache,  options );
            }

        }
        catch ( final Throwable e )
        {
            logger.error( "Migration error.", e );
            throw new Exception("Migration error.", e);
        }
        finally
        {
            cacheManager.stop();
        }

        return 0;
    }

    private void dumpScheduler( Cache<ScheduleKey, ScheduleValue> cache,  MigrationOptions options ) throws Exception
    {

        Set<ScheduleValue> scheduleValueSet = new HashSet<>();
        cache.getAdvancedCache().cacheEntrySet().forEach( cacheEntry -> {
            ScheduleValue sv = (ScheduleValue) cacheEntry.getValue();
            sv.getDataPayload().put( "lifespan", cacheEntry.getMetadata().lifespan() );
            scheduleValueSet.add( sv );
        } );

        if ( !scheduleValueSet.isEmpty() )
        {
            try
            {
                FileUtils.writeStringToFile( options.getDataFile(), objectMapper.writeValueAsString( new ScheduleValueDTO( scheduleValueSet ) ) );
            }
            catch ( Exception e )
            {
                logger.error( "Write file error, {}", e.getMessage(), e );
                throw new Exception("Dump scheduler error.", e);
            }
        }
        else
        {
            logger.info( "No existing schedulers." );
        }

    }

}
