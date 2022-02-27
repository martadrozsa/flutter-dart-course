import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail'
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              ElevatedButton(
                  onPressed: login,
                  child: const Text('Entrar'
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
  void login() {
    String text = _emailController.text;
    print(text);
    //_emailController.text = 'Marta';
    //_emailController.clear();
  }

  void onChanged(String text) {
    //print(text);
  }

  //enter (teclado - web)
  void onSubmitted(String text) {
    print(text);
  }
}