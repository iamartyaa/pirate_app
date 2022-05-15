class Map {
  final String id;
  final String name;
  final double treasure;
  final String level;
  final String img;
  Map({
    required this.id,
    required this.name,
    required this.treasure,
    required this.level,
    required this.img,
  });
}

List<Map> dummy_maps = [
  Map(
    id: "1",
    name: "Wales",
    treasure: 80000,
    level: "Amateur",
    img: "assets/map1.jpg",
  ),
  Map(
    id: "2",
    name: "Norway",
    treasure: 2400000,
    level: "Intermediate",
    img: "assets/map2.jpg",
  ),
  Map(
    id: "3",
    name: "Danes",
    treasure: 1000000,
    level: "Professional",
    img: "assets/map3.jpg",
  ),
  Map(
    id: "4",
    name: "Arabian Sea",
    treasure: 5000000,
    level: "Crazy",
    img: "assets/map5.jpg",
  ),
];
