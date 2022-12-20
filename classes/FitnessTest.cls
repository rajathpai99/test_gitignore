@isTest
public class FitnessTest {
    @isTest
    public static void calculateTest1() {
        Fitness Rajath = new Fitness();
        
        decimal RajathBMI = Rajath.calculateBMI(69, 1.727);
        system.assertEquals(23.13473, RajathBMI, 'The calculated BMI does not match the expected value');
        
        decimal RajathPace = Rajath.claculatePace(1.5, 10);
        system.assertEquals(9.00000, RajathPace, 'The calculated Pace does not match the expected Pace');
    }

    //Negative Scenarios
    
    @isTest
    public static void calculateTest2(){
        Fitness Rajath = new Fitness();
        
        decimal RajathBMI = Rajath.calculateBMI(69, 0);
        system.assertEquals(-1, RajathBMI, 'The calculated BMI does not match the expected value');
        
        decimal RajathPace = Rajath.claculatePace(1.5, 0);
        system.assertEquals(-1, RajathPace, 'The calculated Pace does not match the expected Pace');
    }
    
    @isTest
    public static void calculateTest3(){
        Fitness Rajath = new Fitness();
        
        decimal RajathBMI = Rajath.calculateBMI(0, 1.727);
        system.assertEquals(0, RajathBMI, 'The calculated BMI does not match the expected value');
        
        decimal RajathPace = Rajath.claculatePace(0, 10);
        system.assertEquals(0, RajathPace, 'The calculated Pace does not match the expected Pace');
    }
    
    @isTest
    public static void calculateTest4(){
        Fitness Rajath = new Fitness();
        
        decimal RajathBMI = Rajath.calculateBMI(69, -1.727);
        system.assertEquals(-1, RajathBMI, 'The calculated BMI does not match the expected value');
        
        decimal RajathPace = Rajath.claculatePace(1.5, -10);
        system.assertEquals(-1, RajathPace, 'The calculated Pace does not match the expected Pace');
    }
    
    @isTest
    public static void calculateTest5(){
        Fitness Rajath = new Fitness();
        
        decimal RajathBMI = Rajath.calculateBMI(-69, 1.727);
        system.assertEquals(-1, RajathBMI, 'The calculated BMI does not match the expected value');
        
        decimal RajathPace = Rajath.claculatePace(-1.5, 10);
        system.assertEquals(-1, RajathPace, 'The calculated Pace does not match the expected Pace');
    }
}