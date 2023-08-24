import 'package:flutter/material.dart';
import 'package:flutter_figma/app/core/widgets/rouded_check_box_widget.dart';
import 'package:flutter_figma/app/core/widgets/text_widget.dart';

class TodoTileWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const TodoTileWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(onTap: onTap, child: const Icon(Icons.remove)),
        SizedBox(
          height: 40,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: RoundedCheckBoxWidget(),
                  ),
                  Flexible(child: TextWidget.normal(title))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 60 - 25,
                ),
                child: Divider(
                  height: 1,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
