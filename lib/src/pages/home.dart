import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';
import 'package:flutter_clone_instagram/src/components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
          thumbPath:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNCtcGbeqqw5GpWJG0C0271mwvMhS8b_Co2A&usqp=CAU",
          size: 70,
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: const Center(
              child: Text("+",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 1.1,
                  )),
            ),
          ),
        )
      ],
    );
  }

  Widget _postList() {
    return Column(
      children: List.generate(
        50,
        (index) => const PostWidget(),
      ).toList(),
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        SizedBox(width: 20),
        _myStory(),
        SizedBox(width: 5),
        ...List.generate(
          5,
          (index) => AvatarWidget(
            type: AvatarType.TYPE1,
            thumbPath:
                "https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg",
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(IconsPath.logo, width: 270),
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ImageData(
                    IconsPath.directMessage,
                    width: 50,
                  )))
        ],
      ),
      body: ListView(children: [
        _storyBoardList(),
        _postList(),
      ]),
    );
  }
}
