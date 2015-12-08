
if [ -d "ctb70-yiou" ]; then
   rm -rf ctb70-yiou
fi
mkdir ctb70-yiou
for i in `seq 1 60`;
do
    echo "Test iteration $i"
    ./chinese.posdepparser.train train.ctb70-yiou.chardep.g ctb70-yiou/joint.model 1
    ./chinese.posdepparser.parser dev.ctb70-yiou.chars ctb70-yiou/devo.txt.$i ctb70-yiou/joint.model
    python dep/chardep2conll.py  ctb70-yiou/devo.txt.$i > ctb70-yiou/devo.txt.$i.conll
    java -Xmx1G -jar dep/CharDependencyEvaluate.jar dev.ctb70-yiou.charconll06.g  ctb70-yiou/devo.txt.$i.conll
    ./chinese.posdepparser.parser test.ctb70-yiou.chars ctb70-yiou/testo.txt.$i ctb70-yiou/joint.model
    python dep/chardep2conll.py ctb70-yiou/testo.txt.$i > ctb70-yiou/testo.txt.$i.conll
    java -Xmx1G -jar dep/CharDependencyEvaluate.jar test.ctb70-yiou.charconll06.g  ctb70-yiou/testo.txt.$i.conll
    #cp ctb70-yiou/joint.model ctb70-yiou/joint.model.$i
done
