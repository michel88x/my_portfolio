import 'package:flutter/material.dart';

showSuccessMessage(BuildContext context, String message){
  var snackBar = SnackBar(
    content: Text(message, style: const TextStyle(color: Colors.white),),
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showWarningMessage(BuildContext context, String message){
  var snackBar = SnackBar(
    content: Text(message, style: const TextStyle(color: Colors.white),),
    backgroundColor: Colors.orange,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showErrorMessage(BuildContext context, String message){
  var snackBar = SnackBar(
    content: Text(message, style: const TextStyle(color: Colors.white),),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}