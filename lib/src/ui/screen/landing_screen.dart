import 'package:flutter/material.dart';
import 'package:loynews/src/utility/margins.dart';

class LandingScreen extends StatelessWidget {
  
  LandingScreen({Key? key}) : super(key: key);

  List<String> menus = [
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
    'ទំព័រដើម',
  ];

  int menuIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }

  Widget get body {
    return SingleChildScrollView(
      child: Column(
        children: [topBarWidget, horizontalLine, menuBarWidget, slideWidget],
      ),
    );
  }

  Widget get topBarWidget {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.sort),
          Margins.horizontal8,
          Image.asset(
            'lib/images/img_loynews_logo.png',
            height: 32,
          ),
          const Spacer(),
          const Icon(Icons.search),
          Margins.horizontal8,
          const Icon(Icons.dark_mode)
        ],
      ),
    );
  }

  Widget get horizontalLine {
    return Container(
      height: 2,
      color: Colors.grey,
    );
  }

  Widget get menuBarWidget {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menus.length,
          itemBuilder: menuItemWidget),
    );
  }

  Widget menuItemWidget(BuildContext context, int index) {
    String menu = menus[index];
    final color = (menuIndex == index) ? Colors.red : Colors.transparent;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(menu),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: color, width: 4)
          )
        ),
      ),
    );
  }

  Widget get slideWidget {
    return Text('slideWidget');
  }
}
