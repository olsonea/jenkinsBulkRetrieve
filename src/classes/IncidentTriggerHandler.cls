public class IncidentTriggerHandler
{
    public static void beforeInsert(List<BMCServiceDesk__Incident__c> newIncidentList)
    {
        System.debug('Entering IncidentTriggerHandler.beforeInsert().');
        List<BMCServiceDesk__Incident__c> incidentsWithNewOwner = evaluateChangeInOwner(newIncidentList);
        
        if(incidentsWithNewOwner.size() > 0)
        {
            assignQueueManager(incidentsWithNewOwner);
        }
    }
    
    public static void beforeUpdate(List<BMCServiceDesk__Incident__c> newIncidentList, Map<Id,BMCServiceDesk__Incident__c> oldIncidentMap)
    {
        System.debug('Entering IncidentTriggerHandler.beforeUpdate().');
        List<BMCServiceDesk__Incident__c> incidentsWithNewOwner = evaluateChangeInOwner(newIncidentList, oldIncidentMap);
        
        if(incidentsWithNewOwner.size() > 0)
        {
            assignQueueManager(incidentsWithNewOwner);
        }
    }
    
    /* This evaluateChangeInOwner method is polymorphic. This version is used for Insert operations.*/
    public static List<BMCServiceDesk__Incident__c> evaluateChangeInOwner(List<BMCServiceDesk__Incident__c> newIncidentList)
    {
        System.debug('Entering IncidentTriggerHandler.evaluateChangeInOwner().');
        List<BMCServiceDesk__Incident__c> incidentsWithNewOwner = new List<BMCServiceDesk__Incident__c>();
        
        for (BMCServiceDesk__Incident__c incident :newIncidentList)
        {
            if (incident.OwnerId != null) 
            {
			    incidentsWithNewOwner.add(incident);
		    }
        }
        
        return incidentsWithNewOwner;
    }
    
    /* This evaluateChangeInOwner method is polymorphic. This version is used for Update operations.*/
    public static List<BMCServiceDesk__Incident__c> evaluateChangeInOwner(List<BMCServiceDesk__Incident__c> newIncidentList, Map<Id,BMCServiceDesk__Incident__c> oldIncidentMap)
    {
        System.debug('Entering IncidentTriggerHandler.evaluateChangeInOwner().');
        List<BMCServiceDesk__Incident__c> incidentsWithNewOwner = new List<BMCServiceDesk__Incident__c>();
	
    	for (BMCServiceDesk__Incident__c incident :newIncidentList) 
    	{
    		BMCServiceDesk__Incident__c oldIncident = oldIncidentMap.get(incident.Id);
			Id ownerId = incident.OwnerId;
			Id oldOwnerId = oldIncident.OwnerId;
    			
			if (oldIncident != null &&  ownerId != oldOwnerId ) 
			{
					incidentsWithNewOwner.add(incident);
			}
    	}
    	
    	return incidentsWithNewOwner;
    }
    
    public static void assignQueueManager(List<BMCServiceDesk__Incident__c> incidentsWithNewOwner)
    {
        System.debug('Entering IncidentTriggerHandler.assignQueueManager().');
        Queue_Manager_Assign qma = new Queue_Manager_Assign(incidentsWithNewOwner);
    }
}