<%@ page import="java.util.ArrayList" %>
<%@ page import="bitlab.techorda.DB.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-5 pb-5">
  <%
    Tasks tapsyrma = (Tasks) request.getAttribute("tasks");
    if(tapsyrma!=null){
  %>
  <div class="row">
    <div class="col-6 mx-auto">
      <div class="row">
        <div class="col-12">
          <label>NAME : </label>
        </div>
      </div>
      <div class="row mt-2">
        <div class="col-12">
          <input type="text" class="form-control" readonly value="<%=tapsyrma.getName()%>">
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-12">
          <label>Deadline : </label>
        </div>
      </div>
      <div class="row mt-2">
        <div class="col-12">
          <input type="text" class="form-control" readonly value="<%=tapsyrma.getDeadlineDate()%>" >
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-12">
          <label>DESCRIPTION : </label>
        </div>
      </div>
      <div class="row mt-2">
        <div class="col-12">
          <textarea class="form-control" readonly rows="10"><%=tapsyrma.getDescription()%></textarea>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col-12">
          <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editTask">
            Edit Task
          </button>
          <!-- Button trigger modal -->
          <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
            Delete Task
          </button>
        </div>
      </div>
      <!-- Modal -->
      <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <form action="/deletetask" method="post">
              <input type="hidden" name="id" value="<%=tapsyrma.getId()%>">
              <div class="modal-header">
                <h1 class="modal-title fs-5">Delete Task</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <h5 class="text-center">Are you sure?</h5>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                <button class="btn btn-danger">YES</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="modal fade" id="editTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit Task</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form action="/savetask" method="post">
                <input type="hidden" name="task_id" value="<%=tapsyrma.getId()%>">
                <div class="row">
                  <div class="col-12">
                    <label>NAME : </label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="task_name" value="<%=tapsyrma.getName()%>">
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
                    <label>DESCRIPTION : </label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <textarea name="task_description" class="form-control" rows="10"><%=tapsyrma.getDescription()%></textarea>
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
                    <label>Deadline : </label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="datetime-local" class="form-control" name="task_deadline" value="<%=tapsyrma.getDeadlineDate()%>">

                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col-12">
                    <button class="btn btn-primary">Save Task</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%
  }else{
  %>
  <h3 class="text-center">
    TASK NOT FOUND
  </h3>
  <%
    }
  %>
</div>
</body>
</html>
