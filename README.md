# chef_test_5

TODO: Cookbook for Windows servers. Enabling Hyper-V-PowerShell feature and installing GreenShot package.

## Cookbook Dependencies

Cookbook contain one depedency for windows cookbook.

Q:  What is difference between windows_package installer types?

A:  Difference installer types uses for different application installers like: .msi packages, installshield, inno setup, nsis and wise install master

Q:  Can you use :custom installer_type for any package?

A: If it's not .msi package, you may use :custom installer_type for packages which installer can't be properly identified.

Q:  Which one you used and why?

A: For GreenShot I've used inno installer. Cause GreenShot is opensource non-commerce product and uses another opensource non-commerce installer.

Q:  What is difference between windows_package providers?

A: Resource windows_package provides two providers package and windows_package. In first case chef-client decides which proper providers it'll use. And windows_package is provider for Windows platforms.

Q:  Which one you used and why?

A: windows_package because I've worked with Windows server.

Q:  What is difference between windows_feature providers?

A: There are three windows_feature providers DISM, Server Manager and PowerShell

A:  Which one you used and why?

Q: By default windows_feature uses DISM as provider, but as I used Windows 2012R2 and DISM doesn't support all 2012 features due https://technet.microsoft.com/en-us/library/dd744566(v=ws.10).aspx
So, I've used PowerShell.

Q:  What is DISM?

A: DISM is Deployment Image Servicing and Management. It's tool which can be used to manage windows packages, features, drivers, etc.

Q:  Explain disadvantages of DISM

A: Not fully support of newest Windows OSes. We can't use it for remote installation. DISM can install only few types of files like msu, cab and inf.
