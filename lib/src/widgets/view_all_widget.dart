import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/utility/app_styles.dart';

class ViewAllWidget extends StatelessWidget {
  final bool? isViewAll;
  final String firstText;
  final String? secondText;
  final bool? isColor;
  const ViewAllWidget({
    Key? key,
    this.isViewAll,
    this.isColor,
    required this.firstText,
    this.secondText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: Row(
        children: [
          Transform.rotate(
            angle: -1.5,
            child: SizedBox(
              child: Container(
                height: 2,
                width: 20,
                color: Styles.primaryColor,
              ),
            )
          ),
          Text(
            firstText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isColor == null?Colors.white:Colors.black
            ),
          ),
          Transform.rotate(
            angle: -1.5,
            child: SizedBox(
              child: Container(
                height: 2,
                width: 20,
                color: Styles.primaryColor,
              ),
            )
          ),
          const Spacer(),
          Container(
            child: isViewAll == true? InkWell(
              onTap: (() {
                print('មើលទាំងអស់');
              }),
              child: Row(
                children: [
                  Text(
                    secondText!,
                    style: TextStyle(
                      fontSize: 16,
                      color: Styles.primaryColor
                    ),
                  ),
                  const Gap(2),
                  Icon(Icons.arrow_circle_right_outlined, color: Styles.primaryColor, size: 16,)
                ],
              ),
            ):null,
          ),
          ],
      ),
    );
    
  }
}