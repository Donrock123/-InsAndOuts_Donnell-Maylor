const int SENSOR1 = A0;
const int SENSOR2 = A1;
const int SENSOR3 = A2;
const int threshold = 90;

int sensor1val = 0;    
int sensor2val = 0;
int sensor3val = 0;
int sensorReading = 0;   


void setup() {
  pinMode (SENSOR1, INPUT);
  pinMode (SENSOR2, INPUT);
  pinMode (SENSOR3, INPUT);
  Serial.begin(9600); 
}

void loop() {
  sensor1val = analogRead(SENSOR1); 
  //sensor1val = sensor1val / 4;
  sensor1val = map(sensor1val, 0, 1023, 0, 85); 
  delay(100); 
  
  sensor2val = analogRead(SENSOR2);
  //sensor2val = sensor2val / 4;
  sensor2val = map(sensor2val,0, 1023, 100, 255);  
  delay(100);
  
  sensor3val = analogRead(SENSOR3);
  //sensor2val = sensor2val / 4;
  sensor3val = map(sensor3val,0, 1023, 86, 99);  
  delay(100);
 
  
  sensorReading = analogRead(SENSOR3); 
  if (SENSOR3 >= threshold) {
    
  }
  
  
  //Serial. println(val); //human-readable data to Arduino monitor
  Serial.write(sensor1val);  //binary data to Processing
  Serial.write(sensor2val);
  Serial.write(sensor3val); 
}
