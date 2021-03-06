// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

//===============================
// unit tests code2str
//===============================
if _code2str(10:35)<>'abcdefghijklmnopqrstuvwxyz' then pause,end
if _code2str(-(10:35))<>'ABCDEFGHIJKLMNOPQRSTUVWXYZ' then pause,end
if _code2str(0:9)<>'0123456789' then pause,end
if _code2str([])<>emptystr() then pause,end
//===============================
s = _code2str([-28 12 18 21 10 11]);
if (s <>'Scilab') then pause,end
//===============================
