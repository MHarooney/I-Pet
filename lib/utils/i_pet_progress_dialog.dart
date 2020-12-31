import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

import '../config/i_pet_colors.dart';
import '../utils/utils.dart';

class IPetProgressDialog {
  IPetProgressDialog._();

  static ProgressDialog _progressDialog;
  // static ProgressDialog _progressDownloadDialog;

  static void showDialog(BuildContext context, {String message}) {
    if (_progressDialog == null) {
      _progressDialog = ProgressDialog(context,
          type: ProgressDialogType.Normal,
          isDismissible: false,
          showLogs: true);

      _progressDialog.style(
          message:
              message ?? Utils.getString(context, 'loading_dialog__loading'),
          borderRadius: 5.0,
          backgroundColor: Utils.isLightMode(context)
              ? IPetColors.white
              : IPetColors.backgroundColor,
          progressWidget: Container(
              padding: const EdgeInsets.all(10.0),
              child: const CircularProgressIndicator()),
          elevation: 10.0,
          insetAnimCurve: Curves.easeInOut,
          progress: 0.0,
          maxProgress: 100.0,
          progressTextStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: IPetColors.mainColor),
          messageTextStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: IPetColors.mainColor));
    }

    if (message != null) {
      _progressDialog.update(
          message:
              message ?? Utils.getString(context, 'loading_dialog__loading'));
    }

    _progressDialog.show();
  }

  static void dismissDialog() {
    if (_progressDialog != null) {
      _progressDialog.hide();
      _progressDialog = null;
    }
  }

  static bool isShowing() {
    if (_progressDialog != null) {
      return _progressDialog.isShowing();
    } else {
      return false;
    }
  }

  static void showDownloadDialog(BuildContext context, double progress,
      {String message}) {
    if (_progressDialog == null) {
      _progressDialog = ProgressDialog(context,
          type: ProgressDialogType.Download,
          isDismissible: false,
          showLogs: true);

      _progressDialog.style(
          message:
              message ?? Utils.getString(context, 'loading_dialog__loading'),
          borderRadius: 5.0,
          backgroundColor: IPetColors.white,
          progressWidget: Container(
              padding: const EdgeInsets.all(10.0),
              child: const CircularProgressIndicator()),
          elevation: 10.0,
          insetAnimCurve: Curves.easeInOut,
          progress: progress,
          maxProgress: 100.0,
          progressTextStyle: Theme.of(context).textTheme.bodyText1,
          messageTextStyle: Theme.of(context).textTheme.bodyText1);
    }

    _progressDialog.update(
        message: message ?? Utils.getString(context, 'loading_dialog__loading'),
        progress: progress);

    if (!_progressDialog.isShowing()) {
      _progressDialog.show();
    }
  }

  static void dismissDownloadDialog() {
    if (_progressDialog != null) {
      _progressDialog.hide();
      _progressDialog = null;
    }
  }
}
