ACL014-CharDep
================
This is an example script to run the code of my ACL 2014 paper [Character-Level Chinese Dependency Parsing](http://www.aclweb.org/anthology/P/P14/P14-1125.pdf)  


Please follow the below steps:  
(1) Download the code of [ZPar](https://github.com/zhangmeishan/ZPar).  
(2) Modify the "**setting**" file, finding the following line  
&ensp;&ensp;&ensp;&ensp;&ensp;'#chinese character-based dependency parser:	jcad, jcadeager'  
&ensp;&ensp;&ensp;ensuring that 'CHINESE_POSDEPENDENCY_PARSER jcad'  
(3) run  "python configure.py chinese posdepparser"  
(4) copy the bin files in the bin folder into current folder  
(5) run "./ctb70dep-exp.sh"  

================
One can use my word structure annotations to generate the training corpus.  
By the way, if you have purchased the data of CTB, you could email me directly for the completed training data, my email is mason.zms@gmail.com.  

