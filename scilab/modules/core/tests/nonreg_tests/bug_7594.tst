// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 7594 -->
//
// <-- CLI SHELL MODE -->
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=7594
//
// <-- Short Description -->
// Incorrect  error detection since bug 6781 fix

function foo1()
  a=xxxxxxx
endfunction
function foo2()
  a=1:xxxxxxx
endfunction
clear xxxxxxx ;//to make sure xxxxxxx does not exist
if execstr("foo1()","errcatch")<>4 then pause,end
if execstr("foo2()","errcatch")<>4 then pause,end
