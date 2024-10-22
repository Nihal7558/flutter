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
          title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.green),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu))
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      ElevatedButton(
                          onPressed: () {}, child: Text("Favourate")),
                      ElevatedButton(onPressed: () {}, child: Text("Group")),
                    ],
                  ),
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                              'data:image/jpeg;base64,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'),
                        ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add_comment,
            color: Colors.black,
          ),
        ));
  }
}
