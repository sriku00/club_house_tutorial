import 'package:flutter/material.dart';

import '../data.dart';

class RoomWidget extends StatelessWidget {
  final Room room;
  const RoomWidget({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "${room.club} 🏚".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .overline!
                .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            room.name,
            style: Theme.of(context)
                .textTheme
                .overline!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
          )
        ]),
      ),
    );
  }
}
