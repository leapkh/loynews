import 'package:flutter/material.dart';

class Widgets {

  static Widget get loading {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  static Widget get error {
    return const Text('Error while loading data from server.');
  }

}