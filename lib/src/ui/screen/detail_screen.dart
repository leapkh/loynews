
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loynews/src/utility/app_styles.dart';
import 'package:loynews/src/widgets/post_size_l.dart';
import 'package:loynews/src/widgets/tag_widget.dart';
import 'package:loynews/src/widgets/view_all_widget.dart';

import '../../widgets/post_size_s.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 90,
            actions: [
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  child: const Icon(Icons.favorite_border_rounded, color: Colors.white,),
                  backgroundColor: Styles.primaryColor.withOpacity(0.5),
                 ),
              ),
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  child: const Icon(Icons.share_outlined, color: Colors.white,),
                  backgroundColor: Styles.primaryColor.withOpacity(0.5),
                 ),
              ),
            ],
            leading: IconButton(
              icon: CircleAvatar(
                child: const Icon(Icons.clear, color: Colors.white,),
                backgroundColor: Styles.primaryColor.withOpacity(0.5),
              ),
              onPressed: () {Navigator.pop(context);},
            ),
            pinned: true,
            backgroundColor: Styles.primaryColor,
            expandedHeight: 250,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  color: Colors.white,
                ),
                child: Center(child: Text(
                  'រុស្ស៊ី​បាន​លុប​ចោល​បំណុល​បរទេស​ជា​លើក​ដំបូង​ចាប់​តាំង​ពី​ឆ្នាំ ១៩១៨',
                  style: Styles.headLineStyle2,
                ),),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'lib/images/slides/slide_3.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Body,
                Line,
                const TagWidget(),
                const ViewAllWidget(firstText: 'អ្នកប្រហែលចូលចិត្តអត្ថបទទាំងនេះ', isColor: true,),
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
      ),
    );
  }

  Widget get Body {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Text("ប្រទេសរុស្ស៊ីបានខកខានការទូទាត់លើមូលបត្របំណុលរូបិយប័ណ្ណបរទេសចំនួនពីរគិតត្រឹមល្ងាចថ្ងៃអាទិត្យ នេះបើយោងតាមអ្នកកាន់សញ្ញាប័ណ្ណ។", style: Styles.textStyle,),
          const Gap(8),
          Text('ប្រទេសរុស្សីបានលុបចោលបំណុលអធិបតេយ្យភាពរូបិយប័ណ្ណបរទេសរបស់ខ្លួនជាលើកដំបូងក្នុងរយៈពេលជាងមួយសតវត្ស បន្ទាប់ពីបរាជ័យក្នុងការបង់ប្រាក់ចំនួនពីរត្រឹមថ្ងៃកំណត់កាលពីយប់ថ្ងៃអាទិត្យ។', style: Styles.textStyle,),
          const Gap(8),
          Text('ទីក្រុងមូស្គូបានខកខានកាលបរិច្ឆេទកំណត់ដើម្បីបំពេញតាមរយៈពេលអនុគ្រោះរយៈពេល ៣០ថ្ងៃ លើការទូទាត់ការប្រាក់ដែលដើមឡើយដល់ថ្ងៃទី ២៧ ខែឧសភា ប៉ុន្តែវាអាចមានពេលមួយមុនពេលការបញ្ជាក់ត្រូវបានបញ្ជាក់។', style: Styles.textStyle,),
          const Gap(8),
          Text('ការសងបំណុលនេះកើតចេញពីការដាក់ទណ្ឌកម្មលើការឈ្លានពានរបស់រុស្ស៊ីលើអ៊ុយក្រែន ដែលបានចាប់ផ្តើមកាលពីចុងខែកុម្ភៈ។ លំនាំដើមផ្តល់សញ្ញាជាលើកដំបូងចាប់តាំងពីឆ្នាំ ១៩១៨ ទោះបីជារុស្ស៊ីបានហៅវាថាសិប្បនិម្មិតព្រោះវាអាចមានលទ្ធភាពសងបំណុលរបស់ខ្លួន ប៉ុន្តែទណ្ឌកម្មបានបង្កកទុនបំរុងរូបិយប័ណ្ណបរទេសរបស់ខ្លួនដែលរក្សាទុកនៅបរទេស។', style: Styles.textStyle,),
          const Gap(8),
          Text('លោក Anton Siluanov រដ្ឋមន្ត្រីក្រសួងហិរញ្ញវត្ថុរុស្ស៊ីបាននិយាយកាលពីខែមុនថា “មានលុយហើយក៏មានការត្រៀមខ្លួនផងដែរ” ។ “ស្ថានភាពនេះ បង្កើតឡើងដោយសិប្បនិមិត្តដោយប្រទេសដែលមិនរួសរាយរាក់ទាក់ នឹងមិនមានឥទ្ធិពលលើគុណភាពជីវិតរបស់ប្រជាជនរុស្ស៊ីឡើយ”។', style: Styles.textStyle,),
          const Gap(8),
          Text('ក្រសួងរតនាគារសហរដ្ឋអាមេរិកកាលពីខែមុនបានបញ្ចប់លទ្ធភាពរបស់រុស្ស៊ីក្នុងការសងបំណុលដល់អ្នកវិនិយោគអន្តរជាតិតាមរយៈធនាគារអាមេរិក។ បន្ទាប់មកក្រសួងហិរញ្ញវត្ថុរុស្ស៊ីបាននិយាយថា ខ្លួននឹងសងបំណុលដែលគិតជាប្រាក់ដុល្លារជារូបិយបណ្ណ័ ហើយផ្តល់ “ឱកាសសម្រាប់ការបំប្លែងជាបន្តបន្ទាប់ទៅជារូបិយប័ណ្ណដើម”។', style: Styles.textStyle,),
          const Gap(8),
          Text('ការសងបំណុលបរទេសគឺជៀសមិនរួចសម្រាប់ប្រទេសរុស្ស៊ី ខណៈដែលអ្នកវិនិយោគបានព្យាករណ៍ជាច្រើនខែថាទីក្រុងម៉ូស្គូនឹងសងបំណុល។ កិច្ចសន្យាធានារ៉ាប់រងដែលគ្របដណ្តប់លើបំណុលរុស្ស៊ីមានរយៈពេលជាច្រើនសប្តាហ៍ បានដាក់លទ្ធភាព ៨០ភាគរយ ដែលប្រទេសនេះនឹងលុបចោល។', style: Styles.textStyle,)
        ],
      )
    );
  }

  Widget get Line {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 4,
            width: 70,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(6)
            ),
          ),
        ],
      ),
    );
  }
}