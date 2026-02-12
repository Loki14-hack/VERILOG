module sr_ff(S,R,Q,Qbar);
input S,R;
output reg Q;
output Qbar;
assign Qbar=~Q;
always@(S or R)
begin
  if(S==0&&R==1)
Q=Q;
  else if(S==0&&R==0)
Q=0;
else if(S==1&&R==0)
Q=1;
else
Q=1'bx;
end
endmodule
