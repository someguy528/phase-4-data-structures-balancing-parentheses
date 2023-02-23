require_relative './stack'

# your code here
def balancing_parentheses(string)
    stack = Stack.new
    imbalance = 0

    # string.split("").each do |i|
    #     if stack.peek == "(" && i == ")"
    #         stack.pop
    #     else
    #         stack.push(i)
    #     end
    # end
    # stack.size

    # method for multicharacter strings
    string.split("").each do |i|
        if i == "(" || i == ")" 
            stack.push(i)
        end
    end

    until stack.peek == ")" || stack.size == 0
        stack.pop
        imbalance += 1
    end

    while stack.size != 0
        char = stack.pop
        if char == ")"
            imbalance += 1
        elsif char == "("
            imbalance -= 1
        end
    end
    imbalance
    
end