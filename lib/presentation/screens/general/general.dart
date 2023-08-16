import 'general_imports.dart';
import 'home/home.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  //
  List<TabItem> items = [
    TabItem(icon: FeatherIcons.home),
    TabItem(icon: FeatherIcons.tag),
    TabItem(icon: FeatherIcons.plus),
    TabItem(icon: FeatherIcons.hash),
    TabItem(icon: FeatherIcons.user),
  ];
  //
  List<Widget> pages = [
    Home(),
    Categories(),
    AddPost(),
    Tags(),
    Profile(),
  ];
  //
  int visit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: MyColors.white,
        color: MyColors.primaryColor.withOpacity(0.3),
        colorSelected: MyColors.primaryColor,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
