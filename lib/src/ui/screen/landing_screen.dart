import 'package:flutter/material.dart';
import 'package:loynews/src/ui/screen/posts_screen.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);

  final List<Tab> tabs = <Tab>[
    const Tab(text: 'ទំព័រដើម'),
    const Tab(text: 'សង្គម'),
    const Tab(text: 'តារា & កម្សាន្ត'),
    const Tab(text: 'ជោគជ័យ'),
    const Tab(text: 'បច្ចេកវិទ្យា'),
    const Tab(text: 'កីឡា'),
    const Tab(text: 'ប្លែកៗ'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: headerSliverWidgets,
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return PostsScreen(tab);
            }).toList(),
          ),
        ),
      ),
    );
  }

  List<Widget> headerSliverWidgets(
      BuildContext context, bool innerBoxIsScrolled) {
    return [
      SliverAppBar(
        floating: true,
        snap: true,
        // pinned: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'lib/images/img_loynews_logo.png',
              height: 32,
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.sort),
          onPressed: () {},
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.sunny))
        ],
        backgroundColor: Colors.white,
        bottom: TabBar(
          indicatorColor: Colors.red.shade400,
          indicatorWeight: 5,
          isScrollable: true,
          labelColor: Colors.black,
          tabs: tabs,
        ),
        elevation: 0.5,
      )
    ];
  }

}
