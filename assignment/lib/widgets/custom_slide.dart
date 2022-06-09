import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvertisingBanner extends StatefulWidget {
  final GestureTapCallback? onTapSeeAll;
  final List<String> imgList = [
    "https://i.ytimg.com/vi/KpI-QDbrf0Y/maxresdefault.jpg",
    "https://i.ytimg.com/vi/aMx1kStx6QQ/maxresdefault.jpg",
  ];
  // final List<SlideModel>? homeList;
  AdvertisingBanner({
    Key? key,
    // this.homeList,
    this.onTapSeeAll,
  }) : super(key: key);

  @override
  State<AdvertisingBanner> createState() => _AdvertisingBannerState();
}

class _AdvertisingBannerState extends State<AdvertisingBanner> {
  int? currentIndex = 0;
  int? selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 0, left: 0, bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Swiper(
                onIndexChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: CachedNetworkImage(
                        imageUrl: widget.imgList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                autoplay: true,
                curve: Curves.easeInOut,
                itemCount: widget.imgList.length,
              ),
            ),
          ),
        ),
        AnimatedSmoothIndicator(
          effect: const WormEffect(
            activeDotColor: Colors.orangeAccent,
            dotHeight: 5,
            dotWidth: 10,
            dotColor: Color(0xFFF2F2F2),
          ),
          activeIndex: selectedIndex!,
          count: widget.imgList.length,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
