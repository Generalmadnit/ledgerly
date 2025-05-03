import os
import psutil

def process_memory():
    process = psutil.Process(os.getpid())
    mem_info = process.memory_info()
    return mem_info.rss

mem_before = process_memory()
print(mem_before)

cpcnt = os.cpu_count()
cpcnt.bit_length
print(cpcnt)
print(type(cpcnt))

mem_after = process_memory()
print(mem_after)
print("{}:consumed memory: {:,}".format("This program consumes",mem_after - mem_before))
