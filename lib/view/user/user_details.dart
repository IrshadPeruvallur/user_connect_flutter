import 'package:flutter/material.dart';
import 'package:user_connect/constants/colors.dart';
import 'package:user_connect/widgets/custom_text.dart';
import 'package:user_connect/model/user_model.dart';
import 'package:user_connect/view/user/widget/details_card.dart';

class UserDetailsScreen extends StatelessWidget {
  final UserModel user;

  const UserDetailsScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: whiteColor,
            )),
        title: const CustomText(
          text: 'User Details',
          color: whiteColor,
          size: 20,
        ),
        backgroundColor: primeryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: primeryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(size.width * 0.2),
                  bottomRight: Radius.circular(size.width * 0.2),
                ),
              ),
              height: size.height * 0.3,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    radius: size.width * 0.15,
                    backgroundImage: const AssetImage(
                      'assets/icons/user_profile_icon.png',
                    ),
                  ),
                  CustomText(
                    text: user.name ?? '',
                    size: 20,
                    color: whiteColor,
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: user.email ?? '',
                    color: whiteColor,
                    textAlign: TextAlign.left,
                    size: 13,
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            SizedBox(height: size.width * 0.15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailsCard(
                    heading: 'Personal Info',
                    items: [
                      {'title': 'Username', 'value': user.username ?? ''},
                      {'title': 'Email', 'value': user.email ?? ''},
                      {'title': 'Phone', 'value': user.phone ?? ''},
                    ],
                  ),
                  DetailsCard(
                    heading: 'Address',
                    items: [
                      {'title': 'Street', 'value': user.address?.street ?? ''},
                      {'title': 'City', 'value': user.address?.city ?? ''},
                      {
                        'title': 'Zipcode',
                        'value': user.address?.zipcode ?? ''
                      },
                    ],
                  ),
                  DetailsCard(
                    heading: 'Company Info',
                    items: [
                      {
                        'title': 'Company Name',
                        'value': user.company?.name ?? ''
                      },
                      {
                        'title': 'Company Slogan',
                        'value': user.company?.catchPhrase ?? ''
                      },
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
