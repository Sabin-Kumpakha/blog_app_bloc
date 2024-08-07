import 'widgets_imports.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.assetsImagesOnboard2,
          height: 333.h,
          width: 333.w,
        ),
        Text(
          "Customize your reading experience and join the conversation by creating an account",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
