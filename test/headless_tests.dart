/*
  Copyright (C) 2013 John McCutchan <john@johnmccutchan.com>

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

// NOTE: using DumpRenderTree with XHR content needs to be loaded from web server
// python -m SimpleHTTPServer & DumpRenderTree http://localhost:8000/test/headless_tests.html && for x in `jobs -p`; do kill -9 $x; done
library asset_pack_tests;

import 'dart:html';
import 'dart:async';
import 'package:unittest/unittest.dart';
import 'package:unittest/html_config.dart';
import 'package:asset_pack/asset_pack.dart';

part 'decoder.dart';
part 'loader.dart';
part 'importer.dart';
part 'manager.dart';

main() {
  useHtmlConfiguration();
  Decoder.runTests();
  Loader.runTests();
  Importer.runTests();
  Manager.runTests();
}
