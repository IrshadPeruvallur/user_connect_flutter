import 'package:flutter/material.dart';
import 'package:user_connect/constants/colors.dart';
import 'package:user_connect/view/user/widget/user_info_tile.dart';
import 'package:user_connect/widgets/custom_text.dart';

class DetailsCard extends StatelessWidget {
  final String heading;
  final List<Map<String, String>> items;

  const DetailsCard({
    super.key,
    required this.heading,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: heading,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
        ),
        Card(
          color: whiteColor,
          child: Column(
            children: items
                .map((item) => UserInfoTile(
                      title: item['title']!,
                      value: item['value']!,
                    ))
                .toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
