trigger CaseTrigger on Case (before insert,before update) {
    if((trigger.isInsert || trigger.isUpdate) & trigger.isBefore){
        CaseTriggerHandler.updateStatusField(trigger.new);
    }
}