import { LightningElement, wire } from 'lwc';
import getAllAccountRecords from '@salesforce/apex/getAllAccounts.getAllAccountRecords';

const COLUMNS = [
    { label: 'Name', fieldName: 'Name', type: 'text' },
    { label: 'Account Number', fieldName: 'AccountNumber', type: 'text' },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' }
];
export default class AllAccounts extends LightningElement {
    accountData  = []
    columns = COLUMNS

    @wire(getAllAccountRecords)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accountData = data;
        } else if (error) {
            console.error(error);
        }
    }
}