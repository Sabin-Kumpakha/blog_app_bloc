import '../../../core/constants/my_assets.dart';
import '../../common_widgets/outline_button.dart';
import '../../common_widgets/primary_button.dart';

import 'auth_imports.dart';

@RoutePage()
//
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssets.assetsImagesAuthBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Center(
                  child: Image.asset(
                    MyAssets.assetsImagesJournoLogo,
                    height: 42.h,
                    width: 139.w,
                  ),
                ),
                Spacer(),
                Text(
                  "Explore the world,\nBillions of Thoughts",
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: MyColors.white),
                ),
                SizedBox(height: 20.h),
                PrimaryButton(
                  title: "Login ",
                  onPressed: () => AutoRouter.of(context).push(LoginRoute()),
                ),
                SizedBox(height: 12.h),
                OutlineButton(
                  title: "Register ",
                  onPressed: () => AutoRouter.of(context).push(RegisterRoute()),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
