import psycopg2
import creds
import datetime
import matplotlib.pyplot as plt
from collections import defaultdict

conn = psycopg2.connect(
    host="localhost",         
    database="ledgerly",
    user=creds.username,
    password = creds.password,
    port=5432                 
)

cur = conn.cursor()

cur.execute("SELECT * FROM transactions")

rows = cur.fetchall()

thisMonth = datetime.date.today().month
category_expense = defaultdict(int)
print("printing the current month",thisMonth)
for row in rows:
    print(row)
    if row[1] == 'Debited' and row[6].month == thisMonth:
        category = row[3] 
        amount = row[4] 
        category_expense[category] += amount
    
cur.close()
conn.close()

categories = list(category_expense.keys())
expenses = list(category_expense.values())

plt.figure(figsize=(4.83, 2.36))
plt.bar(categories, expenses, color='skyblue')
plt.xlabel('Category')
plt.ylabel('Total Expense')
plt.title('Debited Expenses by Category')
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()