import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:loynews/src/utilitys/app_styles.dart';
import 'package:loynews/src/widgets/icon_date_widget.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 300,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            // enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              _currentIndex = index;
              setState(() {});
            },
          ),
          items: [1, 2, 3].map((i) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage("lib/images/slides/slide_1.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    child: const Text(
                      'ឯកឧត្តម ស សុខា រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡា និងជាប្រធានសហព័ន្ធកីឡាសិស្ស-និស្សិតកម្ពុជា',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    child: const IconDateWidget(),
                  )
                ],
              ),
            );
          }).toList(),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(activeColor: Styles.primaryColor),
        ),
      ],
    );
  }
}

// class SliderWidget extends StatelessWidget {
//   const SliderWidget({Key? key,}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: 280,
//         autoPlay: true,
//         aspectRatio: 16/9,
//         autoPlayCurve: Curves.fastOutSlowIn,
//         enableInfiniteScroll: false,
//         viewportFraction: 0.8,
//         // enlargeCenterPage: true,
//       ),
//       items: [1,2,3].map((i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               margin: const EdgeInsets.symmetric(horizontal: 5),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.black
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 157.5,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//                       image: DecorationImage(
//                         image: AssetImage("lib/images/slides/slide_1.png"),
//                         fit: BoxFit.cover
//                       )
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
//                     child: const Text(
//                       'ឯកឧត្តម ស សុខា រដ្ឋលេខាធិការក្រសួងអប់រំ យុវជន និងកីឡា និងជាប្រធានសហព័ន្ធកីឡាសិស្ស-និស្សិតកម្ពុជា',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
//                     child: const IconDateWidget(),
//                   )
//                 ],
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }