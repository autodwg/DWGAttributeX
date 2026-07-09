set obj = CreateObject("ModifiedAtt.Modify")
obj.DWGFile = "test.dwg"                              'drawing file
obj.SetAttValue "11blk", "111", "value112"     'block name, attribute tag, attribute value
obj.SetAttValue "11blk", "222", "value212"
obj.SetAttValue "22blk", "abc", "value312"
obj.SetAttValue "22blk", "abc1", "value412"
obj.ModifyAtt
MsgBox "Complete!"