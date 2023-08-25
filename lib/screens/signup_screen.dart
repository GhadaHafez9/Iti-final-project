import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/custom_buttom.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNamecontroller = TextEditingController();
  TextEditingController lastNamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 40,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/flash_logo.png',
                  width: 400,
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: firstNamecontroller,
                    decoration: const InputDecoration(labelText: 'First Name'),
                    validator: (value) {
                      if (value == null || value.length > 3) {
                        return " Enter valid First Name ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: lastNamecontroller,
                    decoration: const InputDecoration(labelText: 'Last Name'),
                    validator: (value) {
                      if (value == null || value.length > 3) {
                        return " Enter valid Last Name ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value == null || value.contains("@") == false) {
                        return " Enter valid Email ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return " Enter valid Password ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Confirmation Password'),
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return " Enter valid Re-Password ";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 18.0),
                MyCustomButton(
                  buttonLabel: "Sign Up",
                  onTap: () async {
                    //Firebase Code Here
                  },
                ),
                const SizedBox(height: 18.0),
                MyCustomButton(
                  buttonLabel: "Have An Account? Sign In",
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
