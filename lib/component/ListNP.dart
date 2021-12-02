import 'package:flutter/material.dart';

class ListNP extends StatefulWidget {
  const ListNP({Key? key}) : super(key: key);

  @override
  _ListNPState createState() => _ListNPState();
}

class _ListNPState extends State<ListNP> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: item.length,
      itemBuilder: (BuildContext context, int index) {
        final items = item[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          color: Color(0xfff8f8f8),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            horizontalTitleGap: 20,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: items.image,
                width: 50,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(items.title),
            subtitle: Text(items.subTitle),
            trailing: Image(
              image: items.imgIcon,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

const List<Items> item = [
  Items(
    title: "Hungry Station",
    subTitle: "Jail road, Zinda Bazar, Sylhet",
    image: AssetImage("images/im1.png"),
    imgIcon: AssetImage("images/i1.png"),
  ),
  Items(
    title: "Artisan Coffee Shop",
    subTitle: "Mira bazar. Sylhet",
    image: AssetImage("images/im2.png"),
    imgIcon: AssetImage("images/i2.png"),
  ),
  Items(
    title: "KFC",
    subTitle: "Zindabazar road, Sylhet",
    image: AssetImage("images/im3.png"),
    imgIcon: AssetImage("images/i3.png"),
  ),
  Items(
    title: "Hungry Station",
    subTitle: "Jail road, Zinda Bazar, Sylhet",
    image: AssetImage("images/im1.png"),
    imgIcon: AssetImage("images/i1.png"),
  ),
  Items(
    title: "Artisan Coffee Shop",
    subTitle: "Mira bazar. Sylhet",
    image: AssetImage("images/im2.png"),
    imgIcon: AssetImage("images/i2.png"),
  ),
  Items(
    title: "KFC",
    subTitle: "Zindabazar road, Sylhet",
    image: AssetImage("images/im3.png"),
    imgIcon: AssetImage("images/i3.png"),
  ),
  Items(
    title: "Hungry Station",
    subTitle: "Jail road, Zinda Bazar, Sylhet",
    image: AssetImage("images/im1.png"),
    imgIcon: AssetImage("images/i1.png"),
  ),
  Items(
    title: "Artisan Coffee Shop",
    subTitle: "Mira bazar. Sylhet",
    image: AssetImage("images/im2.png"),
    imgIcon: AssetImage("images/i2.png"),
  ),
  Items(
    title: "KFC",
    subTitle: "Zindabazar road, Sylhet",
    image: AssetImage("images/im3.png"),
    imgIcon: AssetImage("images/i3.png"),
  ),
];

@immutable
class Items {
  final String title;
  final String subTitle;
  final ImageProvider image;
  final ImageProvider imgIcon;

  const Items({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.imgIcon,
  });
}
