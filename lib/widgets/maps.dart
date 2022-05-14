import 'package:flutter/material.dart';
import 'package:pirate_app/models/map_model.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final maps = dummy_maps;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListView.builder(
              itemCount: maps.length,
              itemBuilder: (context, index) {
                return MapItem(maps[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MapItem extends StatelessWidget {
  final Map mapData;
  MapItem(this.mapData);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    mapData.img,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      mapData.name,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('\$${mapData.treasure}'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.dangerous_outlined),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(mapData.level),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     const Icon(Icons),
                  //     const SizedBox(
                  //       width: 6,
                  //     ),
                  //     Text(mapData.),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
