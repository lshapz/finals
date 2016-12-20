1. Implement merge sort. What's the bigO and why?
<!-- see other file -->
<!-- it is O(n logn) . the multiplier n is because we ultimately have to look at every element in the final merge / comparison. the log n is for all the times we have to break it in half -->


2. Write a method to reverse a string. (Hint: You cannot use reverse method)

def my_reverse(string)
  start = 0
  finish = string.length - 1
  while start < finish 
    now = string[start]
    string[start] = string[finish]
    string[finish] = now
    start += 1
    finish -= 1 
  end
  string
end


3. Write a method to see if string is a palindrome 

def racecar
  return true if string == string.reverse! 
end

<!-- if I'm not supposed to use the built in reverse method please see question 2-->

4. Given the root note in a sorted binary search tree, how do you find the smallest element?

<!-- go left, young man  -->
