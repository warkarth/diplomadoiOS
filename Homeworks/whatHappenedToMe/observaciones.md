Observaciones

-En el sotryboard existian un botón y un text field que estaban sobre los que se ocupaban(Aoutlet Button y Outlet Text) y referenciaban:
	*Boton Button
	*text field Round Style Text Field
-En el ViewController faltaba agregar  @IBOutlet a la variable outtletText para poder referenciarla al storyboard.
-La variable outtletText estaba mal nombrada se cambio por: outletText.
-Se cambio _ sender: Any por _ sender: UIButton.
-Faltaba agregar @IBAction a la función actionButton para referenciar.
-Se conecto el boton Aoutlet con el viewcontroller a la función actionButton.
-Se hizo más grande el botón para que se mostrará el texto completo.


Conclusión
Pienso que este ejercico se nos dejo para poder identificar y saber resolver cualquier error, como tonto que pudieramos tener a la hora de estar realizando una app, que van más alla de errores lógicos, más bien como errores por distracciones, el error que me salió al principio fue:
	-this class is not key value coding-compliant for the key:
	  Este error ocurria porque no habia una conección con el viewcontroller.

