import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/model/firestore_post.dart';
import 'package:loynews/src/model/post.dart';
import 'package:loynews/src/utility/app_styles.dart';
import 'package:loynews/src/widgets/icon_date_widget.dart';

import '../ui/screen/detail_screen.dart';

class PostSizeL extends StatelessWidget {
  const PostSizeL(this.post, {required this.onDeleteClick, Key? key}) : super(key: key);
  final FirestorePost post;
  final Function() onDeleteClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onDeleteClick();
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
                    post.title,
                    style: Styles.headLineStyle1,
                  ),
                  const Gap(8),
                  Text(
                    post.title,
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