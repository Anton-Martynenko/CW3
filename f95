function createTwoSetsOfEqualSum(n) {
  if ((n * (n + 1) / 2) % 2 !== 0) return []
  
  let [arr1, arr2] = [[],[]];  
  let sum1 = 0;
  let sum2 = 0;
  
  for(let i = n; i >= 1; i--) {
    if (sum1 <= sum2) {
      arr1.push(i);
      sum1 = sum1 + i;
    } else {
      arr2.push(i);
      sum2 = sum2 + i;
    }
  }
  return [arr1, arr2];
}
