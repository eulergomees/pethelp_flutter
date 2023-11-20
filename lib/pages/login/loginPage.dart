import 'package:flutter/material.dart';
import 'package:pethelpapp/pages/login/signUpPage.dart';
import 'package:pethelpapp/shared/widgets/myPainter.dart';

import '../mainPage.dart';
import 'firstPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: CustomPaint(
                  painter: MyPainter(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FirstPage()));
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              "lib/images/dog_and_cat.png",
                              width: 35,
                            )
                          ],
                        ),
                        Expanded(flex: 1, child: Container()),
                        const Row(
                          children: [
                            Text(
                              "Welcome \nBack",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 250,
                        ),
                        TextFormField(
                          style: const TextStyle(color: Colors.black54),
                          decoration: const InputDecoration(
                            hintText: "Email",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff5ce1e6))),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 30,
                              color: Color(0xff5ce1e6),
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          style: const TextStyle(color: Colors.black54),
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff5ce1e6))),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              size: 30,
                              color: Color(0xff5ce1e6),
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(
                                isObscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black54,
                              ),
                            ),
                            border: const UnderlineInputBorder(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot password?",
                                style: TextStyle(
                                  color: Color(0xff5ce1e6),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MainPage()));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff5ce1e6)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: const BorderSide(
                                        width: 0, color: Colors.white),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Or",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUpPage()));
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: const BorderSide(
                                        width: 1, color: Colors.black45),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black54),
                                ),
                              ),
                            )),
                        const SizedBox(height: 16,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
