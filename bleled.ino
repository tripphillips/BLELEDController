//BLE LED Controller
//9-12-20
//Created by Trip Phillips

//LED Pins
const int green_led_pin = 9;
const int red_led_pin = 10;
const int blue_led_pin = 11;

//RGB Colors
const int rgb_white[3] = {255,255,255};
const int rgb_red[3] = {255,0,0};
const int rgb_blue[3] = {0,0,255};
const int rgb_green[3] = {0,255,0};
const int rgb_yellow[3] = {255,255,0};
const int rgb_cyan[3] = {0,255,255};
const int rgb_magenta[3] = {255,0,255};
const int off[3] = {0,0,0};

void setLedColor(const int rgb[3]) {
  analogWrite(green_led_pin, rgb[1]);
  analogWrite(red_led_pin, rgb[0]);
  analogWrite(blue_led_pin, rgb[2]);
}

void flashRGBSpectrum() {
  setLedColor(rgb_cyan);
  Serial.write("4");
  delay(500);
  setLedColor(rgb_blue);
  Serial.write("3");
  delay(500);
  setLedColor(rgb_magenta);
  Serial.write("5");
  delay(500);
  setLedColor(rgb_red);
  Serial.write("1");
  delay(500);
  setLedColor(rgb_yellow);
  Serial.write("6");
  delay(500);
  setLedColor(rgb_green);
  Serial.write("2");
  delay(500);
  setLedColor(rgb_cyan);
  Serial.write("4");
  delay(500);
  setLedColor(rgb_white);
  Serial.write("7");
  delay(500);
}

void fadeInOutRGBSpectrum() {

  int led_color[3] = {255,255,255};
  setLedColor(led_color);
  Serial.write("4");
  while (led_color[0] > 0) //to cyan - remove red
  {
    led_color[0] -= 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("3");
  while (led_color[1] > 0) //to blue - remove green
  {
    led_color[1] -= 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("5");
  while (led_color[0] < 255) //to magenta - add red
  {
    led_color[0] += 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("1"); 
  while (led_color[2] > 0) //to red - remove blue
  {
    led_color[2] -= 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("6");
  while (led_color[1] < 255) //to yellow - add green
  {
    led_color[1] += 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("2");
  while (led_color[0] > 0) //to green - remove red
  {
    led_color[0] -= 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("4");
  while (led_color[2] < 255) //to cyan - add blue
  {
    led_color[2] += 1;
    setLedColor(led_color);
    delay(10);
  }
  Serial.write("7");
  while (led_color[0] < 255) //to white - add red
  {
    led_color[0] += 1;
    setLedColor(led_color);
    delay(10);
  }
  delay(2000);
}

void setup() {
  Serial.begin(9600);
  delay(100);
}
String totalVal = "";

void loop() {
  char val = Serial.read();
  if (int(val) != -1) { 
    totalVal += val;
    if (totalVal.toInt() == 0) {
      setLedColor(off);
      Serial.write("0");
    }
    setLedColor(off);
    if (totalVal.toInt() == 1) {
      setLedColor(rgb_red);
      Serial.write("1");
    } else
    if (totalVal.toInt() == 2) {
      setLedColor(rgb_green);
      Serial.write("2");
    } else
    if (totalVal.toInt() == 3) {
      setLedColor(rgb_blue);
      Serial.write("3");
    } else
    if (totalVal.toInt() == 4) {
      setLedColor(rgb_cyan);
      Serial.write("4");
    } else
    if (totalVal.toInt() == 5) {
      setLedColor(rgb_magenta);
      Serial.write("5");
    } else
    if (totalVal.toInt() == 6) {
      setLedColor(rgb_yellow);
      Serial.write("6");
    } else
    if (totalVal.toInt() == 7) {
      setLedColor(rgb_white);
      Serial.write("7");
    } else
    if (totalVal.toInt() == 8) {
      flashRGBSpectrum();
      Serial.write("8");
    } else
    if (totalVal.toInt() == 9) {
      fadeInOutRGBSpectrum();
      Serial.write("9");
    }
    totalVal = "";
  }
}
