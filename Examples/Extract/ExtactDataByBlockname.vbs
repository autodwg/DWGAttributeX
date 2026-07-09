Dim obj
set obj = CreateObject("AutoAttX.ExAtt")
obj.GetAttByBlkName "version1.dwg", "Title block"		'get drawing att data , input drawing file name and block name
nVCount = obj.BlockCountInDrawing								'block refrence count in this drawing
nTagCount = obj.TagsCountInOneBlockRef								'tags count in one block
Dim str
dim j
For j=1 To nVCount
	dim i
str  = str+"Block:"
	For i=1 to nTagCount
                 s1=obj.BlkValueByIndex(j,i)								'get value by block index and tag index   other methed BlkValueByTag(j, "tagname") 
	 s2=obj.BlkTagByIndex(j,i)								'get tag by block index and tag index
	str = str+s2+"--"+s1+"		;"
	Next

Next 

msgbox  str

''					