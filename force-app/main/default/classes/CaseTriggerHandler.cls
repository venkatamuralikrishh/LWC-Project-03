public class CaseTriggerHandler {
    public static void updateStatusField(List<Case> cList){
        for(Case c : cList){
            if(c.Progress_Value__c==0){
                c.Status='Not Started';
            }
            else if(1>=c.Progress_Value__c || c.Progress_Value__c<=99){
                c.Status='	In-Progress';
            }
            else if(c.Progress_Value__c==100){
                c.Status='Complete';
            }
        }
    }
}