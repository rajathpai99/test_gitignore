public class Company{
    //Variables for company
    public String name, CEO;
    public Integer employeeCount;
    public Long revenue;
    
    //List of clients 
    private List<Client> customers = new List<Client>();
    
    //Method to fill the list with values
    public void addNewCustomer(String clientName, String website, String email, Integer phoneNumber){
        Client customer = new Client(clientName, website, email, phoneNumber);
        customers.add(customer);
    }
    
    //Method to get the list
    public void getAllCustomers(){
        for (Client customer : customers){
            system.debug('Client Name: ' + customer.clientName + '; Client website: ' + customer.website + '; Client Phone Number: ' + customer.phoneNumber + '; Client email: '+ customer.email);
        }
    }
    
    //Inner class to hold client information  
    private class Client {
        public String clientName, website, email;
        public Integer phoneNumber;
        
        Client(String clientName, String website, String email, Integer phoneNumber){
            this.clientName = clientName;
            this.website = website;
            this.email= email;
            this.phoneNumber = phoneNumber;
        }
    } 
}