
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String fid = request.getParameter("id");
    String uid = (String) session.getAttribute("uid");
    String uaccessattribute = session.getAttribute("uaccessattribute").toString();
    String uaccessattribute1 = (String) session.getAttribute("uaccessattribute1");
    System.out.println("File ID : " + fid + "\nUser ID : " + uid + "\naccesspolicy : " + uaccessattribute + "\nuaccessattribute1 : " + uaccessattribute1);

    String uname = (String) session.getAttribute("uname");
    String umail = (String) session.getAttribute("uemail");
    System.out.println("User Name : " + uname + "\nUser Email : " + umail);

    Connection con = null, con1 = null, con2 = null;
    Statement st = null;
    Statement st1 = null;
    Statement st3 = null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    String fnamec = null;
    String ownerc = null;
    String oidc = null;
    String timec = null;
    String accesspolicyc = null;
    String ffname = null, ooid = null, ttime = null, policy = null, owner = null;
    try {
        con = DbConnection.getConnection();
        con1 = DbConnection.getConnection();
        con2 = DbConnection.getConnection();
        st = con2.createStatement();
        st1 = con.createStatement();
        st3 = con1.createStatement();



        rs1 = st1.executeQuery("Select * from fileupload where (id='" + fid + "') and (accesspolicy = '" + uaccessattribute + "' or accesspolicy = '" + uaccessattribute1 + "' )  ");
        if (rs1.next()) {

            fnamec = rs1.getString("filename");
            ownerc = rs1.getString("owner");
            oidc = rs1.getString("oid");
            timec = rs1.getString("time");
            accesspolicyc = rs1.getString("accesspolicy");
            st1.executeUpdate("insert into filerequest(fid, fname, uid, uname, oid, oname, time, faccesspolicy, uaccesspolicy, uaccesspolicy1, umail, status)values('" + fid + "','" + fnamec + "','" + uid + "','" + uname + "','" + oidc + "','" + ownerc + "','" + timec + "','" + accesspolicyc + "','" + uaccessattribute + "','" + uaccessattribute1 + "','" + umail + "','Waiting')");
            response.sendRedirect("files.jsp?msgc== to CLOUDsuccess");

        } else {
            rs = st.executeQuery("Select * from fileupload where id='" + fid + "'");
            if (rs.next()) {
                ffname = rs.getString("filename");
                owner = rs1.getString("owner");
                ooid = rs.getString("oid");
                ttime = rs.getString("time");
                policy = rs.getString("accesspolicy");
            }
            int i = st3.executeUpdate("insert into filereqtoowner(fid, fname, uid, uname, oid, oname, time, faccesspolicy, uaccesspolicy, uaccesspolicy1, umail, status)values('" + fid + "','" + ffname + "','" + uid + "','" + uname + "','" + ooid + "','" + owner + "','" + ttime + "','" + policy + "','" + uaccessattribute + "','" + uaccessattribute1 + "','" + umail + "','Waiting')");
            if (i != 0) {
                response.sendRedirect("files.jsp?msgo== to OWNER success");
            } else {
                response.sendRedirect("files.jsp?msgo== to OWNER success");
            }
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>