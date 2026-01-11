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



/*
    2026.01.01 - still@itserv.ru
*/



namespace catlair;



/* Load web payload library */
require_once LIB . '/pusa/pusa_web.php';
require_once LIB . '/core/validator.php';

/* EPL libraries */
require_once LIB . '/epl/epl.php';
require_once LIB . '/epl/epl_builder.php';



/*
    Api class declaration
*/
class ArchCode extends PusaWeb
{
    /*
        Activate page
    */
    public function build
    (
        /* Source files */
        string $source = './rw/source/epl',
        /* Source index file from string */
        string $index_file = './rw/source/index.md',
        /* Destination project path in the local FS */
        string $destination_path = './rw/result',
        /* Path from project root */
        string $project_path = 'arch'
    )
    {
        /* Create model */
        $epl = Epl::create( $this -> getApp() );

        /* Create builder */
        $eplBuilder
        = EplBuilder::create( $epl )
        -> setDestination( $destination_path )
        -> setProjectPath( $project_path )
        -> setSource( $source )
        -> run( $index_file )
        -> resultTo( $this )
        ;

        return $this;
    }
}
