import 'package:flutter/material.dart';

class Margins {

  static Widget get horizontal2 {
    return create(horizontal: 2);
  }

  static Widget get horizontal4 {
    return create(horizontal: 4);
  }

  static Widget get horizontal8 {
    return create(horizontal: 8);
  }

  static Widget get horizontal16 {
    return create(horizontal: 16);
  }

  static Widget get vertical2 {
    return create(vertical: 2);
  }

  static Widget get vertical4 {
    return create(vertical: 4);
  }

  static Widget get vertical8 {
    return create(vertical: 8);
  }

  static Widget get vertical16 {
    return create(vertical: 16);
  }

  static Widget create({double? horizontal, double? vertical}){
    return SizedBox(width: horizontal, height: vertical,);
  }

}