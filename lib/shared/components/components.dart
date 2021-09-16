import 'package:flutter/material.dart';


///Button Component
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 0.0,
  bool isUpperCase = true,
  required Function() pressed,
  required String text,
}) =>
    Container(
      width: width,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: (pressed),
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

///TextFormField Component
Widget defaultTextFormField({
  required String? Function(String?)? validate,
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  required String label,
  required Icon prefix,
  IconData? suffix,
  bool isPassword = false,
  Function()? suffixPressed,
}) =>
    TextFormField(
      validator: validate,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: prefix,
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: suffixPressed,
              )
            : null,
      ),
    );

Widget defaultTextButton({
  required Function() onPressed,
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    ),
  );
}


///Divider
Widget myDivider() =>
    Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 16.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );


