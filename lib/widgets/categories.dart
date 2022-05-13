import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Hat", "Robe", "Sword", "Ship"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.8,
      child: Container(
        // color: Color.fromARGB(255, 153, 237, 228),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: SizedBox(
            height: 33,
            // child: ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: categories.length,
            //   itemBuilder: (context, index) => buildCategory(index),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategory(0),
                  buildCategory(1),
                  buildCategory(2),
                  buildCategory(3),
                  buildCategory(4),
                ],
              ),
            ),
          ),
        
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
            child:  Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index ? Colors.black : Colors.grey,
                  ),
                ),
              
              // Container(
              //   margin: const EdgeInsets.only(top:3), //top padding 5
              //   height: 2,
              //   width: 40,
              //   color: selectedIndex == index ? Colors.black : Colors.transparent,
              // )
          //   ],
          // ),
        ),
    );
  }
}
