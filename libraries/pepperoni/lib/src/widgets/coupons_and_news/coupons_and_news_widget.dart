import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CouponsAndNewsWidget extends StatefulWidget {
  final List<String> imageList;
  const CouponsAndNewsWidget({Key? key, required this.imageList})
      : super(key: key);

  @override
  State<CouponsAndNewsWidget> createState() => _CouponsAndNewsWidgetState();
}

class _CouponsAndNewsWidgetState extends State<CouponsAndNewsWidget> {
  late final pageController =
      PageController(viewportFraction: .9, initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.imageList.length,
            padEnds: false,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 369 / 162,
                    child: Image.network(
                      widget.imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedBuilder(
          animation: pageController,
          builder: (context, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageList.length,
              (index) {
                final isSelected = index == pageController.page?.ceil();
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor:
                        isSelected ? Colors.black87 : Colors.black26,
                    radius: isSelected ? 3 : 2,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
