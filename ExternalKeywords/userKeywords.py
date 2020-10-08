import os


def createDir(foldername):
    os.mkdir("E:\\" + foldername)


def createSubDir(subfoldername):
    os.mkdir("E:\\Hello\\" + subfoldername)


def concatenate(val1, val2):
    val3 = val1 + " " + val2
    return val3
