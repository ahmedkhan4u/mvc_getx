import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostTile extends StatelessWidget {
  final url;
  final title;
  PostTile({this.url, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Image.network(
              url,
              scale: 1,
              height: Get.height * 0.1,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            )),
          ],
        ));
  }
}
