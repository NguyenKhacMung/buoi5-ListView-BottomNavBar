import 'package:flutter/material.dart';

class ListPR extends StatefulWidget {
  const ListPR({Key? key}) : super(key: key);

  @override
  _ListPRState createState() => _ListPRState();
}

class _ListPRState extends State<ListPR> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0xFFDDE5E9),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image(
                    image: item.image,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(item.subtitle),
                          ],
                        ),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.grey,
                          ),
                          Text('${item.start}'),
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

List<Items> items = [
  Items(
    image: AssetImage("images/im1.png"),
    title: "Panshi In",
    subtitle: "29 recipes",
    start: 8,
  ),
  Items(
    image: AssetImage("images/im2.png"),
    title: "Food House",
    subtitle: "49 recipes",
    start: 8,
  ),
  Items(
    image: AssetImage("images/im3.png"),
    title: "Artisan Coffee Shop",
    subtitle: "29 recipes",
    start: 8,
  ),
  Items(
    image: AssetImage("images/im1.png"),
    title: "Panshi In",
    subtitle: "29 recipes",
    start: 8,
  ),
  Items(
    image: AssetImage("images/im2.png"),
    title: "Food House",
    subtitle: "49 recipes",
    start: 8,
  ),
  Items(
    image: AssetImage("images/im3.png"),
    title: "Artisan Coffee Shop",
    subtitle: "29 recipes",
    start: 8,
  ),
];

class Items {
  final ImageProvider image;
  final String title;
  final String subtitle;
  final int start;

  Items({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.start,
  });
}
