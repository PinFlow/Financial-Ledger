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
          <input class="input" type="number" name="amount" placeholder="Amount">
        </p>
        <p class="control is-expanded">
          <input class="input" type="text" name="description" placeholder="Description">
        </p>
        <p class="control">
          <button class="button is-primary">Save</button>
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
              <button class="button is-danger">Delete</button>
              <button class="button is-light">Edit</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</body>