# Layout Flow:
##  Library creation
- Go to `File -> New -> New library` from the menu bar in **Library Manager**.
- Enter the library name in the library pop-up window that appears then attach the existing Library.
- The library's name will appear in the left side panel under libraries section.

## Creating a new cell in the library
- Go to `Cell -> New view` from the menu bar in Library Manager.
- Enter the library in which the cell has to be create.
- Enter the cell name and also the view type and view name.
- The cell's name will appear in the left side panel under cells section.

## Designing a schematic 
* Open the cell view window by clicking on the desired library and cell view name in the Library Manager, a schematic window will pop-up.
* For placing an instance in the schematic, press `i` and choose your respective symbol for your design then place it.
* After that connect it using wire by Pressing `w`.  Ports will given by pressing `Ctrl+p`.
* To modify properties of the instance, click on the instance and then press`q` .
* After that save your schematic using `check & save` option in your schematic window. To see the errors in your schematic press `g`. 

## Layout (Layout XL)
- Once done with schematic, For the layout editor press `Launch -> Layout XL` in the Schematic editor. 
- A Layout window will appears. Then press `Generate from souce` icon to get the pcells with respect to your schematic.
- A window will popoup. In this window uncheck the `PR boundry`. the goto `i/o pin` section. Choose your `pin type`. Then check the `label  -> Text display`. Press `Apply -> okay`.  
-  Then draw your layout. There are some shortcut keys.
	-  `p` - To draw the layers of minimum width.
	-  `r` - To draw the rectangle shape of any layer.
	-  `m` - To move the pcell.
	-  `k` - for the ruler.
	-  `o` - for the via.
	-  `q` - To see the property.

## Verification of Your layout
### DRC Verification
* Click `Calibre->Drc` in the layout window for DRC verification.
* A  DRC window will pop-up . Click `Rules` in the left side pannel and set the DRC rule deck & Run directory path.
* To run DRC click `Run` and check all the rules.
### LVS Verification
* Click `Calibre->Lvs` in the layout window for LVS verification.
* A  LVS window will pop-up . Click `Rules` in the left side pannel and set the LVS rule deck & Run directory path.
* To run LVS click `Run` and check all the rules.