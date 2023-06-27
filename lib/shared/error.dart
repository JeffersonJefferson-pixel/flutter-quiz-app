import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ErrorMessage extends StatelessWidget {
  final String message;

  const ErrorMessage({super.key, this.message = 'it broke'});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
