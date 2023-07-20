import 'package:flutter/material.dart';
import 'package:praktikum_lesson/screens/home_page/pages/home_page.dart';

class TExtFieldExample extends StatefulWidget {
  const TExtFieldExample({super.key});

  @override
  State<TExtFieldExample> createState() => _TExtFieldExampleState();
}

class _TExtFieldExampleState extends State<TExtFieldExample> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isValidate = false;
   RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || !regex.hasMatch(value)) {
                      return 'TOGRI KELADIGAN PAROL KIRIT';
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: isValidate ? Icon(Icons.check) : null),
                controller: nameController,
                onChanged: (value) {
                  if (value.length > 6) {
                    setState(() {
                      isValidate = true;
                    });
                  } else {
                    setState(() {
                      isValidate = false;
                    });
                  }
                },
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                          title: nameController.text,
                          password: passwordController.text,
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
