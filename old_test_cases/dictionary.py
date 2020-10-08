oDic = {"K1":"Val1", 2:"Val2","K3":32}

print(oDic["K1"])

oDic["K1"] = 99

print(oDic["K1"])

oDic["K4"] = "Testing"

print(oDic["K4"])

print(oDic)

dKeys = oDic.keys()

print(dKeys)

dValues = oDic.values()

print(dValues)

dItems = oDic.items()

print(dItems)

print(len(oDic))