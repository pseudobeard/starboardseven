///draw_grid(x1,y1,x2,y2,cell width,cell height,line thickness)

//get script input and save to variables
var xx,yy,x1,y1,x2,y2,gw,gh,lw
x1=argument0;
y1=argument1;
x2=argument2;
y2=argument3;
gw=argument4;
gh=argument5;
lw=argument6;
xx=x1;
yy=y1;

//avoid drawing unessary lines
xx+=gw;
yy+=gh;
//draw horizontal lines
while (xx<x2+gw){
    draw_line_width(xx,y1,xx,y2,lw);
    if (xx+gw>x2){ //make sure not to draw outside boundaries
        break;
    }
    xx+=gw;
}
//draw virticle lines
while (yy<room_height+gh){
    draw_line_width(x1,yy,x2,yy,lw);
    if (yy+gh>y2){ //make sure not to draw outside boundaries
        break;
    }
    yy+=gh;
}
//finish up with a border
draw_line_width(x1,y1,x2,y1,lw);//top
draw_line_width(x1,y2,x2,y2,lw);//bottom
draw_line_width(x1,y1,x1,y2,lw);//left
draw_line_width(x2,y1,x2,y2,lw);//right
