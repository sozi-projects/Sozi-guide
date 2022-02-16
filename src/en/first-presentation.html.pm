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

The interface of Sozi supports other modes for positioning the camera using the mouse. The actual effect of the ◊em{click-and-drag} action in the preview pane depends on the current mode. To select a mode, you can use three buttons of the toolbar, possibly combined with certain keys of your keyboard:

◊itemize{
    ◊em{Translation} mode (button ◊key{◊icon["arrows"]} on): ◊em{click and drag} to move the camera.

    ◊em{Zoom} mode (◊key{◊icon["expand"]}, or ◊key{◊icon["arrows"]} + ◊key{Alt}): ◊em{click and drag} away from the center to expand, towards the center to shrink.

    ◊em{Rotation} mode (◊key{◊icon["rotate-left"]}, or ◊key{◊icon["arrows"]} + ◊key{⇧ Shift}): ◊em{click and drag} to rotate around the center of the current frame.
}

Add a new frame and change its title to "Important Point".
Practise switching from one mode to another and position the camera to match the screenshot below.

◊image["../assets/en/big-ideas-images/big-ideas-03-important-point.png" #:alt "The third frame of the presentation : Important Point"]

◊subsection{Take a step back and consider "The Big Picture"}

It can happen that we lose our bearings and have a hard time positioning the next frame. It may help to reset the camera so that it shows the whole source document.
Add a new frame and change its title to "The Big Picture".
In section ◊em{Layer} of the properties pane, click on the ◊key{◊icon["eraser"]} button. Then use the actions that you already know to move the camera and match the screenshot below.

◊image["../assets/en/big-ideas-images/big-ideas-04-big-picture.png" #:alt "The fourth frame of the presentation: The Big Picture"]

◊subsection{Meditate on this "Deep Thought" and come up with a "Bright Idea"}

Add two new frames and change their titles to "Deep Tought" and "Bright Idea". For each of these frames, position the camera to match the screenshots below.

◊image["../assets/en/big-ideas-images/big-ideas-05-deep-thought.png" #:alt "The fifth frame of the presentation: Deep Thought"]

◊image["../assets/en/big-ideas-images/big-ideas-06-bright-idea.png" #:alt "The sixth frame of the presentation: Bright Idea"]

◊block-quote{Frame "Bright Idea" makes use of the zoom-in effect to draw the attention to a specific element of the previous frame. On the contrary, in frame "The Big Picture", we used a zoom-out effect to show an overview of several preceding frames.}

◊section{Save the presentation and contemplate the result}

You can save the presentation by clicking on the ◊key{◊icon["download"]} button in the toolbar. If it is greyed out, it means that the presentation has already been saved.

By default, Sozi saves the presentation automatically every time the editor window loses the ◊em{focus}, i.e. every time you switch to another window, or when closing the application. This behavior can be modified in the ◊link["preferences.html"]{preferences of Sozi}.

Our work folder now contains four documents:

◊itemize{
    ◊code{big-ideas.svg} is the base graphic document.

    ◊code{big-ideas.sozi.json} contains the presentation data.

    ◊code{big-ideas.sozi.html} contains the complete presentation that can be displayed in a web browser. It is composed of: a copy of the base SVG document, the presentation data, the player software.

    ◊code{big-ideas-presenter.sozi.html} contains the ◊link["presenter-console.html"]{presenter's console}. Its use is optional and is out of the scope of the current chapter.
}

◊image["../assets/en/big-ideas-images/big-ideas-final-folder.png" #:alt "The final content of the folder sozi-big-ideas"]

◊warning{The files with extensions ◊code{.svg} and ◊code{.json} are the ◊em{source files} of your presentation. If one of these two files is lost or damaged, Sozi will not be able to restore your presentation.}

Open the document ◊code{big-ideas.sozi.html} in your favorite web browser. Click inside the window or press the ◊key{Space} key to advance the presentation (for a detailed description of the available actions, read chapter ◊link["playing-direct.html"]{Playing a presentation in direct mode}).

◊image["../assets/en/big-ideas-images/big-ideas-chromium.png" #:alt "The presentation opened in the Chromium browser"]

◊block-quote{Remember that we have chosen to display the frames with a 16:10 aspect ratio in Sozi. When playing the presentation, what happens if the browser window has a different aspect ratio?

Resize the window and compare its content with the preview pane of Sozi. You should observe that the browser window always displays the current frame entirely, extending the field of view vertically or horizontally, but with no clipping.

Like in the screenshot above, some elements that we did not intend to show may become visible. Now let me explain how to hide them.}

◊section{Take control of space and time}

Come back to Sozi but keep the browser window open. In the following steps, we will switch between both applications several times.

◊subsection{Adjust the camera's field of view}

The ◊em{Clip} function allows to restrict the field of the camera to a user-defined rectangular region. By default, this region maps to the entire preview pane but you can modify it if you want.

In the current presentation, we will just enable the clipping effect to make the web browser display exactly the same region as Sozi:

◊enumerate{
    In the timeline, click in the ◊em{Default} cell on the left. This action selects all frames.

    In section ◊em{Layer} of the properties pane, click on the ◊key{◊icon["crop"]} button. Clipping is now enabled in all selected frames.
}

◊image["../assets/en/big-ideas-images/big-ideas-clip.png" #:alt "Enable clipping in all frames"]

Come back to the browser window and reload the page. The field of the camera now respects the 16:10 aspect ratio that we have set up in Sozi, even if the window has a different format:

◊image["../assets/en/big-ideas-images/big-ideas-clip-chromium.png" #:alt "Clipping effect after opening the presentation in Chromium"]

◊block-quote{There are two ◊key{◊icon["crop"]} buttons in the interface of Sozi and it can be confusing:

◊itemize{
    The button that you have just used, in the properties pane, enables or disables clipping in the selected frames.

    With the button located in the toolbar, you can switch to the ◊em{Clipping region edit mode}. In this mode, you can use the mouse in the preview pane to resize the clipping rectangle.
}}

◊subsection{Tweak the transition timing}

In section ◊em{Transition} of the properties pane, you can find the settings that control the camera movement between the ◊strong{previous} frame and the current frame. For each frame, we will modify the following fields:

◊itemize{
    ◊em{Duration (seconds)}: the duration of the movement.

    ◊em{Timing function}: a function that defines the distance travelled by the camera at each moment of the transition. The functions available in Sozi allow to achieve different speed-up or slow-down effects.
}

Here is a recap of the settings that I suggest to use in the current presentation. You can try other values for the sake of comparison. Another page of this book is dedicated to the ◊link["timing-functions.html"]{timing functions}:

◊table{
    ◊th{Frame} ◊th{Duration (seconds)} ◊th{Timing function}

    ◊td{1}     ◊td{0}                  ◊td{Step start}

    ◊td{2}     ◊td{0.5}                ◊td{Linar}

    ◊td{3}     ◊td{0.5}                ◊td{Linar}

    ◊td{4}     ◊td{0.5}                ◊td{Ease}

    ◊td{5}     ◊td{2}                  ◊td{Ease-in-out}

    ◊td{6}     ◊td{0.5}                ◊td{Ease}
}

◊image["../assets/en/big-ideas-images/big-ideas-transition.png" #:alt "Setting up a transition"]

Come back to the browser window, reload the page and observe how the camera moves with these new settings.

◊subsection{Automate the presentation process}

In the presentation embedded at the top of this page, only the transition from the first to the second frame requires an action from the user. After the second frame, transitions happen automatically, every three seconds for frames 2 to 5, and after five seconds for the last frame.

In order to achieve this result, we need to set up a ◊em{timeout} in frames 2 to 6 of the presentation:

◊enumerate{
    In the timeline, click inside column 2 to select frame "Controversial Statement".

    Keep the ◊key{⇧ Shift} key pressed and click in column 6 to extend the selection to frame "Bright Idea".

    In the properties pane, click on the ◊key{◊icon["clock-o"]} button to enable the automatic transition to the next frame after a delay.

    Set the ◊em{Timeout (seconds)} field to "3".

    Click inside column 6 of the timeline to select frame "Bright Idea" alone.

    Set the ◊em{Timeout (seconds)} field to "5".
}

◊image["../assets/en/big-ideas-images/big-ideas-timeout.png" #:alt "Setting up automatic transitions"]

Come back to the browser window, navigate to the first frame of the presentation and reload the page. Click inside the window or press the ◊key{Space} key to move to the second frame; then you can let the presentation play. You can also move from a frame to the next by clicking or pressing the ◊key{Space} key before the timeout.

◊block-quote{When we set up an automatic transition after the last frame, we get a presentation that plays in a loop.}

◊section{Recap}

◊draft{This section has not been written yet.}

We have made a complete presentation with Sozi...

◊itemize-icons{
    ◊link["../assets/en/big-ideas/big-ideas.svg" #:download #t]{◊item-icon["download"]◊code{big-ideas.svg}}

    ◊link["../assets/en/big-ideas/big-ideas.sozi.json" #:download #t]{◊item-icon["download"]◊code{big-ideas.sozi.json}}

    ◊link["../assets/en/big-ideas/big-ideas.sozi.html" #:download #t]{◊item-icon["download"]◊code{big-ideas.sozi.html}}
}
