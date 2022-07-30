import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/utility/app_styles.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Transform.rotate(
              angle: 1.5,
              child: Icon(Icons.sell_outlined, size: 18,)
            ),
            const Gap(4),
            Text('តំណរភ្ជាប់អត្ថបទ៖', style: Styles.textStyle,),
            const Gap(4),
            LayoutBuilder(builder: (context, constraints) {
              return Row(
                children: List.generate(5, (index) => Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('អត្ថបទ$index');
                        },
                        child: Text('អត្ថបទ$index,', style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor,))
                      ),
                      const Gap(4)
                    ],
                  ),
                ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}