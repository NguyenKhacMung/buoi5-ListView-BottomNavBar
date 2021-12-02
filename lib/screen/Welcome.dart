import 'package:flutter/material.dart';
import 'package:sesstion5/component/ListNP.dart';
import 'package:sesstion5/component/ListPR.dart';
import 'package:sesstion5/route/path.dart';

class Welcome extends StatefulWidget {
  static String path = welcome;
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xfff8f8f8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        // centerTitle: true,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Deliver to",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
              ],
            ),
            Text(
              "Parijat, Housing Estate",
              style: TextStyle(
                color: Color(0xfffd8564),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/user.png"),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome Foody!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff8f8f8),
                    hoverColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFe3eaef),
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: "Find Your Food",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                      ),
                      child: Icon(
                        Icons.list,
                        color: Color(0xfffd8564),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby Place",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All (12)",
                      style: TextStyle(
                        color: Color(0xfffd8564),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: ListNP(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Restaurants",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All (12)",
                      style: TextStyle(
                        color: Color(0xfffd8564),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 170,
                child: ListPR(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
