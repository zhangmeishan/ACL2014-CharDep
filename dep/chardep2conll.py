import sys
import depio

def conll(dep):
   index = 1
   for word in dep:
      assert len(word) == 6
      if word[5] == "out":
         label = word[4]
      else:
         label = '#'+word[5]
      postag = '#'.join([word[1], word[2]])
      print '\t'.join([str(index), word[0], '_', postag, postag, '_', str(int(word[3])+1), label, '_', '_'])
      index += 1
   print

if __name__ == "__main__":
   if len(sys.argv) != 2:
      print "conll2dep input_file > output_file"
      sys.exit(1)#return
   for sent in depio.depread(sys.argv[1]):
      conll(sent)
