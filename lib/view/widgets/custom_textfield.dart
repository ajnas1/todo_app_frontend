import 'package:flutter/material.dart';
import 'package:todoapp/utils/p_color.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardtype;
  final String? hintText;
  final bool isPassword;
  final BorderSide? borderSide;
  final Color? fillColor;
  
  const CustomTextField({
    super.key,
    required this.controller,
    required this.keyboardtype,
    this.hintText,
    this.isPassword = false, 
    this.borderSide,
    this.fillColor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardtype,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            
          borderSide: widget.borderSide ?? BorderSide.none),
          filled: true,
          fillColor: widget.fillColor,
          hintText: widget.hintText,
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  )
                  : null,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}

// class CustomTextfield extends StatelessWidget {
//   final String label;
//   final TextEditingController controller;
//   final TextInputType keyboardtype;
//   final bool obscureText;
//   final String? hintText;
//   final IconData? suffixIcon;
//   const CustomTextfield({
//     super.key,
//     required this.label,
//     required this.controller,
//     this.keyboardtype = TextInputType.text,
//     this.obscureText = false,
//     this.hintText,
//     this.suffixIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: TextField(
//         controller: controller,
//         keyboardType: keyboardtype,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           labelText: label,
//           hintText: hintText,
//           suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
//           border: const OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }
