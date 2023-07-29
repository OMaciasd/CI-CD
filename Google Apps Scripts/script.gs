function checkFolderForChanges() {
  var folderId = ''; // ID de la carpeta que quieres monitorear
  var folder = DriveApp.getFolderById(folderId);
  var files = folder.getFiles();
  var lastModified = new Date(0); // Configuramos la fecha inicial a 0

  while (files.hasNext()) {
    var file = files.next();
    if (file.getLastUpdated() > lastModified) {
      lastModified = file.getLastUpdated();
    }
  }

  var scriptProperties = PropertiesService.getScriptProperties();
  var storedLastModifiedTime = scriptProperties.getProperty('lastModifiedTime');

  // Convertimos la fecha almacenada a un objeto Date
  var storedLastModified = new Date(Number(storedLastModifiedTime));

  Logger.log('Última modificación: ' + lastModified);
  Logger.log('Última modificación almacenada: ' + storedLastModified);

  if (lastModified.getTime() > storedLastModified.getTime()) {
    // Almacenamos el tiempo en milisegundos
    scriptProperties.setProperty('lastModifiedTime', lastModified.getTime().toString());
    Logger.log('Se detectó una nueva modificación, activando el pipeline');
    // Llamada a la función para activar el pipeline de Azure DevOps
    // Aquí puedes poner el código para ejecutar tu pipeline de Azure DevOps
    // Replace with your Azure Devops data
    var organization = 'oscaramacias';
    var project = 'pruebas';
    var pipelineId = '1'; // Replace with your pipeline ID
    var personalAccessToken = '';

     // Building the request URL
    var url = 'https://dev.azure.com/' + organization + '/' + project + '/_apis/pipelines/' + pipelineId + '/runs?api-version=6.0-preview.1';

    var options = {
    method: 'POST',
      headers: {
        "Authorization": "Basic " + Utilities.base64Encode(":" + personalAccessToken),
        "Content-Type": "application/json"
      },
      payload: JSON.stringify({
        // Add parameters as needed for the pipeline
      })
    };

    // Make the request
    var response = UrlFetchApp.fetch(url, options);

    // Logging the response
    Logger.log(response.getContentText());
  } else {
    Logger.log('No se detectaron modificaciones nuevas');
  }
}
