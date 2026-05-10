// const foo = (num: string, char: string) => {

//     const num_split = num.split('')

//     const filtered: number[] = []
//     for (let i = 0; i <= num_split.length; i++) {
//         const arr_copy = [...num_split];
//         if (num_split[i] === char) {
//             arr_copy.splice(i, 1)
//             filtered.push(Number(arr_copy.join("")));

//         }
//     }
//     const max = Math.max(...filtered)
//     console.log(filtered, '\n', max);

// }

// foo("121451", '1')


const foo = (num: string, char: string) => {
    const filtered: number[] = []
    for (let i = 0; i <= num.length; i++) {
        if (num[i] === char) {
            const t = num.slice(0, i) + num.slice(i + 1)
            filtered.push(Number(t))
        }
    }

    return Math.max(...filtered)
}
console.log(foo("121451", '1'));
