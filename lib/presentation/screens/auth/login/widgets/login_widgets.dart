import '../login_imports.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.title, required this.onPressed});

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
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        minimumSize: Size(MediaQuery.of(context).size.width, 60.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.r),
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class TextWidgetBold extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const TextWidgetBold({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16.sp, color: MyColors.primaryColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  const TextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 16.sp, color: MyColors.primaryColor, fontWeight: FontWeight.w500));
  }
}
