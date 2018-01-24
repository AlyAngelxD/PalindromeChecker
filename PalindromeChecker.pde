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
  String strNoSpaces = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (word.substring(i,i+1).equals(" "))
    {

    }
    else 
    {
      strNoSpaces = strNoSpaces + word.substring(i,i+1);
    }
  }
  //numLetters >> onlyLetters
  String strOnlyLetters = new String();
  for (int i = 0; i < strNoSpaces.length(); i++)
  {
    if (Character.isLetter(strNoSpaces.charAt(i)) == true)
    {
      strOnlyLetters = strOnlyLetters + strNoSpaces.charAt(i);
    }
  }
  //noCapitals
  String strNoCapitals = new String();
  for (int i = 0; i < strOnlyLetters.length(); i++)
  {
    if (Character.isUpperCase(strOnlyLetters.charAt(i)) == true)
    {
      strNoCapitals = strNoCapitals + Character.toLowerCase(strOnlyLetters.charAt(i));
    }
    else
    {
      strNoCapitals = strNoCapitals + strOnlyLetters.charAt(i); 
    }
  }
  word = strNoCapitals;
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


