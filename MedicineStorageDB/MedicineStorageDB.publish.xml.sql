<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <IncludeCompositeObjects>True</IncludeCompositeObjects>
    <TargetDatabaseName>MedicineStorageDB</TargetDatabaseName>
    <DeployScriptFileName>MedicineStorageDB.sql</DeployScriptFileName>
    <TargetConnectionString>Data Source=localhost;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Connect Timeout=60;Encrypt=False;TrustServerCertificate=True</TargetConnectionString>
    <BlockOnPossibleDataLoss>True</BlockOnPossibleDataLoss>
    <ScriptDatabaseOptions>False</ScriptDatabaseOptions>
    <ProfileVersionNumber>1</ProfileVersionNumber>
    <DropConstraintsNotInSource>False</DropConstraintsNotInSource>
    <DropDmlTriggersNotInSource>False</DropDmlTriggersNotInSource>
    <DropExtendedPropertiesNotInSource>False</DropExtendedPropertiesNotInSource>
    <DropIndexesNotInSource>False</DropIndexesNotInSource>
    <VerifyDeployment>False</VerifyDeployment>
  </PropertyGroup>
</Project>