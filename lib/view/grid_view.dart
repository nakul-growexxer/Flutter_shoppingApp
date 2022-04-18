// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types

import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  const Grid_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myImageAndCaption = [
      ["assets/images/watch1.jpg", "OnePlus Watch"],
      ["assets/images/watch2.jpg", "Led Watch"],
      ["assets/images/watch3.jpeg", "Sonata Watch"],
      ["assets/images/watch4.jpeg", "Apple S7"],
      ["assets/images/watch5.jpeg", "BlackWidow Marvel"],
      ["assets/images/watch6.jpeg", "Sonata Red"],
      ["assets/images/watch7.jpeg", "Sonata Purple"],
      ["assets/images/watch8.jpeg", "G-shock"],
    ];

    return GridView.count(
      padding: EdgeInsets.all(8),
      //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8,
      children: [
        ...myImageAndCaption.map(
          (i) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Material(
                elevation: 3.0,
                child: Image.asset(
                  i.first,
                  fit: BoxFit.fitWidth,
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(i.last),
              ),
            ],
          ),
        ),
      ],
      // children: [
      //   Image.network(
      //       'https://m.media-amazon.com/images/I/61FxsUbnavL._SL1500_.jpg'),
      //   Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjEGEKcgAV2Lg-iiCAGnqhwbpK3KcLWWzqTQ&usqp=CAU'),
      //   Image.network(
      //       'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/8f01d1e9-48f4-4e55-886d-0b255b9bbf24.png?v=1625045855'),
      //   Image.network(
      //       'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/Grey_2.png?v=1639486284'),
      //   Image.network(
      //       'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/mainblack.png?v=1640237575'),
      //   Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrWNNvMKhRM9Kj8uJdqZc9-6a6vNVFNfZKrkL0WpZAZNj_U6r15toGuUwh__b3-LIgCMM&usqp=CAU'),
      //   Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbS-PrvGcd53OjW9LVaNitnKZlLE5UEMCiTw&usqp=CAU'),
      //   Image.network(
      //       'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MKUQ3_VW_34FR+watch-45-alum-midnight-nc-7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1,0&fmt=p-jpg&qlt=95&.v=1632171067000,1631661671000'),
      //   Image.network(
      //       'https://cdn.shopify.com/s/files/1/0047/1947/6825/files/small_watch_001.png'),
      //   Image.network(
      //       'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ML893_VW_34FR+watch-45-alum-starlight-nc-nike7s_VW_34FR_WF_CO?wid=750&hei=712&trim=1,0&fmt=p-jpg&qlt=95&.v=1632171390000,1631662263000'),
      //   Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyiFv1keltNTKzl7bBFveVHJwWZO-1BysBGg&usqp=CAU'),
      //   Image.network(
      //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBtTA85bwgreIeAoTz4YuqnzWh_cohQdxr8Q&usqp=CAU'),
      // ],
    );
  }
}
