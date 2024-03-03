import 'dart:developer';

import 'package:fa_mate_front/main.dart';
import 'package:flutter/material.dart';

final categories = ["슈나우져", "푸들", "말티즈", "도베르만", "불독"];

class SelectCategory extends StatelessWidget {
  const SelectCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: mq.height * .01),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => log(categories[index]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mq.width * .02,
                ),
                child: Text(
                  categories[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
