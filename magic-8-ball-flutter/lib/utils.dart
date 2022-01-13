import 'dart:math';

int generateRandomNatural(int max, {int previous = null}) {
  int random = Random().nextInt(max) + 1;

  while (previous != null && random == previous) {
    random = Random().nextInt(max) + 1;
  }

  return random;
}
