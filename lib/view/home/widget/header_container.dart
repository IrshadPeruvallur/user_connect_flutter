import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_connect/constants/colors.dart';
import 'package:user_connect/controller/search_controller.dart';
import 'package:user_connect/widgets/custom_text.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    required this.size,
    required this.filterController,
  });

  final Size size;
  final FilterController filterController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: primeryColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/logo/uc_logo.png',
                    width: size.width * 0.25,
                    color: whiteColor,
                  ),
                  CustomText(
                    text: 'User Connect',
                    font: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                    size: 15,
                  )
                ],
              ),
              Image(
                image: const AssetImage('assets/icons/users icon.png'),
                height: size.width * 0.5,
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: SizedBox(
              height: 40,
              child: TextField(
                onChanged: (value) => filterController.filterUser(value),
                decoration: InputDecoration(
                    suffixIcon: const Icon(EneftyIcons.search_normal_outline),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Search Here...',
                    hintStyle: GoogleFonts.inter(fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: whiteColor,
                    filled: true),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
