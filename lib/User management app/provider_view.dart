import 'package:flutter/material.dart';
import 'package:homepage/User%20management%20app/provider_services.dart';
import 'package:provider/provider.dart';

class ProviderEx extends StatefulWidget {
  const ProviderEx({super.key});

  @override
  State<ProviderEx> createState() => _ProviderExState();
}

class _ProviderExState extends State<ProviderEx> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final providerGetter = Provider.of<ProviderServices>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 237),
      appBar: AppBar(
        backgroundColor: Color(0xff0070af),
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person_2),
              radius: 14,
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 10),
            Text("User Management App"),
          ],
        ),
      ),
      body: Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              final user = providerGetter.user[index];

              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.age),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          _nameController.text = user.name;
                          _ageController.text = user.age;
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: Text('Update Name and Age'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormField(
                                        controller: _nameController,
                                        decoration: InputDecoration(
                                            hintText: 'enter your name'),
                                      ),
                                      TextFormField(
                                        controller: _ageController,
                                        decoration: InputDecoration(
                                            hintText: 'enter your name'),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          providerGetter.updateUser(
                                              user.id,
                                              _nameController.text,
                                              _ageController.text);
                                          Navigator.pop(context);
                                        },
                                        child: Text('Update'))
                                  ],
                                );
                              });
                        },
                        icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          providerGetter.deleteUser(user.id);
                        },
                        icon: Icon(Icons.delete)),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox.shrink();
            },
            itemCount: providerGetter.user.length),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text('Create Name and Age'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: _nameController,
                          decoration:
                              InputDecoration(hintText: 'enter your name'),
                        ),
                        TextFormField(
                          controller: _ageController,
                          decoration:
                              InputDecoration(hintText: 'enter your name'),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            providerGetter.createUser(User(
                                name: _nameController.text,
                                id: DateTime.now().toString(),
                                age: _ageController.text));
                            Navigator.pop(context);
                          },
                          child: Text('Create'))
                    ],
                  );
                });
          },
          child: Icon(
            Icons.add,
            size: 25,
          ),
          backgroundColor: Colors.grey),
    );
  }
}
