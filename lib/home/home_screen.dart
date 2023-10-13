// ignore: unused_import
import 'package:app_food/model/type.dart';
import 'package:app_food/model/product.dart';
import 'package:app_food/profile/itemProfile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      child: IntrinsicHeight(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: const AppbarHome(),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Container(child: const SearchFood()),
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const TitleFood(
                  titleFood: "Loại",
                  sceenFull: "Tất cả",
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: ItemType(),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const TitleFood(
                  titleFood: "Giá Tốt",
                  sceenFull: "Tất cả",
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const ListFood(),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const TitleFood(
                    titleFood: "Tất Cả Sản Phẩm", sceenFull: ""),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const AllProduct(),
              )
            ],
          ),
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
                  child: Text(sceenFull,
                      style: const TextStyle(
                        color: Color(0xffFF6D04),
                      ))))
        ],
      ),
    );
  }
}

class ItemType extends StatelessWidget {
  final List<Type> typeFood = [
    Type(id: 1, name: "Phở"),
    Type(id: 2, name: "Cơm"),
    Type(id: 3, name: "Xôi"),
    Type(id: 4, name: "Bún"),
    Type(id: 5, name: "Nước"),
    Type(id: 6, name: "Bánh Mì"),
    Type(id: 7, name: "Ăn Vặt"),
    Type(id: 8, name: "Cháo"),
    Type(id: 9, name: "Thịt"),
    Type(id: 10, name: "Canh"),
  ];

  ItemType({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: typeFood.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffFF6D04)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    typeFood[index].name,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ))
                ],
              ),
            );
          }),
    );
  }
}

class ListFood extends StatefulWidget {
  const ListFood({super.key});
  @override
  State<ListFood> createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {
  @override
  Widget build(BuildContext context) {
    final List<Product> foodItems = [
      Product(
          id: 1,
          name: 'Pizza1',
          price: 2999,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
      Product(
          id: 2,
          name: 'Burger2',
          price: 1999,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
      Product(
          id: 3,
          name: 'Pasta3',
          price: 2499,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
      Product(
          id: 4,
          name: 'Pasta4',
          price: 2499,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
      Product(
          id: 6,
          name: 'Pasta6',
          price: 2499,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
      Product(
          id: 5,
          name: 'Pasta5',
          price: 2499,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
      Product(
          id: 7,
          name: 'Pasta7',
          price: 2499,
          image:
              'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    ];
    // ignore: sized_box_for_whitespace
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150.0,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            // ignore: avoid_unnecessary_containers
            child: Container(
                child: Column(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.amber),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(foodItems[index].image))),
                      // child: Image.network(
                      //   foodItems[index].image,
                      // ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        foodItems[index].name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${foodItems[index].price.toString()} VND",
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          // ignore: unnecessary_string_interpolations
                          "${foodItems[index].price.toString()}",
                          style: const TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        )
                      ],
                    )),
                // ignore: avoid_unnecessary_containers
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 200, // specify your desired width
                      height: 60,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ItemProduct(itemProduct: foodItems[index]),
                            ),
                          );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text("Mua"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFF6D04)),
                      ),
                    )),
              ],
            )),
          );
        },
      ),
    );
  }
}

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  final List<Product> foodItems = [
    Product(
        id: 1,
        name: 'Pizza1',
        price: 2999,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 2,
        name: 'Burger2',
        price: 1999,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 3,
        name: 'Pasta3',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 4,
        name: 'Pasta4',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 6,
        name: 'Pasta6',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 5,
        name: 'Pasta5',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 7,
        name: 'Pasta7',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 8,
        name: 'Pasta8',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 9,
        name: 'Pasta7',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
    Product(
        id: 10,
        name: 'Pasta8',
        price: 2499,
        image:
            'https://cachnau.vn/wp-content/uploads/2022/02/pho-ga-mien-bac.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    double itemHeight = 250.0; // Changed to occupy available space
    double gridViewHeight = (foodItems.length / 2) * itemHeight;
    return Container(
      height: gridViewHeight,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.65, // Adjust for your needs
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: List.generate(foodItems.length, (index) {
          return Container(
            width: 200,
            height: itemHeight,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.amber),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(foodItems[index].image),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      foodItems[index].name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${foodItems[index].price.toString()} VND",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${foodItems[index].price.toString()}",
                        style: const TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 200,
                    height: 60,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ItemProduct(itemProduct: foodItems[index]),
                          ),
                        )
                      },
                      child: const Text("Mua"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFF6D04),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
