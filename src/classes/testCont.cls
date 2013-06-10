public class testCont {

public String val {get;set;}
    public testCont(ApexPages.StandardController controller) {
val = ApexPages.currentpage().getParameters().get('Status__c');
    }
 public string getValue(){
 return val;
 }
}