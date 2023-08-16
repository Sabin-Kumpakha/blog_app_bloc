import 'widgets_imports.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.assetsImagesOnboard1,
          height: 333.h,
          width: 333.w,
        ),
        Text(
          "Discover, engage and read the latest articles or as well as share your own thoughts and ideas with the community",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
