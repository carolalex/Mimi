import 'package:flutter/material.dart';
import 'package:mimo_staticdesign/common_widgets/reusable_widget.dart';

class Category_Page extends StatefulWidget {
  const Category_Page({Key? key}) : super(key: key);

  @override
  State<Category_Page> createState() => _Category_PageState();
}

class Music {
  final String title;
  final String imagePath;

  Music({required this.title, required this.imagePath});
}

class _Category_PageState extends State<Category_Page> {
  final List<Music> musicList = [
    Music(title: "Music", imagePath: "images/music.jpeg"),
    Music(title: "Celebration", imagePath: "images/music.jpeg"),
    Music(title: "Music", imagePath: "images/music.jpeg"),
    Music(title: "Celebration", imagePath: "images/music.jpeg"),
    Music(title: "Music", imagePath: "images/music.jpeg"),
    Music(title: "Celebration", imagePath: "images/music.jpeg"),
    Music(title: "Music", imagePath: "images/music.jpeg"),
    Music(title: "Celebration", imagePath: "images/music.jpeg"),
    Music(title: "Music", imagePath: "images/music.jpeg"),
    Music(title: "Celebration", imagePath: "images/music.jpeg"),
    Music(title: "Music", imagePath: "images/music.jpeg"),
    Music(title: "Celebration", imagePath: "images/music.jpeg")
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Appbar_widget(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
                top: size.height * 0.03),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  hintText: "Search...",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.03),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: size.width * 0.05,
                  mainAxisSpacing: size.height * 0.02,
                ),
                itemCount: musicList.length,
                itemBuilder: (context, index) {
                  return Container_widget(music: musicList[index]);
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(
                  size.width * 0.9,
                  50,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              "Apply",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottomnavigationbar_widget(),
    );
  }
}

class Container_widget extends StatelessWidget {
  final Music music;

  Container_widget({Key? key, required this.music}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(music.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionalTranslation(
          translation: Offset(0.0, -0.5),
          child: Text(
            music.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
