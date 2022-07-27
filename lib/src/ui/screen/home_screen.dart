import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/widgets/post_size_l.dart';
import 'package:loynews/src/widgets/small_sponsore_widget.dart';
import 'package:loynews/src/widgets/top_post_size_l_widget.dart';
import 'package:loynews/src/widgets/top_post_size_s_widget.dart';
import 'package:loynews/src/widgets/view_all_widget.dart';

import '../../widgets/slider_widget.dart';
import '../../widgets/post_size_s.dart';

class HomeScreen extends StatelessWidget {
  // final String text;
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              SliderWidget(),
              const Gap(16),
              const PostSizeS(),
              const PostSizeS(),
              const SmallSponsoreWidget(size: 's',),
              const ViewAllWidget(firstText: 'ជម្រើសអត្ថបទសម្រាប់អ្នក', secondText: 'មើលទាំងអស់', isColor: true),
              const PostSizeL(),
              const Gap(4),
              const PostSizeS(),
              const PostSizeS(),
              const PostSizeS(),
              Container(
                // height: 1430,
                color: Colors.blueGrey.shade900,
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: const [
                    ViewAllWidget(firstText: 'អត្ថបទមានអ្នកអានច្រើន', secondText: 'មើលទាំងអស់'),
                    TopPostSizeLWidget(isColor: true, number: '01',),
                    Gap(16),
                    TopPostSizeLWidget(isColor: true, number: '02',),
                    Gap(16),
                    TopPostSizeLWidget(isColor: true, number: '03',),
                    Gap(16),
                    TopPostSizeS(number: '04',),
                    TopPostSizeS(number: '05',),
                    TopPostSizeS(number: '06',),
                  ],
                ),
              ),
              const ViewAllWidget(firstText: 'ព័ត៌មានចុងក្រោយ', secondText: 'មើលទាំងអស់', isColor: true, isViewAll: true,),
              const PostSizeL(),
              const PostSizeL(),
              const PostSizeL(),
              const PostSizeL(),
              const PostSizeL(),
            ],
          ),
        )
      ]
    );
  }
}