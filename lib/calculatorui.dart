/* class CalculatorUI extends StatefulWidget {
  @override
  _CalculatorUIState createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text('1')],
      ),
    );
  }

/* Reset Icon Button where we can reset the calculations in calculator */
  MaterialButton numberReset() {
    return MaterialButton(
      onPressed: () {},
      child: Icon(
        Icons.refresh,
        color: Colors.black87,
        size: 30,
      ),
    );
  }

/* Calculator all functional buttons like 1, 2, 3 etc. */
  MaterialButton buttonNumber({Widget child}) => MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: child, /* child: Text('AC', style: kCalculatorStyle) */
      );
} */

/* Container(
        margin: EdgeInsets.only(top: 250),
        decoration: BoxDecoration(
            color: Color(0xFFF9F9F9), borderRadius: kBorderRadiusOfButtons),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                buttonNumber(
                    child: Text('AC', style: kCalculatorStyleSymbols1)),
                buttonNumber(
                    child: Text('+/-', style: kCalculatorStyleSymbols1)),
                buttonNumber(child: Text('%', style: kCalculatorStyleSymbols1)),
                buttonNumber(child: Text('/', style: kCalculatorStyleSymbols))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                buttonNumber(child: Text('7', style: kCalculatorStyle)),
                buttonNumber(child: Text('8', style: kCalculatorStyle)),
                buttonNumber(child: Text('9', style: kCalculatorStyle)),
                buttonNumber(child: Text('x', style: kCalculatorStyleSymbols)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                buttonNumber(child: Text('4', style: kCalculatorStyle)),
                buttonNumber(child: Text('5', style: kCalculatorStyle)),
                buttonNumber(child: Text('6', style: kCalculatorStyle)),
                buttonNumber(child: Text('-', style: kCalculatorStyleSymbols)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                buttonNumber(child: Text('1', style: kCalculatorStyle)),
                buttonNumber(child: Text('2', style: kCalculatorStyle)),
                buttonNumber(child: Text('3', style: kCalculatorStyle)),
                buttonNumber(child: Text('+', style: kCalculatorStyleSymbols)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                numberReset(),
                buttonNumber(child: Text('0', style: kCalculatorStyle)),
                buttonNumber(child: Text('.', style: kCalculatorStyle)),
                buttonNumber(child: Text('=', style: kCalculatorStyleSymbols)),
              ],
            ),
          ],
        ),
      ), */
