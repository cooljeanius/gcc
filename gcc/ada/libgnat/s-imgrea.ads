------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                      S Y S T E M . I M G _ R E A L                       --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2024, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Image for fixed and float types (also used for Float_IO/Fixed_IO output)

--  This obsolete package is preserved for the sake of backward compatibility

with System.Img_LLF;

package System.Img_Real is

   procedure Set_Image_Real
     (V    : Long_Long_Float;
      S    : in out String;
      P    : in out Natural;
      Fore : Natural;
      Aft  : Natural;
      Exp  : Natural)
     renames System.Img_LLF.Set_Image_Long_Long_Float;
   --  Sets the image of ``V`` starting at ``S`` (``P`` + 1), updating ``P``
   --  to point to the last character stored, the caller promises that the
   --  buffer is large enough and no check is made for this. Constraint_Error
   --  will not necessarily be raised if this is violated, since it is
   --  perfectly valid to compile this unit with checks off). The ``Fore``,
   --  ``Aft`` and ``Exp`` values can be set to any valid values for the case
   --  of use from Text_IO. Note that no space is stored at the start for
   --  non-negative values.

end System.Img_Real;
