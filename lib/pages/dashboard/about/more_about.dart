import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/size_config.dart';

class MoreAbout extends StatelessWidget {
  const MoreAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.isMobile(context) ? 40 : 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Center(
              child: Text(
                'More About Me',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis nesciunt excepturi quos obcaecati incidunt voluptatem ipsam sunt ipsum, autem deleniti cupiditate molestias quis unde quae totam porro dicta iure animi inventore, veniam hic! Omnis nulla, delectus a voluptatibus. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur nostrum dolor minus, libero delectus praesentium perferendis.',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
