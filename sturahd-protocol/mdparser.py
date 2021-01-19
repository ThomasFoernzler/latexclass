sitzung = input("Sitzungsnummer angeben: ")

with open(sitzung + "-protokoll" + "/" + sitzung + "-raw.txt", "r") as f:
    raw=f.readlines()
out = open(sitzung + "-protokoll" + "/" + sitzung + "-discussion.tex", "w")

#print(raw)

firsttime = True
alsofirsttime = True
diretlyfollowing = False

for num, line in enumerate(raw, start=1 ):
    if line == "\n":
        continue
    if line[0:2] == "# ":
        continue
    if line[:3] == "## ":
        if firsttime == False:
            out.write("}")
        out.write("\n" + "\n")
        firsttime = False
        out.write(line[3:])
        diretlyfollowing = True
        continue
    if line[0:4] == "### ":
        if diretlyfollowing == False:
            out.write("}\n\n")       
            out.write(line[4:])
            out.write(r"\textbf{X. Lesung:}"+"\n"+r"\ul{"+ "\n")
            continue
        if diretlyfollowing == True:
            out.write("\n")
            out.write(line[4:])
            out.write(r"\textbf{X. Lesung:}"+"\n"+r"\ul{"+ "\n")
            diretlyfollowing = False
            continue
    if line[0:2] == "- ":
        out.write("\t" + r"\li{" + line[2:-1] + "}\n")
        continue
    if line[0:5] == "   - ":
        out.write("\t\t" + r"\noli{" + r"\ul{" + "\n" + "\t\t"+ r"\lii{"+ line[5:-1] + "\n" + "\t\t" + r"}}}" + "\n")
        continue
    else:
        out.write(line)
        print("weird behavior in line " , num)
out.write("}")

out.close()
print("finished")