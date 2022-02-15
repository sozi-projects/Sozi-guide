#lang pollen

◊define-meta[lang]{en}

◊chapter{First presentation: show off your Big Ideas}

◊draft{This chapter is still a draft. Please come back in a few days to read a more complete version.}

The first presentation that we will make together is titled "Big Ideas". As a teaser, let me show you the result that you will get if you follow my instructions.
Click anywhere in the image below and let the presentation play.

◊sozi["../assets/en/big-ideas/big-ideas.sozi.html"]

◊section{Discover the base document}

This presentation is based on an SVG document that I have created for you using ◊link["https://inkscape.org"]{Inkscape}. Follow the link below to download it, and save it to your preferred location. I recommend to save it in a new folder ◊code{sozi-big-ideas} that will gather all the files of this presentation.

◊itemize-icons{
    ◊link["../assets/en/big-ideas/big-ideas.svg" #:download #t]{◊item-icon["download"]◊code{big-ideas.svg}}
}

◊image["../assets/en/big-ideas-images/big-ideas-initial-folder.png" #:alt "The base document big-ideas.svg in its folder sozi-big-ideas"]

Once the download process is complete, you can open the document ◊code{big-ideas.svg} with Inkscape, inspect its content and modify it to your taste. In the rest of this chapter, we will make modifications to observe the interactions between Inkscape and Sozi.

◊image["../assets/en/big-ideas-images/big-ideas-inkscape.png" #:alt "The base document big-ideas.svg opened in Inkscape"]

◊section{Get acquainted with the interface of Sozi}

Now open the document ◊code{big-ideas.svg} with Sozi. The picture below highlights the main areas of the user interface.

◊itemize{
    The ◊link["preview.html"]{preview pane} shows what the camera can see. After opening an SVG document for the first time, it shows the whole document.

    The ◊link["properties.html"]{properties pane} allows you to edit the parameters of the presentation, of the selected frames, and of the transitions between frames.

    The ◊link["toolbar.html"]{toolbar} allows you to select the edition mode for the current frame and to perform various operations: undo/redo the last action, save the presentation, etc. Hover over each button with the mouse cursor to show a tooltip.

    The ◊link["timeline.html"]{timeline} shows the frame sequence. It allows to add, delete, select or reorder frames.
}

◊image["../assets/en/big-ideas-images/big-ideas-sozi-interface.svg" #:alt "The base document big-ideas.svg opened in Sozi"]

◊block-quote{The content of these areas is explained in more detail in part ◊link["editor.html"]{Interface of the presentation editor} of this book. Reading that part is not necessary to understand the rest of this page.}

◊section{Put your "big ideas" in order}

◊subsection{Broaden your field of vision}

The default aspect ratio of the preview area is 4:3. It is a generic format that can suit many use cases. But if we want this first presentation to be up to our ◊em{big ideas}, let us broaden our field of vision with a 16:10 aspect ratio.
In the toolbar, edit the fields after the words ◊em{Aspect ratio}, typing "16" on the left, and "10" on the right.

◊block-quote{When designing a new presentation, we do not always anticipate the format of the screen it will be displayed on. The ◊em{Aspect ratio} setting allows to preview your presentation for a given format, ensuring that the displayed region will be entirely visible on any screen.}

◊subsection{Arouse interest with a "Fun fact"}

Press the ◊key{+} button at the bottom left of the window to create a new frame. A new column, titled "New frame", will appear in the timeline.
In the properties pane, edit the field ◊em{Title} and replace its content with "Fun Fact".
In the preview pane, use the mouse to place the camera in the same position as in the screenshot below. The movements that you can perform at this stage are:

◊itemize{
    Translation: press the left mouse button in the preview area; move the mouse while keeping the button pressed; release the button when the desired location has been reached.

    Zoom in or out: rotate the mouse wheel forward or backward above the preview area.
}

◊image["../assets/en/big-ideas-images/big-ideas-01-fun-fact.png" #:alt "The first frame of the presentation: Fun fact"]

◊block-quote{In the rest of this chapter, I will use the expression "click and drag" to refer to the following sequence of actions:

◊enumerate{
    Press the left mouse button.

    Move the mouse while keeping the button pressed.

    Release the left mouse button.
}}

◊subsection{Open the debate with a "Controversial Statement"}

Press the ◊key{+} button again to create a new frame. In the properties pane, change the frame title to "Controversial Statement".
In the preview pane, move the camera to match the screenshot below. I suggest to proceed in this order:

◊enumerate{
    Move the camera: ◊em{click and drag} to the left until the text "Controversial Statement" is entirely visible. While moving the mouse, you can press the ◊key{Ctrl} key to restrict the movement of the camera along a perfectly horizontal path.

    Rotate the camera by 180 degrees: press and hold the ◊key{⇧ Shift} key while rotating the mouse wheel until you reach the desired orientation.

    Adjust the scale by rotating the mouse wheel alone.
}

◊image["../assets/en/big-ideas-images/big-ideas-02-controversial-statement.png" #:alt "The second frame of the presentation: Controversial Statement"]

Preview the transition between the first two frames: click on the first and second columns of the timeline successively, or use the ◊key{←} and ◊key{→} keys of your keyboard to switch from one frame to the other.

◊block-quote{The arrangement of the graphic elements, and the resulting camera movements, can serve different purposes. In certain cases, you will aim to create ◊em{striking} visual effects, at the risk of making your audience dizzy! But you can also make use of a specific arrangement to enhance the narrative of your presentation.

In this example, I have played with the the transformation of the "i" (for "information") into an exclamation mark. Turning the image upside down relates to the word "controversial".

In practice, I seldom use rotations in my presentations. There are two reasons for that: partly because I find that it makes the base document more difficult to edit, but mostly because it is of little interest for the type of content that I usually present.}

◊subsection{Refocus your speech on an "Important Point"}

◊draft{This section has not been written yet.}

The interface of Sozi...

◊image["../assets/en/big-ideas-images/big-ideas-03-important-point.png" #:alt "The third frame of the presentation : Important Point"]

◊subsection{Take a step back and consider "The Big Picture"}

◊draft{This section has not been written yet.}

Sometimes...

◊image["../assets/en/big-ideas-images/big-ideas-04-big-picture.png" #:alt "The fourth frame of the presentation: The Big Picture"]

◊subsection{Meditate on this "Deep Thought" and come up with a "Bright Idea"}

◊draft{This section has not been written yet.}

Create two new frames...

◊image["../assets/en/big-ideas-images/big-ideas-05-deep-thought.png" #:alt "The fifth frame of the presentation: Deep Thought"]

◊image["../assets/en/big-ideas-images/big-ideas-06-bright-idea.png" #:alt "The sixth frame of the presentation: Bright Idea"]

◊section{Save the presentation and contemplate the result}

◊draft{This section has not been written yet.}

By default...

◊image["../assets/en/big-ideas-images/big-ideas-final-folder.png" #:alt "The final content of the folder sozi-big-ideas"]

Open the document...

◊image["../assets/en/big-ideas-images/big-ideas-chromium.png" #:alt "The presentation opened in the Chromium browser"]

◊section{Take control of space and time}

◊draft{This section has not been written yet.}

Come back to Sozi...

◊subsection{Adjust the camera's field of view}

◊draft{This section has not been written yet.}

The ◊em{Clip} function...

◊image["../assets/en/big-ideas-images/big-ideas-clip.png" #:alt "Enable clipping in all frames"]

Come back to the browser window...

◊image["../assets/en/big-ideas-images/big-ideas-clip-chromium.png" #:alt "Clipping effect after opening the presentation in Chromium"]

◊subsection{Tweak the transition timing}

◊draft{This section has not been written yet.}

In section ◊em{Transition}...

◊image["../assets/en/big-ideas-images/big-ideas-transition.png" #:alt "Setting up a transition"]

Come back to the browser window...

◊subsection{Automate the presentation process}

◊draft{This section has not been written yet.}

In the presentation...

◊image["../assets/en/big-ideas-images/big-ideas-timeout.png" #:alt "Setting up automatic transitions"]

Come back to the browser window...

◊section{Recap}

◊draft{This section has not been written yet.}

We have made a complete presentation with Sozi...

◊itemize-icons{
    ◊link["../assets/en/big-ideas/big-ideas.svg" #:download #t]{◊item-icon["download"]◊code{big-ideas.svg}}

    ◊link["../assets/en/big-ideas/big-ideas.sozi.json" #:download #t]{◊item-icon["download"]◊code{big-ideas.sozi.json}}

    ◊link["../assets/en/big-ideas/big-ideas.sozi.html" #:download #t]{◊item-icon["download"]◊code{big-ideas.sozi.html}}
}
