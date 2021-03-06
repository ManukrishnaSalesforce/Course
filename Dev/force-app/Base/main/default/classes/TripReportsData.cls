public without sharing class TripReportsData {
    
    public static Map<String, TripReport__c> loadTheData(Map<String, User> users) {

		Map<String, TripReport__c> trips = new Map<String, TripReport__c>{
		'London Training Center'        => new TripReport__c(Name='London',       Date__c=System.today()-50,Rating__c=5,ReviewType__c='Training Center',Review__c='Great central location',Instructor__c=users.get('EPETERS').Id),
		'San Francisco Training Center' => new TripReport__c(Name='San Francisco',Date__c=System.today()-66,Rating__c=5,ReviewType__c='Training Center',Review__c='Amazing views',         Instructor__c=users.get('KTRAN').Id),
		'San Francisco Students'        => new TripReport__c(Name='San Francisco',Date__c=System.today()-66,Rating__c=5,ReviewType__c='Students',       Review__c='All lovely',            Instructor__c=users.get('KTRAN').Id),
		'Sydney Restaurant'             => new TripReport__c(Name='Sydney',       Date__c=System.today()-41,Rating__c=5,ReviewType__c='Restaurant',     Review__c='Awesome barbie!',       Instructor__c=users.get('AKATO').Id)		
		};
		insert trips.values();
		
		return trips;        
    }
}