<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Active_Mandate_to_False</fullName>
        <field>cpm__Active__c</field>
        <literalValue>0</literalValue>
        <name>Set Active Mandate to False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Deactivate Mandate when marked for cancelation</fullName>
        <actions>
            <name>Set_Active_Mandate_to_False</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF ( AND (cpm__Active__c == TRUE, NOT(ISBLANK(cpm__Sort_Code__c)), ISPICKVAL(cpm__Status__c, &apos;Pending cancellation&apos;)) , true, false )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
