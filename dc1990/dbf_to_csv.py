import dbf
import sys
t = dbf.Table(sys.argv[1])
t.open()
dbf.export(t,sys.argv[1]+'.csv')
