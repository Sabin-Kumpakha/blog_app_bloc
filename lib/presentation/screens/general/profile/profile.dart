import 'profile_imports.dart';
import 'widgets/profile_widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FeatherIcons.logOut, size: 22.sp),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 460.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.r),
                bottomRight: Radius.circular(40.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20.h),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70.r,
                    backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  ),
                  SizedBox(height: 10.h),
                  Text("Sabin Kumpakha",
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: MyColors.white,
                          fontWeight: FontWeight.w700)),
                  Text("hellosabin7@gmail.com",
                      style: TextStyle(fontSize: 18.sp, color: MyColors.white)),
                  SizedBox(height: 20.h),
                  //
                  Text(
                    "Sabin Kumpakha is a Software Developer and a tech enthusiast who loves to learn about new technologies. He has a good command of Python, Flutter and Dart.",
                    style: TextStyle(fontSize: 16.sp, color: MyColors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                  SizedBox(height: 30.h),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FollowersWidget(numbers: "12", title: "Posts"),
                      FollowersWidget(numbers: "12", title: "Followers"),
                      FollowersWidget(numbers: "12", title: "Following"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Posts",
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 20.h,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.asset(
                            MyAssets.assetsImagesNetflix,
                            height: 150.h,
                            width: 200.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "Netflix Will Charge Money for Password Sharing",
                                  style: TextStyle(fontSize: 14.sp),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              InkWell(
                                child: Icon(FeatherIcons.moreVertical),
                                onTap: () {},
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
