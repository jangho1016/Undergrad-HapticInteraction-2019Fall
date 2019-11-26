int sensorPosPin = A2; // input pin for MR sensor
int rawPos;
int t;
int mode;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//9600
  pinMode(sensorPosPin, INPUT); // set MR sensor pin to be an input

  
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0)
  {
    int inByte = Serial.read();

    if(inByte == '0')
      mode = 0;
    else if(inByte == '1')
      mode = 1;
  }

  if(mode == 0)
  {
  calculatePosition();
  }
  
  else if(mode == 1)
  {
  calculateVirtualPosition();
  }

  Serial.println(rawPos);
  delay(10);
}


void calculatePosition()
{
  rawPos = analogRead(sensorPosPin);
}

void calculateVirtualPosition()
{
  t = t+1;
  rawPos = 512 + 512.0 * sin(0.1 * t);
}
