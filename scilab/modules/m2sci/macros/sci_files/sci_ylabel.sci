// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2004-2006 - INRIA - Farid BELAHCENE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

function   tree=sci_ylabel(tree)
    // M2SCI function
    // Conversion function for Matlab ylabel()
    // Input: tree = Matlab funcall tree
    // Ouput: tree = Scilab equivalent for tree

    global("m2sci_to_insert_a")
    if typeof(tree.lhs(1))=="variable" & tree.lhs(1).name == "ans"   then
        tree.lhs(1).type=Type(Handle,Unknown)
    else
        m2sci_to_insert_a($+1)=list("EOL")
        m2sci_to_insert_a($+1)=Equal(list(tree.lhs(1)),Funcall("get",1,list(Funcall("gca",1,list(),list()),"""y_label"""),list()))
        tree.lhs(1)=Variable("ans",tlist(["infer","dims","type","contents"],list(1,1),Type(Handle,Unknown),Contents()))
    end

endfunction