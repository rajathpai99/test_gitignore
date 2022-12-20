public class Covid19{
    //Declare Variables
    public Integer recoveredInArea = 0;
    public static Integer recoveredInCountry = 0;
    
    //Constructor to initialize the variables
    public Covid19(Integer recoveredInArea){
        if(recoveredInArea < 0){
            this.recoveredInArea = 0;
        }
        else 
        {
        this.recoveredInArea = recoveredInArea;
        recoveredInCountry += recoveredInArea;
        }
    }
    
    //A method to increment the values when a person is treated
    public void treatPatient(){
        recoveredInArea++;
        recoveredInCountry++;    
    }
    
    //A method to return the count of treated patients in a Area
    public Integer getTreated(){
        return recoveredInArea;
    }
}