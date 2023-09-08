import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

class FanCarousel extends StatefulWidget {
  const FanCarousel({super.key});

  @override
  State<FanCarousel> createState() => _FanCarouselState();
}

class _FanCarouselState extends State<FanCarousel> {
  static const List<String> sampleImages = [
    'https://img.freepik.com/free-photo/young-handsome-man-posing-quarry_1303-28636.jpg?w=360&t=st=1694019003~exp=1694019603~hmac=a149c8aec2cafdad7071bc897404cd1ccc686d49da8bfb2df88fca308446d005',
    'https://img.freepik.com/free-photo/front-view-smiley-woman-pointing-herself_23-2148946299.jpg?w=740&t=st=1694018915~exp=1694019515~hmac=9be9060c2fc1808b435001b277a10253cd52fe8f86a0f19028e1406032e8a2a6',
    'https://img.freepik.com/free-photo/portrait-african-american-female-with-long-hair-wearing-purple-shirt-sunglasses_181624-39276.jpg?w=360&t=st=1694019079~exp=1694019679~hmac=662de6d73833cf858bc8371dd32f06a91bb8432a2c63edcca341c6bde2c7cfa9',
    'https://img.freepik.com/free-photo/portrait-young-girl-wearing-sunglasses-holding-her-backpack_23-2149260609.jpg?w=996&t=st=1694019132~exp=1694019732~hmac=cc6054e296c9868ab11e5e3fdea94a5fc939bb3b2b1aa1dbc34dddd35d4935d4',
    'https://img.freepik.com/free-photo/young-man-wearing-black-t-shirt_53876-94777.jpg?w=360&t=st=1694019338~exp=1694019938~hmac=1f55ebaefac759b62379ffdc1d469370eac193c90e4ec9893a419bdc3119eb72',
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FanCarouselImageSlider(
          imagesLink: sampleImages,
          isAssets: false,
          imageRadius: 30,
        )
      ],
    );
  }
}
