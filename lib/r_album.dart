// Copyright 2020 The rhyme_lph Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/services.dart';

class RAlbum {
  static const MethodChannel _channel =
      const MethodChannel('com.rhyme_lph/r_album');

  /// create one album
  static Future createAlbum(String albumName) {
    return _channel.invokeMethod('createAlbum', {
      'albumName': albumName,
    });
  }

  /// save files in album
  static Future saveAlbum(String albumName, List<String> filePaths) {
    return _channel.invokeMethod('saveAlbum', {
      'albumName': albumName,
      'filePaths': filePaths,
    });
  }
}
