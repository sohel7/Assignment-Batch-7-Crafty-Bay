import 'package:carousel_slider/carousel_slider.dart';
import 'package:crufty_bay/ui/utility/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({
    super.key,
    this.height,
  });

  final double? height;

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final ValueNotifier<int> _curentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: widget.height ?? 200.0,
              onPageChanged: (index, reactive) {
                _curentIndex.value = index;
              },
              viewportFraction: 1,
            // autoPlay: true,
              ),

          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                        color:AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    alignment: Alignment.center,
                  child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ),);
              },
            );
          }).toList(),
        ),
        ValueListenableBuilder(
          valueListenable: _curentIndex,
          builder: (context, index, _ ) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 18,
                    width: 18,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: i == index
                            ? AppColors.primaryColor
                            : Colors.white,
                        border: Border.all(
                          color: i == index
                              ? AppColors.primaryColor
                              : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
              ],
            );
          }

        )
      ],
    );
  }
}
