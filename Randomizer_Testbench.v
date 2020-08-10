module Randomizer_test_bench(check);
wire  q  ;
reg clk,reset,d,enable ;
output wire [15:1] check;
wire load;
wire [15:1] seed;
reg [96:1]hexaout;
localparam period=10;
Randomizer MB1(clk,reset,load,seed,enable,d,q,check);
always 
begin
#(period/2) clk=~clk;
end

initial begin 
$display(" time   check          q  d  enable "); 
enable=1;
 reset=0;
 clk=1;
 d=1;

$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
# (period) d=1'b0; //10
hexaout[96]=q;// the out q of the pervious time not the current
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
# (period) d=1'b1; //20
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[95]=q;
# (period) d=1'b0; //30
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[94]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //40
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[93]=q;
# (period)  d=1'b1; //50
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[92]=q;
# (period)  d=1'b0; //60
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[91]=q;
# (period)  d=1'b0; //70
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[90]=q;
//++++++++++++++++++++++++++
# (period)  d=1'b1; //80
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[89]=q;
# (period)  d=1'b0; //90
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[88]=q;
# (period)  d=1'b1; //100
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[87]=q;
# (period)  d=1'b1; //110
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[86]=q;
//++++++++++++++++++++++++=
# (period)  d=1'b1; //120
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[85]=q;
# (period)  d=1'b1; //130
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[84]=q;
# (period)  d=1'b0; //140
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[83]=q;
# (period)  d=1'b0; //150
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[82]=q;
//++++++++++++++++++++++=
# (period)  d=1'b1; //160
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[81]=q;
# (period)  d=1'b1; //170
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[80]=q;
# (period)  d=1'b0; //180
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[79]=q;
# (period)  d=1'b1; //190
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[78]=q;
//+++++++++++++++++++++++
# (period)  d=1'b0; //200
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[77]=q;
# (period)  d=1'b0; //210
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[76]=q;
# (period)  d=1'b1; //220
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[75]=q;
# (period)  d=1'b0; //230
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[74]=q;
//++++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[73]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[72]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[71]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[70]=q;
//+++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[69]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[68]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[67]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[66]=q;
//+++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[65]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[64]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[63]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[62]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[61]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[60]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[59]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[58]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[57]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[56]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[55]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[54]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[53]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[52]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[51]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[50]=q;
//++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[49]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[48]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[47]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[46]=q;
//++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[45]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[44]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[43]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[42]=q;
//++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[41]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[40]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[39]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[38]=q;
//++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[37]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[36]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[35]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[34]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[33]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[32]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[31]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[30]=q;
//++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[29]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[28]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[27]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[26]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[25]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[24]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[23]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[22]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[21]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[20]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[19]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[18]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[17]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[16]=q;
# (period)  d=1'b1; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[15]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[14]=q;
//++++++++++++++++++++++++
# (period)  d=1'b0; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[13]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[12]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[11]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[10]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[9]=q;
# (period)  d=1'b1; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[8]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[7]=q;
# (period)  d=1'b0; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[6]=q;
//++++++++++++++++++++++++
# (period)  d=1'b1; //240
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[5]=q;
# (period)  d=1'b0; //260
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[4]=q;
# (period)  d=1'b0; //250
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[3]=q;
# (period)  d=1'b1; //270
$strobe(" %g  \t%b \t%b \t%b \t%b  ",$time ,check,q,d,enable);
hexaout[2]=q;
//++++++++++++++++++++++++
#5
hexaout[1]=q;
$display(" ***********************************************************");
$display("the hexadecimal output :%h%h %h%h %h%h %h%h %h%h %h%h %h%h %h%h %h%h %h%h %h%h %h%h",hexaout[96:93],hexaout[92:89]
,hexaout[88:85],hexaout[84:81],hexaout[80:77],hexaout[76:73],hexaout[72:69]
,hexaout[68:65],hexaout[64:61],hexaout[60:57],hexaout[56:53],hexaout[52:49]
,hexaout[48:45],hexaout[44:41],hexaout[40:37],hexaout[36:33],hexaout[32:29]
,hexaout[28:25],hexaout[24:21],hexaout[20:17],hexaout[16:13],hexaout[12:9]
,hexaout[8:5],hexaout[4:1]);
$display(" ***********************************************************");
$finish;
end

endmodule 