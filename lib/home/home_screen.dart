// ignore: unused_import
import 'package:app_food/model/product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 5, top: 30, right: 5),
        child:const Column(
          children: [
             AppbarHome(),
             SizedBox(
              height: 10,
            ),
             SearchFood(),
             SizedBox(
              height: 10,
            ),
             TitleFood(
              titleFood: "Loại",sceenFull: "Tất cả",
            ),
             SizedBox(
              height: 10,
            ),
             TitleFood(
              titleFood: "Giá Tốt",
              sceenFull: "Tất cả",
            ),
            SizedBox(height: 10,),
            TitleFood(titleFood: "Tất Cả Sản Phẩm", sceenFull: ""),
          ],
        ),
      ),
    );
  }
}

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          const Expanded(
            flex: 7, // 70% of space
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // To align content to the left
              children: [
                Text(
                  "Hi,",
                  style: TextStyle(color: Color(0xff717171), fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "LongBoiz",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3, // 30% of space
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchFood extends StatelessWidget {
  const SearchFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            labelText: "Tìm kiếm đồ ăn, nước uống ...",
            prefixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            enabled: false),
      ),
    );
  }
}

class TitleFood extends StatelessWidget {
  final String titleFood;
  final String sceenFull; // declare a final string variable named 'data'
  const TitleFood({Key? key, required this.titleFood, required this.sceenFull})
      : super(key: key); // Add it to the constructor
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Expanded(
              flex: 7,
              child: Text(
                titleFood,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ) // Use the data here
              ),
          Expanded(
              flex: 3,
              child: TextButton(
                  onPressed: () {},
                  child:  Text(sceenFull,
                      style:const TextStyle(
                        color: Color(0xffFF6D04),
                      ))))
        ],
      ),
    );
  }
}


