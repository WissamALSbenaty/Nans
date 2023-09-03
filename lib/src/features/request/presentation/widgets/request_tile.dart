import 'package:nans/src/Data/models/request_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/widgets/custom_tile.dart';
import 'package:nans/src/core/util/extentions.dart';

 class RequestTile extends StatelessWidget {

  final RequestModel request;

  const RequestTile({Key? key, required this.request}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OnlineCustomTile(
        onTilePressed: ()=>appRouter.push(RequestDetailsRoute(id: request.id)),
        imagePath: request.service.image,
        title: request.service.title,
        titleMedium:request.requestStatus,
        titleSmall:  request.creationDate.dayFormat,
    );
  }
}