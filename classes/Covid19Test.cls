@isTest
public class Covid19Test {
	@isTest
    public static void treatPatientTest(){
        Covid19 Jaipur = new Covid19(10);
        
        Integer treated = Jaipur.getTreated();
        system.assertEquals(10, treated, 'The actual value treated does not match with the expected value');
        
        Jaipur.treatPatient();
        treated = Jaipur.getTreated();
        system.assert(treated == 11, 'The actual value treated does not match with the expected value');
        system.assert(Covid19.recoveredInCountry == 11, 'The actual value recovered in country does not match with the expected value');      
    }
    
    //Test Negative scenario
    @isTest
    public static void treatPatientTestNegative(){
        Covid19 Jaipur = new Covid19(-15);
        
        Integer treated = Jaipur.getTreated();
        //Check if the count is 0 or not
        system.assertEquals(0, treated, 'The actual value treated does not match with the expected value');
    }
}