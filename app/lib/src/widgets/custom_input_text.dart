import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  //final String label;
  final bool isScecret;
  final List<TextInputFormatter>? inputFormater;
  final String? initialValue;
  final Icon icon;

  const CustomTextField({
    Key? key,
    required this.icon,
    //  required this.label,
    this.isScecret = false,
    this.inputFormater,
    this.initialValue,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isScecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
          //  textAlign: TextAlign.center,
          initialValue: widget.initialValue,
          inputFormatters: widget.inputFormater,
          obscureText: isObscure,
          decoration: InputDecoration(
              //   hintText: widget.label,
              filled: true,
              fillColor: Colors.white,
              prefixIcon: widget.icon,
              // suffixIcon: widget.isScecret
              //     ? IconButton(
              //         onPressed: () {
              //           setState(() {
              //             isObscure = !isObscure;
              //           });
              //         },
              //         icon: Icon(
              //             isObscure ? Icons.visibility : Icons.visibility_off))
              //     : null,
              isDense: true,
              contentPadding: const EdgeInsets.all(25),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
    );
  }
}
