import 'package:flutter/material.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix PADC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: const Color.fromRGBO(210, 47, 39, 1.0)),
        useMaterial3: true,
        fontFamily: "NetflixSans",
      ),
      home: const NetflixLoginPage(),
    );
  }
}

class NetflixLoginPage extends StatelessWidget {
  const NetflixLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/images/net_logo.png",
          width: 128.0,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              "Help",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: const Color.fromRGBO(22, 22, 22, 1.0),
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    fillColor: Color.fromRGBO(51, 51, 51, 1.0),
                    filled: true,
                    hintText: "Email or phone number",
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(148, 148, 148, 1.0))),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const PasswordInputView(),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(210, 47, 39, 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0))),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Recover Password",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 16.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                    text:
                        "Sign in is protected by Google reCAPTCHA to ensure that you are not a bot.",
                    style: TextStyle(
                      color: Color.fromRGBO(140, 140, 140, 1.0),
                    ),
                  ),
                  TextSpan(
                    text: "Learn more.",
                    style: TextStyle(
                        color: Color.fromRGBO(140, 140, 140, 1.0),
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordInputView extends StatefulWidget {
  const PasswordInputView({
    super.key,
  });

  @override
  State<PasswordInputView> createState() => _PasswordInputViewState();
}

class _PasswordInputViewState extends State<PasswordInputView> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: const Color.fromRGBO(51, 51, 51, 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(148, 148, 148, 1.0))),
                style: const TextStyle(color: Colors.white),
                obscureText: isPasswordHidden,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
              child: Text(
                (isPasswordHidden) ? "SHOW" : "HIDE",
                style: const TextStyle(
                  color: Color.fromRGBO(148, 148, 148, 1.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
