public class Fitness {

    //This methods returns the BMI of the Person
    public decimal calculateBMI (decimal weightInKGs, decimal heightInMtrs) {
        if(heightInMtrs <= 0 || weightInKGs < 0){
            return -1;
        }
        return (weightInKGs / (heightInMtrs * heightInMtrs)).setScale(5);
    }
    
    //This methods returns the Pace of the Person in KMPH
    public decimal claculatePace (decimal distanceInKMs, decimal timeInMins) {
        if (timeInMins <=0 || distanceInKMs < 0){
            return -1;
        }
        return ((distanceInKMs / timeInMins) * 60).setScale(5);
    }
      
}