import 'package:flutter/material.dart';

class homewhatsapp extends StatefulWidget {
  const homewhatsapp({super.key});

  @override
  State<homewhatsapp> createState() => _homewhatsappState();
}

class _homewhatsappState extends State<homewhatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("All")),
                    ElevatedButton(onPressed: () {}, child: Text("Unread")),
                    ElevatedButton(onPressed: () {}, child: Text("Favourate")),
                    ElevatedButton(onPressed: () {}, child: Text("Group")),
                  ],
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      title: Text("person${index + 1}"),
                      subtitle: Text('chats'),
                      trailing: Text(('10:30 Am')),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(),
                    );
                  },
                  itemCount: 15)
            ],
          ),
        ),
      ),
    );
  }
}
