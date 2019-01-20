# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

    

def add_two_numbers(l1, l2)


    carry, remainder = (l1.val + l2.val).divmod(10)
    sum = ListNode.new(remainder)
    sum_from_node_1 = sum
    l1 = l1.next
    l2 = l2.next


    while (l1 || l2 || carry > 0)
        single_sum = carry
        if l1
            single_sum += l1.val
            l1 = l1.next
        end
        if l2
            single_sum += l2.val
            l2 = l2.next
        end

        carry, remainder = single_sum.divmod(10)

        sum.next = ListNode.new(remainder)
        sum = sum.next


    end


    return sum_from_node_1


end
