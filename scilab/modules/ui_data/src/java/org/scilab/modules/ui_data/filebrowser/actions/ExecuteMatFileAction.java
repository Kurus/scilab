/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2011 - DIGITEO - Calixte DENIZET
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

package org.scilab.modules.ui_data.filebrowser.actions;

import org.scilab.modules.ui_data.filebrowser.SwingScilabTreeTable;

/**
 * Action to load the mat file
 * @author Calixte DENIZET
 */
@SuppressWarnings(value = { "serial" })
public class ExecuteMatFileAction extends ExecuteCommandAction {

    private static final String MAT = "loadmatfile('%s')";

    /**
     * {@inheritDoc}
     */
    public ExecuteMatFileAction(SwingScilabTreeTable table) {
        super(table, MAT);
    }
}
