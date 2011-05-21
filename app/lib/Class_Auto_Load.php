<?php
/*
 * Hendrik's Class Collection
 * Copyright (C) 2010  Hendrik Weiler
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
/**
 * Autoload Class for loading classes recursive automaticly
 *
 * @author Hendrik Weiler
 * @package Class
 */
class Class_Auto_Load
{
    /**
     * path to class directory
     * @var string
     */
    private $loadPath;
    
    /**
     * Set a new include path and include all files for easy
     * object creating
     * 
     * @param string $loadPath
     * @param array $classes 
     */
    public function __construct($loadPath)
    {
        //Sets the to included path
        $this->loadPath = $loadPath;

        //Include all classes for mass use
        $this->include_classes($loadPath);
    }
    
    /**
     * Sets a new include path
     */
    private function set_new_include_path()
    {
        //Prepare the includepath with the new loadpath
        $includePath = implode(PATH_SEPARATOR, array(
            get_include_path(),
            realpath($this->loadPath)
        ));

        //Sets the new include path
        set_include_path($includePath);
    }

    /**
     * Include all classes by given directory
     * @param string $dir 
     */
    private function include_classes($dir)
    {
        //Refresh the include path
        $this->set_new_include_path();

        //Open path
        $searchDir = opendir($dir);

        //read path
        while($file = readdir($searchDir)) {

            //Subfolder including
            if(is_dir( str_replace('//', '/',$this->loadPath."/".$file))
                && $file != '.'
                && $file != '..')
            {
                //Through creating a new instance of itself the
                //recursive folder including is enabled
                new Class_Auto_Load($this->loadPath."/".$file);
            }
            //Checks if its a php file
            if(preg_match('/(.*).php/i',$file)) {
                //Checks if its a class in it (may not 100% accurate)
                if(preg_match('/(.*)class [\w](.*)/i',
                    file_get_contents(
                            str_replace('//', '/', $dir . '/' . $file)
                ))) {
                        //include the file and make the class finally ready to
                        //be instanciated
                        require_once $file;
                    }
           }
        }
    }
}