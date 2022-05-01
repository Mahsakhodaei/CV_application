
main() {
  var s = Sparow();
  var o = Ostrich();
  var ch = Chicken();
  pay(s);
}

void pay(Payment payment) {
  payment.pay();
}

abstract class Bird {
  void eat() {}
  void sleep() {}
  void fly();
}

class Payment {
  void pay() {
    print('peyment');
  }
}

class Sparow extends Bird implements Payment {
  @override
  void fly() {}

  @override
  void pay() {
    print('pay with points');
  }
}

class Ostrich extends Bird implements Payment {
  @override
  void fly() {}

  @override
  void pay() {
    print('pay 1 doller for it');
  }
}

class Chicken extends Bird {
  @override
  void fly() {}
}