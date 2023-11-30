import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension DurationFormatter on Duration {
  String dayHourMinuteSecondFormatted() {
    return [
      inDays,
      inHours.remainder(24),
      inMinutes.remainder(60),
      inSeconds.remainder(60)
    ].map((seg) {
      return seg.toString().padLeft(2, '0');
    }).join(':');
  }

  String minuteSecondFormatted() {
    return [
      inMinutes.remainder(60),
      inSeconds.remainder(60),
    ].map((seg) {
      return seg.toString().padLeft(2, '0');
    }).join(':');
  }
}

Future<Uint8List?> readFileByte(String? filePath) async {
  if (filePath == null) return null;
  final myUri = Uri.parse(filePath);
  final audioFile = File.fromUri(myUri);
  try {
    return Uint8List.fromList((await audioFile.readAsBytes()));
  } catch (_) {
    return null;
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension FileTypeEx on String {
  bool get isVideoExtension {
    final value = toLowerCase();

    return (value == 'mov') || (value == 'mp4') || (value == 'mpv');
  }

  bool get isImageExtension {
    final value = toLowerCase();

    return (value == 'png') ||
        (value == 'jpg') ||
        (value == 'jpeg') ||
        (value == 'heic');
  }

  bool get isAudioExtension {
    final value = toLowerCase();

    return (value == 'mp3') ||
        (value == 'm4a') ||
        (value == 'wav') ||
        (value == 'caf') ||
        (value == 'aiff');
  }
}

extension StringSize on String {
  Size textSize({
    required TextStyle style,
    double maxWidth = double.infinity,
    int maxLines = 1,
  }) {
    final textPainter = TextPainter(
        text: TextSpan(text: this, style: style),
        maxLines: maxLines,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: maxWidth);
    return textPainter.size;
  }
}

extension FileUtils on String {
  String get fileName => substring(lastIndexOf('/') + 1);

  bool get isImageFileFromMime => startsWith('image');
}

extension ResponseDecoder on Response {
  Response<T> attachStringDecoder<T>(String value) => Response(
        requestOptions: requestOptions,
        headers: headers,
        redirects: redirects,
        data: null,
        statusCode: statusCode,
        statusMessage: statusMessage,
        extra: extra,
        isRedirect: isRedirect,
      );

  Response<T> attachDecoder<T>(T Function(dynamic json) fromJson) {
    //Get.log(data);
    return Response(
      requestOptions: requestOptions,
      headers: headers,
      redirects: redirects,
      data: fromJson(data),
      statusCode: statusCode,
      statusMessage: statusMessage,
      extra: extra,
      isRedirect: isRedirect,
    );
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
