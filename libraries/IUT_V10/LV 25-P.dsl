DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "EW1.8L1.8H1.2"
		(holeDiam 1.2)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.8) (shapeHeight 1.8))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.8) (shapeHeight 1.8))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "LV-25-P" (originalName "LV-25-P")
		(multiLayer
			(pad (padNum 1) (padStyleRef EW1.8L1.8H1.2) (pt -10.16, -7.62) (rotation 90))
			(pad (padNum 2) (padStyleRef EW1.8L1.8H1.2) (pt 10.16, -7.62) (rotation 90))
			(pad (padNum 3) (padStyleRef EW1.8L1.8H1.2) (pt 10.16, 0) (rotation 90))
			(pad (padNum 4) (padStyleRef EW1.8L1.8H1.2) (pt 10.16, 7.62) (rotation 90))
			(pad (padNum 5) (padStyleRef EW1.8L1.8H1.2) (pt -10.16, 7.62) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -0.841, -0.063) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -14.6 13) (pt 14.6 13) (width 0.254))
		)
		(layerContents (layerNumRef 28)
			(line (pt 14.6 13) (pt 14.6 -13) (width 0.254))
		)
		(layerContents (layerNumRef 28)
			(line (pt 14.6 -13) (pt -14.6 -13) (width 0.254))
		)
		(layerContents (layerNumRef 28)
			(line (pt -14.6 -13) (pt -14.6 13) (width 0.254))
		)
		(layerContents (layerNumRef 18)
			(line (pt -14.6 -13) (pt -14.6 13) (width 0.254))
			(line (pt -14.6 13) (pt 14.6 13) (width 0.254))
			(line (pt 14.6 13) (pt 14.6 -13) (width 0.254))
			(line (pt 14.6 -13) (pt -14.6 -13) (width 0.254))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -16.4, -7.689) (radius 0.145000000000001) (startAngle 0.0) (sweepAngle 0.0) (width 0.254))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -16.4, -7.689) (radius 0.145000000000001) (startAngle 180.0) (sweepAngle 180.0) (width 0.254))
		)
	)
	(symbolDef "LV 25-P-A" (originalName "LV 25-P-A")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils 0 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -25 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -100 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -125 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -200 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -225 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 900 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils 0 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 700 mils -25 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 5) (pt 900 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -100 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 700 mils -125 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))

		(line (pt 200 mils 100 mils) (pt 700 mils 100 mils) (width 10 mils))
		(line (pt 700 mils 100 mils) (pt 700 mils -300 mils) (width 10 mils))
		(line (pt 700 mils -300 mils) (pt 200 mils -300 mils) (width 10 mils))
		(line (pt 200 mils -300 mils) (pt 200 mils 100 mils) (width 10 mils))

		(attr "RefDes" "RefDes" (pt 750 mils 350 mils) (isVisible True) (textStyleRef "Normal"))

	)

	(compDef "LV 25-P" (originalName "LV 25-P") (compHeader (numPins 5) (numParts 1) (refDesPrefix U)
		)
		(compPin "1" (pinName "-HV") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "M") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "+") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "-") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "+HV") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "LV 25-P-A"))
		(attachedPattern (patternNum 1) (patternName "LV-25-P")
			(numPads 5)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
			)
		)
		(attr "Supplier_Name" "RS Components")
		(attr "RS Part Number" "0286361")
		(attr "Manufacturer_Name" "LEM")
		(attr "Manufacturer_Part_Number" "LV 25-P")
		(attr "Description" "Closed Loop Hall Effect Current Transducer, 0 ??14 mA, 12 ??15 V%0%0 %0")
		(attr "Datasheet Link" "http://www.lem.com/docs/products/lv_25-p.pdf")
		(attr "Height" "")
		(attr "Allied_Number" "")
		(attr "3D Package" "")
		(attr "Other Part Number" "")
	)

)