import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/color_config.dart';

class Footer extends StatelessWidget {
  final Function()? press;
  const Footer({Key? key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('© Copyright 2022'),
        InkWell(
          onTap: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Built with ❤ by '),
              Text('tgsatt',
                  style: TextStyle(
                    color: ColorConfig.primaryColor,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
