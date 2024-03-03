package com.sevlates;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public SaveNoteServlate() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			// fetching title and content from user
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title, content, new Date());
			/*System.out.println(+note.getId()+" : "+note.getTitle());*/
			//hibernate save work
			Session s=FactoryProvider.getfacory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Notes is added Succesfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='show_allnotes.jsp'>view all notes</a></h1>");
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

}
