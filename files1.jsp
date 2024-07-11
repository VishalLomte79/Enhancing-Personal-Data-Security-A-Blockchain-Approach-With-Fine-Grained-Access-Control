<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String fid = request.getParameter("id");
    String uid = (String) session.getAttribute("uid");
    String sowner = request.getParameter("owner");

    String uaccessattribute = session.getAttribute("uaccessattribute").toString();
    String uaccessattribute1 = (String) session.getAttribute("uaccessattribute1");
    System.out.println("File ID : " + fid + "\nUser ID : " + uid + "\naccesspolicy : " + uaccessattribute + "\nuaccessattribute1 : " + uaccessattribute1);

    String uname = (String) session.getAttribute("uname");
    String umail = (String) session.getAttribute("uemail");
    System.out.println("User Name : " + uname + "\nUser Email : " + umail);
    String fnamec = null, ownerc = null, oidc = null, timec = null, accesspolicyc = null;
    String ffname = null, ooid = null, ttime = null, policy = null, owner = null;
    Connection con1 = null, con2 = null, con3 = null;
    Statement st1 = null, st2 = null, st3 = null;
    ResultSet rs1 = null, rs2 = null, rs3 = null;
    con3 = DbConnection.getConnection();
    st3 = con3.createStatement();
    try {
        con1 = DbConnection.getConnection();
        st1 = con1.createStatement();
        rs1 = st1.executeQuery("select * from fileupload where id='" + fid + "' AND (accesspolicy='" + uaccessattribute + "' OR accesspolicy='" + uaccessattribute1 + "')");
        if (rs1.next()) {
            fnamec = rs1.getString("filename");
            ownerc = rs1.getString("owner");
            oidc = rs1.getString("oid");
            timec = rs1.getString("time");
            accesspolicyc = rs1.getString("accesspolicy");
            System.out.println(fnamec + ownerc + oidc + timec + accesspolicyc + "*******************************************************");
            st1.executeUpdate("insert into filerequest(fid, fname, uid, uname, oid, oname, time, faccesspolicy, uaccesspolicy, uaccesspolicy1, umail, status)values('" + fid + "','" + fnamec + "','" + uid + "','" + uname + "','" + oidc + "','" + ownerc + "','" + timec + "','" + accesspolicyc + "','" + uaccessattribute + "','" + uaccessattribute1 + "','" + umail + "','Waiting')");
            response.sendRedirect("files.jsp?msgc== to CLOUDsuccess");
        } else {
            con2 = DbConnection.getConnection();
            st2 = con2.createStatement();
            rs3 = st1.executeQuery("Select * from revocation where uname='" + uname + "' AND oname='" + sowner + "'");
            if (rs3.next()) {
                response.sendRedirect("files.jsp?revo= You are revoked by this Data Owner..");
            } else {
                rs2 = st2.executeQuery("Select * from fileupload where id='" + fid + "'");
                if (rs2.next()) {
                    ffname = rs2.getString("filename");
                    owner = rs2.getString("oid");
                    ooid = rs2.getString("oid");
                    ttime = rs2.getString("time");
                    policy = rs2.getString("accesspolicy");
                    System.out.println("OWNER PRINT : " + ffname + owner + ooid + ttime + policy);
                    st3.executeUpdate("insert into filereqtoowner(fid, fname, uid, uname, oid, time, faccesspolicy, uaccesspolicy, uaccesspolicy1, umail, status)values('" + fid + "','" + ffname + "','" + uid + "','" + uname + "','" + owner + "','" + ttime + "','" + policy + "','" + uaccessattribute + "','" + uaccessattribute1 + "','" + umail + "','Waiting')");
                    response.sendRedirect("files.jsp?msgo== to OWNER success");
                }
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>