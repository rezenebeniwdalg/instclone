// import 'package:flutter/material.dart';
// class CustomPostContainer extends StatefulWidget {
//   const CustomPostContainer({super.key});
//   @override
//   State<CustomPostContainer> createState() => _CustomPostContainerState();
// }
// class _CustomPostContainerState extends State<CustomPostContainer> {
//   @override
//   Widget build(BuildContext context) {
//     int currentPage = 1;
//     List<String> postImageList = [
//       "https://images.pexels.com/photos/19987953/pexels-photo-19987953/free-photo-of-road-in-deep-forest.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
//       "https://images.pexels.com/photos/20021272/pexels-photo-20021272/free-photo-of-woman-sitting-on-a-bucket.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
//       "https://images.pexels.com/photos/19987953/pexels-photo-19987953/free-photo-of-road-in-deep-forest.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"
//     ];
//     return Container(
//       color: Colors.white,
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                     "https://images.pexels.com/photos/19987953/pexels-photo-19987953/free-photo-of-road-in-deep-forest.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
//               ),
//               title: Row(
//                 children: [
//                   Text("josh"),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Icon(
//                     Icons.verified,
//                     size: 15,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//               subtitle: Text("tokyo, japan"),
//               trailing: Icon(Icons.more_horiz),
//             ),
//             Stack(
//               children: [
//                 SizedBox(
//                   height: 375,
//                   child: PageView.builder(
//                     onPageChanged: (value) {
//                       currentPage = value + 1;
//                       setState(() {});
//                     },
//                     itemCount: postImageList.length,
//                     itemBuilder: (context, index) => Container(
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               fit: BoxFit.cover,
//                               image: NetworkImage(postImageList[index]))),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             // Positioned(
//             //     right: 20,
//             //     top: 20,
//             //     child: Container(
//             //       decoration: BoxDecoration(
//             //           color: Colors.grey.withOpacity(.4),
//             //           borderRadius: BorderRadius.circular(15)),
//             //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             //       child: Text(
//             //         "$currentPage/${postImageList.length}",
//             //         style: TextStyle(color: Colors.white),
//             //       ),
//             //     )),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.favorite_border_outlined,
//                   size: 32,
//                 ),
//                 Icon(
//                   Icons.mode_comment_outlined,
//                   size: 32,
//                 ),
//                 Icon(
//                   Icons.send,
//                   size: 32,
//                 ),
//               ],
//             ),
//             // Expanded(
//             //     child: Row(
//             //         mainAxisAlignment: MainAxisAlignment.center,
//             //         children: List.generate(
//             //             postImageList.length,
//             //             (index) => Padding(
//             //                   padding: const EdgeInsets.only(left: 3),
//             //                   child: CircleAvatar(
//             //                     backgroundColor: (index == currentPage - 1)
//             //                         ? Colors.blue
//             //                         : Colors.pink,
//             //                     radius: (index == currentPage - 1) ? 5 : 3,
//             //                   ),
//             //                 )))),
//             Icon(
//               Icons.bookmark_border,
//               size: 25,
//             ),
//             Row(
//               children: [
//                 CircleAvatar(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instclone/core/constants/colorconst.dart';

class CustomPostsContainer extends StatefulWidget {
  const CustomPostsContainer({
    super.key,
    required this.userName,
    required this.proPic,
    required this.location,
    required this.homepostlist,
    this.isLiked = false,
    this.caption,
  });

  final String userName;
  final String proPic;
  final String location;
  final List<String> homepostlist;
  final bool isLiked;
  final String? caption;

  @override
  State<CustomPostsContainer> createState() => _CustomPostsContainerState();
}

class _CustomPostsContainerState extends State<CustomPostsContainer> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(widget.proPic),
            ),
            title: Row(
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.verified,
                  size: 15,
                  color: ColorConstants.primaryBlue,
                )
              ],
            ),
            subtitle: Text(
              widget.location,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(
            children: [
              SizedBox(
                height: 375,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemCount: widget.homepostlist.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.homepostlist[index]))),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryBlack.withOpacity(.6),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "$currentPage/${widget.homepostlist.length}",
                    style: TextStyle(color: ColorConstants.white),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        widget.isLiked == true
                            ? Icon(
                                Icons.favorite_rounded,
                                size: 25,
                                color: ColorConstants.normalred,
                              )
                            : Icon(Icons.favorite_border, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.maps_ugc_rounded, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.send, size: 25),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          widget.homepostlist.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: CircleAvatar(
                                  backgroundColor: (index == currentPage - 1)
                                      ? ColorConstants.primaryBlue
                                      : Colors.grey.withOpacity(.3),
                                  radius: (index == currentPage - 1) ? 5 : 3,
                                ),
                              )),
                    )),
                    Icon(Icons.bookmark_border, size: 25),
                  ],
                ),
                SizedBox(
                  height: 13.5,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.proPic),
                      radius: 10,
                    ),
                    SizedBox(width: 16),
                    RichText(
                        text: TextSpan(
                            text: "Liked by ",
                            style:
                                TextStyle(color: ColorConstants.primaryBlack),
                            children: [
                          TextSpan(
                            text: "userName ",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "789 others ",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ],
                ),
                SizedBox(height: 13.5),
                RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: widget.userName,
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: " ${widget.caption}" ?? "",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.normal),
                          )
                        ])),
                SizedBox(height: 13.5),
                Text(
                  "September 10",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.5),
                      fontSize: 11,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
