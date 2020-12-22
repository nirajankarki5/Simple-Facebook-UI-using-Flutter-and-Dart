import 'package:flutter/material.dart';
import 'detailedPage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue[600],
            fontSize: 29.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.0,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.search),
              iconSize: 29.0,
              color: Colors.black,
              onPressed: () {},
            ),
          ),
          SizedBox(width: 9),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.message),
              iconSize: 28.0,
              color: Colors.black,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          newsFeed(context,
              feedImage: "assets/dog.jpg",
              feedName: "Tommy",
              feedDate: "Mar 17 ",
              fbImage: "assets/dogSelfie.jpg",
              caption: "Selfie on the play ground :)",
              react: "10.5K",
              comments: "228",
              shares: "94"),
          newsFeed(context,
              feedImage: "assets/cat.jpg",
              feedName: "Cat",
              feedDate: "May 8  ",
              fbImage: "assets/catImage.jpg",
              caption: "Fun time playing :P",
              react: "9.8K",
              comments: "193",
              shares: "85"),
          newsFeed(context,
              feedImage: "assets/lion.jpg",
              feedName: "Simba",
              feedDate: "Oct 30 ",
              fbImage: "assets/lionImage.jpg",
              caption: "What a boring day :(",
              react: "15.1K",
              comments: "301",
              shares: "122"),
        ],
      ),
    );
  }
}

Widget newsFeed(context,
    {feedImage,
    feedName,
    feedDate,
    fbImage,
    caption,
    react,
    comments,
    shares}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => detailedPage()));
    },
    child: Card(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 22.0,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage(feedImage),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: feedName,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: " added a new photo",
                              style: TextStyle(color: Colors.grey[600])),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          feedDate,
                          style: TextStyle(
                              fontSize: 13.0, color: Colors.grey[600]),
                        ),
                        Icon(
                          Icons.public,
                          size: 14,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(width: 40),
              IconButton(
                  alignment: Alignment.centerRight,
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {}),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Text(caption),
            ),
          ),
          Image(
            image: AssetImage(fbImage),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
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
                    size: 10,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(child: Text(react)),
                Text("${comments} Comments"),
                SizedBox(width: 8),
                Text("${shares} Shares"),
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.thumb_up_outlined,
                  color: Colors.grey[700],
                ),
                label: Text("Like", style: TextStyle(color: Colors.grey[700])),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.mode_comment,
                  color: Colors.grey[700],
                ),
                label:
                    Text("Comment", style: TextStyle(color: Colors.grey[700])),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.reply,
                  color: Colors.grey[700],
                ),
                label: Text("Share", style: TextStyle(color: Colors.grey[700])),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
