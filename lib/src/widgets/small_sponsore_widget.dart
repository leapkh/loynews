import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SmallSponsoreWidget extends StatelessWidget {
  final String size;
  const SmallSponsoreWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: size == 's' ? Column(
        children: [
          const Text('-  ឧបត្ថម្ភដោយ -'),
          const Gap(8),
          Container(
            height: 44,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                image: AssetImage('lib/images/sponsores/img_s.png'),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ): Column(
          children: [
          const Text('-  ឧបត្ថម្ភដោយ -'),
          const Gap(8),
          Container(
            height: 544,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage('lib/images/sponsores/img_l.png'),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}