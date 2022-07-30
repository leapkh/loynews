import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/utility/app_styles.dart';
import 'package:loynews/src/widgets/post_size_l.dart';
import 'package:loynews/src/widgets/post_size_s.dart';
import 'package:loynews/src/widgets/slider_widget.dart';
import 'package:loynews/src/widgets/small_sponsore_widget.dart';
import 'package:loynews/src/widgets/view_all_widget.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(category, style: Styles.headLineStyle1,),
                    const Gap(8),
                    Text(
                      'ពត៌មាន$categoryថ្មីៗប្រចាំថ្ងៃសម្រាប់ប្រជាជនកម្ពុជា',
                      style: Styles.textStyle,
                      )
                  ],
                ),
              ),
              ViewAllWidget(firstText: 'ព័ត៌មាន$categoryសំខាន់ៗ', isColor: true,),
              SliderWidget(),
              const SmallSponsoreWidget(size: 's',),
              ViewAllWidget(firstText: 'ព័ត៌មាន$categoryចុងក្រោយបំផុត', isColor: true,),
         
              const SmallSponsoreWidget(size: 'l'),
              const ViewAllWidget(firstText: 'ព័ត៌មានចុងក្រោយ', isColor: true,),
              LayoutBuilder(builder: (context, constraints) {
                return Column(
                  children: List.generate(5, (index) => PostSizeS()
                  ),
                );
              })
            ],
          ),
        )
      ],
    );
  }
}