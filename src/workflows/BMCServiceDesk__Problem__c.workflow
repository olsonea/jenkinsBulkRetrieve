<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>BMCServiceDesk__Notify_problem_owner_when_each_linked_task_is_closed</fullName>
        <description>Notify problem owner when each linked task is closed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BMCServiceDesk__SDE_Emails/BMCServiceDesk__Linked_task_for_a_problem_is_closed</template>
    </alerts>
    <alerts>
        <fullName>BMCServiceDesk__Notify_problem_owner_when_final_task_linked_to_problem_is_closed</fullName>
        <description>Notify problem owner when final task linked to problem is closed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BMCServiceDesk__SDE_Emails/BMCServiceDesk__All_tasks_closed_for_problem</template>
    </alerts>
    <fieldUpdates>
        <fullName>BMCServiceDesk__Update_the_ShowDueDateDialog_Field</fullName>
        <field>BMCServiceDesk__ShowDueDateDialog__c</field>
        <literalValue>1</literalValue>
        <name>Update the ShowDueDateDialog Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>BMCServiceDesk__Notify problem owner when each linked task is closed</fullName>
        <actions>
            <name>BMCServiceDesk__Notify_problem_owner_when_each_linked_task_is_closed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Notify problem owner when each linked task is closed</description>
        <formula>AND( ISCHANGED( BMCServiceDesk__Task_Closed_Controller__c), NOT(ISBLANK( BMCServiceDesk__Task_Closed_Controller__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>BMCServiceDesk__Notify problem owner when final task linked to problem is closed</fullName>
        <actions>
            <name>BMCServiceDesk__Notify_problem_owner_when_final_task_linked_to_problem_is_closed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Notify problem owner when final task linked to problem is closed</description>
        <formula>AND( BMCServiceDesk__State__c, NOT( BMCServiceDesk__Inactive__c ) , IF(BMCServiceDesk__AllTaskCloseController__c,  ISCHANGED(BMCServiceDesk__AllTaskCloseController__c) , false) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>BMCServiceDesk__Open popup dialog for recalculating due date when priority of problem changes</fullName>
        <actions>
            <name>BMCServiceDesk__Update_the_ShowDueDateDialog_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This rule has been deprecated. If the rule is active, deactivate it.</description>
        <formula>ISCHANGED( BMCServiceDesk__FKPriority__c ) &amp;&amp; IF( BMCServiceDesk__ShowDueDateDialog__c  = false, true, false)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
