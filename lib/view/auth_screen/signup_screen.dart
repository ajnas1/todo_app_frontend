import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/utils/p_color.dart';
import 'package:todoapp/utils/p_text_style.dart';
import 'package:todoapp/view/auth_screen/login_screen.dart';
import 'package:todoapp/view/widgets/common_button.dart';
import 'package:todoapp/view/widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sign Up', style: AppTextStyles.bold),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 310),
            child: Text('E-mail', style: AppTextStyles.semibold),
          ),
          CustomTextField(
            hintText: 'Enter your email',
            controller: emailController,
            keyboardtype: TextInputType.emailAddress,
            // borderSide: BorderSide(color: AppColors.borderColor),
            fillColor: AppColors.placeholderBackground,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 290),
            child: Text('Password', style: AppTextStyles.semibold),
          ),
          CustomTextField(
            controller: passwordController,
            hintText: 'Enter your password',
            keyboardtype: TextInputType.number,
            isPassword: true,
            // borderSide: BorderSide(color: AppColors.borderColor,width: 0.0),
            fillColor: AppColors.placeholderBackground,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 245),
            child: Text('Retype-Password', style: AppTextStyles.semibold),
          ),
          CustomTextField(
            controller: passwordController,
            hintText: 'Enter your password',
            keyboardtype: TextInputType.number,
            isPassword: true,
            // borderSide: BorderSide(color: AppColors.borderColor,width: 0.0),
            fillColor: AppColors.placeholderBackground,
          ),
          Row(
            children: [
              Checkbox(
                value: value,
                onChanged: (bool? newValue) {
                  setState(() {
                    value = newValue!;
                  });
                },
              ),
              SizedBox(width: 5),
              Text(
                'I Agree terms and Conditions',
                style: AppTextStyles.regular,
              ),
              SizedBox(width: 50),
            ],
          ),
          CustomElevatedButton(
            text: Padding(
              padding: const EdgeInsets.only(left: 120.0),
              child: Text('Sign Up Now', style: TextStyle(color: Colors.white)),
            ),
            backroundColor: AppColors.primary,
            onPressed: () {},
          ),
          SizedBox(height: 30),
          Text('Or with', style: AppTextStyles.semibold),
          SizedBox(height: 30),
          CustomElevatedButton(
            text: Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                'Signup With Facebook',
                style: TextStyle(color: Colors.white),
              ),
            ),
            backroundColor: AppColors.primary,
            onPressed: () {},
            borderSide: BorderSide(color: AppColors.primary),
            image: Padding(
              padding: const EdgeInsets.only(left: 65.0),
              child: SvgPicture.asset('assets/images/facebook.svg'),
            ),
          ),
          SizedBox(height: 15),
          CustomElevatedButton(
            text: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Signup With Google',
                style: TextStyle(color: Colors.black),
              ),
            ),
            textColor: Colors.black,
            onPressed: () {},
            borderSide: BorderSide(color: AppColors.primary),
            image: Padding(
              padding: const EdgeInsets.only(left: 75.0),
              child: SvgPicture.asset(
                'assets/images/google.svg',
                height: 27,
                width: 27,
              ),
            ),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 105),
                child: Text('Already Have an account?'),
              ),
              SizedBox(width: 3),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Signin',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
