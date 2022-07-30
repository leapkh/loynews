import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../ui/screen/detail_screen.dart';
import '../utility/app_styles.dart';
import 'icon_date_widget.dart';

class TopPostSizeS extends StatelessWidget {
  final String number;
  const TopPostSizeS({
    Key? key,
    required this.number
  }) : super(key: key);

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
        // height: 90,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // color: Colors.blueGrey.shade800,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              right: 16,
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              children: [
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
                Container(
                  // height: 75,
                  width: MediaQuery.of(context).size.width * 0.60,
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Text(
                        'រុស្ស៊ី​បាន​លុប​ចោល​បំណុល​បរទេស​ជា​លើក​...',
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const IconDateWidget(isColor: true,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}