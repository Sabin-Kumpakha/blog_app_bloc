import 'widgets_imports.dart';

class OnBoardThird extends StatelessWidget {
  const OnBoardThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.assetsImagesOnboard3,
          height: 333.h,
          width: 333.w,
        ),
        Text(
          "Explore a wide selection of categories, or use the search bar to find specific topics",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
