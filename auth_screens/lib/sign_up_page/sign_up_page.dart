import 'package:auth_screens/sign_in_page/sign_in_page.dart';
import 'package:auth_screens/text_form_field.dart';
import 'package:auth_screens/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                color: AppColors.purple,
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Center(child: Image.asset("assets/signup.png")),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
              ),
            ),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.70,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(2, 2),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(-2, -2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            AdjustedTextFormField(
                              leadingIcon: Icon(
                                Icons.person_2_outlined,
                                color: Colors.white,
                              ),
                              labelText: "Your Name",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your name";
                                }
                                return null;
                              },
                            ),
                            AdjustedTextFormField(
                              leadingIcon: Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              labelText: "Your Phone Number",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your phone number";
                                }
                                return null;
                              },
                            ),
                            AdjustedTextFormField(
                              leadingIcon:
                                  const Icon(Icons.email_outlined, color: Colors.white),
                              labelText: "Email",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your email";
                                }
                                return null;
                              },
                            ),
                            AdjustedTextFormField(
                              leadingIcon:
                                  const Icon(Icons.lock_outline, color: Colors.white),
                              labelText: "Password",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your password";
                                }
                                return null;
                              },
                              suffixIcon:
                                  const Icon(Icons.visibility, color: Colors.white),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {}
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(AppColors.purple),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text("SIGN UP",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 12),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const SignInPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                        color: AppColors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
