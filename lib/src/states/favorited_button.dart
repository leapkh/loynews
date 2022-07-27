import 'package:flutter/material.dart';

import '../utilitys/app_styles.dart';

class FavoritedButton extends StatefulWidget {
  FavoritedButton({Key? key}) : super(key: key);

  @override
  State<FavoritedButton> createState() => _FavoritedButtonState();
}

class _FavoritedButtonState extends State<FavoritedButton> {
  bool _isFavorited = false;

  void _toggleFavorite(){
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_isFavorited?
        Icons.favorite:Icons.favorite_border_rounded,
        color: Styles.primaryColor,
      ),
      onPressed: _toggleFavorite,
    );
  }
}