import 'package:flutter/widgets.dart';

class ProGridView extends StatelessWidget {
  ProGridView({super.key});

  final List imageList = [
    "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/834863/pexels-photo-834863.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/556669/pexels-photo-556669.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/10176997/pexels-photo-10176997.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/7957992/pexels-photo-7957992.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1011302/pexels-photo-1011302.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2418664/pexels-photo-2418664.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/8100784/pexels-photo-8100784.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/10176997/pexels-photo-10176997.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: 400,
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                itemCount: imageList.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2, crossAxisSpacing: 2, crossAxisCount: 3),
                itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imageList[index]))),
                    ))
          ],
        ),
      ),
    );
  }
}
