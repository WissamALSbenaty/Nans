import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_info_dialog.dart';

class PendingEditDialog extends StatelessWidget {
  const PendingEditDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(title: 'Your request is pending',
        mainActionText: 'Ok',
        onMainActionPressed:appRouter.popUntilRoot);
  }
}
