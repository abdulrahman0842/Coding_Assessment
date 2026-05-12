//              working but not optimized

// const fun = (strs: string[]) => {
//     const filtered: string[][] = [];

//     for (let i = 0; i < strs.length ; i++) {
//         if (filtered.length === 0) {
//             filtered.push([strs[i]])
//         } else {
//             for (let j = 0; j < filtered.length; j++) {

//                 if (isAnagram(strs[i], filtered[j][0])) {
//                     filtered[j].push(strs[i])
//                     break;
//                 } else {
//                     if (j == filtered.length - 1) {
//                         filtered.push([strs[i]])
//                         break
//                     }
//                 }
//             }
//         }
//     }
//     return filtered
// }

// const isAnagram = (s1: string, s2: string) => {
//     if (s1.length != s2.length) return false;
//     return JSON.stringify(s1.split("").sort()) === JSON.stringify(s2.split('').sort())

// }

// const strs = ["eat", "tea", "tan", "ate", "nat", "bat"];

// console.log(fun(strs));

// // const st = [1, 2, 3, 4, 5]
// // for (let i = 0; i < st.length; i++) {
// //     console.log(st[i]);





//              optimized code

const getFrequencyKey = (str: string): string => {
    const count = Array(26).fill(0);
    for (const char of str) {
        count[char.charCodeAt(0) - 97]++
    }
    return count.join('#')
}
const fun2 = (strs: string[]) => {

    const anagrams = new Map<string, string[]>()

    for (let i = 0; i < strs.length; i++) {

        // sorting string takes O(N k.log k) time complexity -- using new way it reduce to O(N.K)
        // const sorted = strs[i].split('').sort().join("")
        // if (!anagrams.has(sorted)) {
        //     anagrams.set(sorted, [])
        // }

        const key = getFrequencyKey(strs[i])

        if (!anagrams.has(key)) {
            anagrams.set(key, [])
        }
        anagrams.get(key)?.push(strs[i])

    }
    return [...anagrams.values()]
}

const strs = ["eat", "tea", "tan", "ate", "nat", "bat"];
console.log(fun2(strs));