package com.spoid.action;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract interface Action
{
  public abstract ActionForward excute(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
    throws ServletException, IOException, ParseException;
}
