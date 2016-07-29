
Service for grammar-based interpretation, available via GET request to `http://52.29.222.38/parse/<input>`.

*Examples:*

*  `Ich will heute nach Amsterdam fliegen`

  [http://52.29.222.38/parse/Ich%20will%20heute%20nach%20Amsterdam%20fliegen](http://52.29.222.38/parse/Ich%20will%20heute%20nach%20Amsterdam%20fliegen)

* `I want to fly to Amsterdam today`

  [http://52.29.222.38/parse/I%20want%20to%20fly%20to%20Amsterdam%20today](http://52.29.222.38/parse/I%20want%20to%20fly%20to%20Amsterdam%20today)

The parser is case-insensitive and interpunctuation is ignored.

*Test suites:*

* [http://52.29.222.38/test/de](http://52.29.222.38/test/de)
* [http://52.29.222.38/test/en](http://52.29.222.38/test/en)
* [http://52.29.222.38/test/whatsapp](http://52.29.222.38/test/whatsapp)
