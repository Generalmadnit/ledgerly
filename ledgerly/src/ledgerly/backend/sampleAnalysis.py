import psycopg2
import creds
import matplotlib.pyplot as plt
from collections import defaultdict
from pathlib import Path

conn = psycopg2.connect(
    host="localhost",         
    database="ledgerly",
    user=creds.username,
    password = creds.password,
    port=5432                 
)

cur = conn.cursor()

# For may 2025 only
cur.execute("SELECT transaction_type, expense_type, amount, paid_date FROM transactions WHERE transaction_type = 'Debited' and EXTRACT(MONTH FROM paid_date) = 5 AND EXTRACT(YEAR FROM paid_date) = 2025")

# For current month and year
# cur.execute("SELECT transaction_type, expense_type, amount, paid_date FROM transactions WHERE EXTRACT(MONTH FROM paid_date) = EXTRACT(MONTH FROM CURRENT_DATE) AND EXTRACT(YEAR FROM paid_date) = EXTRACT(YEAR FROM CURRENT_DATE)")

rows = cur.fetchall()

category_expense = defaultdict(int)

for row in rows:
    print(row)
    if row[0] == 'Debited':
        category = row[1] 
        amount = row[2] 
        category_expense[category] += amount

categories = list(category_expense.keys())
print(categories)
expenses = list(category_expense.values())
print(expenses)

cur.close()
conn.close()

plt.figure(figsize=(4.83, 2.7))
bars = plt.bar(categories, expenses, color='skyblue')
plt.bar_label(bars, padding=0)
plt.subplots_adjust(top=0.85, bottom=0.25)
plt.xlabel('Category')
plt.ylabel('Total Expense')
plt.title('Monthly Expenses by Category')
plt.grid(axis='y', linestyle='--', alpha=0.7)
current_directory = Path.cwd()
saveLoc = current_directory / "frontend" / "reports" / "monthly.jpg"
plt.savefig(saveLoc)
plt.show()