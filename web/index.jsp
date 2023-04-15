<%@ page import="javax.swing.*" %>
<%@ page import="bitlab.techorda.DB.Tasks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Landing page</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <div class="row">
        <h4 class="text-center">
            Welcome to <%=siteName%>
        </h4>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <button style="background-color:darkblue; font-size:14px;heigt:50px;width:200px;" type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                + Add Tasks
            </button>

            <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Create Task</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                        <%@include file="addTaskForm.jsp"%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>Deadline</th>
                    <th>Details</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Tasks> tapsyrma = (ArrayList<Tasks>) request.getAttribute("tasks");
                    if(tapsyrma!=null){
                        for(Tasks  task: tapsyrma){
                %>
                <tr>
                    <td><%=task.getId()%></td>
                    <td><%=task.getName()%></td>
                    <td><%=task.getDeadlineDate()%></td>
                    <td>
                        <a class="btn btn-success btn-sm" style="background-color:darkblue; font-size:14px;heigt:50px;width:80px;" href="/details?task_id=<%=task.getId()%>">DETAILS</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>

                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>
