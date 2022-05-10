import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        shadowColor: Colors.white,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/275248087_3087939231421295_2599991420738765212_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ko27oDOFiEgAX-mHsip&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9DgH9ODShmXAgXLaF1N-_Lvo9Vt-eb_HFsvZRSOIb-QA&oe=626B667C"),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "Chat",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Search")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildstory(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemBuilder: (context, index) => buildchat(),
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, indec) => SizedBox(
                  height: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
            backgroundColor: Colors.blue,
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }

  Widget buildchat() => Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/275248087_3087939231421295_2599991420738765212_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ko27oDOFiEgAX-mHsip&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9DgH9ODShmXAgXLaF1N-_Lvo9Vt-eb_HFsvZRSOIb-QA&oe=626B667C"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mostafa Ali",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hello ..........................................",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                height: 7,
                width: 7,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              )
            ],
          ),
        ],
      );
  Widget buildstory() => Row(
        children: [
          Column(children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/275248087_3087939231421295_2599991420738765212_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ko27oDOFiEgAX-mHsip&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9DgH9ODShmXAgXLaF1N-_Lvo9Vt-eb_HFsvZRSOIb-QA&oe=626B667C"),
            ),
            Text(
              "Mostafa Ali",
              maxLines: 2,
            )
          ])
        ],
      );
}
