/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:io';

export 'src/streams_streaming_file_content_base.dart';

/*
Practice Question 1: Streaming File Content

Task:

Create a Dart function that reads a file content as a stream, 
transforms the stream from bytes to strings, 
prints the number of bytes each data chunk is, 
handles any errors, and closes the file stream upon completion.

Suggested Unit Tests for Streaming File Content:

To test this function, you'll need a sample file in your test environment. 
The unit tests should check if the function correctly processes each chunk of data, 
handles errors, and ensures the stream is closed.
 */

Future<List<int>> readFileAsStream(String filePath) async {
  try {
    final fileToRead = File(filePath);
    final streamFromFile = fileToRead.openRead();

    List<int> fileContents = [];

    await for (var indivChunk in streamFromFile) {
      print(indivChunk.length);
      fileContents.add(indivChunk.length);
    }

    return fileContents;
  } on FileSystemException catch (e) {
    print("File System Exception thrown! Error: $e");
    rethrow;
  }
}
