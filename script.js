const root = document.documentElement;
const select = document.getElementById('photoSelect');
const placeholder = document.getElementById('placeholder');
const radioGroup = document.getElementById('radioGroup');
// const toggleButton = document.getElementByClassName('fingers');
const toggleButtons = document.querySelectorAll('input[name="fingers"]');
const sheetImage = document.getElementById('sheetImage');
const radioButtons = document.querySelectorAll('input[name="version"]');
const downloadButton = document.getElementById('downloadButton');
// const sheets = document.querySelectorAll('.sheet');
const modal = document.getElementById('modal');
const modalImage = document.getElementById('modalImage');
const modalClose = document.getElementById('modalClose');
const sliderContainer = document.getElementById('sliderContainer');
const zoomSlider = document.getElementById("zoomSlider");
const zoomIndicator = document.getElementById("zoomIndicator");

zoomSlider.oninput = function() {
    root.style.setProperty("--zoomProperty", this.value + "%");
    zoomIndicator.innerHTML = this.value + "%";
}

let currentBase = '';

select.addEventListener('change', function() {
    const selectedValue = this.value;

    if (selectedValue === '') {
        placeholder.style.display = 'block';
        sheetImage.classList.remove('active');
        radioGroup.classList.remove('active');
        toggleButton.classList.remove('active');
        downloadButton.classList.remove('active');
        // videoContainer.classList.remove('active');
        currentBase = '';
    } else {
        currentBase = selectedValue;
        placeholder.style.display = 'none';
        radioGroup.classList.add('active');
        toggleButton.classList.add('active');
        
        // Reset to first radio button
        // radioButtons[1].checked = true;
        // toggleButtons[0].checked = true;
        updateImage();
        // updateVideo();
        updateDownloadButton();
    }
    
    // Hide all photos
    // sheets.forEach(sheet => {
    //     sheet.classList.remove('active');
    // });
    
    // Hide or show placeholder
    // if (selectedValue === '') {
    //     placeholder.style.display = 'block';
    // } else {
    //     placeholder.style.display = 'none';
        
    //     // Show selected photo
    //     const selectedPhoto = document.getElementById(selectedValue);
    //     if (selectedPhoto) {
    //         selectedPhoto.classList.add('active');
    //     }
    // }
});

radioButtons.forEach(radio => {
    radio.addEventListener('change', function() {
        updateImage();
        updateDownloadButton();
    });
});

toggleButtons.forEach(toggle => {
    toggle.addEventListener('change', function() {
        updateImage();
        updateDownloadButton();
    });
});

// toggleButton.addEventListener('change', function() {
//     updateImage();
//     updateDownloadButton();
// });

function updateImage() {
    if (currentBase === '') return;
    
    const selectedVersion = document.querySelector('input[name="version"]:checked').value;
    const toggleButton = document.querySelector('input[name="fingers"]:checked');
    let fingers = "";
    if (toggleButton) {
        fingers = "_δάχτυλα";
    }
    const imagePath = `sheets/svg/${currentBase}${selectedVersion}${fingers}.svg`;
    
    sheetImage.src = imagePath;
    sheetImage.alt = currentBase + selectedVersion;
    sheetImage.classList.add('active');
    sliderContainer.style.display = 'flex';
}

function updateDownloadButton() {
    if (currentBase === '') {
        downloadButton.classList.remove('active');
        return;
    }
    
    const selectedVersion = document.querySelector('input[name="version"]:checked').value;
     const toggleButton = document.querySelector('input[name="fingers"]:checked');
    let fingers = "";
    if (toggleButton) {
        fingers = "_δάχτυλα";
    }
    const pdfPath = `sheets/pdf/${currentBase}${selectedVersion}${fingers}.pdf`;
    
    downloadButton.classList.add('active');
    downloadButton.style.display = 'flex';
    downloadButton.onclick = function() {
        const link = document.createElement('a');
        link.href = pdfPath;
        link.download = `${currentBase}${selectedVersion}${fingers}.pdf`;
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    };
}

// Fullscreen functionality
sheetImage.addEventListener('click', function() {
    if (this.requestFullscreen) {
        this.requestFullscreen().catch(err => {
            showModal(this.src, this.alt);
        });
    } else {
        showModal(this.src, this.alt);
    }
});

sheetImage.style.cursor = 'pointer';

// Add click event to all photos for fullscreen view
// sheets.forEach(sheet => {
//     sheet.addEventListener('click', function() {
//         if (this.requestFullscreen) {
//             this.requestFullscreen().catch(err => {
//                 // Fallback to modal for iOS/Safari
//                 showModal(this.src, this.alt);
//             });
//         } else {
//             // Use modal for browsers without fullscreen support
//             showModal(this.src, this.alt);
//         }
//         // this.requestFullscreen().catch(err => {
//             // console.log('Fullscreen not supported or denied:', err);
//         // });
//     });
    
//     // Add cursor pointer to indicate clickable
//     sheet.style.cursor = 'pointer';
// });
// Function to show modal
function showModal(src, alt) {
    modalImage.src = src;
    modalImage.alt = alt;
    modal.classList.add('active');
    document.body.style.overflow = 'hidden'; // Prevent scrolling
}

// Function to close modal
function closeModal() {
    modal.classList.remove('active');
    document.body.style.overflow = ''; // Restore scrolling
}

// Close modal on button click
modalClose.addEventListener('click', closeModal);

// Close modal when clicking outside the image
modal.addEventListener('click', function(e) {
    if (e.target === modal) {
        closeModal();
    }
});
// Exit fullscreen when clicked again
document.addEventListener('fullscreenchange', function() {
    if (document.fullscreenElement) {
        // document.fullscreenElement.style.cursor = 'zoom-out';
        document.fullscreenElement.addEventListener('click', function exitFS() {
            document.exitFullscreen();
            this.removeEventListener('click', exitFS);
        });
    }
});