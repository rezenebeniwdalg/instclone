// import 'package:flutter/material.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Expanded(
//                 child: TextField(
//               decoration: InputDecoration(border: OutlineInputBorder()),
//             ))
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               height: 300,
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       child: Column(
//                         children: [
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 // color: Colors.red,
//                                 child: Image(
//                                   image: NetworkImage(
//                                       "https://images.pexels.com/photos/6796574/pexels-photo-6796574.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
//                                   fit: BoxFit.cover,
//                                 ),
//                               )),
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.blue,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 6,
//                     child: Container(
//                       color: Colors.yellow,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               height: 300,
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       child: Column(
//                         children: [
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.red,
//                               )),
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.blue,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       child: Column(
//                         children: [
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.blue,
//                               )),
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.red,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       child: Column(
//                         children: [
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.red,
//                               )),
//                           Expanded(
//                               flex: 3,
//                               child: Container(
//                                 color: Colors.blue,
//                               )),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               child: Row(
//                 children: [
//                   Expanded(
//                       flex: 6,
//                       child: Container(
//                         color: Colors.yellow,
//                       )),
//                   Expanded(
//                       flex: 3,
//                       child: Container(
//                         color: Colors.green,
//                       ))
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instclone/core/constants/colorconst.dart';
import 'package:instclone/view/custsrchgrid.dart';
import 'package:instclone/view/searchCatChip.dart';
// import 'package:instclone/view/custsrchgrid.dart';
//import 'package:instclone/view/searchCatChip.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Row(
        //     children: [
        //       Expanded(
        //         child: TextField(
        //           decoration: InputDecoration(
        //               hintText: "Search",
        //               prefixIconConstraints: BoxConstraints(
        //                 minWidth: 30,
        //               ),
        //               prefixIcon: Icon(
        //                 Icons.search,
        //                 size: 20,
        //               ),
        //               isDense: true,
        //               fillColor: ColorConstants.primaryBlack.withOpacity(.1),
        //               filled: true,
        //               contentPadding:
        //                   EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        //               border: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(10),
        //                   borderSide: BorderSide.none)),
        //         ),
        //       ),
        //       IconButton(onPressed: () {}, icon: Icon(Icons.select_all_sharp))
        //     ],
        //   ),
        //   // bottom: PreferredSize(
        //   //   preferredSize: Size.fromHeight(40),
        //   //   child: Container(
        //   //     padding: EdgeInsets.symmetric(vertical: 5),
        //   //     decoration: BoxDecoration(
        //   //         border: Border(
        //   //             bottom: BorderSide(
        //   //                 color: ColorConstants.primaryBlack.withOpacity(.1)))),
        //   //     child: SingleChildScrollView(
        //   //       scrollDirection: Axis.horizontal,
        //   //       child: Row(
        //   //         children: List.generate(
        //   //             10,
        //   //             (index) => Padding(
        //   //                   padding: const EdgeInsets.all(8.0),
        //   //                   child: Container(
        //   //                     // decoration: BoxDecoration(border: Border.all()),
        //   //                     child: SearchCatChip(
        //   //                       icon: index.isEven ? Icons.access_alarm : null,
        //   //                     ),
        //   //                   ),
        //   //                 )),
        //   //       ),
        //   //     ),
        //   //   ),
        //   //   //     Expanded(child: Column(
        //   //   //       children: List.generate(4, (index) => CustomSearchGrid()),
        //   //   //     ),)
        //   // ),
        // ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 5),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIconConstraints: BoxConstraints(
                            minWidth: 30,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          isDense: true,
                          fillColor:
                              ColorConstants.primaryBlack.withOpacity(.1),
                          filled: true,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.select_all_sharp))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: ColorConstants.primaryBlack.withOpacity(.1)))),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: SearchCatChip(
                              icon: index.isEven ? Icons.favorite : null,
                            ),
                          )),
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                    4,
                    (index) => CustomSearchGrid(
                          isIndexEven: index.isEven,
                        )),
              ),
            ))
          ],
        ),
        // body: CustomSearchGrid(),
      ),
    );
  }
}
