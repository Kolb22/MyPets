import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height));
    return GetBuilder<LoginController>(
      builder: (_) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(fit: StackFit.expand, children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Image.asset("assets/images/dog.png"),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                  child: Container(
                    padding: const EdgeInsets.only(top: 310.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(bottom: 22.0),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Login",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(25),
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .6)),
                                SizedBox(
                                  height: ScreenUtil().setHeight(30),
                                ),
                                Text("Username",
                                    style: TextStyle(fontSize: ScreenUtil().setSp(16))),
                                const TextField(
                                  decoration: InputDecoration(
                                      hintText: "username",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(20),
                                ),
                                Text("Password",
                                    style: TextStyle(fontSize: ScreenUtil().setSp(16))),
                                const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(25),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        GestureDetector(
                                          onTap: () => {},
                                          child: radioButton(true),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        const Text("Remember me",
                                            style: TextStyle(
                                                fontSize: 12, fontFamily: "Poppins-Medium"))
                                      ],
                                    ),
                                    Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: ScreenUtil().setSp(16)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            width: double.infinity,
                            height: ScreenUtil().setHeight(50),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/hueso.png"),
                                  fit: BoxFit.cover,
                                ),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFffdec8),
                                  Color(0xFF4b3306)
                                ]),
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFF6078ea).withOpacity(.3),
                                      offset: const Offset(0.0, 8.0),
                                      blurRadius: 8.0)
                                ]),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => {Get.toNamed(AppRoutes.PETS)},
                                child: const Center(
                                  child: Text("SIGNIN",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            horizontalLine(),
                            const Text("Have a Code?",
                                style: TextStyle(
                                    fontSize: 16.0, fontFamily: "Poppins-Medium")),
                            horizontalLine()
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Row(
                          children: <Widget>[
                            const Expanded(
                              flex: 7,
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(  borderSide: BorderSide(color: Colors.black)),
                                    hintText: "Insert the code",
                                    labelText: "Pet's Code",
                                    labelStyle:  TextStyle(fontWeight: FontWeight.bold),
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    floatingLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 12.0)),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () => {Get.toNamed(AppRoutes.PET)},
                                child: Container(
                                  width: double.infinity,
                                  height: ScreenUtil().setHeight(45),
                                  decoration: BoxDecoration(
                                      border:  Border.all(color: Colors.black),
                                      image: const DecorationImage(
                                        image: AssetImage("assets/images/find.png"),
                                      ),
                                      // gradient: const LinearGradient(colors: [
                                      //   Color(0xFFffdec8),
                                      //   Color(0xFF4b3306)
                                      // ]),
                                      borderRadius: BorderRadius.circular(6.0),
                                      // boxShadow: [
                                      //   BoxShadow(
                                      //       color: const Color(0xFF6078ea).withOpacity(.3),
                                      //       offset: const Offset(0.0, 8.0),
                                      //       blurRadius: 8.0)
                                      // ]
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget horizontalLine() => Container(
  width: ScreenUtil().setWidth(105),
  height: 1.0,
  color: Colors.black26.withOpacity(.2),
);

Widget radioButton(bool isSelected) => Container(
  width: 16.0,
  height: 16.0,
  padding: const EdgeInsets.all(2.0),
  decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 2.0, color: Colors.black)),
  child: isSelected
      ? Container(
    width: double.infinity,
    height: double.infinity,
    decoration:
    const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
  )
      : Container(),
);