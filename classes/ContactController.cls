public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(Id accountId) {
        return [
            SELECT Id, Name, Title, Email, Department, Account.Name from Contact where AccountId = :accountId
        ];
    }
}
