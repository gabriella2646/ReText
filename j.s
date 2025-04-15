let story = 'Last weekend, I took literally the most beautifull bike ride of my life. The route is called "The 9W to Nyack" and it stretches all the way from Riverside Park in Manhattan to South Nyack, New Jersey. It\'s really an adventure from beginning to end! It is a 48 mile loop and it literally took me an entire day. I stopped at Riverbank State Park to take some artsy photos. It was a short stop, though, because I had a freaking long way to go. After a quick photo op at the very popular Little Red Lighthouse I began my trek across the George Washington Bridge into New Jersey. The GW is a breathtaking 4,760 feet long! I was already very tired by the time I got to the other side. An hour later, I reached Greenbrook Nature Sanctuary, an extremely beautifull park along the coast of the Hudson. Something that was very surprising to me was that near the end of the route you literally cross back into New York! At this point, you are very close to the end.';

let storyWords = story.split(' ');
let unnecessaryWord = 'literally';
let misspelledWord = 'beautifull';
let badWord = 'freaking';

// Step 1: Log the array to console to view it
console.log(storyWords);

// Comment out the above console.log after viewing
// console.log(storyWords);

// Step 2: Join the array back to a string and log it
console.log(storyWords.join(' '));

// Step 3: Count words using forEach
let count = 0;
storyWords.forEach(word => {
  count++;
});
console.log("Word count:", count);

// Step 5: Filter out the unnecessary word "literally"
storyWords = storyWords.filter(word => word !== unnecessaryWord);

// Step 7: Correct misspelled words using map
storyWords = storyWords.map(word => {
  if (word === misspelledWord) {
    return "beautiful";
  } else {
    return word;
  }
});

// Step 8: Find index of bad word
let badWordIndex = storyWords.findIndex(word => word === badWord);
console.log("Bad word index:", badWordIndex);

// Step 9: Replace bad word with 'really'
if (badWordIndex !== -1) {
  storyWords[badWordIndex] = "really";
}

// Step 10: Check if all words have 10 or fewer characters
let lengthCheck = storyWords.every(word => word.length <= 10);
console.log("All words 10 or fewer characters:", lengthCheck);

// Step 11: Replace any word longer than 10 characters manually
if (!lengthCheck) {
  // Find the word longer than 10 characters
  for (let i = 0; i < storyWords.length; i++) {
    if (storyWords[i].length > 10) {
      // Replace with a shorter word
      storyWords[i] = "stunning"; // could be sbalorditivo, abbagliante, or glorioso
      break;
    }
  }
}

// Final story string after modifications
console.log(storyWords.join(' '));
