import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_animation210921/src/controller/text_animation.dart';

class PostDetailView extends GetView<TextAnimation> {
  const PostDetailView();

  @override
  Widget build(BuildContext context) {
    Get.put(TextAnimation());
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.post!['title']!),
      ),
      body: Column(
        children: [
          Hero(
              tag: controller.post!['uid']!,
              child: Image.asset(
                controller.post!['thumbnail']!,
                width: 600,
                height: 400,
              )),
          Column(
            children: [
              SlideTransition(
                position: controller.animationOffset!,
                child: Text(
                  controller.post!['title']!,
                ),
              ),
              Text(
                controller.post!['description']!,
              )
            ],
          )
        ],
      ),
    );
  }
}
