import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xffFAFAFA),
      decoration: InputDecoration(
        hint: Text(
          hint,
          style: AppStyle.styleMedium16(context).copyWith(color: Color(0xffAAAAAA)),
        ),
        filled: true,
        fillColor: Color(0xffFAFAFA),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Color(0xffFAFAFA)),
  );
}
