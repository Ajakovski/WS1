#include "DHT.h"

#define DHTPIN 2
#define DHTTYPE DHT22

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  dht.begin();
  Serial.println("Sistem pokrenat. Citanje na temperatura i vlaga...");
}

void loop() {
  delay(2000);  // Чекање 2 секунди помеѓу мерења

  float t = dht.readTemperature();
  float h = dht.readHumidity();

  // Проверка дали читањето е успешно
  if (isnan(t) || isnan(h)) {
    Serial.println("GRESKA: Neuspesno citanje od DHT senzor!");
    return;
  }

  // Испраќање на податоци во формат: temperatura,vlaga
  // Пример: 23.50,55.30
  Serial.print(t);
  Serial.print(",");
  Serial.println(h);
}
