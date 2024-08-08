import 'package:flutter/material.dart';
import 'package:user_connect/widgets/custom_text.dart';

class UserInfoTile extends StatelessWidget {
  final String title;
  final String value;
  const UserInfoTile({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      minTileHeight: 0,
      title: CustomText(
        text: title,
        textAlign: TextAlign.left,
        size: 14,
      ),
      trailing: CustomText(
        maxWidth: size.width * 0.5,
        text: value,
        size: 14,
        textAlign: TextAlign.right,
      ),
    );
  }
}
