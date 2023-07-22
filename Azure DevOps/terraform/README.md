# Introduction 
Este proyecto tiene como objetivos principales:
- Centralizar templates para la formación de pipelines (reunir centralizar partes repetitivas del código CI/CD);
- Contener scripts suficientes de terraform para aprovisionar infraestructuras que sirvan para más de un propósito/aplicación;
- Orquestar la canalización principal para aprovisionar esta infraestructura.


## Estructura de carpetas/archivos principales

├── README.md
├── run.txt (ejemplo de cómo ejecutar infra terraform)
├── docs
│   └── docs.txt
├── pipelines
│   ├── cd.yml
│   └── ci.yml
└── templates
│   ├── installDotNet.yml
│   └── installzip.yml
│   ├── snykTest.yml
│   └── terraformInstall.yml
│   └── ... (otros templates)
└── src
    ├── resources (Scripts auxiliares)
    ├── vnet-peering (Creación de peering y las dos vnets en los arrendatarios QuickComm y Nanaykuna)
    └── ...(coloque scripts de terraform aquí para crear otros servicios compartidos)

# Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:
1.	Installation process
2.	Software dependencies
3.	Latest releases
4.	API references

# Build and Test
TODO: Describe and show how to build your code and run the tests. 

# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 

If you want to learn more about creating good readme files then refer the following [guidelines](https://docs.microsoft.com/en-us/azure/devops/repos/git/create-a-readme?view=azure-devops). You can also seek inspiration from the below readme files:
- [ASP.NET Core](https://github.com/aspnet/Home)
- [Visual Studio Code](https://github.com/Microsoft/vscode)
- [Chakra Core](https://github.com/Microsoft/ChakraCore)