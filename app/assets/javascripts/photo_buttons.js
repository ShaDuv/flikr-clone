// LOOK MOM NO JQUERY

window.onload = function(){

  if (document.getElementById('pre-delete')) {
    document.getElementById('pre-delete').addEventListener("click",function(){
      document.getElementById('pre-delete').classList.add("hidden");
      document.getElementById('confirm-delete').classList.remove("hidden");

    });

  }

};
