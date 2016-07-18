# Songwriter-Helper

Songwriter Helper is a full-stack Sinatra app that helps songwriters organize their musical projects. A user can create multiple projects/songs, then add a series of guitar chords (complete with a chord chart image) to custom sections — verse 1, chorus, bridge, etc.

Additionally, each section includes a text box where the songwriter can enter and edit lyrics.

Potential (and very hopeful!) “stretch” functionalities include:
<li>
	<ul>A playback feature, where a tempo is set and the chords play chronologically to a generic guitar strumming pattern</ul>
	<ul>The ability to transpose an individual chord or entire project to a different key</ul>
	<ul>Swiping and fading CSS animations as a user edits a project</ul>
	<ul>Pre-made song templates based off of the most common and versatile chord progressions</ul>
</li>
<h2>Technical Info:</h2
This app will use ActiveRecord to store information about songs (title, date created, etc.) and song sections (chords, lyrics, etc.). Ruby/ERB will be used to write the logic behind this app, and Bootstrap and other custom CSS will be integrated for beautiful buttons, modals, and a clean layout. An external guitar chord API will be accessed.
<hr>
Trello Board: https://trello.com/b/n4oHSg7j/songwriter-helper

<center>Wireframe:

![Wireframe for Prject](https://s32.postimg.org/k3k80vs4l/songwriterwire.jpg)</center
