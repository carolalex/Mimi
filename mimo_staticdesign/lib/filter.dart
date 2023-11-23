import 'package:flutter/material.dart';
import 'package:mimo_staticdesign/common_widgets/reusable_widget.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int itemcount = 5;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Appbar_widget(),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            height: size.height * 0.05,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Scroll horizontally
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return CustomContainerBuilder()
                    .withChild(Text("Everything"))
                    .withBackgroundColor(Colors.pink.shade100)
                    .withBorderColor(Colors.pink)
                    .withBorderRadius(20)
                    .withBorderWidth(1)
                    .build();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ImageContainerBuilder()
                        .withProfilePic("")
                        .withName("")
                        .withStarRating(0)
                        .withBigImage("")
                        .withRating(Text(""))
                        .withHeading(Text(""))
                        .withDetails(Text(""))
                        .withEvent("")
                        .withDate("")
                        .withLikes(Text(""))
                        .withBorderRadius(10)
                        .build()
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          Bottomnavigationbar_widget(),
    );
  }
}


class CustomContainerBuilder {
  Widget? child;
  Color? backgroundcolor;
  Color? bordercolor;
  double? borderradius;
  double? borderwidth;
  EdgeInsets? padding;

  CustomContainerBuilder() {
    // Initialize default values here if needed
  }

  CustomContainerBuilder withChild(Widget child) {
    this.child = child;
    return this;
  }

  CustomContainerBuilder withBackgroundColor(Color backgroundcolor) {
    this.backgroundcolor = backgroundcolor;
    return this;
  }

  CustomContainerBuilder withBorderColor(Color bordercolor) {
    this.bordercolor = bordercolor;
    return this;
  }

  CustomContainerBuilder withBorderRadius(double borderradius) {
    this.borderradius = borderradius;
    return this;
  }

  CustomContainerBuilder withBorderWidth(double borderwidth) {
    this.borderwidth = borderwidth;
    return this;
  }

  CustomContainerBuilder withPadding(EdgeInsets padding) {
    this.padding = padding;
    return this;
  }

  CustomContainer build() {
    return CustomContainer(
      backgroundcolor: backgroundcolor ?? Colors.transparent,
      bordercolor: bordercolor ?? Colors.transparent,
      borderradius: borderradius ?? 20.0,
      borderwidth: borderwidth ?? 1.0,
      padding: padding ?? const EdgeInsets.all(8.0),
      child: child ?? const SizedBox(),
    );
  }
}

class ImageContainerBuilder {
  String? profilepic;
  String? name;
  double? starrating;
  String? bigimage;
  Icon? star;
  Text? rating;
  Text? heading;
  Text? details;
  String? event;
  String? date;
  Text? likes;
  Icon? thumsup;
  Icon? share;
  double? borderradius;

  ImageContainerBuilder() {
    // Initialize default values here if needed
  }

  ImageContainerBuilder withProfilePic(String profilepic) {
    this.profilepic = profilepic;
    return this;
  }

  ImageContainerBuilder withName(String name) {
    this.name = name;
    return this;
  }

  ImageContainerBuilder withStarRating(double starrating) {
    this.starrating = starrating;
    return this;
  }

  ImageContainerBuilder withBigImage(String bigimage) {
    this.bigimage = bigimage;
    return this;
  }

  ImageContainerBuilder withRating(Text rating) {
    this.rating = rating;
    return this;
  }

  ImageContainerBuilder withHeading(Text heading) {
    this.heading = heading;
    return this;
  }

  ImageContainerBuilder withDetails(Text details) {
    this.details = details;
    return this;
  }

  ImageContainerBuilder withEvent(String event) {
    this.event = event;
    return this;
  }

  ImageContainerBuilder withDate(String date) {
    this.date = date;
    return this;
  }

  ImageContainerBuilder withLikes(Text likes) {
    this.likes = likes;
    return this;
  }

  ImageContainerBuilder withBorderRadius(double borderradius) {
    this.borderradius = borderradius;
    return this;
  }

  ImageContainer build() {
    String? profilepic;
    String? name;
    double? starrating;
    String? bigimage;
    Icon? star;
    String? rating;
    String? heading;
    String? details;
    String? likes;
    double? borderradius;

    return ImageContainer(
      profilepic: profilepic ?? "images/pro1.png",
      name: name ?? "Bruce Smith",
      starrating: starrating ?? 4.153,
      bigimage: bigimage ?? "images/img1.png",
      star: star ?? Icon(Icons.star),
      rating: rating ?? "4.1 (53)",
      heading: heading ?? "Ronaldo's goal against Milan ",
      details: details ??
          "Taken in the Juventus vs Milan match of the 2020 season. A great goal in minute 78",
      event: event ?? "Sports",
      date: date ?? "21 Apr 2020",
      likes: likes ?? "160k",
      thumsup: thumsup ?? Icon(Icons.thumb_up_sharp),
      share: share ?? Icon(Icons.share),
      borderradius: borderradius ?? 20,
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundcolor;
  final Color bordercolor;
  final double borderradius;
  final double borderwidth;
  final EdgeInsets padding;

  CustomContainer({
    required this.child,
    required this.backgroundcolor,
    required this.bordercolor,
    this.borderradius = 20.0,
    this.borderwidth = 1.0,
    this.padding = const EdgeInsets.all(8.0),
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(borderradius),
          border: Border.all(
            width: borderwidth,
            color: bordercolor,
          ),
        ),
        padding: padding,
        child: child,
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String profilepic;
  final String name;
  final double starrating;
  final String bigimage;
  final Icon star;
  final String rating;
  final String heading;
  final String details;
  final String event;
  final String date;
  final String likes;
  final Icon thumsup;
  final Icon share;
  final double borderradius;

  const ImageContainer({
    required this.profilepic,
    required this.name,
    required this.starrating,
    required this.bigimage,
    this.star = const Icon(Icons.star),
    required this.rating,
    required this.heading,
    required this.details,
    required this.event,
    required this.date,
    required this.likes,
    required this.borderradius,
    this.thumsup = const Icon(Icons.thumb_up_sharp),
    this.share = const Icon(Icons.share),
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.350,
      width: size.width * 0.9,
      //color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profilepic),
                    radius: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            star,
                            Text(rating),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderradius),
                child: Image.asset(
                  bigimage,
                  height: size.height * 0.20,
                  width: size.width * 0.83,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  event,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(date),
                SizedBox(
                  width: size.width * 0.20,
                ),
                Text(likes),
                thumsup,
                share,
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                heading,
                style: TextStyle(color: Colors.purple),
              ),
            ),
            Text(details),
          ],
        ),
      ),
    );
  }
}
