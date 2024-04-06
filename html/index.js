document.getElementById('createMissionForm').onsubmit = function(event) {
    event.preventDefault();
    const missionName = document.getElementById('missionName').value;
    const missionDescription = document.getElementById('missionDescription').value;

    // Sending the mission data to the RedM client script
    fetch(`https://${GetParentResourceName()}/createMission`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify({
            name: missionName,
            description: missionDescription,
        }),
    })
    .then(response => response.json())
    .then(data => {
        console.log(data);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
};
