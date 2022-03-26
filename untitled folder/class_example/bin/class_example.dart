// import 'private_class.dart';

// abstract class Animal {
//   void sayHello() {
//     print('Animal says Hello');
//   }
// }

// class Human extends Animal {
//   void sayName() {
//     print('Human says Hello');
//   }
// }

// mixin SubClass1 {
//   void sayMyName() {
//     print('Heisenberg');
//   }
// }
// mixin SubClass2 {
//   void yeahBitch() {
//     print('Jesse Pinkman');
//   }
// }

// class BreakingBad with SubClass1, SubClass2 {
//   @override
//   void yeahBitch() {
//     // TODO: implement yeahBitch
//     super.yeahBitch();
//   }
// }

// void main(List<String> arguments) {
//   var person = Person('Aju', 22);
//   print(person.name);

//   var h1 = Human();
//   h1.sayHello();
//   h1.sayName();
//   var brba = BreakingBad();
//   brba.yeahBitch();
// }

class InvalidPhoneNumberException implements Exception {}

bool? validatePhoneNumber(String phone) {
  if (phone.length == 10) {
    return true;
  } else {
    throw InvalidPhoneNumberException();
  }
}

void main(List<String> args) {
  try {
    final phonevalid = validatePhoneNumber('5555555555');
  } on InvalidPhoneNumberException catch (_) {
    print('invalid phone number');
  } catch (e) {
    print(e);
  }
}
