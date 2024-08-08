import 'package:flutter/material.dart';
import 'package:user_connect/constants/colors.dart';
import 'package:user_connect/model/user_model.dart';
import 'package:user_connect/view/user/user_details.dart';
import 'package:user_connect/widgets/custom_text.dart';

class UserInfoCard extends StatelessWidget {
  final UserModel userModel;
  const UserInfoCard({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size.width * 0.02)),
        tileColor: whiteColor,
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserDetailsScreen(
                user: userModel,
              ),
            )),
        title: CustomText(
          text: userModel.name ?? "",
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        subtitle: CustomText(
          text: userModel.email ?? "",
          textAlign: TextAlign.start,
          size: 13,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
        leading: const CircleAvatar(
          backgroundColor: whiteColor,
          backgroundImage: AssetImage('assets/icons/user_profile_icon.png'),
        ),
      ),
    );
  }
}
