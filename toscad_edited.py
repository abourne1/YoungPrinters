"Homework for Digital Fabrication"
import sys

def tetrahedronscad(s):
    str_s = str(s)
    t = open('tetfile.scad', 'w')
    t.truncate()
    t.write("scale(["+str_s+","+str_s+","+str_s+"])\n")
    t.write("polyhedron(\n")
    t.write("points=[	[0,0,0], [1,0,0], [1/2,sqrt(3)/2,0],\n")
    t.write("		[1/2, 1/3, sqrt(5)/3]],\n")
    t.write("faces=[	[0,1,2],[0,3,1],[0,2,3],[1,3,2]]);")
    return

def icosahedronscad(s):
    str_s = str(s)
    t = open('icofile.scad', 'w')
    t.truncate()
    t.write("p=(1+sqrt(5))/2;\n")
    t.write("scale(["+str_s+","+str_s+","+str_s+"])\n")
    t.write("polyhedron(\n")
    t.write("points=[	[0,1,p],[0,-1,p],[0,1,-p],[0,-1,-p],\n")
    t.write("		[1,p,0],[-1,p,0],[1,-p,0],[-1,-p,0],\n")
    t.write("		[p,0,1],[-p,0,1],[p,0,-1],[-p,0,-1]],\n")
    t.write("faces=[	[0,1,9],[0,8,1],[0,9,5],[0,5,4],[0,4,8],\n")
    t.write("		[4,5,2],[4,2,10],[4,10,8],[1,7,9],[3,10,2],\n")
    t.write("		[6,8,10],[6,1,8],[6,7,1],[6,10,3],[6,3,7],\n")
    t.write("		[11,5,9],[11,2,5],[11,3,2],[11,7,3],[11,9,7]]);")
    return

def dodecahedronscad(s):
    str_s = str(s)
    t = open('dodecfile.scad', 'w')
    t.truncate()
    t.write("p=(1+sqrt(5))/2;\n")
    t.write("scale(["+str_s+","+str_s+","+str_s+"])\n")
    t.write("polyhedron(\n")
    t.write("points=[	[1,1,1],[-1,1,1],[-1,-1,1],[1,-1,1],\n")
    t.write("		[1,1,-1],[-1,1,-1],[-1,-1,-1],[1,-1,-1],\n")
    t.write("		[0,1/p,p],[0,-1/p,p],[0,-1/p,-p],[0,1/p,-p],\n")
    t.write("		[1/p,p,0],[-1/p,p,0],[-1/p,-p,0],[1/p,-p,0],\n")
    t.write("		[p,0,1/p],[-p,0,1/p],[-p,0,-1/p],[p,0,-1/p]],\n")
    t.write("faces=[	[0,8,1,13,12],[13,5,11,4,12],[4,19,16,0,12],\n")
    t.write("		[5,13,1,17,18],[17,2,14,6,18],[17,1,8,9,2],\n")
    t.write("		[8,0,16,3,9],[9,3,15,14,2],[3,16,19,7,15],\n")
    t.write("		[6,14,15,7,10],[10,7,19,4,11],[10,11,5,18,6]]);")
    return

def octahedronscad(s):
    str_s = str(s)
    t = open('octfile.scad', 'w')
    t.truncate()
    t.write("scale(["+str_s+","+str_s+","+str_s+"])\n")
    t.write("polyhedron(\n")
    t.write("points=[	[-1,1,0],[1,1,0],[1,-1,0],[-1,-1,0],\n")
    t.write("		[0,0,sqrt(2)],[0,0,-sqrt(2)]],\n")
    t.write("faces=[	[0,1,4],[1,2,4],[2,3,4],[3,0,4],\n")
    t.write("		[0,5,1],[1,5,2],[2,5,3],[3,5,0]]);")
    return

def cubescad(s):
    str_s = str(s)
    t = open('cubefile.scad', 'w')
    t.truncate()
    t.write("scale(["+str_s+","+str_s+","+str_s+"])\n")
    t.write("polyhedron(\n")
    t.write("points=[	[0,0,0], [1,0,0], [1,1,0], [0,1,0],\n")
    t.write("		[0,0,1], [1,0,1], [1,1,1], [0,1,1] ],\n")
    t.write("faces=[	[0,1,2,3], [7,6,5,4], [4,5,1,0], [6,7,3,2],\n")
    t.write("		[5,6,2,1], [0,3,7,4]]);")
    return

def norm(a, b):
    c = [a[1]*b[2] - a[2]*b[1],
         a[2]*b[0] - a[0]*b[2],
         a[0]*b[1] - a[1]*b[0]]
    return c

if __name__ == "__main__":
    s = sys.argv[2]
    if int(s) <= 0:
        print "scale must be positive"
    else:
        shape = sys.argv[1]
        if shape == "tetrahedron":
            tetrahedronscad(s)
        elif shape == "cube":
            cubescad(s)
        elif shape == "octahedron":
            octahedronscad(s)
        elif shape == "icosahedron":
            icosahedronscad(s)
        elif shape == "dodecahedron":
            dodecahedronscad(s)
        else:
            print "invalid shape name"


















    
