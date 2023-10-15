import 'package:password/password.dart' as password;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  do {
    print('Введите длину пароля: ');
    int passwordLength = int.parse(stdin.readLineSync()!);

    String password = generatePassword(passwordLength);
    print('Пароль: $password');

    print('Хотите сгенерировать ещё один пароль? (да/нет): ');
    String continueInput = stdin.readLineSync()!;

    if (continueInput != 'да') {
      break;
    }
  } while (true);
}

String generatePassword(int passwordLength) {
  const String chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  Random random = Random();
  String password = '';

  for (int i = 0; i < passwordLength; i++) {
    password += chars[random.nextInt(chars.length)];
  }

  return password;
}

