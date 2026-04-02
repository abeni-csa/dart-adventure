import 'package:cached_network_image/cached_network_image.dart';
import 'package:fist_flutter/providers.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

const delayTime = 1000 * 10;
const animationTime = 1000;

class HomeScreenImage extends ConsumerWidget {
  const HomeScreenImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(movieImagesProvider);

    final screenWidth = MediaQuery.of(context).size.width - 32;

    return SizedBox(
      height: 374,

      child: CardSwiper(
        // In v7.x, use cardsCount instead of itemCount
        cardsCount: images.length - 1,

        // The builder now provides the index and a 'horizontal/vertical' offset
        cardBuilder:
            (
              context,
              index,
              horizontalThresholdPercentage,
              verticalThresholdPercentage,
            ) {
              return CachedNetworkImage(
                imageUrl: images[index],
                alignment: Alignment.topCenter,
                fit: BoxFit.fitHeight,
                height: 374,
                width: screenWidth,
              );
            },

        // Configuration settings for the new API
        duration: Duration(
          milliseconds: animationTime,
        ), // Now expects a Duration object
        isDisabled: false,
        isLoop: true,
        numberOfCardsDisplayed: images.length > 3 ? 3 : images.length,
        backCardOffset: const Offset(0, 0), // Adjust for stacking effect
        padding: const EdgeInsets.all(0),
      ),
    );
  }
}
