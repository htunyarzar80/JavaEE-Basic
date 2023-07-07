package customtag;

import java.io.IOException;
import java.io.StringWriter;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class PrintTag extends SimpleTagSupport{
	
	private String text;
	
	private String style;
	
	public void setText(String text) {
		this.text = text;
	}
	
	public void setStyle(String style) {
		this.style = style;
	}



	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		JspWriter out = getJspContext().getOut();
		
		if(text != null ) {
			String result="";
			
			switch (style) {
			case "uppercase": 
				result = text.toUpperCase();
				break;
			
			case "bold": 
				result = "<b>"+text+"</b>";
				break;
			
			case "emphasize": 
				result = "<em>"+text+"</em>";
				break;
			
			default:
				result = text;
				break;
			}
		out.print(text+"<br>");
		}else {
			
		StringWriter writer = new StringWriter();
		
		getJspBody().invoke(writer);
		
		out.print(writer.toString()+"</br>");
		}
		//Simple Tag
//		JspWriter out = getJspContext().getOut();
//		
//		out.print("This is custom tag</br>");
//		
	}

}
