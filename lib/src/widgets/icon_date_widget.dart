import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/states/favorited_button.dart';
import 'package:loynews/src/utilitys/app_styles.dart';

class IconDateWidget extends StatelessWidget {
  final bool? isColor;
  final bool? isCategory;
  const IconDateWidget({
    Key? key,
    this.isColor,
    this.isCategory
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: isCategory == true ? Row(
                  children: [
                    Icon(Icons.category_outlined, size: 12, color: isColor == null ? Colors.grey:Colors.white,),
                    const Gap(2),
                    Text(
                      'កីឡា',
                      style: TextStyle(
                        fontSize: 12,
                        color: Styles.primaryColor
                      ),
                    ),
                    const Gap(4),
                    SizedBox(
                      height: 3,
                      width: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: isColor == null ? Colors.grey:Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ],
                ):null,
              ),
              const Gap(4),
              Icon(Icons.schedule, size: 12, color: isColor == null ? Colors.grey:Colors.white,),
              const Gap(2),
              Text(
                'July 18, 2022',
                style: TextStyle(
                  fontSize: 12,
                  color: isColor == null ? Colors.grey:Colors.white
                ),
              )
            ],
          ),
        ),
        FavoritedButton(),
      ],
    );
  }
}
