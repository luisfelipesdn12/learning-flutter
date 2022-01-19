enum Gender {
  feminine,
  masculine,
}

class BMICalculation {
  BMICalculation({
    this.gender = Gender.masculine,
    this.height = 1.5,
    this.weight = 60,
    this.age = 18,
  });

  Gender gender;
  double height;
  double weight;
  double age;
}
