Dim obj
set obj = CreateObject("AutoAttX.ExAtt")
obj.SetInputDWG "E:\AV-412.dwg"
nVCount = obj.TagsCount
Dim str
dim j
For j=0 To nVCount-1
s1=obj.AttTagByIndex(j)
s2=obj.AttPromptByIndex(j)
s3=obj.AttValueByIndex(j)

str = str+s1+"--"+s2+"--"+s3+"		;"

Next 
msgbox  str
obj.GetValueByTag "ID"
nXCount = obj.ValuesCountByTag
Dim strx
Dim i
For i=0 To nXCount-1
s4=obj.ValueByTagGetByIndex(i)
strx = strx+s4+"  ;"
Next
msgbox  strx 
MsgBox "Complete!s"