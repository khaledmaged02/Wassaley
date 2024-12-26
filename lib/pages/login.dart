import 'package:flutter/material.dart';
import 'package:wassaley/shared/custum_textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
            ),
            child: Stack(
              children: [
                _buildDecorativeCircle(-50, -50, 200,
                    const Color.fromARGB(167, 167, 0, 0).withOpacity(0.3)),
                _buildDecorativeCircle(
                    -50,
                    MediaQuery.of(context).size.width - 150,
                    150,
                    const Color.fromARGB(255, 255, 82, 82).withOpacity(0.1)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Image.asset(
                        'images/شعار بسيط بالأحمر شركة توصيل طلبات (3) (1).png',
                        height: 250,
                      ),
                      const SizedBox(height: 20),
                      _buildFormContainer(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDecorativeCircle(
      double top, double left, double size, Color color) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }

  Widget _buildFormContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        children: [
          const MyTextfield(
            textInType: TextInputType.number,
            isPassword: false,
            hintTixtt: "Enter Your Number",
          ),
          const SizedBox(height: 20),
          const MyTextfield(
            textInType: TextInputType.visiblePassword,
            isPassword: true,
            hintTixtt: "Enter Your Password",
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 255, 82, 82),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: const Text('Log In'),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Do not have an account? '),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Color.fromARGB(255, 255, 82, 82)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
