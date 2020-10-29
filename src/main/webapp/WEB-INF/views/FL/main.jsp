<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.16.1/axios.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.3.0/vue.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.4.1/css/bulma.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Financial Ledger</title>
	<script type="text/javascript">
		function save(){
			var amount = document.getElementById('amount');
			var description = document.getElementById('description');
			
			// 여기에 유효성 검사 로직 필요
			
			return location.href("/FL/save?amount="+amount+"&description="+description);
		}
		
		function delete_row(){
			// pk를 보내서 특정 행만 삭제할 수 있는 로직 작성
			
			return location.href("/FL/delete_row?pk"+{table.pk});
		}
		
		function edit_row(){
			// pk를 보내서 특정 행만 수정할 수 있는 로직 작성
			// idea : 이 부분을 동적으로 만들 수 있는 방법은 없을까?? jquery?
			return location.href("/FL/edit_row?pk="+{table.pk})
		} 
	</script>
</head>
<style>
html, body {
  height: 100%;
  padding: 0;
  margin: 0;
  background-color: #E6E6E6;
}
#app {
  height: 100%;
  margin: 1.5rem 0;
  padding: 0;
}
.title {
  text-align: center;
}
.message:not(:last-child) {
  margin-bottom: 0;
}
.message-body {
  font-weight: 600;
}
.button {
  float: right;
}
.income {
  color: green;
}
.outcome {
  color: red;
}
</style>
<body>
  <div class="columns is-mobile" id="app">
    <div class="column is-10 is-offset-1">
      <!--title-->
      <p class="title is-2 is-spaced">Your Records</p>
      <!--input form-->
      <div class="field has-addons">
        <p class="control">
          <input class="input" type="number" name="amount" placeholder="Amount" id="amount">
        </p>
        <p class="control is-expanded">
          <input class="input" type="text" name="description" placeholder="Description" id="description">
        </p>
        <p class="control">
          <button onclick="return save();" class="button is-primary">Save</button>
        </p>
      </div>
      <!--dashboard-->
      <div class="columns">
        <div class="column">
          <article class="message is-success">
            <div class="message-header">
              <p>Income</p>
            </div>
            <div class="message-body">
            </div>
          </article>
        </div>
        <div class="column">
          <article class="message is-danger">
            <div class="message-header">
              <p>Outcome</p>
            </div>
            <div class="message-body">
            </div>
          </article>
        </div>
        <div class="column">
          <article class="message is-info">
            <div class="message-header">
              <p>Total</p>
            </div>
            <div class="message-body">
            </div>
          </article>
        </div>
      </div>
      <!--contents-->
      <table class="table">
        <thead>
          <tr>
            <th>Record Time</th>
            <th>Amount</th>
            <th>Description</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>
              <button onclick="return delete_row();" class="button is-danger">Delete</button>
              <button onclick="return edit_row();" class="button is-light">Edit</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</body>