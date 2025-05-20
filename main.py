from tkinter import *
from tkinter import ttk
import psycopg2 as pg

class App:
    def __init__(self, root):
        self.root = root
        self.connection = pg.connect(
            dbname="GUIDB",
            user="postgres",
            password="TrashbagTreasureTrove22$$",
            host="localhost",
            port="5432"
        ) 
        self.columnWidths = list()
        self.addWidgets()
        root.mainloop()

    def addWidgets(self):
        self.root.title("Database GUI")
        
        #self.root.wm_resizable(width=False, height=False)
        #set up string variables for the widgets 
        self.root.bottom_label_content = StringVar()
        
        #self.root.mainFrame = ttk.Frame(self.root)#, height=200, width=1000)
        self.root.top_label = ttk.Label(self.root, text="Enter SQL Statement")
        self.root.bottom_label = ttk.Label(self.root, textvariable=self.root.bottom_label_content)
        self.root.textbox = Text(self.root)#.mainFrame)
        self.root.submit_button = ttk.Button(self.root, text="submit", command=lambda: self.getResults(self.root.textbox.get("1.0", END)))
        self.root.clear_button = ttk.Button(self.root, text="clear", command=lambda: self.root.textbox.delete("1.0", END))
        self.root.customerStats_button = ttk.Button(self.root, text="Customer Report", command=lambda: self.getResults("select * from customerstats"))
        self.root.driverstats_button = ttk.Button(self.root, text="Driver Report", command=lambda: self.getResults("select * from driverstats"))
        self.root.taxistats_button = ttk.Button(self.root, text="Taxi Report", command=lambda: self.getResults("select * from taxistats"))

        #geometry management
        #self.root.mainFrame.grid(column=0, row=1, sticky="NESW")
        self.root.top_label.grid(column=0, row=0)
        self.root.textbox.grid(column=0, row=1, padx=2, sticky="NSEW")
        self.root.bottom_label.grid(column=0, row=2)
        self.root.submit_button.grid(column=2, row=2)
        self.root.clear_button.grid(column=2, row=3)
        self.root.customerStats_button.grid(column=2, row=4)
        self.root.driverstats_button.grid(column=2, row=5)
        self.root.taxistats_button.grid(column=2, row=6)

        #grid configuration
        self.root.columnconfigure(0, weight=1)
        self.root.rowconfigure(1, weight=1)

    def getResults(self, queryText):
        cursor = self.connection.cursor()
        self.root.textbox.delete("1.0", END)
        try:
            cursor.execute(queryText)
        except Exception as e:
            self.root.textbox.insert("1.0", f"Hi there: {str(e)}\n")
            cursor.close()
            return
        
        results = cursor.fetchall()
        
        columnWidths = self.getWidths(results + [tuple((column[0] for column in cursor.description))])
        print(columnWidths)
        self.root.textbox.insert("1.0", "Results:\n")
        for i in range(len(cursor.description)):
            self.root.textbox.insert(END, f"{cursor.description[i][0]:<{columnWidths[i] + 2}}")
        self.root.textbox.insert(END, "\n")
        for line in results:
            for i in range(len(line)):
                self.root.textbox.insert(END, f"{str(line[i]):<{columnWidths[i] + 2}}")
            self.root.textbox.insert(END, "\n")
        cursor.close()
        return 
    
    def getWidths(self, results:list):
        r = [0 for x in range(len(results[0]))]
        for line in results:
            for i in range(len(line)):
                if (len(str(line[i])) > r[i]):
                    r[i] = len(str(line[i]))
        return r

def main()->int:
    
    root = Tk()
    a = App(root)


    '''
    print("hello world")
    
    '''
    return 0


def openResults(root, command:str, messageString:StringVar):
    ResultsWindow = Toplevel(root)
    connection = pg.connect(
        dbname="GUIDB",
        user="postgres",
        password="TrashbagTreasureTrove22$$",
        host="localhost",
        port="5432"
    )
    
    cursor = connection.cursor()
    cursor.execute(command)
    messageString.set(cursor.statusmessage)


    ResultsWindow.title("Results")

def getResults(queryText:str) -> tuple:
    connection = pg.connect(
        dbname="GUIDB",
        user="postgres",
        password="TrashbagTreasureTrove22$$",
        host="localhost",
        port="5432"
    )
    cursor = connection.cursor()
    cursor.execute(queryText)
    return (connection, cursor)

if __name__== "__main__":
    main()