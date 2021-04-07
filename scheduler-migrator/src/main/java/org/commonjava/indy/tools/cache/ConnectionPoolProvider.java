package org.commonjava.indy.tools.cache;

import io.agroal.api.AgroalDataSource;
import io.agroal.api.AgroalDataSourceListener;
import io.agroal.api.configuration.AgroalDataSourceConfiguration;
import io.agroal.api.configuration.supplier.AgroalPropertiesReader;
import org.commonjava.indy.action.IndyLifecycleException;
import org.commonjava.indy.subsys.cpool.CPInitialContextFactory;
import org.commonjava.indy.subsys.cpool.ConnectionPoolInfo;
import org.commonjava.propulsor.config.ConfigurationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;
import java.util.Properties;

import static javax.naming.Context.INITIAL_CONTEXT_FACTORY;

public class ConnectionPoolProvider
{

    private final Logger logger = LoggerFactory.getLogger( getClass() );

    private ConnectionPoolConfig config;

    public void init() throws IndyLifecycleException, ConfigurationException
    {
        logger.info( "Starting connection pool binding..." );

        Properties properties = System.getProperties();
        properties.setProperty( INITIAL_CONTEXT_FACTORY, CPInitialContextFactory.class.getName() );
        System.setProperties( properties );

        InitialContext ctx;
        try
        {
            ctx = new InitialContext();
        }
        catch ( NamingException e )
        {
            throw new IndyLifecycleException( "Failed to create JNDI InitialContext for binding datasources", e );
        }

        logger.info( "Config setting ..." );

        config = new ConnectionPoolConfig();
        config.parameter( "infinispan","datasource.providerClassName=org.postgresql.ds.PGSimpleDataSource,"
                        + "datasource.jdbcUrl=<jdbcUrl>,"
                        + "datasource.principal=<User>,"
                        + "datasource.credential=<Password>,"
                        + "datasource.minSize=10,"
                        + "datasource.initialSize=10,"
                        + "datasource.maxSize=100,"
                        + "datasource.reapTimeout_m=10,"
                        + "datasource.maxLifetime_m=28,"
                        + "datasource.leakTimeout_s=5,"
                        + "metrics=false,"
                        + "healthChecks=false" );
        logger.info( config.toString() );
        Map<String, ConnectionPoolInfo> poolConfigs = config.getPools();
        logger.info( "Creating bindings for {} pools from config: {}", poolConfigs.size(), config );
        for ( ConnectionPoolInfo poolInfo : poolConfigs.values() )
        {
            try
            {
                AgroalPropertiesReader propertiesReader = new AgroalPropertiesReader( "datasource." );
                AgroalDataSourceConfiguration config = propertiesReader.readProperties( poolInfo.getProperties() ).get();
                AgroalDataSource ds = AgroalDataSource.from( config, new AgroalDataSourceLogger( poolInfo.getName() ) );

                String jndiName = "java:/comp/env/jdbc/" + poolInfo.getName();
                logger.info( "Binding datasource: {}", jndiName );
                ctx.rebind( jndiName, ds );
            }
            catch ( NamingException e )
            {
                throw new IndyLifecycleException( "Failed to bind datasource: " + poolInfo.getName(), e );
            }
            catch ( SQLException e )
            {
                throw new IndyLifecycleException( "Failed to start datasource: " + poolInfo.getName(), e );
            }
        }
    }

    private static class AgroalDataSourceLogger implements AgroalDataSourceListener
    {
        private final Logger logger;

        public AgroalDataSourceLogger(String name)
        {
            logger = LoggerFactory.getLogger( AgroalDataSource.class.getName() + ".'" + name + "'" );
        }

        @Override public void onConnectionPooled(Connection connection)
        {
            logger.debug( "Added connection {} to the pool", connection );
        }

        @Override public void onConnectionAcquire(Connection connection)
        {
            logger.debug( "Connection {} acquired", connection );
        }

        @Override public void onConnectionReturn(Connection connection)
        {
            logger.debug( "Connection {} return", connection );
        }

        @Override public void onConnectionLeak(Connection connection, Thread thread)
        {
            logger.info( "Connection {} leak. Acquired by {}", connection, thread );
        }

        @Override public void beforeConnectionValidation(Connection connection)
        {
            logger.debug( "Connection {} about to be validated", connection );
        }

        @Override public void beforeConnectionFlush(Connection connection)
        {
            logger.debug( "Connection {} removed from the pool", connection );
        }

        @Override public void beforeConnectionReap(Connection connection)
        {
            logger.debug( "Connection {} idle", connection );
        }

        @Override public void onWarning(String message)
        {
            logger.warn( message );
        }

        @Override public void onWarning(Throwable throwable)
        {
            logger.warn( "Exception", throwable );
        }

        @Override public void onInfo(String message)
        {
            logger.info( message );
        }
    }

}
