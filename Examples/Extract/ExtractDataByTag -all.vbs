Dim obj
set obj = CreateObject("AutoAttX.ExAtt")
obj.SetInputDWG "E:\AV-412.dwg"
nVCount = obj.TagsCount
Dim str

str = str+s1+"--"+s2+"--"+s3+"		;"


obj.GetValueByTag "ID"
nXCount = obj.ValuesCountByTag
Dim strx
Dim i
For i=0 To nXCount-1
s4=obj.ValueByTagGetByIndex(i)
strx = strx+s4+"  ;"

msgbox  strx 
MsgBox "Complete!s"