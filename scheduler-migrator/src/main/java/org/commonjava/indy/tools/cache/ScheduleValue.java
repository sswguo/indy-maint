package org.commonjava.indy.tools.cache;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;

public class ScheduleValue
                implements Externalizable
{
    private ScheduleKey key;

    private Map<String, Object> dataPayload;

    public ScheduleValue()
    {
    }

    public ScheduleValue( ScheduleKey key, Map<String, Object> dataPayload )
    {
        this.key = key;
        this.dataPayload = dataPayload;
    }

    public ScheduleKey getKey()
    {
        return key;
    }

    public void setKey( ScheduleKey key )
    {
        this.key = key;
    }

    public Map<String, Object> getDataPayload()
    {
        return dataPayload;
    }

    public void setDataPayload( Map<String, Object> dataPayload )
    {
        this.dataPayload = dataPayload;
    }

    @Override
    public void writeExternal( ObjectOutput out )
                    throws IOException
    {
        out.writeObject( key );
        out.writeObject( dataPayload );
    }

    @Override
    public void readExternal( ObjectInput in )
                    throws IOException, ClassNotFoundException
    {
        this.key = (ScheduleKey)in.readObject();
        this.dataPayload = (Map)in.readObject();
    }
}
