DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "RW0.7L1.525H0"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.7) (shapeHeight 1.525))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "SOIC127P600X175-8N" (originalName "SOIC127P600X175-8N")
		(multiLayer
			(pad (padNum 1) (padStyleRef RW0.7L1.525H0) (pt -2.712, 1.905) (rotation 90))
			(pad (padNum 2) (padStyleRef RW0.7L1.525H0) (pt -2.712, 0.635) (rotation 90))
			(pad (padNum 3) (padStyleRef RW0.7L1.525H0) (pt -2.712, -0.635) (rotation 90))
			(pad (padNum 4) (padStyleRef RW0.7L1.525H0) (pt -2.712, -1.905) (rotation 90))
			(pad (padNum 5) (padStyleRef RW0.7L1.525H0) (pt 2.712, -1.905) (rotation 90))
			(pad (padNum 6) (padStyleRef RW0.7L1.525H0) (pt 2.712, -0.635) (rotation 90))
			(pad (padNum 7) (padStyleRef RW0.7L1.525H0) (pt 2.712, 0.635) (rotation 90))
			(pad (padNum 8) (padStyleRef RW0.7L1.525H0) (pt 2.712, 1.905) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -3.725 2.75) (pt 3.725 2.75) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 3.725 2.75) (pt 3.725 -2.75) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 3.725 -2.75) (pt -3.725 -2.75) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt -3.725 -2.75) (pt -3.725 2.75) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 2.45) (pt 1.95 2.45) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.95 2.45) (pt 1.95 -2.45) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.95 -2.45) (pt -1.95 -2.45) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 -2.45) (pt -1.95 2.45) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 1.18) (pt -0.68 2.45) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 2.45) (pt 1.6 2.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.6 2.45) (pt 1.6 -2.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.6 -2.45) (pt -1.6 -2.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 -2.45) (pt -1.6 2.45) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.475 2.605) (pt -1.95 2.605) (width 0.2))
		)
	)
	(symbolDef "NCD5701BDR2G-A" (originalName "NCD5701BDR2G-A")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils 0 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -25 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -100 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -125 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -200 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -225 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -300 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -325 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 5) (pt 1000 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 825 mils 0 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 800 mils -25 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 6) (pt 1000 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 825 mils -100 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 800 mils -125 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 7) (pt 1000 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 825 mils -200 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 800 mils -225 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 8) (pt 1000 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 825 mils -300 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 800 mils -325 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))

		(line (pt 200 mils 100 mils) (pt 800 mils 100 mils) (width 10 mils))
		(line (pt 800 mils 100 mils) (pt 800 mils -400 mils) (width 10 mils))
		(line (pt 800 mils -400 mils) (pt 200 mils -400 mils) (width 10 mils))
		(line (pt 200 mils -400 mils) (pt 200 mils 100 mils) (width 10 mils))

		(attr "RefDes" "RefDes" (pt 850 mils 350 mils) (isVisible True) (textStyleRef "Normal"))

	)

	(compDef "NCD5701BDR2G" (originalName "NCD5701BDR2G") (compHeader (numPins 8) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "VIN") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "VREF") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "__FLT") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "DESAT") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "VCC") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "VO") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "7" (pinName "GND") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "VEE") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "NCD5701BDR2G-A"))
		(attachedPattern (patternNum 1) (patternName "SOIC127P600X175-8N")
			(numPads 8)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
			)
		)
		(attr "Supplier_Name" "RS Components")
		(attr "RS Part Number" "1349487")
		(attr "Manufacturer_Name" "ON Semiconductor")
		(attr "Manufacturer_Part_Number" "NCD5701BDR2G")
		(attr "Description" "IGBT Gate Drivers, High-Current, Stand-Alone")
		(attr "Datasheet Link" "http://www.onsemi.com/pub/Collateral/NCD5701-D.PDF")
		(attr "Height" "1.75")
		(attr "Allied_Number" "")
		(attr "3D Package" "")
		(attr "Other Part Number" "")
	)

)