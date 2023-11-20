import 'package:flutter/material.dart';
import 'package:pethelpapp/pages/login/loginPage.dart';
import 'package:pethelpapp/pages/login/signUpPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<FirstPage> {
  var emailController = TextEditingController(text: "email@email.com");
  var senhaController = TextEditingController(text: "123");
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff5ce1e6),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'PetHelp',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 26 // 3
                                ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 8,
                              child: Image.asset('lib/images/logo_white.png')),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(),
                      ),
                      const Row(
                        children: [
                          Text(
                            "Services for your PET!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Your pet deserves the best, and we deliver it \nright to your doorstep.",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
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
                                "Log In",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xff5ce1e6),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 8,
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
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff5ce1e6)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      width: 2.5, color: Colors.white),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Sign Up",
                                style:
                                    TextStyle(fontSize: 22, color: Colors.white),
                              ),
                            ),
                          )),
                      SizedBox(height: 16,)
                    ],
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
