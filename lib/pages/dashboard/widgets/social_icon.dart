import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/image_config.dart';
import 'package:portfolio_me/utils/value/size_config.dart';

class SocialItem {
  static FloatingActionButton icon({String? imgURL, Function()? press}) =>
      FloatingActionButton.small(
        onPressed: press,
        backgroundColor: Colors.grey,
        child: Image.network(imgURL ?? ImageConfig.emptyImage),
      );

  static Positioned iconBar(BuildContext context) => Positioned(
        right: 10,
        top: SizeConfig.maxHeight(context) * 0.2,
        child: SizedBox(
          height: 300,
          width: 35,
          child: Column(
            children: [
              SocialItem.icon(
                press: () {},
                imgURL:
                    'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-twitter-circled.gif',
              ),
              SocialItem.icon(
                press: () {},
                imgURL:
                    'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-instagram.gif',
              ),
              SocialItem.icon(
                press: () {},
                imgURL:
                    'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-linkedin-circled.gif',
              ),
              SocialItem.icon(
                press: () {},
                imgURL:
                    'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-github.gif',
              ),
            ],
          ),
        ),
      );
}
