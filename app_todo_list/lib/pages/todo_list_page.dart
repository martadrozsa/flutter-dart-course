import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Adicione uma tarefa'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff34495E),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: const Text('Tarefa 1'),
                    subtitle: const Text('20/11/2020'),
                    leading: const Icon(Icons.save, size: 30),
                    onTap: () {
                      print('Tarefa 1');
                    },
                  ),
                  ListTile(
                    title: const Text('Tarefa 2'),
                    subtitle: const Text('21/11/2020'),
                    leading: const Icon(Icons.save, size: 30),
                    onTap: () {
                      print('Tarefa 2');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Você possui 0 tarefas pendentes',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Limpar tudo'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff34495E),
                      padding: const EdgeInsets.all(14),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
