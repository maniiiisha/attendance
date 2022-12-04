import 'package:flutter/material.dart';
import 'package:ghrccst_attendance_app/navigation/navigators.dart';
import 'package:ghrccst_attendance_app/providers/student_provider.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

import '../providers/lectures_provider.dart';

Future<dynamic> scanQR(
    BuildContext context, String message, dw, StudentProvider student) {
  final timeTableProvider =
      Provider.of<LecturesProvider>(context, listen: false);

  return showDialog(
      context: context,
      builder: ((context) => Dialog(
            child: SizedBox(
                height: dw,
                width: dw,
                child: MobileScanner(
                    allowDuplicates: false,
                    onDetect: (barcode, args) async {
                      if (barcode.rawValue == null) {
                        debugPrint('Failed to scan Barcode');
                      } else {
                        final String code = barcode.rawValue!;
                        debugPrint('Barcode found! $code');

                        await timeTableProvider.markPresentDay(code);

                        pop(context);
                      }
                    })),
          )));
}
