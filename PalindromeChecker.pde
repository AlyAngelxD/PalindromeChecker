public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (word.equals(""))
    return true;
  //noSpaces
  //numLetters
  //noCapitals
  String firstHalf = word.substring(0,(word.length()/2)+1);
  if (firstHalf.equals(reverse(word)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i >= str.length()/2; i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}


