#version 410

uniform vec3 u_colour;			// colour as a 3D vector (r,g,b)
uniform vec2 u_screenSize;  	// screen dimensions in pixels

layout(location = 0) out vec4 o_colour;	// output to colour buffer

void main() {
   vec2 p = gl_FragCoord.xy / u_screenSize;   // scale p into range (0,0) to (1,1)
   //vec2 v = abs(p - vec2(0.5, 0.5));
   //float d = max(v.x, v.y); 
  float e = abs(p.y-p.x);
  float r = p.y+p.x;
  
   if (r < 1.5 && r > 0.5 && e < 0.5) {
      o_colour = vec4(u_colour.rgb, 1);
   }
   else {
      o_colour = vec4(0,0,u_colour.r,1); // BLACK (blue now :3)
   }
}