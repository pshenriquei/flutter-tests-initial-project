import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(BytebankApp(
    contactDao: ContactDao(),
  ));
}

class BytebankApp extends StatelessWidget {
  final ContactDao contactDao;

  BytebankApp({@required this.contactDao});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            primary: Colors.green[900], secondary: Colors.blueAccent[700]),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(
        contactDao: contactDao,
      ),
    );
  }
}
