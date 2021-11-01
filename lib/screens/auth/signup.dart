import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/auth/login.dart';
import 'package:cozina/screens/auth/verification.dart';
// import 'package:cozina/screens/auth/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordvisible = false;
  bool confirmpasswordvisible = false;
  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        // physics:
        //     BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          heightSpace,
          heightSpace,
          SizedBox(
            height: height * 0.06,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Cozina",
              style: TextStyle(
                  fontSize: 40,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(fixPadding * 2.0, fixPadding,
                  fixPadding * 2.0, fixPadding * 2.0),
              child: Text(
                'Register',
                style: darkBlueColor22BoldTextStyle,
              ),
            ),
          ),
          userNameTextField(),
          emailTextField(),
          phoneNumberTextField(),
          passwordTextField(),
          confirmPasswordTextField(),

          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_box),
                color: primaryColor,
              ),
              Text(
                "I agree to all",
                style: TextStyle(fontSize: 15),
              ),
              widthSpace,
              Text(
                "T & C",
                style: TextStyle(color: accentColor, fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          signupButton(),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already a member?", style: greyColor16MediumTextStyle),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 16,
                      color: accentColor,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
          // otherSigninOptions(),
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
                hintText: 'Name',
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
                hintText: 'Email',
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
                hintText: 'Mobile No.',
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
                obscureText: !passwordvisible,
                cursorColor: primaryColor,
                style: greyColor16MediumTextStyle,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintStyle: greyColor16MediumTextStyle,
                  hintText: "Password",
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  passwordvisible = !passwordvisible;
                });
              },
              child: Icon(
                passwordvisible
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

  confirmPasswordTextField() {
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
                obscureText: !confirmpasswordvisible,
                cursorColor: primaryColor,
                style: greyColor16MediumTextStyle,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  hintStyle: greyColor16MediumTextStyle,
                  hintText: "Confirm Password",
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  confirmpasswordvisible = !confirmpasswordvisible;
                });
              },
              child: Icon(
                confirmpasswordvisible
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AccountVerification()));
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
            'Register',
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }
}
