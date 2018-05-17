# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

l1 = {
    val: 1,
    next: {
        val: 2,
        next: {
            val: 4,
            next: nil
            }
        }
    }

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    res = []
    head1 = l1
    head2 = l2
    while (head1 || head2)
        res << head1.val if head1
        res << head2.val if head2
        head1 = head1.next if head1
        head2 = head2.next if head2
    end
    res
end
