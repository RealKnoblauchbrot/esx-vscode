---@meta

---@class MySQL
MySQL = {}

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.insert</h4>
--Inserts a new entry into the database and returns the insert id for the row, if valid.
---@param sql string
---@param parameters any[]
---@return number rowId
function MySQL.insert.await(sql, parameters)
  return rowId  
end

--<h3>(Serverside Only)</h3>
--Inserts a new entry into the database and returns the insert id for the row, if valid.
---@param sql string
---@param parameters any[]
---@param cb fun(rowId)
function MySQL.insert(sql, parameters, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.prepare</h4>
--Prepare can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--* Date will not return the datestring commonly used in FiveM
--* TINYINT 1 and BIT will not return a boolean
--* You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
--
--Unlike [rawExecute](https://overextended.dev/oxmysql/Functions/rawExecute), the SELECT statement will return a column, row, or array of rows depending on the number of columns and rows selected.
---@param sql string
---@param parameters any[]
---@return table
function MySQL.prepare.await(sql, parameters) 
  return response
end,

--<h3>(Serverside Only)</h3>
--Prepare can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--* Date will not return the datestring commonly used in FiveM
--* TINYINT 1 and BIT will not return a boolean
--* You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
--
--Unlike [rawExecute](https://overextended.dev/oxmysql/Functions/rawExecute), the SELECT statement will return a column, row, or array of rows depending on the number of columns and rows selected.
---@param sql string
---@param parameters any[]
---@param cb fun(response: table)
function MySQL.prepare(sql, parameters, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.query</h4>
--When selecting data, returns all matching rows and columns; otherwise, returns data like insertId, affectedRows, etc.
---@param sql string
---@param parameters any[]
---@return table reponse
function MySQL.query.await(sql, parameters)
  return response
end

--<h3>(Serverside Only)</h3>
--When selecting data, returns all matching rows and columns; otherwise, returns data like insertId, affectedRows, etc.
---@param sql string
---@param parameters any[]
---@param cb fun(response: table)
function MySQL.query(sql, parameters, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.rawExecute</h4>
--rawExecute can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--* Date will not return the datestring commonly used in FiveM
--* TINYINT 1 and BIT will not return a boolean
--* You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
--Unlike [prepare](https://overextended.dev/oxmysql/Functions/prepare), the SELECT statement will always return an array of rows. When using SELECT, the return value will match query, single, or scalar depending on the number of columns and rows selected.
---@param sql string
---@param parameters any[]
---@return table
function MySQL.rawExecute.await(sql, parameters)
  return rows
end

--<h3>(Serverside Only)</h3>
--rawExecute can be used to execute frequently called queries faster and accepts multiple sets of parameters to be used with a single query.
--* Date will not return the datestring commonly used in FiveM
--* TINYINT 1 and BIT will not return a boolean
--* You can only use ? value placeholders, ?? column placeholders and named placeholders will throw an error
--Unlike [prepare](https://overextended.dev/oxmysql/Functions/prepare), the SELECT statement will always return an array of rows. When using SELECT, the return value will match query, single, or scalar depending on the number of columns and rows selected.
---@param sql string
---@param parameters any[]
---@param cb fun(rows: table)
function MySQL.rawExecute(sql, parameters, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.scalar</h4>
--Returns the first column for a single row.
---@param sql string
---@param parameters any[]
function MySQL.scalar.await(sql, parameters) 
  return column
end

--<h3>(Serverside Only)</h3>
--Returns the first column for a single row.
---@param sql string
---@param parameters any[]
---@param cb fun(rows: table)
function MySQL.scalar(sql, parameters, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.single</h4>
--Returns all selected columns for a single row.
---@param sql string
---@param parameters any[]
---@return table columns
function MySQL.single.await(sql, parameters)
  return columns
end

--<h3>(Serverside Only)</h3>
--Returns all selected columns for a single row.
---@param sql string
---@param parameters any[]
---@param cb fun(columns: table)
function MySQL.single(sql, parameters, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.transaction</h4>
--A transaction executes multiple queries and commits them only if all succeed.
--If one fails, none of the queries are committed.
--
--The return value is a boolean, which is the result of the transaction.
---@param queries table
---@param values table|nil
---@return boolean success
function MySQL.transaction.await(queries, values)
  return success
end

--<h3>(Serverside Only)</h3>
--A transaction executes multiple queries and commits them only if all succeed.
--If one fails, none of the queries are committed.
--
--The return value is a boolean, which is the result of the transaction.
---@param queries table
---@param values table|nil
---@param cb fun(success: boolean)
function MySQL.transaction(queries, values, cb) end

--<h3>(Serverside Only)</h3>
--<h4>Promise version of MySQL.update</h4>
--Returns the number of rows affected by the query.
---@param sql string
---@param parameters any[]
---@return number affectedRows
function MySQL.update.await(sql, parameters)
  return affectedRows
end

--<h3>(Serverside Only)</h3>
--Returns the number of rows affected by the query.
---@param sql string
---@param parameters any[]
---@param cb fun(affectedRows: number)
function MySQL.update(sql, parameters, cb) end