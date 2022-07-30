import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/ui/screen/detail_screen.dart';
import 'package:loynews/src/utility/app_styles.dart';

import 'icon_date_widget.dart';

class PostSizeS extends StatelessWidget {
  final bool? isCategory;
  const PostSizeS({Key? key, this.isCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      // color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: 63,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailScreen()),
                    );
                  },
                  child: Text(
                    'រុស្ស៊ី​បាន​លុប​ចោល​បំណុល​បរទេស​ជា​លើក​ដំបូង​ចាប់​តាំង​ពី​ឆ្នាំ ១៩១៨',
                    style: Styles.headLineStyle3,
                  ),
                ),
                const IconDateWidget(isCategory: true),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.30,
            height: 63,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                image: AssetImage('lib/images/slides/slide_1.png'),
                fit: BoxFit.cover
              )
            ),
          ),
        ],
      ),
    );
  }
}