#!/usr/bin/python3
import sys

# 1. Get the inputs from the terminal
pid = sys.argv[1]
search_string = sys.argv[2].encode('ascii')
replace_string = sys.argv[3].encode('ascii')

# 2. Find exactly where the heap is located in the process's memory
with open(f"/proc/{pid}/maps", 'r') as maps_file:
    for line in maps_file:
        if "[heap]" in line:
            # Extract the memory range (looks like "555e646df000-555e64700000")
            address_range = line.split(' ')[0]
            start_hex, end_hex = address_range.split('-')
            
            # Convert the hexadecimal text into integer memory addresses
            heap_start = int(start_hex, 16)
            heap_end = int(end_hex, 16)
            break

# 3. Read the memory, find the string, and overwrite it
with open(f"/proc/{pid}/mem", 'r+b') as mem_file:
    # Jump to the start of the heap
    mem_file.seek(heap_start)
    
    # Read the entire heap and find the offset (the exact position of our string)
    heap_data = mem_file.read(heap_end - heap_start)
    offset = heap_data.find(search_string)
    
    # Jump directly to the exact memory address where our string lives
    mem_file.seek(heap_start + offset)
    
    # If the new string is shorter, fill the remaining space with null bytes (\x00)
    padded_replace = replace_string.ljust(len(search_string), b'\x00')
    
    # Write the new string over the old one!
    mem_file.write(padded_replace)
    print("String replaced successfully!")
