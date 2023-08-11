//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    //Add a State property called title that will hold a String
    @State var title: String
    //Add a State property called isImportant that will hold a Boolean
    @State var isImportant: Bool
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    
    var body: some View {
        VStack {
            //Add Text View containing "Task title" here
            Text("Task Title")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 0.721, saturation: 0.973, brightness: 0.663))
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            TextField("Enter the task description", text: $title)
                .padding(.horizontal)
                .frame(height: 50.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            .padding()

            //Add a padding modifier
            
            //Add Button here, delete any code in the action and with the text "Add"
            Button(action: {
                
            }) {
                Text("Add")
                    .font(.title3)
                    .fontWeight(.black)
                    .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
                    .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
            }
            //Add a padding modifier 
            .padding()
            .frame(width: 100.0, height: 40.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.735, saturation: 0.237, brightness: 0.991)/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        }
    }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_

    }
}
