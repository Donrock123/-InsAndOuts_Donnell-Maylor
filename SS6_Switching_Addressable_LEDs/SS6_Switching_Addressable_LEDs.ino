//Donnell Maylor
//SS6_Switching_Addressable_LEDs


const int buttonPin = 2;     
const int LED =  13; 
const int LED1 = 12;
const int LED2 = 11;
const int LED3 = 10;
const int LED4 = 9; 
const int LED5 = 8;

int buttonState = 0;         

void setup() {
  pinMode(LED, OUTPUT);  
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(buttonPin, INPUT);  
}

void loop() {
  buttonState = digitalRead(buttonPin);    
  delay (10);

   

  if (buttonState == HIGH) { 
   digitalWrite(LED, HIGH);   
   delay(1000);               
   digitalWrite(LED, LOW);    
   delay(500);          
  } else {   
   digitalWrite(LED, LOW);      
  }
  
  if (buttonState == HIGH) { 
   digitalWrite(LED1, HIGH);
   delay(500);               
   digitalWrite(LED1, LOW);    
   delay(500);      
  } else {   
   digitalWrite(LED1, LOW);      
  }

  if (buttonState == HIGH) { 
   digitalWrite(LED2, HIGH);
   delay(1000);               
   digitalWrite(LED2, LOW);    
   delay(500);      
  } else {   
    digitalWrite(LED2, LOW);      
  }

  if (buttonState == HIGH) { 
   digitalWrite(LED3, HIGH);
   delay(500);               
   digitalWrite(LED3, LOW);    
   delay(500);      
  } else {   
   digitalWrite(LED3, LOW);      
  }

  if (buttonState == HIGH) { 
   digitalWrite(LED4, HIGH);
   delay(1000);               
   digitalWrite(LED4, LOW);    
   delay(500);      
  } else {   
   digitalWrite(LED4, LOW);      
  }

  if (buttonState == HIGH) { 
   digitalWrite(LED5, HIGH);
   delay(500);               
   digitalWrite(LED5, LOW);    
   delay(500);      
  } else {  
    digitalWrite(LED5, LOW);      
  }

}
