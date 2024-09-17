import 'package:flutter/material.dart';
import 'package:oxyshine/utils/constants/colors.dart';
import 'package:oxyshine/utils/helpers/helper_functions.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: THelperFunctions.isDarkMode(context)
                        ? TColors.white
                        : TColors.black)),
          ),
      ],
    );
  }
}
