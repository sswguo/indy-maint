package org.commonjava.indy.tools.cache;

import java.util.Set;

public class ScheduleValueDTO
{

    private Set<ScheduleValue> items;

    public ScheduleValueDTO() {}

    public ScheduleValueDTO(Set<ScheduleValue> items)
    {
        this.items = items;
    }

    public Set<ScheduleValue> getItems()
    {
        return items;
    }

    public void setItems( Set<ScheduleValue> items )
    {
        this.items = items;
    }

}
