import 'package:auto_route/auto_route.dart';

import '../../../router/router.gr.dart';
import 'home_imports.dart';
import 'home_view_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //
  HomeViewModel homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(right: 24.w, left: 24.w, bottom: 20.h),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(
                  MyAssets.assetsImagesNetflix,
                ),
              ),
              SizedBox(height: 20.h),
              //
              SmoothPageIndicator(
                controller: homeViewModel.pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: MyColors.primaryColor,
                  dotColor: MyColors.primaryColor.withOpacity(0.5),
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 4,
                ),
              ),
              SizedBox(height: 20.h),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Posts",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              //
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 20.h),
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.grey.withOpacity(0.5),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => AutoRouter.of(context).push(HomeDetailsRoute()),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Image.asset(
                                MyAssets.assetsImagesNetflix,
                                height: 120.h,
                                width: 160.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Netflix Will Charge Money for Password Sharing",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 16.sp, fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Icon(FeatherIcons.clock, size: 16.sp),
                                    SizedBox(width: 5.w),
                                    Text(
                                      "6 months ago",
                                      style: TextStyle(
                                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "83 views",
                                      style: TextStyle(
                                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(width: 5.w),
                                    Icon(FeatherIcons.bookmark, size: 18.sp),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
