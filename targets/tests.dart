/// All lines with starting with /// (no whitespace) will be removed from 
/// the version of this file that "targets get" downloads for students.
/// Any other comments (//, /*, or /**) will remain.
/// Indented /// comments will also remain.
/// The following message will be displayed to students unless you remove it.
/// 
// This file is used to run tests on your code before you submit it.
// To test your code, run "targets check" in the main directory
// Your instructor may run additional tests on your code after you submit it.
// Test results based on this file are not shared with your instructor,
// so changing it will not help your grade. If this file becomes corrupted,
// you will have to redownload the assigment template.
/// 
/// This imports the Target classes (ScoredTarget/TestTarget/IOTarget)
import 'helpers.dart';
/// Needed for I/O files
import 'dart:io';

/// Name displayed to students when running the autograder
/// This is not required, only the owner, id, and repo
/// are actually sent to server with student code
final String name = "IOTarget Example";

/// Your GitHub username or organization name
/// You'll have to log in with GitHub to access
/// submissions of this project
final String owner = "dart-targets";

/// Assignment id
/// Template should live at:
/// github.com/[owner]/targets-[id]
/// 
/// Students download template with:
/// targets get [owner]/[id]
/// 
/// Official targets assignments live at:
/// github.com/dart-targets/targets-[id]
/// and can be accessed with:
/// targets get [id]
/// You can have students download a version of these
/// assignments that will be uploaded with you as the owner
/// by having them use the following command instead:
/// targets get [owner]:[id]
final String id = "java-example";

/// This list should contain the files that should be submitted for grading.
final List<String> files = ["Example.java"];

/// This function should return a list of Target
/// objects that you want to be run for grading.
/// 
/// TestTarget does not count for points, but can be
/// helpful for students in debugging their code.
/// The test method of a TestTarget should return true or false.
/// 
/// ScoredTarget counts for the specified number of points.
/// The test method can return a number, true, or false.
/// Numbers count as the score on that target, true counts
/// as full credit, and false counts as no credit.
/// 
/// Tests that cause an error or return anything else will count as 
/// failed or no credit; errors will be displayed to students.
/// 
/// Students will be able to read this file, so don't include
/// completed implementations as part of your tests. You can
/// use a different tests.dart for tests you run on submissions.
List<Target> getTargets(){
    IOTarget test1 = IOTarget.makeJava("Test 1", "Example", "reviver", "reviver");
    IOTarget test2 = IOTarget.makeJava("Test 2", "Example", "cat\ndog", "tac\ngod");
    IOTarget test3 = IOTarget.makeJava("Test 3", "Example", "This is a test.", ".tset a si sihT");
    IOTarget test4 = IOTarget.makeJava("Test 4", "Example", "ab\nbc\ncd\nde\nef", "ba\ncb\ndc\ned\nfe");
    IOTarget combo = IOTarget.makeJava("Combo Test","Example", 
        new File("targets/sample-input.txt"), new File("targets/sample-output.txt"));
    return [test1, test2, test3, test4, combo];
}