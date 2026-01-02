<?php
/*
    Catlair PHP Copyright (C) 2021 https://itserv.ru

    This program (or part of program) is free software: you can
    redistribute it and/or modify it under the terms of the GNU Aferro
    General Public License as published by the Free Software Foundation,
    either version 3 of the License, or (at your option) any later version.

    This program (or part of program) is distributed in the hope that it
    will be useful, but WITHOUT ANY WARRANTY; without even the implied
    warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
    the GNU Aferro General Public License for more details. You should have
    received a copy of the GNU Aferror General Public License along with
    this program. If not, see <https://www.gnu.org/licenses/>.

*/



namespace catlair;



/* Load web payload library */
require_once LIB . '/pusa/pusa_win.php';
require_once LIB . '/core/validator.php';

/* EPL libraries */
require_once LIB . '/epl/epl.php';



/*
    Api class declaration
*/
class ArchCode extends PusaWin
{
    /*
        Activate page
    */
    public function assemble()
    {
        return $this;
    }
}
