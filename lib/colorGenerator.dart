import 'dart:math';
import 'dart:ui';

Color getRandomColor() {
  int opacity = getRandomValue(255);
  int redValue = getRandomValue(255);
  int greenValue = getRandomValue(255);
  int blueValue = getRandomValue(255);

  return Color.fromARGB(opacity, redValue, greenValue, blueValue);
}

int getRandomValue(int max) {
  return new Random().nextInt(max);
}
