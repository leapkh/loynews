import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/model/post.dart';
import 'package:loynews/src/utility/app_styles.dart';
import 'package:loynews/src/widgets/icon_date_widget.dart';

import '../ui/screen/detail_screen.dart';

class PostSizeL extends StatelessWidget {
  const PostSizeL(this.post, {Key? key}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
        height: 422,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  image: DecorationImage(
                    image: AssetImage('lib/images/slides/slide_2.png'),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Column(
                children: [
                  Text(
                    post.title.rendered,
                    style: Styles.headLineStyle1,
                  ),
                  const Gap(8),
                  Text(
                    post.title.rendered,
                    style: Styles.textStyle,
                  ),
                  const Gap(8),
                  const IconDateWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}