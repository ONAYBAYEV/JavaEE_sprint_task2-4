<form action="/addtask" method="post">
  <div class="modal-body">
    <div class="row">
      <div class="col-12">
        <label> Name : </label>
      </div>
    </div>
    <div class="row mt-2">
      <div class="col-12">
        <input type="text" class="form-control" name="task_name">
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <label> Description : </label>
      </div>
    </div>
    <div class="row mt-2">
      <div class="col-12">
        <textarea class="form-control" name="task_description"></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <label> Deadline :</label>
      </div>
    </div>
    <div class="row mt-2">
      <div class="col-12">
        <input type="datetime-local" class="form-control" name="task_deadline">
      </div>
    </div>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    <button class="btn btn-primary">Create</button>
  </div>
</form>