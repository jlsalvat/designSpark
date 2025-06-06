DESIGNSPARK_INTERMEDIATE_ASCII "D:/AcceleratedDesigns/UL.QueueWorkerService.WorkingDirectory.Native/289788/Output/DesignSpark/DesignSpark.DSL"

(asciiHeader
    (fileUnits MIL)
)
(library Library_1
	(padStyleDef "RX79Y75D0T"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 75) (shapeHeight 79))
		(padShape (layerNumRef 22) (padShapeType Rect)  (shapeWidth 75) (shapeHeight 79))
		(padShape (layerNumRef 20) (padShapeType Rect)  (shapeWidth 75) (shapeHeight 79))
		(padShape (layerNumRef 16) (padShapeType Ellipse) (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "RX57Y126D0T"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 57) (shapeHeight 126))
		(padShape (layerNumRef 16) (padShapeType Ellipse) (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "EX63Y63D63P"
		(holeDiam 63)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 63) (shapeHeight 63))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 63) (shapeHeight 63))
	)
	(textStyleDef "H50s3" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50) 
			(strokeWidth 3) 
		)
	)
	(textStyleDef "h7s1" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 7) 
			(strokeWidth 1) 
		)
	)
	(textStyleDef "H82s5" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 82) 
			(strokeWidth 5) 
		)
	)
	(textStyleDef "Default" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 100) 
			(strokeWidth 10) 
		)
	)
	(textStyleDef "H100S10" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 100) 
			(strokeWidth 10) 
		)
	)
	(textStyleDef "h100s3" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 100) 
			(strokeWidth 3) 
		)
	)
	(textStyleDef "h100s5" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 100) 
			(strokeWidth 5) 
		)
	)
	(textStyleDef "H10S1" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 10) 
			(strokeWidth 1) 
		)
	)
	(textStyleDef "h125s6" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 125) 
			(strokeWidth 6) 
		)
	)
	(textStyleDef "H14S2" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 14) 
			(strokeWidth 2) 
		)
	)
	(textStyleDef "h150s6" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 150) 
			(strokeWidth 6) 
		)
	)
	(textStyleDef "h151s6" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 150) 
			(strokeWidth 6) 
		)
	)
	(textStyleDef "H160S0" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 160) 
			(strokeWidth 100) 
		)
	)
	(textStyleDef "H25s3" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 25) 
			(strokeWidth 1) 
		)
	)
	(textStyleDef "H30s0" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 30) 
			(strokeWidth 100) 
		)
	)
	(textStyleDef "H30s3" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 30) 
			(strokeWidth 3) 
		)
	)
	(textStyleDef "H40S2" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 40) 
			(strokeWidth 2) 
		)
	)
	(textStyleDef "H50S0" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50) 
			(strokeWidth 100) 
		)
	)
	(textStyleDef "H51S3" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 51) 
			(strokeWidth 3) 
		)
	)
	(textStyleDef "H60S7" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 60) 
			(strokeWidth 7) 
		)
	)
	(textStyleDef "H70s4" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 70) 
			(strokeWidth 4) 
		)
	)
	(textStyleDef "H80s4" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 80) 
			(strokeWidth 4) 
		)
	)
	(textStyleDef "H82S8" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 82) 
			(strokeWidth 8) 
		)
	)
	(textStyleDef "h85s5" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 85) 
			(strokeWidth 5) 
		)
	)
	(textStyleDef "COPYRIGHT" 
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1) 
			(strokeWidth 1) 
		)
	)
	(patternDef "SW6_JS5208_ESW" (originalName "SW6_JS5208_ESW")
		(multiLayer
			(pad (padNum 1) (padStyleRef RX79Y75D0T) (pt -295.5, 157.5) (rotation 90))
			(pad (padNum 2) (padStyleRef RX79Y75D0T) (pt -295.5, 0) (rotation 90))
			(pad (padNum 3) (padStyleRef RX79Y75D0T) (pt -295.5, -157.5) (rotation 90))
			(pad (padNum 4) (padStyleRef RX79Y75D0T) (pt 295.5, 157.5) (rotation 90))
			(pad (padNum 5) (padStyleRef RX79Y75D0T) (pt 295.5, 0) (rotation 90))
			(pad (padNum 6) (padStyleRef RX79Y75D0T) (pt 295.5, -157.5) (rotation 90))
			(pad (padNum 7) (padStyleRef RX57Y126D0T) (pt -138, -217.5) (rotation 90))
			(pad (padNum 8) (padStyleRef RX57Y126D0T) (pt 138, -217.5) (rotation 90))
			(pad (padNum 9) (padStyleRef RX57Y126D0T) (pt 0, 217.5) (rotation 90))
			(pad (padNum 10) (padStyleRef EX63Y63D63P) (pt -118, -118) (rotation 0))
			(pad (padNum 11) (padStyleRef EX63Y63D63P) (pt 118, 118) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(line (pt -75.751863, 249) (pt -249, 249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt 213.751863, -249) (pt 249, -249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -150, -25) (textStyleRef "H50S3") (isVisible True))
		)
		(layerContents (layerNumRef 18)
			(attr "Type" "DEV" (pt -100, -25) (textStyleRef "H50S3") (isVisible False))
		)
		(layerContents (layerNumRef 18)
			(attr "PN" "PN" (pt -50, -25) (textStyleRef "H50S3") (isVisible False))
		)
		(layerContents (layerNumRef 18)
			(attr "DEV" "DEV" (pt -75, -25) (textStyleRef "H50S3") (isVisible False))
		)
		(layerContents (layerNumRef 18)
			(attr "VAL" "VAL" (pt -75, -25) (textStyleRef "H50S3") (isVisible False))
		)
		(layerContents (layerNumRef 18)
			(line (pt -62.248137, -249) (pt 62.248137, -249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt 249, -108.92705956) (pt 249, -48.57294044) (width 6))
		)
		(layerContents (layerNumRef 30)
			(arc (pt -295.5, 232.5) (radius 15) (startAngle 0) (sweepAngle 360) (width 20))
		)
		(layerContents (layerNumRef 19)
			(arc (pt -274, 157.5) (radius 15) (startAngle 0) (sweepAngle 360) (width 20))
		)
		(layerContents (layerNumRef 18)
			(line (pt -249, -249) (pt -213.751863, -249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt 249, -249) (pt 249, -206.07294044) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt 249, 249) (pt 75.751863, 249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt -249, 249) (pt -249, 206.07294044) (width 6))
		)
		(layerContents (layerNumRef 30)
			(line (pt -244, -244) (pt 244, -244) (width 1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 244, -244) (pt 244, 244) (width 1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 244, 244) (pt -244, 244) (width 1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -244, 244) (pt -244, -244) (width 1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -249, 108.92705956) (pt -249, 48.57294044) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt -249, -48.57294044) (pt -249, -108.92705956) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt -249, -206.07294044) (pt -249, -249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt 249, 206.07294044) (pt 249, 249) (width 6))
		)
		(layerContents (layerNumRef 18)
			(line (pt 249, 48.57294044) (pt 249, 108.92705956) (width 6))
		)
	)
	(symbolDef "JS5208" (originalName "JS5208") 
		(pin (pinNum 1) (pt 0, 0) (rotation 0) (pinLength 300 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 310, 0) "COMM" (textStyleRef "H82s5"))
))
		(pin (pinNum 2) (pt 0, -200) (rotation 0) (pinLength 300 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 310, -200) "2" (textStyleRef "H82s5"))
))
		(pin (pinNum 3) (pt 0, -400) (rotation 0) (pinLength 300 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 310, -400) "PUSH (N.O.)" (textStyleRef "H82s5"))
))
		(pin (pinNum 4) (pt 1200, 0) (rotation 180) (pinLength 300 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 890, 0) "4" (justify "right") (textStyleRef "H82s5"))
))
		(pin (pinNum 5) (pt 1200, -200) (rotation 180) (pinLength 300 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 890, -200) "5" (justify "right") (textStyleRef "H82s5"))
))
		(pin (pinNum 6) (pt 1200, -400) (rotation 180) (pinLength 300 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 890, -400) "6" (justify "right") (textStyleRef "H82s5"))
))
		(line (pt 300, 100) (pt 300, -500) (width 5))
		(line (pt 300, -500) (pt 900, -500) (width 5))
		(line (pt 900, -500) (pt 900, 100) (width 5))
		(line (pt 900, 100) (pt 300, 100) (width 5))
		(attr "RefDes" "RefDes" (pt 354, 259) (isVisible True) (textStyleRef "H82s5"))
		(attr "Type" "Type" (pt 436, 159) (isVisible True) (textStyleRef "H82s5"))
		(attr "Value" "Value" (pt 395, 159) (isVisible False) (textStyleRef "H82s5"))
		(arc (pt 600, -200) (radius 25) (startAngle 90) (sweepAngle 0) (width 5))
		(arc (pt 600, -50) (radius 25) (startAngle 90) (sweepAngle 0) (width 5))
		(arc (pt 600, -350) (radius 25) (startAngle 90) (sweepAngle 0) (width 5))
		(arc (pt 750, -200) (radius 25) (startAngle 0) (sweepAngle 0) (width 5))
		(arc (pt 450, -200) (radius 25) (startAngle 180) (sweepAngle 0) (width 5))
		(line (pt 300, -200) (pt 425, -200) (width 5))
		(line (pt 775, -200) (pt 900, -200) (width 5))
		(line (pt 600, -25) (pt 600, 0) (width 5))
		(line (pt 600, 0) (pt 900, 0) (width 5))
		(line (pt 600, -375) (pt 600, -400) (width 5))
		(line (pt 600, -400) (pt 900, -400) (width 5))
		(line (pt 300, 0) (pt 400, 0) (width 5))
		(line (pt 400, 0) (pt 675, -275) (width 5))
		(attr "C" "Copyright (C) 2018 Accelerated Designs. All rights reserved" (pt -0.5, -0.5) (isVisible False) (textStyleRef "COPYRIGHT"))
	) 
	(compDef "JS5208"
		(originalName "JS5208")
		(compHeader (numPins 6)
			(numParts 1)
			(refDesPrefix SW)
		)
		(compPin "1" (pinName "COMM") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "2" (pinName "2") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "3" (pinName "PUSH (N.O.)") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "4" (pinName "4") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "5" (pinName "5") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "6" (pinName "6") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Input))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "JS5208"))
		(attachedPattern (patternNum 1) (patternName "SW6_JS5208_ESW")
			(numPads 6) 
			(padPinMap 
				(padNum 1) (compPinRef "1") 
				(padNum 2) (compPinRef "2") 
				(padNum 3) (compPinRef "3") 
				(padNum 4) (compPinRef "4") 
				(padNum 5) (compPinRef "5") 
				(padNum 6) (compPinRef "6") 
			) 
		) 
		(attr "Copyright" "Copyright (C) 2023 Ultra Librarian. All rights reserved.") 
		(attr "Mfr_Name" "E-Switch") 
		(attr "Manufacturer_Part_Number" "JS5208") 
		(attr "Copyright" "Copyright (C) 2023 Ultra Librarian. All rights reserved.") 
		(attr "Mfr_Name" "E-Switch") 
		(attr "Manufacturer_Part_Number" "JS5208") 
	)
)
