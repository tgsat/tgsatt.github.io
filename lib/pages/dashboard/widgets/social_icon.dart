import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/image_config.dart';
import 'package:portfolio_me/utils/value/size_config.dart';
import 'package:portfolio_me/utils/value/url.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      top: SizeConfig.maxHeight(context) * 0.2,
      child: SizedBox(
        height: 300,
        width: 35,
        child: Column(
          children: [
            Tooltip(
              message: "Whatapps",
              child: SocialItem.icon(
                press: () async {
                  if (!await launch(Url.whatapps)) throw 'Could not launch';
                },
                imgURL: 'https://cdn-icons-png.flaticon.com/512/733/733585.png',
              ),
            ),
            Tooltip(
              message: "Mail",
              child: SocialItem.icon(
                press: () async {
                  if (!await launch(Url.mail)) throw 'Could not launch';
                },
                imgURL:
                    'https://cdn-icons-png.flaticon.com/512/6806/6806987.png',
              ),
            ),
            Tooltip(
              message: "Github",
              child: SocialItem.icon(
                press: () async {
                  if (!await launch(Url.github)) throw 'Could not launch';
                },
                imgURL: 'https://cdn-icons-png.flaticon.com/512/733/733609.png',
              ),
            ),
            Tooltip(
              message: "Instagram",
              child: SocialItem.icon(
                press: () async {
                  if (!await launch(Url.instagram)) throw 'Could not launch';
                },
                imgURL:
                    'https://cdn-icons-png.flaticon.com/512/3955/3955024.png',
              ),
            ),
            Tooltip(
              message: "Linkedin",
              child: SocialItem.icon(
                press: () async {
                  if (!await launch(Url.linkedin)) throw 'Could not launch';
                },
                imgURL: 'https://cdn-icons-png.flaticon.com/512/145/145807.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialItem {
  static FloatingActionButton icon({String? imgURL, Function()? press}) =>
      FloatingActionButton.small(
        onPressed: press,
        backgroundColor: Colors.transparent,
        child: Image.network(imgURL ?? ImageConfig.emptyImage,
            height: 30, width: 30),
      );
}
