package org.commonjava.indy.tools.cache;

import org.commonjava.indy.subsys.cpool.ConnectionPoolInfo;
import org.commonjava.propulsor.config.ConfigurationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Stream;

public class ConnectionPoolConfig
{
    public static final String SECTION = "connection-pools";
    public static final String URL_SUBKEY = "url";
    private static final String USER_SUBKEY = "user";
    private static final String PASSWORD_SUBKEY = "password";
    private static final String DS_CLASS_SUBKEY = "datasource.class";
    private static final String DS_PROPERTY_PREFIX = "datasource.";
    private static final String METRICS_SUBKEY = "metrics";
    private static final String HEALTH_CHECKS_SUBKEY = "healthChecks";
    private static final String DRIVER_CLASS_SUBKEY = "driver.class";
    private final Logger logger = LoggerFactory.getLogger( this.getClass());
    private final Map<String, ConnectionPoolInfo> pools = new HashMap();

    private Map<String, String> parameters = new HashMap<>();

    public ConnectionPoolConfig() {
    }

    public Map<String, ConnectionPoolInfo> getPools() {
        return this.pools;
    }

    public void parameter(String name, String value) throws ConfigurationException {
        parameters.put(name, value);
        this.logger.info("{}: Parsing connection pool {} from: '{}'", new Object[]{this, name, value});
        Map<String, String> valueMap = this.toMap(value);
        ConnectionPoolInfo cp = new ConnectionPoolInfo(name, this.toProperties(valueMap), false, false);
        this.logger.info("{}: Adding: {}", this, cp);
        this.pools.put(name, cp);
    }

    private Properties toProperties( Map<String, String> valueMap) {
        Properties props = new Properties();
        valueMap.forEach((k, v) -> {
            props.setProperty(k, v);
        });
        return props;
    }

    private Map<String, String> toMap(String value) {
        Map<String, String> result = new HashMap();
        Stream.of( value.split( "\\s*,\\s*")).forEach( ( s) -> {
            String[] parts = s.split("\\s*=\\s*");
            if (parts.length < 1) {
                result.put(parts[0], Boolean.toString(Boolean.TRUE));
            } else {
                result.put(parts[0], parts[1]);
            }

        });
        return result;
    }
}
