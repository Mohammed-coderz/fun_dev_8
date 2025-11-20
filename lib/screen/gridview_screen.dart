import 'package:flutter/material.dart';

import '../model/items_model.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  List<ItemsModel> items = [
    ItemsModel(
      itemName: "apple",
      itemDescription: "red apple",
      itemImage:
          "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_1280.jpg",
      itemPrice: "1.99",
    ),
    ItemsModel(
      itemName: "apple",
      itemDescription: "green apple",
      itemImage:
          "https://media.istockphoto.com/id/920478620/photo/green-apple-fruit-with-green-leaf-isolated-on-white.jpg?s=612x612&w=0&k=20&c=pXx_2W5bVDbxc5f6_yaPBKxDR8bZk2vX0FWq2tgVhtE=",
      itemPrice: "2.99",
    ),
    ItemsModel(
      itemName: "apple",
      itemDescription: "yellow apple",
      itemImage:
          "https://www.shutterstock.com/image-photo/one-ripe-yellow-apple-fruit-260nw-1368188345.jpg",
      itemPrice: "2.99",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview'), centerTitle: true),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 40,
          mainAxisExtent: 200,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  items[index].itemImage ?? "",
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(items[index].itemName ?? "-"),
                    Text(items[index].itemPrice ?? "0"),
                  ],
                ),
                Text(items[index].itemDescription ?? "-"),
                ElevatedButton(onPressed: () {}, child: Text("add to cart")),
              ],
            ),
          );
        },
      ),
    );
  }
}
