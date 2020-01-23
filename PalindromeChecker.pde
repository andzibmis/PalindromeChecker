public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String n = "";
  for (int x = 0; x < word.length (); x ++) {
    if (word.charAt (x) != ' ') {
      n = n + word.substring (x, x + 1);
    }
  }
  String a = "";
  for (int x = 0; x < n.length(); x ++) {
    if (Character.isLetter (n.charAt (x)) == true) {
      a = a + n.substring (x, x + 1);
    }
  }
  if (reverse (a.toLowerCase()).equals (a.toLowerCase())) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sew = new String();
    int last = str.length () - 1;
    for (int x = last; x >= 0; x --) {
      sew = sew + str.substring (x, x  + 1);
    }
    return sew;
}
