// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// Test errors
refMsg = msprintf(gettext("%s: Wrong type for input argument #%d: A row array of strings expected.\n"), "example_run", 1);
assert_checkerror("example_run(10);", refMsg);
refMsg = msprintf(gettext("%s: Wrong size for input argument #%d: A row array of strings expected.\n"), "example_run", 1);
assert_checkerror("example_run([""core"",""xml""]);", refMsg);

refMsg = msprintf(gettext("%s: Wrong type for input argument #%d: A row array of strings or empty matrix expected.\n"), "example_run", 2);
assert_checkerror("example_run(""core"", 12);", refMsg);
refMsg = msprintf(gettext("%s: Wrong size for input argument #%d: A row array of strings or empty matrix expected.\n"), "example_run", 2);
assert_checkerror("example_run(""core"", [""argn"", ""insertion""]);", refMsg);

refMsg = msprintf(gettext("%s: Wrong type for input argument #%d: A string expected.\n"), "example_run", 3);
assert_checkerror("example_run(""core"", ""argn"", 12);", refMsg);
refMsg = msprintf(gettext("%s: Wrong size for input argument #%d: A string expected.\n"), "example_run", 3);
assert_checkerror("example_run(""core"", ""argn"", [""en_US"", ""fr_FR""]);", refMsg);

refMsg = msprintf(gettext("%s: Wrong value for input argument #%d: A Scilab module name expected.\n"), "example_run", 1);
assert_checkerror("example_run(""toto"");", refMsg);

refMsg = msprintf(gettext("%s: Wrong value for input argument #%d: A ''%s'' module function name expected.\n"), "example_run", 2, "core");
assert_checkerror("example_run(""core"", ""doesnotexistsname"");", refMsg);

refMsg = msprintf(gettext("%s: Wrong value for input argument #%d: A valid language expected.\n"), "example_run", 3);
assert_checkerror("example_run(""core"", ""argn"", ""aa_BB"");", refMsg);

example_run("xml");
example_run("core", "argn");
example_run("core", ["argn"; "insertion"]);
example_run("core", "argn", "en_US");
example_run("core", "argn", "en_US", "no_check_error_output");
example_run("core", "argn", "en_US", "no_check_error_output", TMPDIR + "/example_run.xml");