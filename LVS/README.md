# LVS Rule Deck
## LVS Flow
|<img title="LVS Flow" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/LVS%20Flow.png">|
|:--:|
|*Figure 1: Block Diagram of LVS Flow*|

## Input Files
* Rule File:- A SVRF or TVF code which contains the information of Layers, Devices and connectivity.
* Layout Database :- An Extracted report from Layout (.db/,gds format)
* Source Database:- An Extracted Netlist Report from Schematic (.cdl/.net format)

## Rule File
* LVS rule deck is **a set of code written in Standard Verification Rule Format (SVRF)** or TCL Verification Format (TVF). It guides the tool to extract the devices and the connectivity of IC's. It contains the layer definition to identify the layers used in layout file and to match it with the location of layer in GDS.
### Specification Statements
|<img title="Setup" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/Setup.png">|
|:--:|
|*Figure 2: Setup*|
### Device
* Device : Defines devices and calculates properties for circuit extraction.
* Format : Syntax : `DEVice {element_name [‘(’model_name‘)’]} device_layer {{pin_layer[‘(’pin_name‘)’]} …}`
* Example
 <img title="Define Device" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/device1.png">

|<img title="Define Device" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/device.png">|
|:--:|
|*Figure 3: Device Defined*|
### Layers Defined
|<img title="Define layer" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/layer.png">|
|:--:|
|*Figure 4: Layer Defined*|
* LAYER: Defines the name of an original layer or a layer set that Calibre uses. 
   * Format:- `LAYER name original_layer` where,
      * `name`: A required name for an original layer or layer set. 
      * `original_layer`: The layer number of an original layer. 
   * Example:- `LAYER diff_dg 50030` Defines the diffusion layer. 
   
* LAYER MAP: Enables Calibre to map layer numbers, DATATYPE attributes, and TEXTTYPE attributes in GDS and OASIS databases to layer numbers that Calibre uses in the rule file. 
   * Format: `LAYER MAP source_layer DATATYPE/TEXTTYPE source_type target_layer`, where
      * `source_layer` : The layer number in layout database for mapping.
      * `DATATYPE`: This maps drawn geometric layers.
      * `TEXTTYPE`: This maps text layer objects.
      * `source_type`: It specifies a particular datatype or texttype in the layout database.
      * `target_layer`: It specifies the layer number to be used by Calibre. 
   * Example:- `LAYER MAP 7 DATATYPE 0 50070 LAYER pimp 50070` :- Maps p-implant layer.
   
* TEXT LAYER : Specifies the layers in the layout database from which text is read for connectivity extraction. The connectivity extractor uses only those text objects having layers that appear in Text Layer specification statements. Thus, if there are no Text Layer specification statements in the rule file, then no layout database text objects are used by the connectivity extractor, and there will be no net names assigned from such objects. 
   * Format:- `TEXT LAYER layer`, where
       * layer: A required layer name or number in the database from which to read connectivity extraction text. 
   * Example:- `TEXT LAYER MET1_TEXT` :- specifies Metal1 to be used as a text layer.

* PORT LAYER TEXT : Causes Port Layer Text objects on the specified layer(s) to be read and treated as top-level ports in geometric databases. Its object names in the top-level cell are output by the SPICE netlister(calibre -spice) as top-level subcircuit pin names. Port text objects can be attached to port shapes using explicit attachment (Attach), implicit attachment (both port text and port shapes are on the same Connect layer), or free attachment(Label Order).
   * Format:- `PORT LAYER TEXT layer`, where
       * layer: A required layer name or number that can be treated as port. 
   * Example:- `PORT LAYER TEXT MET1_TEXT` :- specifies Metal1 text layer to be treated as a port.
### Layer Operation
|<img title="Layer operation" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/layer_operation.png">|
|:--:|
|*Figure 5: Layer Operations*|

A bunch of commands are used to perform the layer operations. Some of them are mentioned below:
* AND : Constructs the intersection regions of polygons on the input layer(s) and outputs the intersections as polygons.
  * Format : Single layer syntax: `AND layer1 [constraint]`
             Two-layer syntax: `AND layer2 layer3` 
  * Example : Some examples are:
       ![AND_single_layer](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/AND_1.png)
       ![AND_multiple_layers](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/AND_2.png)
     
* OR : Merges all intersecting polygons on the input layers into single polygons.
  * Format : Single layer syntax: `OR layer1 [constraint]`
             Two-layer syntax: `OR layer2 layer3`
  * Example: More insight can be obtained from the following diagram:
       ![OR](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/OR.png) 
     
* NOT : Two-layer Boolean operation that selects polygon areas not common to polygons from a second layer.
  * Format : `NOT layer1 layer2`
  * Example: An image has been provided as an example:
       ![NOT](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/NOT.png) 
     
* CUT : Selects polygons that share some, but not all of their area with polygons from a second layer. 
  * Format : `CUT layer1 layer2 [constraint [BY NET] [EVEN | ODD]]` where
     * `layer1, layer2` The layers derived or original.
     * `constraint` This constraint specifies the number of layer2 polygons or nets that a layer1 polygon must share some (but not all) of its area with to be selected by the Cut operation. The constraint must contain non-negative integers.
     * `BY NET` specifies that a layer1 polygon is selected when a number of distinct nets in the set of layer2 polygons, which share some of their area with the layer1 polygon, meets the specified constraint. 
     * `EVEN | ODD` A layer1 polygon is selected if the number of layer2 polygons that meet the constraint is also an even number/odd number respectively. 
  * Example : Following are some examples to explain more about the command.
       ![CUT_1](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/CUT_1.png)
       ![CUT_2](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/CUT_2.png)
     
* AREA : Selects polygons that meet an area constraint.
  * Format : `AREA layer constraint`
  * Example:
  
       ![AREA](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/AREA.png) 
     
* EXTENT : Generates a derived polygon layer consisting of one rectangle that equals the database extent read in at runtime, including text. If you specify the optional layer parameter, the rectangle represents the minimum bounding box of all objects on layer. In hierarchical mode, Calibre may choose to divide the extent rectangle into polygons that are distributed across the hierarchy to facilitate more efficient processing of subsequent operations.
  * Format : `EXTENT [layer]` where layer is an optional layer to be added to the command.
  * Example: The first example uses `EXTENT layer`
  
     ![EXTENT_1](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/EXTENT_1.png)
     * The second example uses only `EXTENT`. The following figure shows a layout with a derived layer called bulk. Assume a simple rule file as follows:
         * Layer nwell 1
         * Layer poly 2
         * Layer met 3 // not needed in the run
         * bulk = EXTENT
         * rule {copy poly copy nwell}
         * Note that layer met plays no role in deriving bulk in this rule file, because met is not needed in a rule check.
       ![EXTENT_2](https://github.com/prachi-mrudula/verification/blob/main/LVS/images/EXTENT_2.png)



### Connectivity
|<img title="Connectivity" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/connectivity.png">|
|:--:|
|*Figure 6: Connectivity*|

* Connect : Defines electrical connection onn input layers
  * Format : Syntax 1: `connect layer1 [later N...] [Direct / Mask]`
             Syntax 2: `connect layer1 [layer N...] By layerC
* Example

|<img title="connect1" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/connect1.png">|
|<img title="connect2" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/connect2.png">|
