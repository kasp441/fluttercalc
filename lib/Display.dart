class Display
{
  String currentText = "";

  getTextAsText()
  {
    return currentText;
  }

  getTextAsNum()
  {
    try 
    {
      return double.parse(currentText);
    }
    catch (e)
    {
      return Exception(e);
    }
  }

  addToText(String num)
  {
    currentText += num;
  }
}