import '../profile_imports.dart';

class FollowersWidget extends StatelessWidget {
  final String numbers;
  final String title;
  const FollowersWidget({super.key, required this.numbers, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numbers,
          style: TextStyle(
              fontSize: 20.sp, color: MyColors.white, fontWeight: FontWeight.w700),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 18.sp, color: MyColors.white, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
