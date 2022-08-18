
            function checkOnlyOne(element) {
  
                const checkboxes 
                    = document.getElementsByName("resident");
                
                checkboxes.forEach((cb) => {
                    cb.checked = false;
                })
                element.checked = true;
            }

            $("input[type='number']").each(function(i, el) {
                el.type = "text";
                el.onfocus = function(){this.type="number";};
                el.onblur = function(){this.type="text";};
            });
            //이미지 보여주기 실패
            // var submit = document.getElementById('submitButton');
            // submit.onclick = showImage;     //Submit 버튼 클릭시 이미지 보여주기

            // function showImage() {
            //     var newImage = document.getElementById('image-show').lastElementChild;
            //     newImage.style.visibility = "visible";    
            //     document.getElementById('image-upload').style.visibility = 'hidden';
            //     document.getElementById('fileName').textContent = null;     //기존 파일 이름 지우기
            // }
            function loadFile(input) {
                var file = input.files[0];

                var name = document.getElementById('fileName');
                name.textContent = file.name;

                // var newImage = document.createElement("img");
                // newImage.setAttribute("class", 'img');

                // newImage.src = URL.createObjectURL(file);   
                // newImage.style.width = "70%";
                // newImage.style.height = "70%";
                // newImage.style.visibility = "hidden";
                // newImage.style.objectFit = "contain";

                // var container = document.getElementById('image-show');
                // container.appendChild(newImage);
            };
