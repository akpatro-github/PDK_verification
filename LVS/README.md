# LVS Rule Deck
## LVS Flow
|<img title="LVS Flow" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/LVS%20Flow.png">|
|:--:|
|*Figure 1: Block Diagram of LVS Flow*|

## Input Files
* Rule File:- A SVRF pr TVF code which contains the information of Layers, Devices and connectivity.
* Layout Database :- An Extracted report from Layout (.db/,gds format)
* Source Database:- An Extracted Netlist Report from Schematic (.cdl/.net format)

## Rule File
* LVS rule deck is **a set of code written in Standard Verification Rule Format (SVRF)** or TCL Verification Format (TVF). It guides the tool to extract the devices and the connectivity of IC's. It contains the layer definition to identify the layers used in layout file and to match it with the location of layer in GDS.
### Specification Statements
|<img title="Setup" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/Setup.png">|
|:--:|
|*Figure 2: Setup*|
### Device
|<img title="Define Device" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/device.png">|
|:--:|
|*Figure 3: Device Defined*|
### Layers and Layer Operations
|<img title="Define layer" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/layer.png">|
|:--:|
|*Figure 4: Layer Defined*|

|<img title="Layer operation" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/layer_operation.png">|
|:--:|
|*Figure 5: Layer Operations*|

### Connectivity
|<img title="Connectivity" src="https://github.com/akpatro-github/Verification-LVS/blob/main/LVS/Calibre/Diagrams/connectivity.png">|
|:--:|
|*Figure 6: Connectivity*|
