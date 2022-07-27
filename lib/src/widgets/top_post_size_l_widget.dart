import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../ui/screen/detail_screen.dart';
import '../utilitys/app_styles.dart';
import 'icon_date_widget.dart';

class TopPostSizeLWidget extends StatelessWidget {
  final bool? isColor;
  final String number;
  const TopPostSizeLWidget({
    Key? key,
    this.isColor,
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
        // height: 340,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueGrey.shade800,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 30,
              right: 16,
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 60,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                    image: DecorationImage(
                      image: AssetImage('lib/images/slides/slide_3.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                const Gap(8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(
                        'ដាក់CVភ្លាម! សម្ភាសភ្លាមពីក្រុមហ៊ុនធំៗចំនួន១0 ជាមួយឱកាសការងារជិត១៥០០កន្លែង',
                        style: isColor == null? Styles.headLineStyle1:Styles.headLineStyle1.copyWith(color: Colors.white),
                      ),
                      const Gap(8),
                      const IconDateWidget(isColor: true,),
                    ],
                  ),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}