import '../../../../core/constants/my_assets.dart';
import '../../../router/router.gr.dart';
import 'login_imports.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:animation_wrappers/animation_wrappers.dart';

@RoutePage()
//
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: FadedScaleAnimation(
          child: ListView(
            children: [
              SizedBox(height: 40.h),
              Center(
                child: Image.asset(
                  MyAssets.assetsImagesJournoLogo,
                  height: 42.h,
                  width: 139.w,
                ),
              ),
              SizedBox(height: 80.h),
              //
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.r),
                    topRight: Radius.circular(36.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50.h),
                      Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: MyColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.h),
                      //
                      TextWidget(title: "Email"),
                      SizedBox(height: 8.h),
                      //
                      VxTextField(
                        fillColor: Colors.transparent,
                        borderColor: MyColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10.r,
                        prefixIcon: Icon(Icons.email),
                      ),
                      SizedBox(height: 20.h),
                      //
                      TextWidget(title: "Password"),
                      SizedBox(height: 8.h),
                      //
                      VxTextField(
                        isPassword: true,
                        obscureText: true,
                        fillColor: Colors.transparent,
                        borderColor: MyColors.primaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10.r,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      //
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              //checkbox
                              Checkbox(
                                value: true,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                visualDensity: VisualDensity.compact,
                                activeColor: MyColors.primaryColor,
                                onChanged: (value) {},
                              ),
                              TextWidget(title: "Remember me")
                            ],
                          ),
                          //
                          TextWidgetBold(
                            title: "Forgot Password",
                            onTap: () {},
                          ),
                        ],
                      ),

                      SizedBox(height: 40.h),
                      //
                      MyButton(
                        title: "Login",
                        onPressed: () => AutoRouter.of(context).push(GeneralRoute()),
                      ),
                      SizedBox(height: 40.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(title: "Don't have an account? "),
                          TextWidgetBold(
                            title: "Register",
                            onTap: () => AutoRouter.of(context).push(RegisterRoute()),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
