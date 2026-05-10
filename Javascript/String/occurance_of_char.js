const str = "banana"
const occurance = {}

const string = str.split('')

for (let i = 0; i <= str.length; i++) {
    occurance[str[i]] = 1
}

console.log(occurance)
