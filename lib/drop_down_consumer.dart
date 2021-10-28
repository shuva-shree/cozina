// import 'package:cozina/provider/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class _DropDownWidgetConsumer extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, ScopedReader watch) {
//     final category = watch(postProvider).postCategory;
//     return DropdownButton(
//       hint: Text("Choose category"),
//       value: category,
//       items: <String>["Buyer's account","Food Maker's Account"]
//           .map((e) => DropdownMenuItem<String>(
        
//                 onTap: () => e,
//                 value: e ?? category,
//                 child: Text(e ?? "$category"),
//               ))
//           .toList(),
//       onChanged: (value) {
//         context.read(postProvider).categoryOnChanged(value);
//       },
//     );
//   }
// }