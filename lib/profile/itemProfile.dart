import 'package:app_food/model/product.dart';
import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final Product itemProduct;
  const ItemProduct({super.key, required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(itemProduct.name),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: MyWidget(
            itemName: itemProduct.name,
            itemId: itemProduct.id,
            itemImage: itemProduct.image,
            itemPrice: itemProduct.price,
          ),
        ));
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.itemId,
      required this.itemImage});
  final String itemName;
  final int itemPrice;
  final String itemImage;
  final int itemId;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(4),
                alignment: Alignment.center,
                color: Colors.amber,
                child:  Image.network(widget.itemImage),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                margin: const EdgeInsets.all(4),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      alignment: Alignment.topLeft,
                      child:  Text(
                        widget.itemName,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child:  Text(
                          widget.itemPrice.toString(),
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
                color: Colors.white,
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.amber,
                          ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(left: 12, top: 16),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "LongBoiz",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "Online 3 phút trước",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                                Text("Hà Nội",
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.pink,
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.amber,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Icon(Icons.chat_bubble_outlined),
                                Text("Chat")
                              ],
                            ))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.red,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Icon(Icons.shopping_bag_outlined),
                                Text("Giỏ hàng")
                              ],
                            ))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Mua ngay",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ))),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
