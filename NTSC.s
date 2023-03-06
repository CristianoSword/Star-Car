 Lines       Description 
---------------------------------------------------------------------------
 000-191     Active display (192 lines) 
             Update VRAM very carefully! Don't touch graphics currently 
             being drawn by/on the raster line. Work with line interrupts 
             and/or the counter, i.e. in A,($7E). 

 192-215     Bottom border (24 lines) 
             Start of VBlank interrupt (also called frame interrupt). 
             Write sprites, tiles and tilemaps. 

 216-218     Bottom blanking (3 lines) 
             Write everything, including colors (CRAM). 

 219-221     Vertical sync (3 lines) 
             Write everything. Beam moves back. 

 222-234     Top blanking (13 lines) 
             Write everything. 

 235-261     Top border (27 lines) 
             Write sprites, tiles and tilemaps. 
---------------------------------------------------------------------------
