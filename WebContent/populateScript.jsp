<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%



	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://budgetwebsite.cthtpprfbxoo.us-east-2.rds.amazonaws.com:3306/IncomeTax", "admin", "adminadmin");
	
	Random r = new Random();
	int salary = 0;
	int expenses = 0;
	String state = "New Jersey";
	String input = "joegaystooped";
	String usrpassname = "";
	
	for (int i = 0; i < 300; i++)
	{
	    List<Character> characters = new ArrayList<Character>();
        for(char c:input.toCharArray())
        {
            characters.add(c);
        }
        StringBuilder output = new StringBuilder(input.length());
        while(characters.size()!=0)
        {
            int randPicker = (int)(Math.random()*characters.size());
            output.append(characters.remove(randPicker));
        }
        
	  	salary = r.nextInt(999999);
	  	expenses = r.nextInt(12000);
	  	usrpassname = output.toString();
	  	
        Statement st = conn.createStatement();
        int one = st.executeUpdate("INSERT INTO User(username, password, name, state, salary) VALUES ('" + usrpassname + "','" + usrpassname + "','" + usrpassname + "','" + state + "'," +  salary + ");");
        int two = st.executeUpdate("INSERT INTO Budget(expenses, username) VALUES(" + expenses + ",'" + usrpassname + "');");
        
	}
	
	if(conn != null)
		conn.close();
	
%>