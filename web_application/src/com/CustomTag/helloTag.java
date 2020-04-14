package com.CustomTag;

import javax.servlet.jsp.tagext.TagSupport;

public class helloTag extends TagSupport{

	public int doStartTag()
	{
		try
		{
			pageContext.getOut().write("<p>hi</p>"+"hello");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return EVAL_BODY_INCLUDE;
		//return SKIP_BODY;
	}
	
	public int doEndTag()
	{
		try
		{
			pageContext.getOut().write("<p>hi</p>"+"bye");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		//return EVAL_PAGE;
		return SKIP_PAGE;
	}
	
	
}
