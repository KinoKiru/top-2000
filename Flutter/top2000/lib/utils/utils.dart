import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:top2000/components/translation_wrapper.dart';
import 'package:top2000/models/artist.dart';
import 'package:top2000/utils/data_provider.dart';
import 'package:url_launcher/url_launcher.dart' as ul;

// Widget responsiveHomeAppBar(double sizeX, double sizeY, BuildContext context,
//     {String title = 'Top2000'}) {
//   RemoteService _service = RemoteService();
//   List<Artist> foundArtist = List<Artist>.empty(growable: true);

//   return TranslationWrapper(
//     onLoad: (BuildContext context) {
//       if (sizeX < sizeY) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(title),
//                 InkWell(
//                   onTap: () => Scaffold.of(context).openEndDrawer(),
//                   child: const Icon(CupertinoIcons.slider_horizontal_3),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Stack(children: [
//               SizedBox(
//                 height: 50,
//                 child: TextFormField(
//                   onChanged: (value) async {
//                     if (value.length > 3) {
//                       foundArtist = await _service.searchArtist(value);
//                       print(foundArtist);
//                     }
//                   },
//                   autofocus: false,
//                   decoration: InputDecoration(
//                     prefixIcon: const Icon(CupertinoIcons.search),
//                     prefixIconColor: Colors.grey.shade200,
//                     border: const OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(50))),
//                     labelText: FlutterI18n.translate(context, 'home.search'),
//                   ),
//                 ),
//               ),
//               if (foundArtist.isNotEmpty)
//                 ListView.builder(
//                   itemBuilder: (context, index) =>
//                       Text(foundArtist[index].name),
//                   itemCount: foundArtist.length,
//                 )
//             ]),
//           ],
//         );
//       } else {
//         return Row(
//           children: <Widget>[
//             Text(title),
//             const SizedBox(
//               width: 10,
//             ),
//             Stack(children: [
//               Expanded(
//                 child: SizedBox(
//                   height: 40,
//                   child: TextFormField(
//                     autofocus: false,
//                     onChanged: (value) async {
//                       if (value.length > 3) {
//                         foundArtist = await _service.searchArtist(value);
//                       }
//                     },
//                     decoration: InputDecoration(
//                       prefixIcon: const Icon(CupertinoIcons.search),
//                       prefixIconColor: Colors.grey.shade200,
//                       border: const OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(50))),
//                       labelText: FlutterI18n.translate(context, 'home.search'),
//                     ),
//                   ),
//                 ),
//               ),
//               if (foundArtist.isNotEmpty)
//                 ListView.builder(
//                   itemBuilder: (context, index) =>
//                       Text(foundArtist[index].name),
//                   itemCount: foundArtist.length,
//                 )
//             ]),
//             const SizedBox(
//               width: 10,
//             ),
//             InkWell(
//               onTap: () => Scaffold.of(context).openEndDrawer(),
//               child: const Icon(CupertinoIcons.slider_horizontal_3),
//             )
//           ],
//         );
//       }
//     },
//   );
// }

Future<void> launchSite(String url) async {
  final Uri site = Uri(
    scheme: 'https',
    path: url,
  );
  if (!await ul.launchUrl(
    site,
    mode: ul.LaunchMode.inAppWebView,
  )) {
    throw 'Could not launch';
  }
  return;
}
