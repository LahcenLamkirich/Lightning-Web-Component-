import { LightningElement } from 'lwc';
import LightningAlert from 'lightning/alert';

export default class Greet extends LightningElement {
    greet = 'Error occured while running this task';

    async handleAlertClick(){
        console.log('Hello Inside the Alert')
        await LightningAlert.open({
            message: 'This is an Alert message',
            theme: 'error',
            label: 'Error !!'
        }).then(
            console.log('After the Alert has been closed !!')
        );
    }
} 