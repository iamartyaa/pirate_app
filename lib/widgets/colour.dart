import 'package:flutter/material.dart';
import '../providers/product.dart';

class Colour extends StatelessWidget {
  final Product product;
  final List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  var selectedSize = 'S';

  Colour({required this.product});

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
                        selectedSize = sizes[index];
                      },
                      child: Ink(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: selectedSize == sizes[index]
                              ? product.color
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
              children: <Widget>[
                ColorDot(
                  color: const Color(0xFF356C95),
                  isSelected: true,
                ),
                ColorDot(
                  color: const Color(0xFFF8C078),
                ),
                ColorDot(
                  color: const Color(0xFFA29B9B),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  ColorDot({
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        right: 5,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
