import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';
import './colour.dart';
import './cart_counter.dart';
import './add_cart.dart';
import './title_image.dart';

class ItemDetail extends StatefulWidget {
  final Product product;

  ItemDetail({required this.product});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final prodData = Provider.of<Fav>(context);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: widget.product.color,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.83,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.28),
                    padding: EdgeInsets.only(
                      top: size.height * 0.06,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Colour(product: widget.product),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              widget.product.description,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const CartCounter(),
                              Container(
                                padding: const EdgeInsets.all(4.5),
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFF6464),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.only(right: 1),
                                  onPressed: () {
                                    setState(() {
                                      widget.product.isFavourite =
                                          !widget.product.isFavourite;
                                    });
                                    if (widget.product.isFavourite) {
                                      prodData.addFav(widget.product.id);
                                    } else {
                                      prodData.removeFav(widget.product.id);
                                    }
                                  },
                                  icon: widget.product.isFavourite
                                      ? const Icon(
                                          Icons.favorite_outlined,
                                          color: Colors.white,
                                        )
                                      : const Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.white,
                                        ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          AddCart(product: widget.product),
                        ],
                      ),
                    ),
                  ),
                  TitleImage(product: widget.product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
