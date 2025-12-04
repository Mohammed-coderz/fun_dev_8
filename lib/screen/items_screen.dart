import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../model/items_model.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  List<ItemsModel> items = [
    ItemsModel(
      itemName: "apple",
      itemNameAr: "تفاح",
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
    var lang = context.locale.languageCode;

    return Scaffold(
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
            ),
            child: Row(
              children: [
                Image.network(
                  items[index].itemImage ?? "",
                  width: 100,
                  height: 140,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("name :"),
                        Text(
                          lang == 'ar'
                              ? items[index].itemNameAr ?? "-"
                              : items[index].itemName ?? "-",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("des:"),
                        Text(items[index].itemDescription ?? "-"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("price :"),
                        Text(items[index].itemPrice ?? "-"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 5),
                ElevatedButton(onPressed: () {}, child: Text("add to cart")),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
      ),
    );
  }
}
