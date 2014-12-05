p=(1+sqrt(5))/2;
scale([10,10,10])
polyhedron(
points=[	[0,1,p],[0,-1,p],[0,1,-p],[0,-1,-p],
		[1,p,0],[-1,p,0],[1,-p,0],[-1,-p,0],
		[p,0,1],[-p,0,1],[p,0,-1],[-p,0,-1]],
faces=[	[0,1,9],[0,8,1],[0,9,5],[0,5,4],[0,4,8],
		[4,5,2],[4,2,10],[4,10,8],[1,7,9],[3,10,2],
		[6,8,10],[6,1,8],[6,7,1],[6,10,3],[6,3,7],
		[11,5,9],[11,2,5],[11,3,2],[11,7,3],[11,9,7]]);