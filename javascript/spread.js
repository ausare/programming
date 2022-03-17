const array = ['jason', 'gifford', 'frank', 'gifford', 'pat', 'cummins']

// good reason to use it would be adding arrays

const names = ['jordy', 'jeff', 'jesus', 'dad', ...array]

console.log(names)
// [
//   'jordy', 'jeff',
//   'jesus', 'dad',
//   'jason', 'gifford',
//   'frank', 'gifford',
//   'pat',   'cummins'
// ]

