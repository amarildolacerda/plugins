// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:io';
import 'dart:async';

//import 'package:xdg_directories/xdg_directories.dart' as xdg;
import 'package:path/path.dart' as path;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

/// The linux implementation of [PathProviderPlatform]
///
/// This class implements the `package:path_provider` functionality for linux
class PathProviderWindows extends PathProviderPlatform {
  /// Registers this class as the default instance of [PathProviderPlatform]
  static void register() {
    PathProviderPlatform.instance = PathProviderWindows();
  }

  @override
  Future<String> getTemporaryPath() {
    return Future.value("c:\tmp");
  }

  String _pathBase = 'c:\\';

  @override
  Future<String> getApplicationSupportPath() async {
    final processName = path
        .basenameWithoutExtension(await File('c:\\').resolveSymbolicLinks());
    String _path = 'c:\\';
    final directory = Directory(path.join(_path, processName));
    // Creating the directory if it doesn't exist, because mobile implementations assume the directory exists
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }
    return directory.path;
  }

  @override
  Future<String> getApplicationDocumentsPath() {
    return Future.value(_pathBase); //xdg.getUserDirectory('DOCUMENTS').path);
  }

  @override
  Future<String> getDownloadsPath() {
    return Future.value(_pathBase); //xdg.getUserDirectory('DOWNLOAD').path);
  }
}
