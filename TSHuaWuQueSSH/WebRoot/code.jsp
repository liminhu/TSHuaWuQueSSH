<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.Graphics" %><%@page import="java.awt.Color"%>
<%@ page import="java.awt.Font" %>
<%@ page import="java.awt.Color" %>
<%@page import="javax.imageio.ImageIO"%>

<%
  response.setHeader("Cache-Control","no-cache");
  int width=100,height=30;
  BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
  Graphics gra=image.getGraphics();
  gra.setColor(Color.WHITE);
  gra.fillRect(0,0,width,height);
  gra.drawRect(0,0,width-1,height-1);
  String str="";
  str=str+(int)(Math.random()*10);
  str=str+(int)(Math.random()*10);
  str=str+(int)(Math.random()*10);
  str=str+(int)(Math.random()*10);
  session.setAttribute("code",str);
  gra.setFont(new Font("",Font.ITALIC,height));
  gra.setColor(new Color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)));
  gra.drawString(str,10,height-3);
  for(int i=1;i<100;i++){
    gra.setColor(new Color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)));
    gra.fillOval((int)(Math.random()*width),(int)(Math.random()*height),2,2);
  }
  ImageIO.write(image,"JPEG",response.getOutputStream());
  out.clear();
  out=pageContext.pushBody();
  


%>