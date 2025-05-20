import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/utils/p_color.dart';
import 'package:todoapp/utils/p_text_style.dart';
import 'package:todoapp/view/auth_screen/signup_screen.dart';
import 'package:todoapp/view/widgets/common_button.dart';
import 'package:todoapp/view/widgets/custom_textfield.dart';
import 'package:todoapp/view/widgets/nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool Value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sign in', style: AppTextStyles.bold),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
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
          Row(
            children: [
              Checkbox(
                value: Value,
                onChanged: (bool? newValue) {
                  setState(() {
                    Value = newValue!;
                  });
                },
              ),
              SizedBox(width: 10),
              Text('Remember Password', style: AppTextStyles.regular),
              SizedBox(width: 50),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          CustomElevatedButton(
            text: Padding(
              padding: const EdgeInsets.only(left: 120.0),
              child: Text( 'Sign In Now',style: TextStyle(color: Colors.white),),
            ),
            backroundColor: AppColors.primary,
            onPressed: () {},
          ),
          SizedBox(height: 30),
          Text('Or with', style: AppTextStyles.semibold),
          SizedBox(height: 30),
          CustomElevatedButton(
            text: Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text( 'Login With Facebook', style: TextStyle(color: Colors.white)),
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
              padding: const EdgeInsets.only(left: 10),
              child: Text( 'Login With Google', style: TextStyle(color: Colors.black)),
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
          SizedBox(height: 100),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 105),
                child: Text('I don\'t Have an account?'),
              ),
              SizedBox(width: 3,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'Signup',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 10,
            width: 10,
            color: Colors.black,)
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => BottomNavBar()),
          //     );
          //   },
          //   child: Text('bottom navigation'),
          // ),
        ],
      ),
    );
  }
}
