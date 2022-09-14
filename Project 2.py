import tkinter
from tkinter import messagebox
window = tkinter.Tk()

#canva = tkinter.Canvas(width=250, height=250)
#image_update = tkinter.PhotoImage(file='bird1.png')
#canva.create_image(125,125,image = image_update)
#canva.pack()

label_admin = tkinter.Label(text="Admin")
label_admin.grid(row=0,column=0)

label_teacher = tkinter.Label(text="Teacher")
label_teacher.grid(row=0,column=2,padx=(200,0))

def admin_view():
    query = 'select * from student'
    print('the view button is clicked')
    #v = cursor.execute(query)
    #v.fetchall()

view_button = tkinter.Button(text='view',command=admin_view)
view_button.grid(row=1,column=0,pady=(200,0))    

def teacher_view():
    query = 'select * from student'
    print('the view button is clicked')

view_button = tkinter.Button(text='view',command=teacher_view)
view_button.grid(row=1,column=2,padx=(200,0))

def admin_update():
    def radio_function():
        print(radio_state.get())

    user_id = tkinter.Entry()
    user_id.grid(row=5,column=0,pady=(25,0))

    radio_state = tkinter.IntVar()
    radio1 = tkinter.Radiobutton(text='Paid',value='1',variable=radio_state,command=radio_function)
    radio2 = tkinter.Radiobutton(text='Not Paid',value='0',variable=radio_state,command=radio_function)
    radio1.grid(row=3,column=0,pady=(25,0))
    radio2.grid(row=4,column=0,pady=(25,0))
    def confirmation_message():
        v = messagebox.askokcancel(title='confirmation',message=f'''
        the user_id  is {user_id.get()}
        the student's payment{radio_state.get()}
        ''')
        print("clicked confirm_button")
    confirm_button = tkinter.Button(text='confirmation',command=confirmation_message)
    confirm_button.grid(row=6,column=0,pady=(50,0))    

update_button = tkinter.Button(text='update',command=admin_update)
update_button.grid(row=2,column=0,pady=(50,0))    


window.mainloop()