// import 'package:cozina/screens/auth/verification.dart';
// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({Key? key}) : super(key: key);
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 18),
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 70,
//               ),
//               Text(
//                 "Cozina",
//                 style: TextStyle(
//                     fontSize: 40,
//                     color: theme.primaryColor,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "Register",
//                 style: TextStyle(fontSize: 26, color: theme.primaryColor),
//               ),
//               Container(
//                   height: 300,
//                   child: Form(
//                     key: _formKey,
//                     child: ListView(
//                       children: [
//                         TextFormField(
//                           decoration: InputDecoration(hintText: "Name"),
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(hintText: "Email"),
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(hintText: "Mobile No."),
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(hintText: "Password"),
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                         TextFormField(
//                           decoration:
//                               InputDecoration(hintText: "Confirm Password"),
//                         ),
//                         SizedBox(
//                           height: 6,
//                         ),
//                       ],
//                     ),
//                   )),
//               Row(
//                 children: [
//                   IconButton(onPressed: () {}, icon: Icon(Icons.check_box)),
//                   Text("I agree to all T & C"),
//                 ],
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(
//                       builder: (ctx) => AccountVerificaton()));
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.amber.withOpacity(0.4),
//                   ),
//                   height: 50,
//                   width: 150,
//                   child: Text(
//                     "Register",
//                     style: TextStyle(fontSize: 18, color: theme.primaryColor),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Already a member?"),
//                   Text(
//                     "Login",
//                     style: TextStyle(fontSize: 14, color: theme.primaryColor),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/auth/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool visible = false;
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        children: [
          // cornerImage(),
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              heightSpace,
              heightSpace,
              Padding(
                padding: const EdgeInsets.fromLTRB(fixPadding * 2.0, fixPadding,
                    fixPadding * 2.0, fixPadding * 2.0),
                child: Text(
                  'Sign Up',
                  style: darkBlueColor22BoldTextStyle,
                ),
              ),
              userNameTextField(),
              emailTextField(),
              phoneNumberTextField(),
              passwordTextField(),
              signupButton(),
              // otherSigninOptions(),
            ],
          ),
        ],
      ),
    );
  }

  userNameTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      padding: EdgeInsets.all(fixPadding * 1.5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            spreadRadius: 2.5,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            color: greyColor,
            size: 20,
          ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Full Name',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  emailTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      padding: EdgeInsets.all(fixPadding * 1.5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            spreadRadius: 2.5,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.email_outlined,
            color: greyColor,
            size: 20,
          ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Email Address',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  phoneNumberTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      padding: EdgeInsets.all(fixPadding * 1.5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            spreadRadius: 2.5,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.phone_android_outlined,
            color: greyColor,
            size: 20,
          ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Phone Number',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  passwordTextField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: Container(
        padding: EdgeInsets.all(fixPadding * 1.5),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.1),
              spreadRadius: 2.5,
              blurRadius: 2.5,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.lock_outline,
              color: greyColor,
              size: 20,
            ),
            widthSpace,
            Expanded(
              child: TextField(
                obscureText: !visible,
                cursorColor: primaryColor,
                style: greyColor16MediumTextStyle,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintStyle: greyColor16MediumTextStyle,
                  hintText: 'Password',
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  visible = !visible;
                });
              },
              child: Icon(
                visible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: greyColor,
                size: 15,
              ),
            ),
            widthSpace,
          ],
        ),
      ),
    );
  }

  signupButton() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 1.5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // }=> Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Otp()
          // ),
          // ),
        },
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 2.5,
              ),
            ],
          ),
          child: Text(
            'Sign Up',
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }

  // otherSigninOptions() {
  //   return Column(
  //     children: [
  //       Row(
  //         children: [
  //           divider(),
  //           widthSpace,
  //           widthSpace,
  //           Text(
  //             'Or Connect with',
  //             style: greyColor15MediumTextStyle,
  //           ),
  //           widthSpace,
  //           widthSpace,
  //           divider(),
  //         ],
  //       ),
  //       heightSpace,
  //       heightSpace,
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             decoration: BoxDecoration(
  //               color: Color(0xff1da1f2),
  //               shape: BoxShape.circle,
  //             ),
  //             child: Image.asset(
  //               'assets/icons/twitter_icon.png',
  //               height: 16,
  //               width: 16,
  //             ),
  //           ),
  //           widthSpace,
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             decoration: BoxDecoration(
  //               color: Color(0xffea4335),
  //               shape: BoxShape.circle,
  //             ),
  //             child: Image.asset(
  //               'assets/icons/google+_icon.png',
  //               height: 16,
  //               width: 25,
  //             ),
  //           ),
  //           widthSpace,
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             decoration: BoxDecoration(
  //               color: Color(0xff4267b2),
  //               shape: BoxShape.circle,
  //             ),
  //             child: Image.asset(
  //               'assets/icons/facebook_icon.png',
  //               height: 16,
  //               width: 16,
  //             ),
  //           ),
  //         ],
  //       ),
  //       heightSpace,
  //       heightSpace,
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             'Already have an account? ',
  //             style: greyColor15MediumTextStyle,
  //           ),
  //           InkWell(
  //             onTap: () => Navigator.push(
  //               context,
  //               MaterialPageRoute(builder: (context) => SignIn()),
  //             ),
  //             child: Text(
  //               'Sign In',
  //               style: darkBlueColor15MediumTextStyle,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  divider() {
    return Expanded(
      child: Container(
        color: greyColor,
        height: 1.0,
      ),
    );
  }

  // cornerImage() {
  //   return Positioned(
  //     bottom: 0.0,
  //     left: 0.0,
  //     child: Image.asset(
  //       'assets/bg1.png',
  //       height: 170.0,
  //       width: 170.0,
  //       fit: BoxFit.cover,
  //     ),
  //   );
  // }
}
