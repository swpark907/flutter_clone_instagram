import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AvatarWidget(
          type: AvatarType.TYPE3,
          nickname: "개발하는남자",
          size: 45,
          thumbPath:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNCtcGbeqqw5GpWJG0C0271mwvMhS8b_Co2A&usqp=CAU",
        ),
        GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ))
      ],
    );
  }

  Widget _image() {
    return CachedNetworkImage(
      imageUrl:
          "https://images.unsplash.com/photo-1579353977828-2a4eab540b9a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FtcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    );
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            ImageData(
              IconsPath.likeOffIcon,
              width: 65,
            ),
            const SizedBox(width: 15),
            ImageData(
              IconsPath.replyIcon,
              width: 65,
            ),
            const SizedBox(width: 15),
            ImageData(
              IconsPath.directMessage,
              width: 65,
            ),
          ]),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 50,
          )
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "좋아요 150개",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ExpandableText(
            "컨텐츠 1 입니다\n컨텐츠 1 입니다\n컨텐츠 1 입니다\n컨텐츠 1 입니다\n",
            prefixText: "개발하는남자",
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
            onPrefixTap: () {
              print('개발하는남자 페이지로 이동');
            },
            expandText: "더보기",
            collapseText: "접기",
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          '댓글 199개 모두 보기',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text('1일전',
          style: TextStyle(
            color: Colors.grey,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(),
            const SizedBox(
              height: 15,
            ),
            _image(),
            const SizedBox(
              height: 15,
            ),
            _infoCount(),
            const SizedBox(
              height: 5,
            ),
            _infoDescription(),
            const SizedBox(
              height: 5,
            ),
            _replyTextBtn(),
            const SizedBox(
              height: 5,
            ),
            _dateAgo(),
          ],
        ));
  }
}
