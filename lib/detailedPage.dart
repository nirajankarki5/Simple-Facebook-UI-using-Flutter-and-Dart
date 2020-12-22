import 'package:flutter/material.dart';

class detailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: Text(
          "Comments",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
            letterSpacing: -1.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: comment(
          react: "You and 10.5K others",
        ),
      ),
    );
  }
}

Widget comment({react}) {
  return Card(
    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(children: [
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.blue[700],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 15,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red[700],
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 15,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                react,
                style: TextStyle(fontSize: 18),
              ),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
              iconSize: 28,
              color: Colors.blue[700],
            )
          ]),
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Row(
              children: [
                Text(
                  "Most relevant",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage("assets/zebra.jpg"),
              ),
            ),
            Container(
              width: 320,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zebra",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Looking great bro......")
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("59 m", style: TextStyle(color: Colors.grey[700])),
            Text("Like", style: TextStyle(color: Colors.grey[700])),
            Text("Reply", style: TextStyle(color: Colors.grey[700])),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage("assets/rhino.jpg"),
              ),
            ),
            Container(
              width: 320,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "One-horned Rhino",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Guys, lets go for picnic, giaffe is coming with us :)")
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("2 h", style: TextStyle(color: Colors.grey[700])),
            Text("Like", style: TextStyle(color: Colors.grey[700])),
            Text("Reply", style: TextStyle(color: Colors.grey[700])),
          ],
        ),
        SizedBox(width: 50),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(15),
          child: Text(
            "View previous comments...",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
