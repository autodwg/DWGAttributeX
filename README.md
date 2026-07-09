## AutoDWG AttributeX
The attribute Control Component is an component let developers extract or modify attribute value in the dwg file directly without need of AutoCAD.

### Key features:
- Extract attribute value from the dwg files.
- Add or modify attribute value in the dwg file directly.
- Support DWG and DXF in versions from R9 to 2027.

### Free Trial Download Link

## User Guide
### Getting Started
Quick setup

#### Step 1: Register the DLL Component
Double-click `reg.bat` to automatically register `ModifiedAtt64.dll/autoAttX64.dll` on your system.

If registration fails:
Open Command Prompt as Administrator via:
Start Menu → Windows System → Right-click "Command Prompt" → Run as Administrator

Manually register the DLL using command:
```cmd
regsvr32 ModifiedAtt64.dll
regsvr32 autoAttX64.dll
```
#### Step 2: Run the VBS demo to get a try
Run the provided sample vbs to verify functionality.

**Sample Code**

Sample Code (in VB) for your reference:

Extract specific block data  from a DWG file
```
set obj = CreateObject("AutoAttX.ExAtt")

obj.GetAttByBlkName "version1.dwg", "Title Block" 'get drawing att data , input drawing file name and block name 
```
Extract Data  By Tag
```
set obj = CreateObject("AutoAttX.ExAtt")

obj.SetInputDWG "version1.dwg"

obj.GetValueByTag "TITLE"
```

Extract data to CSV
```
set obj = CreateObject("ModifiedAtt.Modify")

obj.GetAttDatatoFile "def.def", "test.dwg","Test.csv"

def.def should be edited with Block Name and Tags (Block Name, Tag1, Tag2)

```
Modify data with extracted CSV
```
set obj = CreateObject("ModifiedAtt.Modify")

obj.WriteAttByFile "test.dwg","test.csv"

```
Modify data with Block Name/Tags/Value
```
set obj = CreateObject("ModifiedAtt.Modify")
obj.DWGFile = "test.dwg"                              'drawing file
obj.SetAttValue "11blk", "111", "value112"     'block name, attribute tag, attribute value
obj.SetAttValue "11blk", "222", "value212"
obj.SetAttValue "22blk", "abc", "value312"
obj.SetAttValue "22blk", "abc1", "value412"
obj.ModifyAtt

``` 

## License Notice
1. Free trial / non-commercial use: GNU LGPL v2.1
2. Commercial production use, closed-source integration requires purchasing our commercial license.

Contact info@autodwg.com for commercial authorization.
