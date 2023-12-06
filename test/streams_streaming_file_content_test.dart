import 'package:streams_streaming_file_content/streams_streaming_file_content.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('Streaming File Content Tests', () {
    test('Reads file content and prints chunk sizes', () async {
      await readFileAsStream(
          'assets/test_file.txt'); // Ensure this file exists in your test environment
      // This test should verify the output, error handling, and if the stream is closed properly.
    });

    test('Handles file not found error', () {
      var nonExistentFilePath = 'path/to/nonexistent/file.txt';
      expect(readFileAsStream(nonExistentFilePath),
          throwsA(isA<FileSystemException>()));
    });
  });
}

