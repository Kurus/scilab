// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) INRIA
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

function R=%ce_f_ce(M1,M2)
    //R=[M1' M2']'
    R=%ce_t(%ce_c_ce(%ce_t(M1),%ce_t(M2)))
endfunction



