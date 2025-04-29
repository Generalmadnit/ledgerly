import matplotlib.pyplot as plt

# Sample data
categories = ['Food', 'Transport', 'Entertainment']
amounts = [120, 80, 150]

fig, ax = plt.subplots()
bars = ax.bar(categories, amounts)
ax.bar_label(bars, padding=0)  # padding adds space above the bar

plt.show()
