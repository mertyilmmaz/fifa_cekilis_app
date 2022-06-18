import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  var message;
  AlertDialog alert = AlertDialog(
    title: Text("Hata"),
    content: Text('Oyuncu Giriniz'),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog2(BuildContext context) {
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  var message;
  AlertDialog alert = AlertDialog(
    title: Text("Hata"),
    content: Text('Cift Sayi Giriniz'),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
