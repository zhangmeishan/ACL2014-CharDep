import sys

def getIdx(s):
   return str(int(s)-1)

if __name__ == "__main__":
   if len(sys.argv) != 2:
      print "conll2dep input_file > output_file"
      sys.exit(1)#return
   file = open(sys.argv[1])
   for line in file:
      line = line.strip()
      if not line:
         print; continue
      line = line.split("\t")
      postag = line[3].split("#")
      label = line[7]
      labeltype = "out"
      if line[7] == "#in":
         label = "-NONE-"
         labeltype = "in"
         
      print "\t".join([line[1], postag[0], postag[1], getIdx(line[6]), label, labeltype])
   file.close()

