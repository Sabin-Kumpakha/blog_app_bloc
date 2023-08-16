import 'dart:math' as math;
import 'common_widgets_import.dart';

class OutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const OutlineButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
          ),
          Transform.rotate(
            angle: 45 * math.pi / 180,
            child: Icon(Icons.wifi, size: 18.sp),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.r),
          side: BorderSide(color: MyColors.white),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
