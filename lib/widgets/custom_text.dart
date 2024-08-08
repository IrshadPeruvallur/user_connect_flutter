import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_connect/constants/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.padding,
    this.maxWidth,
    this.font,
    this.textAlign = TextAlign.center,
    this.fontWeight = FontWeight.w500,
    this.size = 15,
  });

  final String text;
  final TextAlign textAlign;
  final Color? color;
  final TextStyle? font;
  final FontWeight fontWeight;

  final double size;
  final EdgeInsetsGeometry? padding;
  final double? maxWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: SizedBox(
        width: maxWidth,
        child: Text(
          text,
          textAlign: textAlign,
          style: font ??
              GoogleFonts.inter(
                color: color ?? textColor,
                fontSize: size,
                fontWeight: fontWeight,
              ),
        ),
      ),
    );
  }
}
