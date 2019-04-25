document.addEventListener("turbolinks:load", () => {
  // Getting nav-tab tab class
  const tabElements = document.querySelectorAll('#nav-tab .tab');

  function onTabClick(event) {
    const activeTabs = document.querySelectorAll('.active');

    // Loops through each element in activeTabs array and toggle
    activeTabs.forEach(function(tab) {
      tab.classList.toggle('active');
    });

    // Looking for the link active parents element
    event.target.parentElement.classList.add('active');

    // Stops from doing anything it shouldn't be doing
    event.preventDefault();

    // Show and hide tab panels. Slice off the # element 
    var tabPanel = document.getElementById(event.target.href.split("#")[1]);
    tabPanel.classList.toggle('active');
  }

  // Listens for click and passes fires off the onTabClick function above (line 5)
  if(tabElements != null) {
    tabElements.forEach(function(tab) {
      tab.addEventListener('click', (event) => {
        onTabClick(event);
      });
    });
  }
});
