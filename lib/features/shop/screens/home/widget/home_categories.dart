import 'package:oxyshine/common/widgets/image_text_widget/verticcal_image_text.dart';
import 'package:oxyshine/features/shop/models/custom_icon.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatefulWidget {
  const THomeCategories({
    super.key,
  });

  @override
  State<THomeCategories> createState() => _THomeCategoriesState();
}

class _THomeCategoriesState extends State<THomeCategories> {
  @override
  Widget build(BuildContext context) {

    // openWhatsapp({required BuildContext context}) async {
    //   String whatsapp = '8496849121';
    //   final Uri url = Uri.parse(
    //       'whatsapp://send?phone=$whatsapp&text=hello sir!  Can you please book my appointment for today? ');

    //   launchUrl(url);
    // }

    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: customIcons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: customIcons[index].icon,
            title: customIcons[index].title,
            onTap: () {},
          );
        },
      ),
    );
  }
}
