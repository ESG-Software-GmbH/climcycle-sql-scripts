-- Get all users which are Climcycle Administrators. Important for ISAE 3402 control 'Review Climcycle Administrators and privileged users' which is done on a monthly basis
SELECT Institution.Name, [User].Name, [User].Email, Role.RoleName, [User].Created, [User].Modified FROM [User]
    JOIN UserInstitutionRole ON [User].Id = UserInstitutionRole.UserId
    JOIN Institution ON UserInstitutionRole.InstitutionId = Institution.Id
    JOIN Role ON UserInstitutionRole.RoleId = Role.Id WHERE Role.RoleName = 'CLIMCYCLE_ADMIN' ORDER BY [User].Created

-- Get all users and their role
SELECT Institution.Name, [User].Name, [User].Email, Role.RoleName, [User].Created, [User].Modified FROM [User]
    JOIN UserInstitutionRole ON [User].Id = UserInstitutionRole.UserId
    JOIN Institution ON UserInstitutionRole.InstitutionId = Institution.Id
    JOIN Role ON UserInstitutionRole.RoleId = Role.Id