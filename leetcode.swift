// 1. 两数之和
// 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target 的那两个整数，并返回它们的数组下标。
// 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
// 你可以按任意顺序返回答案。
 
func sum(nums: [Int], target: Int) -> [Int] {
    var hash: Dictionary<Int, Int> = [:]
    for (index, item) in nums.enumerated() {
        if hash.keys.contains(target - item) {
            return [hash[target-item]!, index]
        }
        hash[item] = index
    }
    return []
}

var result = sum(nums: [1,2,3,4,6,7,8,4,32,3,4,3], target: 10)
print(result)