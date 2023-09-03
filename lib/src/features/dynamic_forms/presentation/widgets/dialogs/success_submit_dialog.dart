import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_info_dialog.dart';

class SuccessSubmitDialog extends StatelessWidget {
  const SuccessSubmitDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(title: 'Request submitted !',
        content: 'We will send you a notification once the request status changed',
        mainActionText: 'Back to home page',
        onMainActionPressed: appRouter.popUntilRoot,
      isDismissible: false,
    );
  }
}
