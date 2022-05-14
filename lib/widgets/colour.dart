import 'package:flutter/material.dart';
import '../providers/product.dart';

class Colour extends StatefulWidget {
  final Product product;

  Colour({required this.product});

  @override
  State<Colour> createState() => _ColourState();
}

class _ColourState extends State<Colour> {
  final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  final List<Color> colours = [
    const Color(0xFF356C95),
    const Color(0xFFF8C078),
    const Color(0xFFA29B9B)
  ];

  var selectedSize = 'S';
  var selectedColour = const Color(0xFF356C95);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Size',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: List.generate(
                sizes.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Material(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3),
                      onTap: () {
                        setState(() {
                          selectedSize = sizes[index];
                        });
                      },
                      child: Ink(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: selectedSize == sizes[index]
                              ? widget.product.color
                              : const Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            sizes[index],
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: selectedSize == sizes[index]
                                        ? Colors.white
                                        : Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Text(
              'Color',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: List.generate(
                colours.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      selectedColour = colours[index];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.all(2),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: selectedColour == colours[index]
                            ? selectedColour
                            : Colors.transparent,
                      ),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colours[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
