// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
//let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
// Add your code below:
//var pass = 0
//var swaps = 0
//var swapstot = 0
var loop = false
var words : [String] = []
func printLine() -> Array<String> {
    while let input = readLine() {
        words.append(input)
    }
    return words
}
var wordy = printLine()
func swap(word:inout [String], firstIndex:Int, secondIndex:Int) {
    let x = word[firstIndex]
    word[firstIndex] = word[secondIndex]
    word[secondIndex] = x
//    swapstot += 1
}
func bubbleSort(loop:inout Bool){
//    print("Pass: \(pass), Swaps: \(swaps)/\(swapstot), Array: \(words)")
    while loop == false {
        loop = true
        for i in 0..<(wordy.count - 1) {
            if wordy[i] > wordy[i+1] {
                swap(word:&wordy, firstIndex:i,secondIndex:(i+1))
                loop = false
        //        swaps += 1
            }
        }
      //  pass += 1
  //      print("Pass: \(pass), Swaps: \(swaps)/\(swapstot), Array: \(wordy)")
    //    swaps = 0
    }
}
bubbleSort(loop:&loop)
