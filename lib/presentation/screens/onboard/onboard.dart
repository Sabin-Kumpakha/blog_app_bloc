import '../../common_widgets/primary_button.dart';
import '../../router/router.gr.dart';
import 'onboard_imports.dart';
import 'widgets/onboard_view_model.dart';

@RoutePage()
//
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  //
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Center(
                child: Image.asset(
                  MyAssets.assetsImagesJournoLogo,
                  color: MyColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
              ),
              SizedBox(height: 50.h),
              //
              Expanded(
                child: PageView(
                  controller: onBoardViewModel.pageController,
                  children: [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird(),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              PrimaryButton(
                title: "Get Started",
                onPressed: () {
                  context.router.push(AuthRoute());
                },
              ),
              SizedBox(height: 60.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: MyColors.primaryColor),
                  ),
                  //
                  SmoothPageIndicator(
                    controller: onBoardViewModel.pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: MyColors.primaryColor,
                      dotColor: MyColors.primaryColor.withOpacity(0.5),
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 4,
                    ),
                  ),
                  Text("Next",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: MyColors.primaryColor)),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
