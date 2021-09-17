// 1. 两数之和
// 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target 的那两个整数，并返回它们的数组下标。
// 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
// 你可以按任意顺序返回答案。
 
func sum(nums: [Int], target: Int) -> [Int] {
    // 创建一个字典, 用于绕开内层的for循环
    var hash: Dictionary<Int, Int> = [:]
    // 遍历给定的数组, 这一步没有好的办法绕开
    for (index, item) in nums.enumerated() {
        // 从哈希表中筛选是不是有当前整数的补数, 如果有的话, 直接返回索引
        if hash.keys.contains(target - item) {
            return [hash[target-item]!, index]
        }
        // 字典中没有当前数的补数, 那么就将当前整数存到字典中
        hash[item] = index
    }
    return []
}
/**
题解:
这道题可以使用暴力破解, 使用两层for循环, 时间复杂度为O(N²)
所以这个地方使用了一个哈希表来避开里层的for循环, 因为哈希查询为O(1), 所以这个地方的时间复杂度就降为了O(N)
*/ 
var result = sum(nums: [1,2,3,4,6,7,8,4,32,3,4,3], target: 10)
print(result)