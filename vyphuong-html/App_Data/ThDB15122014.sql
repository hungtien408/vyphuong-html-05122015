/****** Object:  Database [vaiaodaiCNQT03092015]    Script Date: 09/03/2015 10:08:27 ******/
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbo].[sp_fulltext_database] @action = 'enable'
end
GO
/****** Object:  ForeignKey [FK_AdsBanner_AdsCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdsBanner_AdsCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdsBanner]'))
ALTER TABLE [dbo].[AdsBanner] DROP CONSTRAINT [FK_AdsBanner_AdsCategory]
GO
/****** Object:  ForeignKey [FK_Article_ArticleCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Article_ArticleCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Article]'))
ALTER TABLE [dbo].[Article] DROP CONSTRAINT [FK_Article_ArticleCategory]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
/****** Object:  ForeignKey [FK_Career_CareerCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Career_CareerCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Career]'))
ALTER TABLE [dbo].[Career] DROP CONSTRAINT [FK_Career_CareerCategory]
GO
/****** Object:  ForeignKey [FK_Download_DownloadCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Download_DownloadCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Download]'))
ALTER TABLE [dbo].[Download] DROP CONSTRAINT [FK_Download_DownloadCategory]
GO
/****** Object:  ForeignKey [FK_Menu_MenuPosition]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Menu_MenuPosition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Menu]'))
ALTER TABLE [dbo].[Menu] DROP CONSTRAINT [FK_Menu_MenuPosition]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Order]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK_OrderDetail_Product]
GO
/****** Object:  ForeignKey [FK_Orders_OrderStatus]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_OrderStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_OrderStatus]
GO
/****** Object:  ForeignKey [FK_PhotoAlbum_PhotoAlbumCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhotoAlbum_PhotoAlbumCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhotoAlbum]'))
ALTER TABLE [dbo].[PhotoAlbum] DROP CONSTRAINT [FK_PhotoAlbum_PhotoAlbumCategory]
GO
/****** Object:  ForeignKey [FK_Product_Manufacturer]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Manufacturer]
GO
/****** Object:  ForeignKey [FK_Product_Origin]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Origin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Origin]
GO
/****** Object:  ForeignKey [FK_Product_ProductCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_ProductCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_ProductCategory]
GO
/****** Object:  ForeignKey [FK_ProductDownload_Product]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDownload_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDownload]'))
ALTER TABLE [dbo].[ProductDownload] DROP CONSTRAINT [FK_ProductDownload_Product]
GO
/****** Object:  ForeignKey [FK_ProductImage_Product]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImage_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImage]'))
ALTER TABLE [dbo].[ProductImage] DROP CONSTRAINT [FK_ProductImage_Product]
GO
/****** Object:  ForeignKey [FK_Project_ProjectCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Project_ProjectCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Project]'))
ALTER TABLE [dbo].[Project] DROP CONSTRAINT [FK_Project_ProjectCategory]
GO
/****** Object:  ForeignKey [FK_ProjectDownload_Project]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectDownload_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectDownload]'))
ALTER TABLE [dbo].[ProjectDownload] DROP CONSTRAINT [FK_ProjectDownload_Project]
GO
/****** Object:  ForeignKey [FK_ProjectImage_Project]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectImage_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectImage]'))
ALTER TABLE [dbo].[ProjectImage] DROP CONSTRAINT [FK_ProjectImage_Project]
GO
/****** Object:  ForeignKey [FK_ProjectVideo_Project]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectVideo_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectVideo]'))
ALTER TABLE [dbo].[ProjectVideo] DROP CONSTRAINT [FK_ProjectVideo_Project]
GO
/****** Object:  ForeignKey [FK_Rating_Product]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_Product]
GO
/****** Object:  ForeignKey [FK_Service_ServiceCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Service_ServiceCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Service]'))
ALTER TABLE [dbo].[Service] DROP CONSTRAINT [FK_Service_ServiceCategory]
GO
/****** Object:  ForeignKey [FK_Video_VideoCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_VideoCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
ALTER TABLE [dbo].[Video] DROP CONSTRAINT [FK_Video_VideoCategory]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderService_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderService_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OlderService_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Service_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerService_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerService_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_NewerService_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Service_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameService_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameService_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameService_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Service_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Service_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Career_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderCareer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderCareer_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OlderCareer_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Career_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameCareer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameCareer_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameCareer_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Career_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerCareer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerCareer_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_NewerCareer_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Career_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerArticle_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_NewerArticle_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Article_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderArticle_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OlderArticle_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Article_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Article_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Article_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameArticle_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameArticle_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_DownOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MenuForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbum_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbum_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbum_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbum_Delete]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameProduct_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameProduct_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameProduct_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImages_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImages_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImages_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameProduct_SelectAll1]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameProduct_SelectAll1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameProduct_SelectAll1]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectDownload_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectDownload_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectDownload_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectDownload_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectDownload_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImage_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImage_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImage_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImage_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Project_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameProject_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameProject_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameProject_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerProject_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerProject_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_NewerProject_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Project_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Project_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImages_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImages_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImages_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderProject_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderProject_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OlderProject_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Project_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderStatus_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderStatus_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderStatus_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderStatus_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderStatus_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ManufacturerHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ManufacturerHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ManufacturerHierarchyToTop_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ManufacturerImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ManufacturerImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ManufacturerImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_DownOrder]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildManufacturer_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildManufacturer_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildManufacturer_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ManufacturerForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ManufacturerForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ManufacturerForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Manufacturer_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Service_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategoryForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_DownOrder]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildServiceCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildServiceCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildServiceCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategoryHierarchyToTop_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ServiceCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Project_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategoryForEdit_SelectAll]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildProjectCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildProjectCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildProjectCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_DownOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategoryHierarchyToTop_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Career_SelectOne]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildCareerCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildCareerCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildCareerCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategoryHierarchyToTop_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_DownOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategoryForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CareerCategory_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategoryForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategoryHierarchyToTop_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_DownOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategoryImage_Delete]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildArticleCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildArticleCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildArticleCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Article_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ArticleCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategoryHierarchyToTop_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategoryImage_Delete]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ProductCategoryRootID_SelectOne]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ProductCategoryRootID_SelectOne]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ProductCategoryRootID_SelectOne]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildProductCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildProductCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildProductCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategoryForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_SelectAll]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_RelatedProductCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_RelatedProductCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_RelatedProductCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_DownOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WishList_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WishList_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WishList_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WishList_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Newsletter_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Newsletter_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Newsletter_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Newsletter_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Visitor_Edit]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Visitor_Edit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Visitor_Edit]
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MenuPosition_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MenuPosition_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MenuPosition_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MenuPosition_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbum_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsBanner_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsBanner_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsBanner_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsBanner_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsBanner_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UserProfile_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UserProfile_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfileImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfileImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UserProfileImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UserProfile_Delete]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UserProfile_SelectOne]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[usp_Rating_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Rating_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Rating_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Rating_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Rating_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Rating_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImage_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImage_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImage_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImage_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Origin_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Origin_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Origin_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Origin_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Origin_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductDownload_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductDownload_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductDownload_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductDownload_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductDownload_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Comment_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Comment_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Comment_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Comment_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Comment_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderDetail_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderDetail_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderDetail_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderDetail_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Partner_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Partner_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Partner_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_PartnerImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PartnerImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PartnerImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Partner_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Partner_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_Delete]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Orders_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Orders_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrdersByUser_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrdersByUser_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrdersByUser_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_Insert]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Orders_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Orders_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_Update]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Orders_Update]
GO
/****** Object:  Table [dbo].[Download]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Download]') AND type in (N'U'))
DROP TABLE [dbo].[Download]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
DROP TABLE [dbo].[Rating]
GO
/****** Object:  Table [dbo].[ProductDownload]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDownload]') AND type in (N'U'))
DROP TABLE [dbo].[ProductDownload]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImage]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImage]
GO
/****** Object:  Table [dbo].[ProjectImage]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectImage]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectImage]
GO
/****** Object:  Table [dbo].[ProjectVideo]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectVideo]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectVideo]
GO
/****** Object:  Table [dbo].[ProjectDownload]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectDownload]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectDownload]
GO
/****** Object:  Table [dbo].[AdsBanner]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdsBanner]') AND type in (N'U'))
DROP TABLE [dbo].[AdsBanner]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Video]') AND type in (N'U'))
DROP TABLE [dbo].[Video]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Service]') AND type in (N'U'))
DROP TABLE [dbo].[Service]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Project]') AND type in (N'U'))
DROP TABLE [dbo].[Project]
GO
/****** Object:  Table [dbo].[Career]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Career]') AND type in (N'U'))
DROP TABLE [dbo].[Career]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Article]') AND type in (N'U'))
DROP TABLE [dbo].[Article]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menu]') AND type in (N'U'))
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[PhotoAlbum]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhotoAlbum]') AND type in (N'U'))
DROP TABLE [dbo].[PhotoAlbum]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Object:  Table [dbo].[DownloadCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DownloadCategory]') AND type in (N'U'))
DROP TABLE [dbo].[DownloadCategory]
GO
/****** Object:  Table [dbo].[AdsCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdsCategory]') AND type in (N'U'))
DROP TABLE [dbo].[AdsCategory]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderStatus]') AND type in (N'U'))
DROP TABLE [dbo].[OrderStatus]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[Manufacturer]
GO
/****** Object:  Table [dbo].[VideoCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VideoCategory]') AND type in (N'U'))
DROP TABLE [dbo].[VideoCategory]
GO
/****** Object:  Table [dbo].[ServiceCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ServiceCategory]
GO
/****** Object:  Table [dbo].[ProjectCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectCategory]
GO
/****** Object:  Table [dbo].[CareerCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CareerCategory]') AND type in (N'U'))
DROP TABLE [dbo].[CareerCategory]
GO
/****** Object:  Table [dbo].[ArticleCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArticleCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ArticleCategory]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategory]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbumCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductDownload_SelectAll]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WishList]') AND type in (N'U'))
DROP TABLE [dbo].[WishList]
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Project_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Partner_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Origin_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Service_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_SelectMaxID]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_SelectMaxID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_SelectMaxID]
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Career_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_AdsBanner_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Download_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_MenuPosition_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Article_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_DownloadCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_User_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_User_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_User_SelectAll]
GO
/****** Object:  Table [dbo].[Newsletter]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Newsletter]') AND type in (N'U'))
DROP TABLE [dbo].[Newsletter]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_SelectMaxID]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_SelectMaxID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_SelectMaxID]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectVideo_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Menu_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_UserProfile_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Comment_SelectAll]
GO
/****** Object:  Table [dbo].[Visitor]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Visitor]') AND type in (N'U'))
DROP TABLE [dbo].[Visitor]
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_VideoCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProductImage_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectDownload_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PhotoAlbum_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ProjectImage_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_SelectMaxID]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_SelectMaxID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Video_SelectMaxID]
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_WishList_SelectAll]
GO
/****** Object:  Table [dbo].[PhotoAlbumCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhotoAlbumCategory]') AND type in (N'U'))
DROP TABLE [dbo].[PhotoAlbumCategory]
GO
/****** Object:  Table [dbo].[MenuPosition]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuPosition]') AND type in (N'U'))
DROP TABLE [dbo].[MenuPosition]
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Newsletter_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Product_SelectAll]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_Orders_SelectAll]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OrderDetail_SelectAll]
GO
/****** Object:  Table [dbo].[Origin]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Origin]') AND type in (N'U'))
DROP TABLE [dbo].[Origin]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
DROP TABLE [dbo].[Comment]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 09/03/2015 10:08:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partner]') AND type in (N'U'))
DROP TABLE [dbo].[Partner]
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__014935CB]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__164452B1]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__164452B1]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__46E78A0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0519C6AF]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__07020F21]    Script Date: 09/03/2015 10:08:26 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]
END


End
GO
/****** Object:  Default [DF_Rating_Rating1_1]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating1_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating1_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [DF_Rating_Rating1_1]
END


End
GO
/****** Object:  Default [DF_Rating_Rating2_1]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating2_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating2_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [DF_Rating_Rating2_1]
END


End
GO
/****** Object:  Default [DF_Rating_Rating3_1]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating3_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating3_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [DF_Rating_Rating3_1]
END


End
GO
/****** Object:  Default [DF_Rating_Rating4_1]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating4_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating4_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [DF_Rating_Rating4_1]
END


End
GO
/****** Object:  Default [DF_Rating_Rating5_1]    Script Date: 09/03/2015 10:08:27 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating5_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating5_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [DF_Rating_Rating5_1]
END


End
GO
/****** Object:  FullTextCatalog [FullTextCatalog]    Script Date: 09/03/2015 10:08:30 ******/
IF EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'FullTextCatalog')
DROP FULLTEXT CATALOG [FullTextCatalog]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [ThDB15122014]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'ThDB15122014')
DROP SCHEMA [ThDB15122014]
GO
/****** Object:  Schema [vaiaodaiCNQT]    Script Date: 09/03/2015 10:08:30 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'vaiaodaiCNQT')
DROP SCHEMA [vaiaodaiCNQT]
GO
/****** Object:  Role [webtemplate]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'webtemplate'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'webtemplate' AND type = 'R')
DROP ROLE [webtemplate]
GO
/****** Object:  Role [webtemplateDB]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'webtemplateDB'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'webtemplateDB' AND type = 'R')
DROP ROLE [webtemplateDB]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [ThDB15122014]    Script Date: 09/03/2015 10:08:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'ThDB15122014'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'ThDB15122014' AND type = 'R')
DROP ROLE [ThDB15122014]
GO
/****** Object:  Role [vaiaodaiCNQT]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'vaiaodaiCNQT')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'vaiaodaiCNQT' AND type = 'R')
CREATE ROLE [vaiaodaiCNQT]

END
GO
/****** Object:  Role [webtemplate]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'webtemplate')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'webtemplate' AND type = 'R')
CREATE ROLE [webtemplate] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [webtemplateDB]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'webtemplateDB')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'webtemplateDB' AND type = 'R')
CREATE ROLE [webtemplateDB] AUTHORIZATION [webtemplate]

END
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 09/03/2015 10:08:29 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [webtemplateDB]

END
GO
/****** Object:  Role [ThDB15122014]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'ThDB15122014')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'ThDB15122014' AND type = 'R')
CREATE ROLE [ThDB15122014] AUTHORIZATION [vaiaodaiCNQT]

END
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Object:  Schema [ThDB15122014]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'ThDB15122014')
EXEC sys.sp_executesql N'CREATE SCHEMA [ThDB15122014] AUTHORIZATION [ThDB15122014]'
GO
/****** Object:  Schema [vaiaodaiCNQT]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'vaiaodaiCNQT')
EXEC sys.sp_executesql N'CREATE SCHEMA [vaiaodaiCNQT] AUTHORIZATION [vaiaodaiCNQT]'
GO
/****** Object:  FullTextCatalog [FullTextCatalog]    Script Date: 09/03/2015 10:08:30 ******/
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'FullTextCatalog')
CREATE FULLTEXT CATALOG [FullTextCatalog]
WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT
AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Partner](
	[PartnerID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PartnerNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PartnerImage] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkWebsite] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Partner]'))
CREATE FULLTEXT INDEX ON [dbo].[Partner](
[Address] LANGUAGE [English], 
[LinkWebsite] LANGUAGE [English], 
[PartnerName] LANGUAGE [English], 
[PartnerNameEn] LANGUAGE [English])
KEY INDEX [PK_Partner] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Link] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsApproved] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Comment]'))
CREATE FULLTEXT INDEX ON [dbo].[Comment](
[Content] LANGUAGE [English], 
[Link] LANGUAGE [English], 
[Title] LANGUAGE [English], 
[UserName] LANGUAGE [English])
KEY INDEX [PK_Comment] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Origin]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Origin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Origin](
	[OriginID] [int] IDENTITY(1,1) NOT NULL,
	[OriginName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OriginNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Origin] PRIMARY KEY CLUSTERED 
(
	[OriginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Origin]'))
CREATE FULLTEXT INDEX ON [dbo].[Origin](
[OriginName] LANGUAGE [English], 
[OriginNameEn] LANGUAGE [English])
KEY INDEX [PK_Origin] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_OrderDetail_SelectAll]
@Keyword nvarchar(500) = NULL,
@OrderDetailID int = NULL,
@OrderID varchar(20) = NULL,
@ProductID int = NULL,
@Quantity int = NULL,
@Price money = NULL,
@CreateBy uniqueidentifier = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[OrderDetailID],
	[OrderID],
	od.[ProductID],
	[ProductName],
	isnull([Quantity],0) Quantity,
	isnull(od.[Price],0) Price,
	isnull([Quantity],0) * isnull(od.[Price],0) TotalPrice,
	[CreateBy]
from OrderDetail od
left join Product p on p.ProductID = od.ProductID
where 1=1 ''
if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(od.*, '''''' + @Keyword + '''''') ''
if @OrderDetailID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and OrderDetailID = '' + convert(varchar,@OrderDetailID)
if @OrderID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(od.OrderID, '''''' + @OrderID + '''''') ''
if @ProductID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and od.ProductID = '' + convert(varchar,@ProductID)
if @Quantity IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and Quantity = '' + convert(varchar,@Quantity)
if @Price IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and od.Price = '' + convert(varchar,@Price)
if @CreateBy IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and od.CreateBy = '' + convert(varchar,@CreateBy)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Applicati__7E6CC920] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_Applicati__00551192] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_Applicati__7F60ED59] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'1e956f03-b226-43b9-8e60-9020cc6a6587', NULL)
/****** Object:  StoredProcedure [dbo].[usp_Orders_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Orders_SelectAll]
@Keyword nvarchar(500) = NULL,
@OrderID varchar(20) = NULL,
@UserName nvarchar(256) = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@CompanyName nvarchar(100) = NULL,
@FullName nvarchar(100) = NULL,
@Address nvarchar(100) = NULL,
@HomePhone nvarchar(20) = NULL,
@CellPhone nvarchar(20) = NULL,
@Email nvarchar(100) = NULL,
@OrderStatusID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select distinct 
	o.[OrderID],
	o.[CreateDate],
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	o.[Email],
	o.[OrderStatusID],
	[OrderStatusName],
	[OrderStatusNameEn],
	o.UserName,
	(SELECT case when DATEDIFF(hh, o.[CreateDate], getdate()) < 24 then cast(1 as bit) else cast(0 as bit) end) as IsNew
from Orders o
left join OrderDetail od on o.OrderID = od.OrderID
left join Product p on p.ProductID = od.ProductID
left join OrderStatus os on os.OrderStatusID = o.OrderStatusID
where 1=1 ''
if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(*, '''''' + @Keyword + '''''') ''
if @OrderID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(OrderID, '''''' + @OrderID + '''''') ''
if @UserName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(UserName, '''''' + @UserName + '''''') ''
if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), o.CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)
if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), o.CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)
if @CompanyName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(CompanyName, '''''' + @CompanyName + '''''') ''
if @FullName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(FullName, '''''' + @FullName + '''''') ''
if @Address IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Address, '''''' + @Address + '''''') ''
if @HomePhone IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(HomePhone, '''''' + @HomePhone + '''''') ''
if @CellPhone IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(CellPhone, '''''' + @CellPhone + '''''') ''
if @Email IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Email, '''''' + @Email + '''''') ''
if @OrderStatusID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and OrderStatusID = '' + convert(varchar,@OrderStatusID)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_SchemaVer__08EA5793] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[UserProfile]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[UserID] [uniqueidentifier] NOT NULL,
	[CompanyName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FullName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomePhone] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CellPhone] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Fax] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AvatarImage] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
CREATE FULLTEXT INDEX ON [dbo].[UserProfile](
[Address] LANGUAGE [English], 
[CellPhone] LANGUAGE [English], 
[CompanyName] LANGUAGE [English], 
[Fax] LANGUAGE [English], 
[FullName] LANGUAGE [English], 
[HomePhone] LANGUAGE [English])
KEY INDEX [PK_UserProfile] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE procedure [dbo].[usp_Product_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@Keyword nvarchar(1000) = NULL,
@ProductName nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@PriceFrom money = NULL,
@PriceTo money = NULL,
@CategoryID int = NULL,
@ManufacturerID int = NULL,
@OriginID int = NULL,
@Tag nvarchar(200) = NULL,
@InStock bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsBestSeller bit = NULL,
@IsSaleOff bit = NULL,
@IsShowOnHomePage bit = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@Priority bit = NULL,
@IsAvailable bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT 
		ROW_NUMBER() OVER (
			ORDER BY '' + 
			case when @Keyword IS NOT NULL then ''Rank desc, '' else '''' end +
			case when @SortByPriority = 1 then ''-p.Priority desc, '' else '''' end + 
			'' CreateDate DESC
		) AS row_number,
			p.[ProductID],
	p.[ImageName],
	[MetaTittle],
	p.[MetaDescription],
	[ProductName],
	p.[Description],
	p.[Content],
	[Tag],
	p.[MetaTittleEn],
	p.[MetaDescriptionEn],
	[ProductNameEn],
	p.[DescriptionEn],
	p.[ContentEn],
	[TagEn],
	[Price],
	[OtherPrice],
	[SavePrice],
	[Discount],
	[CategoryID],
	p.[ManufacturerID],
	p.[OriginID],
	[InStock],
	[Views],
	[CreateDate],
	[IsHot],
	[IsNew],
	[IsBestSeller],
	[IsSaleOff],
	p.[IsShowOnHomePage],
	p.[IsAvailable],
	[ProductCategoryName],
	[ProductCategoryNameEn],
	[ManufacturerName],
	[ManufacturerNameEn],
	[OriginName],
	[OriginNameEn],
	p.[Priority],
	cast(Rating1 + 2*Rating2 + 3*Rating3 + 4*Rating4 + 5*Rating5 as float)/(Rating1 + Rating2 + Rating3 + Rating4 + Rating5) Rating
	FROM Product p
	left join ProductCategory pc on pc.ProductCategoryID = p.CategoryID
	left join Manufacturer m on m.ManufacturerID = p.ManufacturerID
	left join Origin o on o.OriginID = p.OriginID
	left join Rating r on r.ProductID = p.ProductID '' +
	case when @Keyword IS NOT NULL then '' left join FREETEXTTABLE(Product, *, '''''' + @Keyword + '''''') st on st.[Key] = p.ProductID '' else '''' end +
'' where 1=1 ''

--if @Keyword IS NOT NULL
--	set @SelectQuery = @SelectQuery + '' and (FREETEXT(p.*, '''''' + @Keyword + '''''') or FREETEXT(pc.*, '''''' + @Keyword + '''''') or FREETEXT(m.*, '''''' + @Keyword + '''''') or FREETEXT(o.*, '''''' + @Keyword + '''''')) ''

if @ProductName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((ProductName, ProductNameEn), '''''' + @ProductName + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @PriceFrom IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (Price >= '' + str(@PriceFrom) + '' or SavePrice >= '' + str(@PriceFrom) +'') ''

if @PriceTo IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (Price <= '' + str(@PriceTo) + '' or SavePrice <= '' + str(@PriceTo) + '') ''

if @CategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and CategoryID in (select ProductCategoryID from dbo.[ufn_ChildProductCategory_SelectAll]('' + str(@CategoryID) + '')) ''

if @ManufacturerID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.ManufacturerID = '' + str(@ManufacturerID)

if @OriginID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.OriginID = '' + str(@OriginID)

if @Tag IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Tag, TagEn), '''''' + @Tag + '''''') ''

if @InStock IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and InStock = '' + str(@InStock)

if @IsHot IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsHot = '' + str(@IsHot)

if @IsNew IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsNew = '' + str(@IsNew)

if @IsBestSeller IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsBestSeller = '' + str(@IsBestSeller)

if @IsSaleOff IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsSaleOff = '' + str(@IsSaleOff)

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' p.Priority is not NULL '' else '' p.Priority is NULL '' end

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.IsAvailable = '' + str(@IsAvailable)

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR





' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Newsletter_SelectAll]
@Email nvarchar(200) = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[Email]
from Newsletter
where 1=1 ''
if @Email IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Email, '''''' + @Email + '''''') ''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  Table [dbo].[MenuPosition]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuPosition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MenuPosition](
	[MenuPositionID] [int] IDENTITY(1,1) NOT NULL,
	[MenuPositionName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_MenuPosition] PRIMARY KEY CLUSTERED 
(
	[MenuPositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[MenuPosition]'))
CREATE FULLTEXT INDEX ON [dbo].[MenuPosition](
[MenuPositionName] LANGUAGE [English])
KEY INDEX [PK_MenuPosition] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[MenuPosition] ON
INSERT [dbo].[MenuPosition] ([MenuPositionID], [MenuPositionName], [IsAvailable]) VALUES (1, N'Menu chính', 1)
INSERT [dbo].[MenuPosition] ([MenuPositionID], [MenuPositionName], [IsAvailable]) VALUES (2, N'Menu trái', 1)
INSERT [dbo].[MenuPosition] ([MenuPositionID], [MenuPositionName], [IsAvailable]) VALUES (3, N'Menu phải', 1)
SET IDENTITY_INSERT [dbo].[MenuPosition] OFF
/****** Object:  Table [dbo].[PhotoAlbumCategory]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhotoAlbumCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhotoAlbumCategory](
	[PhotoAlbumCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhotoAlbumCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhotoAlbumCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_PhotoAlbumCategory] PRIMARY KEY CLUSTERED 
(
	[PhotoAlbumCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[PhotoAlbumCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[PhotoAlbumCategory](
[PhotoAlbumCategoryName] LANGUAGE [English], 
[PhotoAlbumCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_PhotoAlbumCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_WishList_SelectAll]
@Keyword nvarchar(500) = NULL,
@ProductID int = NULL,
@UserName nvarchar(256) = NULL,
@Quantity int = NULL,
@Price money = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	w.[ProductID],
	[UserName],
	[Quantity],
	w.[Price],
	w.[CreateDate],
	p.[ProductName],
	p.[Description]
from WishList w
left join Product p on p.ProductID = w.ProductID
where 1=1 ''
if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(p.*, '''''' + @Keyword + '''''') ''
if @ProductID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and w.ProductID = '' + convert(varchar,@ProductID)
if @UserName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and UserName = '' + @UserName
if @Quantity IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and Quantity = '' + convert(varchar,@Quantity)
if @Price IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and w.Price = '' + convert(varchar,@Price)
if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), w.CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)
if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), w.CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)


exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_SelectMaxID]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_SelectMaxID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Video_SelectMaxID]
@VideoID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as

select @VideoID = case when IDENT_CURRENT(''Video'') = 1 then 1 else IDENT_CURRENT(''Video'') + 1 end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectImage_SelectAll]
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[ProjectImageID],
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[ProjectID],
	[IsAvailable],
	[Priority]
from ProjectImage
where ProjectID = '' + str(@ProjectID)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [ProjectImageID] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_PhotoAlbum_SelectAll]
@Keyword nvarchar(1000) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@PhotoAlbumCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[PhotoAlbumID],
	pa.[ImageName],
	pa.[Title],
	pa.[Descripttion],
	pa.[TitleEn],
	pa.[DescripttionEn],
	pa.[PhotoAlbumCategoryID],
	pa.[IsAvailable],
	pa.[Priority],
	[PhotoAlbumCategoryName],
	[PhotoAlbumCategoryNameEn]
from PhotoAlbum pa
left join PhotoAlbumCategory pac on pac.PhotoAlbumCategoryID = pa.PhotoAlbumCategoryID
where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(pa.*, '''''' + @Keyword + '''''') ''

if @Title IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((pa.Title, pa.TitleEn), '''''' + @Title + '''''') ''

if @Descripttion IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((pa.Descripttion, pa.DescripttionEn), '''''' + @Descripttion + '''''') ''

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and pa.IsAvailable = '' + str(@IsAvailable)

if @PhotoAlbumCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and pa.PhotoAlbumCategoryID = '' + str(@PhotoAlbumCategoryID)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' pa.Priority is not NULL '' else '' pa.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-pa.Priority desc, '' else '''' end + '' [PhotoAlbumID] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectDownload_SelectAll]
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[ProjectDownloadID],
	[ProjectID],
	[FileName],
	[FileNameEn],
	[LinkDownload],
	[IsAvailable],
	[Priority]
from ProjectDownload
where ProjectID = '' + str(@ProjectID)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [ProjectDownloadID] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductImage_SelectAll]
@ProductID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[ProductImageID],
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[ProductID],
	[IsAvailable],
	[Priority]
from ProductImage
where ProductID = '' + str(@ProductID)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [ProductImageID] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_VideoCategory_SelectAll]
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[VideoCategoryID],
	[ImageName],
	[VideoCategoryName],
	[VideoCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
from VideoCategory where 1=1 ''

if @IsShowOnMenu IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsShowOnMenu = '' + str(@IsShowOnMenu)

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [VideoCategoryID] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  Table [dbo].[Visitor]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Visitor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Visitor](
	[VisitorID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Visitors] [bigint] NULL,
 CONSTRAINT [PK_Visitor] PRIMARY KEY CLUSTERED 
(
	[VisitorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Visitor] ON
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (0, CAST(0x00009F8F00ED5DAC AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (1, CAST(0x00009FBF0108DD67 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (2, CAST(0x00009FC00090FB89 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (3, CAST(0x00009FC8010FD69B AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (4, CAST(0x00009FC9010469EB AS DateTime), 7)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (5, CAST(0x00009FCD008BD572 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (6, CAST(0x00009FCF009DB07E AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (7, CAST(0x00009FE80112B771 AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (8, CAST(0x00009FE90088B23D AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (9, CAST(0x00009FEA011196D5 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (10, CAST(0x00009FEF01144369 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (11, CAST(0x00009FF001459105 AS DateTime), 12)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (12, CAST(0x00009FF1016BDEBD AS DateTime), 13)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (13, CAST(0x00009FF201559B29 AS DateTime), 7)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (14, CAST(0x00009FF3016E3EB3 AS DateTime), 8)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (15, CAST(0x00009FF400BAE61D AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (16, CAST(0x00009FF600BB36B3 AS DateTime), 15)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (17, CAST(0x00009FFF00FE51CF AS DateTime), 8)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (18, CAST(0x0000A0040005643F AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (19, CAST(0x0000A00C00EB40DD AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (20, CAST(0x0000A01700E280FE AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (21, CAST(0x0000A0180140C442 AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (22, CAST(0x0000A019016FCA66 AS DateTime), 6)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (23, CAST(0x0000A01A01888800 AS DateTime), 5)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (24, CAST(0x0000A01B010CA952 AS DateTime), 5)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (25, CAST(0x0000A01C016C017F AS DateTime), 31)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (26, CAST(0x0000A01D01383B9C AS DateTime), 11)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (27, CAST(0x0000A01E0167EDC2 AS DateTime), 9)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (28, CAST(0x0000A01F01257334 AS DateTime), 5)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (29, CAST(0x0000A02001686F9D AS DateTime), 13)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (30, CAST(0x0000A021013A9127 AS DateTime), 9)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (31, CAST(0x0000A0220127DF79 AS DateTime), 7)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (32, CAST(0x0000A02301196C65 AS DateTime), 15)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (33, CAST(0x0000A024012C9D7F AS DateTime), 16)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (34, CAST(0x0000A02500EFC675 AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (35, CAST(0x0000A02600C587BD AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (36, CAST(0x0000A02700FD7298 AS DateTime), 9)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (37, CAST(0x0000A0280112BFA8 AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (38, CAST(0x0000A029010249B0 AS DateTime), 6)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (39, CAST(0x0000A02A00FA177C AS DateTime), 6)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (40, CAST(0x0000A02B01807516 AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (41, CAST(0x0000A02C00440622 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (42, CAST(0x0000A02D00CA49C2 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (43, CAST(0x0000A02E0128C17D AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (44, CAST(0x0000A02F016A9207 AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (45, CAST(0x0000A030005C41AD AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (46, CAST(0x0000A0310020F908 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (47, CAST(0x0000A032009A217D AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (48, CAST(0x0000A03300E3C712 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (49, CAST(0x0000A034014B407F AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (50, CAST(0x0000A03501038BF9 AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (51, CAST(0x0000A03601374491 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (52, CAST(0x0000A037001412DA AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (53, CAST(0x0000A038015E69D6 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (54, CAST(0x0000A03900D77F7F AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (55, CAST(0x0000A03A00895A9A AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (56, CAST(0x0000A03C00C47E4B AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (57, CAST(0x0000A04100CAD23F AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (58, CAST(0x0000A04300CC0116 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (59, CAST(0x0000A04600634D80 AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (60, CAST(0x0000A05100EA60AF AS DateTime), 3)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (61, CAST(0x0000A05600C26BCA AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (62, CAST(0x0000A057017A5431 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (63, CAST(0x0000A0580170D1F6 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (64, CAST(0x0000A059014C89A6 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (65, CAST(0x0000A05A014B9C0D AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (66, CAST(0x0000A05B010CA521 AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (67, CAST(0x0000A05C010F8A81 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (68, CAST(0x0000A05D013F5C68 AS DateTime), 6)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (69, CAST(0x0000A05F00749C1D AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (70, CAST(0x0000A060002EB78A AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (71, CAST(0x0000A06100E5C332 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (72, CAST(0x0000A06600D1AF5E AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (73, CAST(0x0000A0670152381D AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (74, CAST(0x0000A07200710273 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (75, CAST(0x0000A07401127E7B AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (76, CAST(0x0000A07500A30F7E AS DateTime), 16)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (77, CAST(0x0000A077011989DA AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (78, CAST(0x0000A07800F0285F AS DateTime), 12)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (79, CAST(0x0000A07C0167297F AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (80, CAST(0x0000A080012D0367 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (81, CAST(0x0000A0840115729D AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (82, CAST(0x0000A08501401282 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (83, CAST(0x0000A08A00B45F8F AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (84, CAST(0x0000A0900038C895 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (85, CAST(0x0000A09200E8EE34 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (86, CAST(0x0000A09700E686DD AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (87, CAST(0x0000A098011B447C AS DateTime), 5)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (88, CAST(0x0000A09A00A8366E AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (89, CAST(0x0000A09B00DA1CEE AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (90, CAST(0x0000A09C00BC957E AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (91, CAST(0x0000A09E010ECB53 AS DateTime), 7)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (92, CAST(0x0000A09F009EB26A AS DateTime), 5)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (93, CAST(0x0000A0A00143F543 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (94, CAST(0x0000A0A300B1B073 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (95, CAST(0x0000A0A600F6C545 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (96, CAST(0x0000A0A80048CDA0 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (97, CAST(0x0000A0AA0102B25A AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (98, CAST(0x0000A0AC009C46F7 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (99, CAST(0x0000A0AE00E4B53C AS DateTime), 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (100, CAST(0x0000A0AF00E57C12 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (101, CAST(0x0000A0B100C20E58 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (102, CAST(0x0000A0B300D28828 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (103, CAST(0x0000A0B500788955 AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (104, CAST(0x0000A0B700202ECF AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (105, CAST(0x0000A0BB00BDA4C1 AS DateTime), 2)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (106, CAST(0x0000A103010A5C82 AS DateTime), 4)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (107, CAST(0x0000A104008A0C1B AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (108, CAST(0x0000A149009F5C6F AS DateTime), 1)
INSERT [dbo].[Visitor] ([VisitorID], [CreateDate], [Visitors]) VALUES (109, CAST(0x0000A17400C54999 AS DateTime), 152)
SET IDENTITY_INSERT [dbo].[Visitor] OFF
/****** Object:  StoredProcedure [dbo].[usp_Comment_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Comment_SelectAll]
@CommentID int = NULL,
@UserName nvarchar(256) = NULL,
@Keyword nvarchar(1000) = NULL,
@Link nvarchar(1000) = NULL,
@Title nvarchar(200) = NULL,
@Content nvarchar(MAX) = NULL,
@CreateDate datetime = NULL,
@UpdateDate datetime = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@Priority int = NULL,
@IsApproved bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[CommentID],
	[UserName],
	[Link],
	[Title],
	[Content],
	[CreateDate],
	[UpdateDate],
	[Priority],
	[IsApproved],
	[IsAvailable]
from Comment
where 1=1 ''
if @CommentID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and CommentID = '' + convert(varchar,@CommentID)
if @UserName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(UserName, '''''' + @UserName + '''''') ''
if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(*, '''''' + @Keyword + '''''') ''
if @Link IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Link, '''''' + @Link + '''''') ''
if @Title IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Title, '''''' + @Title + '''''') ''
if @Content IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Content, '''''' + @Content + '''''') ''
if @CreateDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar, CreateDate,112) = '' + convert(varchar, @CreateDate, 112)
if @UpdateDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar, UpdateDate,112) = '' + convert(varchar, @UpdateDate, 112)
if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)
if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)
if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and Priority = '' + convert(varchar,@Priority)
if @IsApproved IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsApproved = '' + convert(varchar,@IsApproved)
if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + convert(varchar,@IsAvailable)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_UserProfile_SelectAll]
@Keyword nvarchar(1000) = NULL,
@UserName nvarchar(256) = NULL,
@Email nvarchar(256) = NULL,
@Role nvarchar(256) = NULL,
@CompanyName nvarchar(200) = NULL,
@FullName nvarchar(200) = NULL,
@Address nvarchar(100) = NULL,
@HomePhone nvarchar(20) = NULL,
@CellPhone nvarchar(20) = NULL,
@Fax nvarchar(20) = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	aspnet_Users.[UserID],
	[UserName],
	[Email],
	[LastLoginDate],
	[RoleName] as Role,
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	[Fax],
	[AvatarImage],
	aspnet_Membership.[CreateDate],
	[UpdateDate],
	[IsAvailable]
from aspnet_Users
left join UserProfile on aspnet_Users.UserID = UserProfile.UserID
left join aspnet_Membership on aspnet_Membership.UserID = aspnet_Users.UserID
left join aspnet_UsersInRoles on aspnet_UsersInRoles.UserID = aspnet_Users.UserID
left join aspnet_Roles on aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId
where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(UserProfile.*, '''''' + @Keyword + '''''') ''

if @UserName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and UserName like N''''%'' + @UserName + ''%'''' ''

if @Email IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and Email like N''''%'' + @Email + ''%'''' ''

if @CompanyName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(CompanyName, '''''' + @CompanyName + '''''') ''

if @FullName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(FullName, '''''' + @FullName + '''''') ''

if @Address IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Address, '''''' + @Address + '''''') ''

if @HomePhone IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(HomePhone, '''''' + @HomePhone + '''''') ''

if @CellPhone IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(CellPhone, '''''' + @CellPhone + '''''') ''

if @Fax IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Fax, '''''' + @Fax + '''''') ''

if @Role IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and aspnet_Roles.RoleName = '''''' + @Role + '''''' ''

set @SelectQuery = @SelectQuery + '' order by [UserName]''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Menu_SelectAll] 
@MenuPositionID int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[MenuID],
	[MenuTitle],
	[MenuTitleEn],
	[ImageName],
	[ImageNameEn],
	[Link],
	[LinkEn],
	[MenuPositionID],
	isnull([ParentID], 0) ParentID,
	(select top 1 MenuTitle from Menu b where b.MenuID = a.ParentID) ParentName,
	[SortOrder],
	[IsAvailable]
from Menu a
where 1=1''

if @MenuPositionID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and MenuPositionID = '' + str(@MenuPositionID)
if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

set @SelectQuery = @SelectQuery + ''order by ParentID, SortOrder''

exec(@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProjectVideo_SelectAll]
@Keyword nvarchar(1000) = NULL,
@Title nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[ProjectVideoID],
	[Title],
	[Description],
	[TitleEn],
	[DescriptionEn],
	[ImagePath],
	[ProjectVideoPath],
	[ProjectID],
	[CreateDate],
	[IsAvailable],
	[Priority]
from ProjectVideo
where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(*, '''''' + @Keyword + '''''') ''

if @Title IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Title, TitleEn), '''''' + @Title + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @ProjectID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ProjectID ='' + str(@ProjectID) + '' ''

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' CreateDate desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_SelectMaxID]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_SelectMaxID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectVideo_SelectMaxID]
@ProjectVideoID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as

select @ProjectVideoID = case when IDENT_CURRENT(''ProjectVideo'') = 1 then 1 else IDENT_CURRENT(''ProjectVideo'') + 1 end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  Table [dbo].[Newsletter]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Newsletter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Newsletter](
	[Email] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Newsletter] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Newsletter]'))
CREATE FULLTEXT INDEX ON [dbo].[Newsletter](
[Email] LANGUAGE [English])
KEY INDEX [PK_Newsletter] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  StoredProcedure [dbo].[usp_User_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_User_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_User_SelectAll]
@UserName nvarchar(256) = NULL,
@Email nvarchar(256) = NULL,
@Role nvarchar(256) = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[UserName],
	[Email],
	[CreateDate],
	[LastLoginDate],
	[RoleName] as Role
from aspnet_Users
left join aspnet_Membership on aspnet_Membership.UserID = aspnet_Users.UserID
left join aspnet_UsersInRoles on aspnet_UsersInRoles.UserID = aspnet_Users.UserID
left join aspnet_Roles on aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId
where 1=1 ''

if @UserName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and UserName like N''''%'' + @UserName + ''%'''' ''

if @Email IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and Email like N''''%'' + @Email + ''%'''' ''

if @Role IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and aspnet_Roles.RoleName = '''''' + @Role + '''''' ''

set @SelectQuery = @SelectQuery + '' order by [UserName]''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_DownloadCategory_SelectAll]
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''
select 
	[DownloadCategoryID],
	[ImageName],
	[DownloadCategoryName],
	[DownloadCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
from DownloadCategory where 1=1 ''

if @IsShowOnMenu IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsShowOnMenu = '' + str(@IsShowOnMenu)

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [DownloadCategoryID] desc''

exec(@SelectQuery)

-- Get the Error Code for the statement just execute
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE procedure [dbo].[usp_Article_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@Keyword nvarchar(1000) = NULL,
@ArticleTitle nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@ArticleCategoryID int = NULL,
@Tag nvarchar(200) = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT 
		ROW_NUMBER() OVER (ORDER BY '' + 
			case when @Keyword IS NOT NULL then ''Rank desc, '' else '''' end +
			case when @SortByPriority = 1 then ''-a.Priority desc, '' else '''' end + 
		'' CreateDate DESC) AS row_number,
		[ArticleID],
		a.[ImageName],
		a.[MetaTittle],
		a.[MetaDescription],
		[ArticleTitle],
		a.[Content],
		a.[Description],
		[Tag],
		a.[MetaTittleEn],
		a.[MetaDescriptionEn],
		a.[ArticleTitleEn],
		a.[DescriptionEn],
		a.[ContenteN],
		[TagEn],
		a.[ArticleCategoryID],
		[CreateDate],
		a.[IsShowOnHomePage],
		a.[IsHot],
		a.[IsNew],
		a.[IsAvailable],
		[ArticleCategoryName],
		[ArticleCategoryNameEn],
		a.[Priority]
	FROM Article a
	left join ArticleCategory ac on ac.ArticleCategoryID = a.ArticleCategoryID '' +
	case when @Keyword IS NOT NULL then '' left join FREETEXTTABLE(Article, *, '''''' + @Keyword + '''''') st on st.[Key] = a.ArticleID '' else '''' end +
	'' where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (FREETEXT(a.*, '''''' + @Keyword + '''''') or FREETEXT(ac.*, '''''' + @Keyword + '''''')) ''

if @ArticleTitle IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((ArticleTitle, ArticleTitleEn), '''''' + @ArticleTitle + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.ArticleCategoryID in (select ArticleCategoryID from dbo.[ufn_ChildArticleCategory_SelectAll]('' + str(@ArticleCategoryID) + '')) ''

if @Tag IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Tag, '''''' + @Tag + '''''') ''

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @IsHot IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsHot = '' + str(@IsHot)

if @IsNew IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsNew = '' + str(@IsNew)

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' a.Priority is not NULL '' else '' a.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR





' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_MenuPosition_SelectAll]
@MenuPositionID int = NULL,
@MenuPositionName nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[MenuPositionID],
	[MenuPositionName],
	[IsAvailable]
from MenuPosition
where 1=1 ''
if @MenuPositionID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and MenuPositionID = '' + convert(varchar,@MenuPositionID)
if @MenuPositionName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and MenuPositionName like N''''%'' + @MenuPositionName + ''%'''' ''
if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + convert(varchar,@IsAvailable)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Download_SelectAll] 
@Keyword nvarchar(1000) = NULL,
@DownloadName nvarchar(100) = NULL,
@DownloadCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[DownloadID],
	[DownloadName],
	[DownloadNameEn],
	d.[ImageName],
	[FilePath],
	d.[DownloadCategoryID],
	[DownloadCategoryName],
	[CreateDate],
	d.[IsAvailable],
	d.[Priority]
from Download d
left join DownloadCategory dc on dc.DownloadCategoryID = d.DownloadCategoryID
where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(d.*, '''''' + @Keyword + '''''') ''

if @DownloadName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((DownloadName, DownloadNameEn), '''''' + @DownloadName + '''''') ''

if @DownloadCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and d.DownloadCategoryID ='' + str(@DownloadCategoryID) + '' ''

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and d.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' d.Priority is not NULL '' else '' d.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-d.Priority desc, '' else '''' end + '' CreateDate desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_AdsBanner_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@AdsCategoryID int = NULL,
@CompanyName nvarchar(200) = NULL,
@Website nvarchar(200) = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT distinct
		ROW_NUMBER() OVER (ORDER BY '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' ab.AdsCategoryID desc, ab.AdsBannerID desc) AS row_number,
		[AdsBannerID],
		[FileName],
		ab.[AdsCategoryID],
		[AdsCategoryName],
		[CompanyName],
		[Website],
		[FromDate],
		[ToDate],
		ab.[Priority],
	Description,
		case when isnull(datediff(d, [ToDate], getdate()), 0) >= -7 then cast(1 as bit) else cast(0 as bit) end as BeginDeadLine,
		case when isnull(datediff(d, [ToDate], getdate()), 0) >= 0 then cast(1 as bit) else cast(0 as bit) end as IsDeadLine,
		ab.[IsAvailable],
		[Ratio]
	FROM AdsBanner ab
	left join AdsCategory ac on ac.AdsCategoryID = ab.AdsCategoryID
	where 1=1 ''

if @AdsCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ab.AdsCategoryID ='' + str(@AdsCategoryID) + '' ''

if @CompanyName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and CompanyName like N''''%'' + @CompanyName + ''%'''' ''

if @Website IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and Website like N''''%'' + @Website + ''%'''' ''

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), FromDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), ToDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ab.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' ab.Priority is not NULL '' else '' ab.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE procedure [dbo].[usp_Career_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@Keyword nvarchar(1000) = NULL,
@CareerTitle nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@CareerCategoryID int = NULL,
@Tag nvarchar(200) = NULL,
@IsShowOnHomePage bit = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT 
		ROW_NUMBER() OVER (ORDER BY '' + 
			case when @Keyword IS NOT NULL then ''Rank desc, '' else '''' end +
			case when @SortByPriority = 1 then ''-c.Priority desc, '' else '''' end + 
		'' CreateDate DESC) AS row_number,
		[CareerID],
		c.[ImageName],
		c.[MetaTittle],
		c.[MetaDescription],
		[CareerTitle],
		c.[Content],
		c.[Description],
		[Tag],
		c.[MetaTittleEn],
		c.[MetaDescriptionEn],
		[CareerTitleEn],
		c.[DescriptionEn],
		c.[ContentEn],
		[TagEn],
		c.[CareerCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[CareerCategoryName],
		[CareerCategoryNameEn],
		c.[Priority]
	FROM Career c
	left join CareerCategory cc on cc.CareerCategoryID = c.CareerCategoryID '' +
	case when @Keyword IS NOT NULL then '' left join FREETEXTTABLE(Career, *, '''''' + @Keyword + '''''') st on st.[Key] = c.CareerID '' else '''' end +
	'' where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (FREETEXT(c.*, '''''' + @Keyword + '''''') or FREETEXT(cc.*, '''''' + @Keyword + '''''')) ''

if @CareerTitle IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((CareerTitle, CareerTitleEn), '''''' + @CareerTitle + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.CareerCategoryID in (select CareerCategoryID from dbo.[ufn_ChildCareerCategory_SelectAll]('' + str(@CareerCategoryID) + '')) ''

if @Tag IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Tag, TagEn), '''''' + @Tag + '''''') ''

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' c.Priority is not NULL '' else '' c.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR




' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_SelectMaxID]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_SelectMaxID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Download_SelectMaxID]
@DownloadID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as

select @DownloadID = case when IDENT_CURRENT(''Download'') = 1 then 1 else IDENT_CURRENT(''Download'') + 1 end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE procedure [dbo].[usp_Service_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@Keyword nvarchar(1000) = NULL,
@ServiceTitle nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@ServiceCategoryID int = NULL,
@Tag nvarchar(200) = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT 
		ROW_NUMBER() OVER (ORDER BY '' + 
			case when @Keyword IS NOT NULL then ''Rank desc, '' else '''' end +
			case when @SortByPriority = 1 then ''-a.Priority desc, '' else '''' end + 
		'' CreateDate DESC) AS row_number,
		[ServiceID],
		a.[ImageName],
		a.[MetaTittle],
		a.[MetaDescription],
		[ServiceTitle],
		a.[Content],
		a.[Description],
		[Tag],
		a.[MetaTittleEn],
		a.[MetaDescriptionEn],
		[ServiceTitleEn],
		a.[DescriptionEn],
		a.[ContenteN],
		[TagEn],
		a.[ServiceCategoryID],
		[CreateDate],
		a.[IsShowOnHomePage],
		a.[IsHot],
		a.[IsNew],
		a.[IsAvailable],
		[ServiceCategoryName],
		[ServiceCategoryNameEn],
		a.[Priority]
	FROM Service a
	left join ServiceCategory ac on ac.ServiceCategoryID = a.ServiceCategoryID '' +
	case when @Keyword IS NOT NULL then '' left join FREETEXTTABLE(Service, *, '''''' + @Keyword + '''''') st on st.[Key] = a.ServiceID '' else '''' end +
	'' where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (FREETEXT(a.*, '''''' + @Keyword + '''''') or FREETEXT(ac.*, '''''' + @Keyword + '''''')) ''

if @ServiceTitle IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((ServiceTitle, ServiceTitleEn), '''''' + @ServiceTitle + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.ServiceCategoryID in (select ServiceCategoryID from dbo.[ufn_ChildServiceCategory_SelectAll]('' + str(@ServiceCategoryID) + '')) ''

if @Tag IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Tag, TagEn), '''''' + @Tag + '''''') ''

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @IsHot IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsHot = '' + str(@IsHot)

if @IsNew IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsNew = '' + str(@IsNew)

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and a.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' a.Priority is not NULL '' else '' a.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR




' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Origin_SelectAll]
@OriginName nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[OriginID],
	[OriginName],
	[OriginNameEn],
	[IsAvailable],
	[Priority]
from Origin
where 1=1 ''

if @OriginName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((OriginName, OriginNameEn), '''''' + @OriginName + '''''') ''

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' OriginID desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Partner_SelectAll]
@Keyword nvarchar(1000) = NULL,
@PartnerName nvarchar(100) = NULL,
@Address nvarchar(100) = NULL,
@LinkWebsite nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[PartnerID],
	[PartnerName],
	[PartnerNameEn],
	[PartnerImage],
	[Address],
	[LinkWebsite],
	[CreateDate],
	[IsAvailable],
	[Priority]
from Partner where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(*, '''''' + @Keyword + '''''') ''

if @PartnerName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((PartnerName, PartnerNameEn), '''''' + @PartnerName + '''''') ''

if @Address IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(Address, '''''' + @PartnerName + '''''') ''

if @LinkWebsite IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT(LinkWebsite, '''''' + @LinkWebsite + '''''') ''

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [CreateDate] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE procedure [dbo].[usp_Project_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@Keyword nvarchar(1000) = NULL,
@ProjectTitle nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@ProjectCategoryID int = NULL,
@Tag nvarchar(200) = NULL,
@IsShowOnHomePage bit = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT 
		ROW_NUMBER() OVER (ORDER BY '' + 
			case when @Keyword IS NOT NULL then ''Rank desc, '' else '''' end +
			case when @SortByPriority = 1 then ''-p.Priority desc, '' else '''' end + 
		'' CreateDate DESC) AS row_number,
		[ProjectID],
		p.[MetaTittle],
		p.[MetaDescription],
		[ProjectTitle],
		p.[ImageName],
		p.[Description],
		p.[Content],
		p.[MetaTittleEn],
		p.[MetaDescriptionEn],
		[ProjectTitleEn],
		p.[DescriptionEn],
		p.[ContentEn],
		[TagEn],
		p.[ProjectCategoryID],
		[ProjectCategoryName],
		[ProjectCategoryNameEn],
		[CreateDate],
		[Tag],
		p.[IsShowOnHomePage],
		p.[IsAvailable],
		p.[Priority]
	FROM Project p
	left join ProjectCategory ac on ac.ProjectCategoryID = p.ProjectCategoryID '' +
	case when @Keyword IS NOT NULL then '' left join FREETEXTTABLE(Project, *, '''''' + @Keyword + '''''') st on st.[Key] = p.ProjectID '' else '''' end +
	'' where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (FREETEXT(p.*, '''''' + @Keyword + '''''') or FREETEXT(ac.*, '''''' + @Keyword + '''''')) ''

if @ProjectTitle IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((ProjectTitle, ProjectTitleEn), '''''' + @ProjectTitle + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.ProjectCategoryID in (select ProjectCategoryID from dbo.[ufn_ChildProjectCategory_SelectAll]('' + str(@ProjectCategoryID) + '')) ''

if @Tag IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Tag, TagEn), '''''' + @Tag + '''''') ''

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and p.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' p.Priority is not NULL '' else '' p.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR




' 
END
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WishList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WishList](
	[ProductID] [int] NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_WishList] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductDownload_SelectAll]
@ProductID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select
	[ProductDownloadID],
	[ProductID],
	[FileName],
	[FileNameEn],
	[LinkDownload],
	[IsAvailable],
	[Priority]
from ProductDownload
where ProductID = '' + str(@ProductID)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [ProductDownloadID] desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_PhotoAlbumCategory_SelectAll]
@PhotoAlbumCategoryName nvarchar(100) = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SelectQuery nvarchar(max)
select @SelectQuery = ''
select 
	[PhotoAlbumCategoryID],
	[ImageName],
	[PhotoAlbumCategoryName],
	[PhotoAlbumCategoryNameEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
from PhotoAlbumCategory where 1=1 ''

if @PhotoAlbumCategoryName IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((PhotoAlbumCategoryName, PhotoAlbumCategoryNameEn), '''''' + @PhotoAlbumCategoryName + '''''') ''

if @IsShowOnMenu IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsShowOnMenu = '' + str(@IsShowOnMenu)

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' Priority is not NULL '' else '' Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-Priority desc, '' else '''' end + '' [PhotoAlbumCategoryID] desc''

exec(@SelectQuery)

-- Get the Error Code for the statement just execute
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Video_SelectAll]
@Title nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@VideoCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''select 
	[VideoID],
	[Title],
	v.[Description],
	[TitleEn],
	v.[DescriptionEn],
	[ImagePath],
	[VideoPath],
	[GLobalEmbedScript],
	v.[VideoCategoryID],
	[VideoCategoryName],
	[CreateDate],
	v.[IsAvailable],
	v.[Priority]
from Video v
left join VideoCategory vc on vc.VideoCategoryID = v.VideoCategoryID
where 1=1 ''

if @Title IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Title, TitleEn), '''''' + @Title + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @VideoCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and v.VideoCategoryID ='' + str(@VideoCategoryID) + '' ''

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and v.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' v.Priority is not NULL '' else '' v.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' order by '' + case when @SortByPriority = 1 then ''-v.Priority desc, '' else '''' end + '' CreateDate desc''

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProductCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[ProductCategory](
[ProductCategoryName] LANGUAGE [English], 
[ProductCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_ProductCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ArticleCategory]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArticleCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ArticleCategory](
	[ArticleCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ArticleCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_ArticleCategory] PRIMARY KEY CLUSTERED 
(
	[ArticleCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ArticleCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[ArticleCategory](
[ArticleCategoryName] LANGUAGE [English], 
[ArticleCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_ArticleCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[ArticleCategory] ON
INSERT [dbo].[ArticleCategory] ([ArticleCategoryID], [ArticleCategoryName], [ArticleCategoryNameEn], [Description], [DescriptionEn], [Content], [ContentEn], [MetaTitle], [MetaTitleEn], [MetaDescription], [MetaDescriptionEn], [ImageName], [ParentID], [SortOrder], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable]) VALUES (1, N'Giới Thiệu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1)
INSERT [dbo].[ArticleCategory] ([ArticleCategoryID], [ArticleCategoryName], [ArticleCategoryNameEn], [Description], [DescriptionEn], [Content], [ContentEn], [MetaTitle], [MetaTitleEn], [MetaDescription], [MetaDescriptionEn], [ImageName], [ParentID], [SortOrder], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable]) VALUES (2, N'Tin Tức', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 1)
INSERT [dbo].[ArticleCategory] ([ArticleCategoryID], [ArticleCategoryName], [ArticleCategoryNameEn], [Description], [DescriptionEn], [Content], [ContentEn], [MetaTitle], [MetaTitleEn], [MetaDescription], [MetaDescriptionEn], [ImageName], [ParentID], [SortOrder], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable]) VALUES (3, N'Hướng Dẫn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ArticleCategory] OFF
/****** Object:  Table [dbo].[CareerCategory]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CareerCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CareerCategory](
	[CareerCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CareerCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CareerCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_CareerCategory] PRIMARY KEY CLUSTERED 
(
	[CareerCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[CareerCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[CareerCategory](
[CareerCategoryName] LANGUAGE [English], 
[CareerCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_CareerCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ProjectCategory]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectCategory](
	[ProjectCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProjectCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_ProjectCategory] PRIMARY KEY CLUSTERED 
(
	[ProjectCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProjectCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[ProjectCategory](
[ProjectCategoryName] LANGUAGE [English], 
[ProjectCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_ProjectCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ServiceCategory]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceCategory](
	[ServiceCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_ServiceCategory] PRIMARY KEY CLUSTERED 
(
	[ServiceCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ServiceCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[ServiceCategory](
[ServiceCategoryName] LANGUAGE [English], 
[ServiceCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_ServiceCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[VideoCategory]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VideoCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VideoCategory](
	[VideoCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VideoCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VideoCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_VideoCategory] PRIMARY KEY CLUSTERED 
(
	[VideoCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[VideoCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[VideoCategory](
[VideoCategoryName] LANGUAGE [English], 
[VideoCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_VideoCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ManufacturerNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OrderStatusNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[OrderStatus]'))
CREATE FULLTEXT INDEX ON [dbo].[OrderStatus](
[OrderStatusName] LANGUAGE [English], 
[OrderStatusNameEn] LANGUAGE [English])
KEY INDEX [PK_OrderStatus] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatusName], [OrderStatusNameEn], [IsAvailable]) VALUES (1, N'Đang xử lý', N'Processing', 1)
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatusName], [OrderStatusNameEn], [IsAvailable]) VALUES (2, N'Đang chờ giao', N'Delivering', 1)
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatusName], [OrderStatusNameEn], [IsAvailable]) VALUES (3, N'Hoàn tất', N'Completed', 1)
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatusName], [OrderStatusNameEn], [IsAvailable]) VALUES (4, N'Đã hủy', N'Cancelled', 1)
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
/****** Object:  Table [dbo].[AdsCategory]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdsCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdsCategory](
	[AdsCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[AdsCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_AdsCategory] PRIMARY KEY CLUSTERED 
(
	[AdsCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[AdsCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[AdsCategory](
[AdsCategoryName] LANGUAGE [English])
KEY INDEX [PK_AdsCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[AdsCategory] ON
INSERT [dbo].[AdsCategory] ([AdsCategoryID], [AdsCategoryName], [IsAvailable]) VALUES (1, N'Header', 1)
INSERT [dbo].[AdsCategory] ([AdsCategoryID], [AdsCategoryName], [IsAvailable]) VALUES (2, N'Left Panel', 1)
INSERT [dbo].[AdsCategory] ([AdsCategoryID], [AdsCategoryName], [IsAvailable]) VALUES (3, N'Right Panel', 1)
INSERT [dbo].[AdsCategory] ([AdsCategoryID], [AdsCategoryName], [IsAvailable]) VALUES (4, N'Content Panel', 1)
SET IDENTITY_INSERT [dbo].[AdsCategory] OFF
/****** Object:  Table [dbo].[DownloadCategory]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DownloadCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DownloadCategory](
	[DownloadCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DownloadCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DownloadCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_DownloadCategory] PRIMARY KEY CLUSTERED 
(
	[DownloadCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[DownloadCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[DownloadCategory](
[DownloadCategoryName] LANGUAGE [English], 
[DownloadCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_DownloadCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[DownloadCategory] ON
INSERT [dbo].[DownloadCategory] ([DownloadCategoryID], [Description], [DescriptionEn], [Content], [ContentEn], [MetaTitle], [MetaTitleEn], [MetaDescription], [MetaDescriptionEn], [ImageName], [DownloadCategoryName], [DownloadCategoryNameEn], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable], [Priority]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sdf', NULL, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[DownloadCategory] OFF
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_WebEvent___5FB337D6] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Orders](
	[OrderID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[CompanyName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FullName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HomePhone] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CellPhone] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OrderStatusID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Orders] ([OrderID], [UserName], [CreateDate], [CompanyName], [FullName], [Address], [HomePhone], [CellPhone], [Email], [OrderStatusID]) VALUES (N'FBE5BD2A', N'admin', CAST(0x0000A18200BD2F65 AS DateTime), N'asdfasdf', NULL, NULL, NULL, NULL, NULL, 1)
/****** Object:  Table [dbo].[Product]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittle] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittleEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductNameEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TagEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Price] [money] NULL,
	[OtherPrice] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SavePrice] [money] NULL,
	[Discount] [smallint] NULL,
	[CategoryID] [int] NULL,
	[ManufacturerID] [int] NULL,
	[OriginID] [int] NULL,
	[InStock] [bit] NULL,
	[Views] [int] NULL,
	[Rating] [float] NULL,
	[CreateDate] [datetime] NULL,
	[IsHot] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsBestSeller] [bit] NULL,
	[IsSaleOff] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[Priority] [int] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Product]'))
CREATE FULLTEXT INDEX ON [dbo].[Product](
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[ProductName] LANGUAGE [English], 
[ProductNameEn] LANGUAGE [English], 
[Tag] LANGUAGE [English], 
[TagEn] LANGUAGE [English])
KEY INDEX [PK_Product] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[CreateBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
CREATE FULLTEXT INDEX ON [dbo].[OrderDetail](
[OrderID] LANGUAGE [English])
KEY INDEX [PK_OrderDetail] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Users__03317E3D] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'1e956f03-b226-43b9-8e60-9020cc6a6587', N'ed7670db-ff9f-48f9-8220-26fee2781152', N'admin', N'admin', NULL, 0, CAST(0x0000A48E008F5FF0 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'1e956f03-b226-43b9-8e60-9020cc6a6587', N'7bbe5bd3-0cc4-45a1-8f67-06d2e3c86e24', N'nguyennam09', N'nguyennam09', NULL, 0, CAST(0x0000A089007D1898 AS DateTime))
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Roles__31EC6D26] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'1e956f03-b226-43b9-8e60-9020cc6a6587', N'df574264-c118-4a20-b518-25b187f99c17', N'admin', N'admin', NULL)
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__aspnet_Paths__44FF419A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Membershi__1367E606] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'1e956f03-b226-43b9-8e60-9020cc6a6587', N'ed7670db-ff9f-48f9-8220-26fee2781152', N'JJWU5oUDgrdjixcQEW84vemiAtA=', 1, N'LpsdOmgjVIkKeBKl6xmL/w==', NULL, N'admin@yahoo.com', N'admin@yahoo.com', NULL, NULL, 1, 0, CAST(0x0000A01D003BDEF4 AS DateTime), CAST(0x0000A48E008F5FF0 AS DateTime), CAST(0x0000A01D003BDEF4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'1e956f03-b226-43b9-8e60-9020cc6a6587', N'7bbe5bd3-0cc4-45a1-8f67-06d2e3c86e24', N'/GC2J82pMiKisn+06TdopgCXUAc=', 1, N'DkhfRzF7PSek84onHYl8iQ==', NULL, N'nguyennam0902@yahoo.com', N'nguyennam0902@yahoo.com', NULL, NULL, 1, 0, CAST(0x0000A089007CEFFC AS DateTime), CAST(0x0000A089007D1898 AS DateTime), CAST(0x0000A089007CEFFC AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[PhotoAlbum]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhotoAlbum]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhotoAlbum](
	[PhotoAlbumID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Descripttion] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescripttionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
	[PhotoAlbumCategoryID] [int] NULL,
 CONSTRAINT [PK_PhotoAlbum] PRIMARY KEY CLUSTERED 
(
	[PhotoAlbumID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[PhotoAlbum]'))
CREATE FULLTEXT INDEX ON [dbo].[PhotoAlbum](
[Descripttion] LANGUAGE [English], 
[DescripttionEn] LANGUAGE [English], 
[Title] LANGUAGE [English], 
[TitleEn] LANGUAGE [English])
KEY INDEX [PK_PhotoAlbum] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MenuTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MenuTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Link] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MenuPositionID] [int] NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Menu]'))
CREATE FULLTEXT INDEX ON [dbo].[Menu](
[Link] LANGUAGE [English], 
[LinkEn] LANGUAGE [English], 
[MenuTitle] LANGUAGE [English], 
[MenuTitleEn] LANGUAGE [English])
KEY INDEX [PK_Menu] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Article]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Article]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Article](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittle] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ArticleTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittleEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ArticleTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TagEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ArticleCategoryID] [int] NULL,
	[Tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsHot] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Article]'))
CREATE FULLTEXT INDEX ON [dbo].[Article](
[ArticleTitle] LANGUAGE [English], 
[ArticleTitleEn] LANGUAGE [English], 
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[Tag] LANGUAGE [English], 
[TagEn] LANGUAGE [English])
KEY INDEX [PK_Article] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Career]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Career]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Career](
	[CareerID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittle] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CareerTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittleEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CareerTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TagEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CareerCategoryID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Career] PRIMARY KEY CLUSTERED 
(
	[CareerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Career]'))
CREATE FULLTEXT INDEX ON [dbo].[Career](
[CareerTitle] LANGUAGE [English], 
[CareerTitleEn] LANGUAGE [English], 
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[Tag] LANGUAGE [English], 
[TagEn] LANGUAGE [English])
KEY INDEX [PK_Career] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Project]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Project](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittle] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProjectTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittleEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProjectTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TagEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProjectCategoryID] [int] NULL,
	[Tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Project]'))
CREATE FULLTEXT INDEX ON [dbo].[Project](
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[ProjectTitle] LANGUAGE [English], 
[ProjectTitleEn] LANGUAGE [English], 
[Tag] LANGUAGE [English], 
[TagEn] LANGUAGE [English])
KEY INDEX [PK_Project] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Service]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Service]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittle] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittleEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TagEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ServiceCategoryID] [int] NULL,
	[Tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsHot] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Service]'))
CREATE FULLTEXT INDEX ON [dbo].[Service](
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[ServiceTitle] LANGUAGE [English], 
[ServiceTitleEn] LANGUAGE [English])
KEY INDEX [PK_Service] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Video]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Video]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Video](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImagePath] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VideoPath] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GLobalEmbedScript] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[VideoCategoryID] [int] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[VideoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Video]'))
CREATE FULLTEXT INDEX ON [dbo].[Video](
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[Title] LANGUAGE [English], 
[TitleEn] LANGUAGE [English])
KEY INDEX [PK_Video] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[AdsBanner]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdsBanner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdsBanner](
	[AdsBannerID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdsCategoryID] [int] NULL,
	[CompanyName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Website] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsAvailable] [bit] NULL,
	[Ratio] [float] NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_AdsBanner] PRIMARY KEY CLUSTERED 
(
	[AdsBannerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[AdsBanner]'))
CREATE FULLTEXT INDEX ON [dbo].[AdsBanner](
[CompanyName] LANGUAGE [English], 
[FileName] LANGUAGE [English], 
[Website] LANGUAGE [English])
KEY INDEX [PK_AdsBanner] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ProjectDownload]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectDownload]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectDownload](
	[ProjectDownloadID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[FileName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FileNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkDownload] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_ProjectDownload] PRIMARY KEY CLUSTERED 
(
	[ProjectDownloadID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProjectDownload]'))
CREATE FULLTEXT INDEX ON [dbo].[ProjectDownload](
[FileName] LANGUAGE [English], 
[FileNameEn] LANGUAGE [English])
KEY INDEX [PK_ProjectDownload] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ProjectVideo]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectVideo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectVideo](
	[ProjectVideoID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImagePath] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProjectVideoPath] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[ProjectID] [int] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_ProjectVideo] PRIMARY KEY CLUSTERED 
(
	[ProjectVideoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProjectVideo]'))
CREATE FULLTEXT INDEX ON [dbo].[ProjectVideo](
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[Title] LANGUAGE [English], 
[TitleEn] LANGUAGE [English])
KEY INDEX [PK_ProjectVideo] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ProjectImage]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectImage](
	[ProjectImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Descripttion] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescripttionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProjectID] [int] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_ProjectImage] PRIMARY KEY CLUSTERED 
(
	[ProjectImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProjectImage]'))
CREATE FULLTEXT INDEX ON [dbo].[ProjectImage](
[Descripttion] LANGUAGE [English], 
[DescripttionEn] LANGUAGE [English], 
[Title] LANGUAGE [English], 
[TitleEn] LANGUAGE [English])
KEY INDEX [PK_ProjectImage] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductImage](
	[ProductImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Descripttion] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescripttionEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductID] [int] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ProductImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProductImage]'))
CREATE FULLTEXT INDEX ON [dbo].[ProductImage](
[Descripttion] LANGUAGE [English], 
[DescripttionEn] LANGUAGE [English], 
[Title] LANGUAGE [English], 
[TitleEn] LANGUAGE [English])
KEY INDEX [PK_ProductImage] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (7, NULL, N'asd', N'asd', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (9, NULL, N'asdsad', N'asdfasdfasdf', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (26, N'AAFE039C.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (27, N'BF48D48E.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (28, N'4199E323.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (30, N'1D4EC80C.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (31, N'1B522938.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (32, N'9DB707A3.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (33, N'BD101A3C.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (34, N'CDF61A6A.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (35, N'9D30F8FC.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (36, N'FF858CE7.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (37, N'9B5DF710.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (38, N'355C5226.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (39, N'E8C98077.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (43, N'58D3B946.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (44, N'87B93763.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (45, N'7A618955.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (46, N'AE1DE99C.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (47, N'18A66DB3.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (48, N'230B67A.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductImage] ([ProductImageID], [ImageName], [Title], [Descripttion], [TitleEn], [DescripttionEn], [ProductID], [IsAvailable], [Priority]) VALUES (49, N'3A954407.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
/****** Object:  Table [dbo].[ProductDownload]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDownload]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductDownload](
	[ProductDownloadID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[FileName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FileNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LinkDownload] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_ProductDownload] PRIMARY KEY CLUSTERED 
(
	[ProductDownloadID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[ProductDownload]'))
CREATE FULLTEXT INDEX ON [dbo].[ProductDownload](
[FileName] LANGUAGE [English], 
[FileNameEn] LANGUAGE [English])
KEY INDEX [PK_ProductDownload] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 09/03/2015 10:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rating](
	[ProductID] [int] NOT NULL,
	[Rating1] [int] NOT NULL,
	[Rating2] [int] NOT NULL,
	[Rating3] [int] NOT NULL,
	[Rating4] [int] NOT NULL,
	[Rating5] [int] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Profile__286302EC] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4D94879B] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_UsersInRo__35BCFE0A] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'7bbe5bd3-0cc4-45a1-8f67-06d2e3c86e24', N'df574264-c118-4a20-b518-25b187f99c17')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'ed7670db-ff9f-48f9-8220-26fee2781152', N'df574264-c118-4a20-b518-25b187f99c17')
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4AB81AF0] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Download]    Script Date: 09/03/2015 10:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Download]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Download](
	[DownloadID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FilePath] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DownloadName] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DownloadNameEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DownloadCategoryID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[IsAvailable] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Download] PRIMARY KEY CLUSTERED 
(
	[DownloadID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[Download]'))
CREATE FULLTEXT INDEX ON [dbo].[Download](
[DownloadName] LANGUAGE [English], 
[DownloadNameEn] LANGUAGE [English])
KEY INDEX [PK_Download] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Orders_Update]
@OrderID varchar(20) = NULL,
@UserName nvarchar(256) = NULL,
@CreateDate datetime = NULL,
@CompanyName nvarchar(100) = NULL,
@FullName nvarchar(100) = NULL,
@Address nvarchar(100) = NULL,
@HomePhone nvarchar(20) = NULL,
@CellPhone nvarchar(20) = NULL,
@Email nvarchar(100) = NULL,
@OrderStatusID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Orders set 
	[OrderID] = @OrderID,
	[UserName] = @UserName,
	[CreateDate] = @CreateDate,
	[CompanyName] = @CompanyName,
	[FullName] = @FullName,
	[Address] = @Address,
	[HomePhone] = @HomePhone,
	[CellPhone] = @CellPhone,
	[Email] = @Email,
	[OrderStatusID] = @OrderStatusID
where [OrderID] = @OrderID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Orders_QuickUpdate]
@OrderID varchar(20) = NULL,
@OrderStatusID int = NULL,
@ErrorCode int = NULL OUTPUT
as

update Orders set 
	[OrderStatusID] = @OrderStatusID
where [OrderID] = @OrderID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Orders_Insert]
@OrderID varchar(20) = NULL,
@UserName nvarchar(256) = NULL,
@CreateDate datetime = NULL,
@CompanyName nvarchar(100) = NULL,
@FullName nvarchar(100) = NULL,
@Address nvarchar(100) = NULL,
@HomePhone nvarchar(20) = NULL,
@CellPhone nvarchar(20) = NULL,
@Email nvarchar(100) = NULL,
@OrderStatusID int = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into Orders(
	[OrderID],
	[UserName],
	[CreateDate],
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	[Email],
	[OrderStatusID]
) values(
	@OrderID,
	@UserName,
	getdate(),
	@CompanyName,
	@FullName,
	@Address,
	@HomePhone,
	@CellPhone,
	@Email,
	@OrderStatusID
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrdersByUser_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrdersByUser_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_OrdersByUser_SelectAll]
@UserName nvarchar(256) = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[OrderID],
	[UserName],
	[CreateDate],
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	[Email]
from Orders
where UserName = @UserName
order by CreateDate desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Orders_SelectOne]
@OrderID varchar(20) = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[OrderID],
	[UserName],
	[CreateDate],
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	[Email],
	[OrderStatusID]
from Orders
where [OrderID] = @OrderID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Orders_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Orders_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Orders_Delete]
@OrderID varchar(20) = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Orders
where [OrderID] = @OrderID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Partner_Insert]
@PartnerName nvarchar(100) = NULL,
@PartnerNameEn nvarchar(100) = NULL,
@ConvertedPartnerName nvarchar(100) = NULL,
@PartnerImage nvarchar(100) = NULL,
@Address nvarchar(100) = NULL,
@LinkWebsite nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Partner(
	[PartnerName],
	[PartnerNameEn],
	[PartnerImage],
	[Address],
	[LinkWebsite],
	[IsAvailable],
	[Priority]
) values(
	@PartnerName,
	@PartnerNameEn,
	@PartnerImage,
	@Address,
	@LinkWebsite,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @PartnerImage IS NOT NULL
begin
	set @PartnerImage = case when @ConvertedPartnerName is null then '''' else @ConvertedPartnerName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@PartnerImage,len(@PartnerImage) - CHARINDEX(''.'',reverse(@PartnerImage)) + 1,len(@PartnerImage))
	update Partner set [PartnerImage] = @PartnerImage where PartnerID = @ID
	select @OutImageName = @PartnerImage
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Partner_QuickUpdate]
@PartnerID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Partner set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [PartnerID] = @PartnerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PartnerImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PartnerImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PartnerImage_Delete]
@PartnerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Partner set PartnerImage = NULL where [PartnerID] = @PartnerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Partner_Delete]
@PartnerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Partner
where [PartnerID] = @PartnerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Partner_SelectOne]
@PartnerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[PartnerID],
	[PartnerName],
	[PartnerNameEn],
	[PartnerImage],
	[Address],
	[LinkWebsite],
	[CreateDate],
	[IsAvailable],
	[Priority]
from Partner
where [PartnerID] = @PartnerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Partner_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Partner_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Partner_Update]
@PartnerID int = NULL,
@PartnerName nvarchar(100) = NULL,
@PartnerNameEn nvarchar(100) = NULL,
@ConvertedPartnerName nvarchar(100) = NULL,
@PartnerImage nvarchar(100) = NULL,
@Address nvarchar(100) = NULL,
@LinkWebsite nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @PartnerImage IS NOT NULL
	set @PartnerImage = case when @ConvertedPartnerName is null then '''' else @ConvertedPartnerName + ''-'' end + cast(@PartnerID as nvarchar(50)) + substring(@PartnerImage,len(@PartnerImage) - CHARINDEX(''.'',reverse(@PartnerImage)) + 1,len(@PartnerImage))
else
	select @PartnerImage = PartnerImage from Partner where PartnerID = @PartnerID

update Partner set 
	[PartnerName] = @PartnerName,
	[PartnerNameEn] = @PartnerNameEn,
	[PartnerImage] = @PartnerImage,
	[Address] = @Address,
	[LinkWebsite] = @LinkWebsite,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [PartnerID] = @PartnerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_OrderDetail_SelectOne]
@OrderDetailID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[OrderDetailID],
	[OrderID],
	[ProductID],
	[Quantity],
	[Price],
	[CreateBy]
from OrderDetail
where [OrderDetailID] = @OrderDetailID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_OrderDetail_Delete]
@OrderDetailID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from OrderDetail
where [OrderDetailID] = @OrderDetailID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_OrderDetail_Update]
@OrderDetailID int = NULL,
@OrderID varchar(20) = NULL,
@ProductID int = NULL,
@Quantity int = NULL,
@Price money = NULL,
@CreateBy uniqueidentifier = NULL,
@ErrorCode int = NULL OUTPUT
as
select @Price = Price from Product where ProductID = ProductID
update OrderDetail set 
	[OrderID] = @OrderID,
	[ProductID] = @ProductID,
	[Quantity] = @Quantity,
	[Price] = @Price,
	[CreateBy] = @CreateBy
where [OrderDetailID] = @OrderDetailID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderDetail_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderDetail_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_OrderDetail_Insert]
@OrderID varchar(20) = NULL,
@ProductID int = NULL,
@Quantity int = NULL,
@Price money = NULL,
@CreateBy uniqueidentifier = NULL,
@ErrorCode int = NULL OUTPUT
as
select @Price = Price from Product where ProductID = ProductID
insert into OrderDetail(
	[OrderID],
	[ProductID],
	[Quantity],
	[Price],
	[CreateBy]
) values(
	@OrderID,
	@ProductID,
	@Quantity,
	@Price,
	@CreateBy
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Comment_QuickUpdate]
@CommentID int = NULL,
@IsApproved bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

update Comment set 
	[IsApproved] = @IsApproved,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [CommentID] = @CommentID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Comment_Update]
@CommentID int = NULL,
@UserName nvarchar(256) = NULL,
@Link nvarchar(1000) = NULL,
@Title nvarchar(200) = NULL,
@Content nvarchar(MAX) = NULL,
@Priority int = NULL,
@IsApproved bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update Comment set 
	[Link] = @Link,
	[UserName] = @UserName,
	[Title] = @Title,
	[Content] = @Content,
	[UpdateDate] = getdate(),
	[Priority] = @Priority,
	[IsApproved] = @IsApproved,
	[IsAvailable] = @IsAvailable
where [CommentID] = @CommentID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Comment_SelectOne]
@CommentID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[CommentID],
	[UserName],
	[Link],
	[Title],
	[Content],
	[CreateDate],
	[UpdateDate],
	[Priority],
	[IsApproved],
	[IsAvailable]
from Comment
where [CommentID] = @CommentID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Comment_Delete]
@CommentID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Comment
where [CommentID] = @CommentID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Comment_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Comment_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Comment_Insert]
@UserName nvarchar(256) = NULL,
@Link nvarchar(1000) = NULL,
@Title nvarchar(200) = NULL,
@Content nvarchar(MAX) = NULL,
@Priority int = NULL,
@IsApproved bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into Comment(
	[UserName],
	[Link],
	[Title],
	[Content],
	[CreateDate],
	[UpdateDate],
	[Priority],
	[IsApproved],
	[IsAvailable]
) values(
	@UserName,
	@Link,
	@Title,
	@Content,
	getdate(),
	getdate(),
	@Priority,
	@IsApproved,
	@IsAvailable
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProductDownload_Delete]
@ProductDownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProductDownload
where [ProductDownloadID] = @ProductDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductDownload_Update]
@ProductDownloadID int = NULL,
@ProductID int = NULL,
@FileName nvarchar(100) = NULL,
@FileNameEn nvarchar(100) = NULL,
@LinkDownload nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @LinkDownload IS NULL
	select @LinkDownload = LinkDownload from ProductDownload where ProductDownloadID = @ProductDownloadID

update ProductDownload set 
	[ProductID] = @ProductID,
	[FileName] = @FileName,
	[FileNameEn] = @FileNameEn,
	[LinkDownload] = @LinkDownload,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProductDownloadID] = @ProductDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProductDownload_QuickUpdate]
@ProductDownloadID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProductDownload set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProductDownloadID] = @ProductDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductDownload_SelectOne]
@ProductDownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProductDownloadID],
	[ProductID],
	[FileName],
	[FileNameEn],
	[LinkDownload],
	[IsAvailable],
	[Priority]
from ProductDownload
where [ProductDownloadID] = @ProductDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductDownload_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductDownload_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductDownload_Insert]
@ProductID int = NULL,
@FileName nvarchar(100) = NULL,
@FileNameEn nvarchar(100) = NULL,
@LinkDownload nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into ProductDownload(
	[ProductID],
	[FileName],
	[FileNameEn],
	[LinkDownload],
	[IsAvailable],
	[Priority]
) values(
	@ProductID,
	@FileName,
	@FileNameEn,
	@LinkDownload,
	@IsAvailable,
	@Priority
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Product_IsChildrenExist]
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
if(exists(select 1 from ProductImage where ProductID = @ProductID) or exists(select 1 from ProductDownload where ProductID = @ProductID))
	select @exist = 1

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE procedure [dbo].[usp_Product_SelectOne]
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	p.[ProductID],
	p.[ImageName],
	[MetaTittle],
	p.[MetaDescription],
	[ProductName],
	p.[Description],
	p.[Content],
	[Tag],
	p.[MetaTittleEn],
	p.[MetaDescriptionEn],
	[ProductNameEn],
	p.[DescriptionEn],
	p.[ContentEn],
	[TagEn],
	[Price],
	[OtherPrice],
	[SavePrice],
	[Discount],
	[CategoryID],
	p.[ManufacturerID],
	p.[OriginID],
	[InStock],
	[Views],
	[CreateDate],
	[IsHot],
	[IsNew],
	[IsBestSeller],
	[IsSaleOff],
	p.[IsShowOnHomePage],
	p.[IsAvailable],
	[ProductCategoryName],
	[ProductCategoryNameEn],
	[ManufacturerName],
	[ManufacturerNameEn],
	[OriginName],
	[OriginNameEn],
	p.[Priority],
	cast(Rating1 + 2*Rating2 + 3*Rating3 + 4*Rating4 + 5*Rating5 as float)/(Rating1 + Rating2 + Rating3 + Rating4 + Rating5) Rating
from Product p
left join ProductCategory pc on pc.ProductCategoryID = p.CategoryID
left join Manufacturer m on m.ManufacturerID = p.ManufacturerID
left join Origin o on o.OriginID = p.OriginID
left join Rating r on r.ProductID = p.ProductID
where p.[ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR



' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Origin_QuickUpdate]
@OriginID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Origin set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [OriginID] = @OriginID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Origin_Update]
@OriginID int = NULL,
@OriginName nvarchar(100) = NULL,
@OriginNameEn nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Origin set 
	[OriginName] = @OriginName,
	[OriginNameEn] = @OriginNameEn,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [OriginID] = @OriginID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Origin_Insert]
@OriginName nvarchar(100) = NULL,
@OriginNameEn nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into Origin(
	[OriginName],
	[OriginNameEn],
	[IsAvailable],
	[Priority]
) values(
	@OriginName,
	@OriginNameEn,
	@IsAvailable,
	@Priority
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Origin_SelectOne]
@OriginID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[OriginID],
	[OriginName],
	[OriginNameEn],
	[IsAvailable],
	[Priority]
from Origin
where [OriginID] = @OriginID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Origin_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Origin_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Origin_Delete]
@OriginID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Origin
where [OriginID] = @OriginID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProductImage_Delete]
@ProductImageID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProductImage
where [ProductImageID] = @ProductImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductImage_Update]
@ProductImageID int = NULL,
@ImageName nvarchar(100) = NULL,
@ConvertedProductName nvarchar(100) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescripttionEn nvarchar(500) = NULL,
@ProductID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
--if @ImageName IS NOT NULL
--	set @ImageName = case when @ConvertedProductName is null then '''' else @ConvertedProductName + ''-'' end + cast(@ProductImageID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
--else
--	select @ImageName = ImageName from ProductImage where ProductImageID = @ProductImageID

update ProductImage set 
	[ImageName] = @ImageName,
	[Title] = @Title,
	[Descripttion] = @Descripttion,
	[TitleEn] = @TitleEn,
	[DescripttionEn] = @DescripttionEn,
	[ProductID] = @ProductID,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProductImageID] = @ProductImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductImage_SelectOne]
@ProductImageID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProductImageID],
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[ProductID],
	[IsAvailable],
	[Priority]
from ProductImage
where [ProductImageID] = @ProductImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProductImage_QuickUpdate]
@ProductImageID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProductImage set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProductImageID] = @ProductImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImage_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImage_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductImage_Insert]
@ImageName nvarchar(100) = NULL,
@ConvertedProductName nvarchar(100) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescripttionEn nvarchar(500) = NULL,
@ProductID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into ProductImage(
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[ProductID],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@Title,
	@Descripttion,
	@TitleEn,
	@DescripttionEn,
	@ProductID,
	@IsAvailable,
	@Priority
)
select @OutImageName = @ImageName

--DECLARE @ID int
--SELECT @ID = SCOPE_IDENTITY();
--
--if @ImageName IS NOT NULL
--begin
--	set @ImageName = case when @ConvertedProductName is null then '''' else @ConvertedProductName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
--	update ProductImage set [ImageName] = @ImageName where ProductImageID = @ID
--	select @OutImageName = @ImageName
--end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Rating_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Rating_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[usp_Rating_Update]
	@ProductID int,
	@RateID int

	AS
	
	IF NOT EXISTS (SELECT 1 FROM Rating WHERE ProductID = @ProductID)
	BEGIN
		INSERT Rating (ProductID) VALUES(@ProductID)
	END
	
	IF (@RateID = 1)
	BEGIN
		Update Rating SET Rating1 = Rating1 + 1 WHERE ProductID = @ProductID
	END
	IF (@RateID = 2)
	BEGIN
		Update Rating SET Rating2 = Rating2 + 1 WHERE ProductID = @ProductID
	END
	IF (@RateID = 3)
	BEGIN
		Update Rating SET Rating3 = Rating3 + 1 WHERE ProductID = @ProductID
	END
	IF (@RateID = 4)
	BEGIN
		Update Rating SET Rating4 = Rating4 + 1 WHERE ProductID = @ProductID
	END
	IF (@RateID = 5)
	BEGIN
		Update Rating SET Rating5 = Rating5 + 1 WHERE ProductID = @ProductID
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Rating_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Rating_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[usp_Rating_SelectAll]
@ProductID int
AS
SELECT 
Rating1,
Rating2,
Rating3,
Rating4,
Rating5
FROM Rating where ProductID = @ProductID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_UserProfile_SelectOne]
@UserID uniqueidentifier = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	aspnet_Users.[UserID],
	[UserName],
	[Email],
	UserProfile.[CreateDate],
	[LastLoginDate],
	[RoleName] as Role,
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	[Fax],
	[AvatarImage],
	[UpdateDate],
	[IsAvailable]
from aspnet_Users
left join UserProfile on aspnet_Users.UserID = UserProfile.UserID
left join aspnet_Membership on aspnet_Membership.UserID = aspnet_Users.UserID
left join aspnet_UsersInRoles on aspnet_UsersInRoles.UserID = aspnet_Users.UserID
left join aspnet_Roles on aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId
where aspnet_Users.[UserID] = @UserID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_UserProfile_Delete]
@UserID uniqueidentifier = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from UserProfile
where [UserID] = @UserID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfileImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfileImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_UserProfileImage_Delete]
@UserID uniqueidentifier = NULL,
@ErrorCode int = NULL OUTPUT
as
update UserProfile set AvatarImage = NULL where [UserID] = @UserID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_UserProfile_Insert]
@UserID uniqueidentifier = NULL,
@CompanyName nvarchar(200) = NULL,
@FullName nvarchar(200) = NULL,
@Address nvarchar(100) = NULL,
@HomePhone nvarchar(20) = NULL,
@CellPhone nvarchar(20) = NULL,
@Fax nvarchar(20) = NULL,
@AvatarImage nvarchar(200) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
set @AvatarImage = cast(@UserID as varchar(100)) + substring(@AvatarImage,len(@AvatarImage) - CHARINDEX(''.'',reverse(@AvatarImage)) + 1,len(@AvatarImage))

insert into UserProfile(
	[UserID],
	[CompanyName],
	[FullName],
	[Address],
	[HomePhone],
	[CellPhone],
	[Fax],
	[AvatarImage],
	[CreateDate],
	[UpdateDate],
	[IsAvailable]
) values(
	@UserID,
	@CompanyName,
	@FullName,
	@Address,
	@HomePhone,
	@CellPhone,
	@Fax,
	@AvatarImage,
	getdate(),
	NULL,
	@IsAvailable
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserProfile_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_UserProfile_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_UserProfile_Update]
@UserID uniqueidentifier = NULL,
@CompanyName nvarchar(200) = NULL,
@FullName nvarchar(200) = NULL,
@Address nvarchar(100) = NULL,
@HomePhone nvarchar(20) = NULL,
@CellPhone nvarchar(20) = NULL,
@Fax nvarchar(20) = NULL,
@AvatarImage nvarchar(200) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as

if @AvatarImage IS NOT NULL
	set @AvatarImage = cast(@UserID as varchar(100)) + substring(@AvatarImage,len(@AvatarImage) - CHARINDEX(''.'',reverse(@AvatarImage)) + 1,len(@AvatarImage))
else
	select @AvatarImage = AvatarImage from UserProfile where UserID = @UserID

update UserProfile set 
	[CompanyName] = @CompanyName,
	[FullName] = @FullName,
	[Address] = @Address,
	[HomePhone] = @HomePhone,
	[CellPhone] = @CellPhone,
	[Fax] = @Fax,
	[AvatarImage] = @AvatarImage,
	[UpdateDate] = getdate(),
	[IsAvailable] = @IsAvailable
where [UserID] = @UserID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_AdsBanner_SelectOne]
@AdsBannerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[AdsBannerID],
	[FileName],
	[AdsCategoryID],
	[CompanyName],
	[Website],
	[FromDate],
	[ToDate],
	[Priority],
	[IsAvailable],
	Description,
	[Ratio]
from AdsBanner
where [AdsBannerID] = @AdsBannerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_AdsBanner_Delete]
@AdsBannerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from AdsBanner
where [AdsBannerID] = @AdsBannerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[usp_AdsBanner_QuickUpdate]
@AdsBannerID int = NULL,
@Priority int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update AdsBanner set 
	[Priority] = @Priority,
	[IsAvailable] = @IsAvailable
where [AdsBannerID] = @AdsBannerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_AdsBanner_Insert]
@FileName nvarchar(100) = NULL,
@ConvertedAdsBannerName nvarchar(200) = NULL,
@AdsCategoryID int = NULL,
@CompanyName nvarchar(100) = NULL,
@Website nvarchar(200) = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@Priority int = NULL,
@IsAvailable bit = NULL,
@Description nvarchar(MAX) = NULL,
@OutFileName nvarchar(200) = NULL OUTPUT,
@Ratio float = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into AdsBanner(
	[FileName],
	[AdsCategoryID],
	[CompanyName],
	[Website],
	[FromDate],
	[ToDate],
	[Priority],
	[IsAvailable],
	Description,
	[Ratio]
) values(
	@FileName,
	@AdsCategoryID,
	@CompanyName,
	@Website,
	@FromDate,
	@ToDate,
	@Priority,
	@IsAvailable,
	@Description,
	@Ratio
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @FileName IS NOT NULL
begin
	set @FileName = case when @ConvertedAdsBannerName is null then '''' else @ConvertedAdsBannerName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@FileName,len(@FileName) - CHARINDEX(''.'',reverse(@FileName)) + 1,len(@FileName))
	update AdsBanner set [FileName] = @FileName where AdsBannerID = @ID
	select @OutFileName = @FileName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsBanner_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsBanner_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_AdsBanner_Update]
@AdsBannerID int = NULL,
@FileName nvarchar(100) = NULL,
@ConvertedAdsBannerName nvarchar(200) = NULL,
@AdsCategoryID int = NULL,
@CompanyName nvarchar(100) = NULL,
@Website nvarchar(200) = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@Priority int = NULL,
@IsAvailable bit = NULL,
@Ratio float = NULL,
@Description nvarchar(MAX) = NULL,
@ErrorCode int = NULL OUTPUT
as
if @FileName IS NOT NULL
	set @FileName = case when @ConvertedAdsBannerName is null then '''' else @ConvertedAdsBannerName + ''-'' end + cast(@AdsBannerID as nvarchar(50)) + substring(@FileName,len(@FileName) - CHARINDEX(''.'',reverse(@FileName)) + 1,len(@FileName))
else
	select @FileName = FileName from AdsBanner where AdsBannerID = @AdsBannerID

update AdsBanner set 
	[FileName] = @FileName,
	[AdsCategoryID] = @AdsCategoryID,
	[CompanyName] = @CompanyName,
	[Website] = @Website,
	[FromDate] = @FromDate,
	[ToDate] = @ToDate,
	[Priority] = @Priority,
	[IsAvailable] = @IsAvailable,
	[Description] = @Description,
	[Ratio] = @Ratio
where [AdsBannerID] = @AdsBannerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'









CREATE procedure [dbo].[usp_PhotoAlbumCategory_Insert]
@ImageName nvarchar(100) = NULL,
@PhotoAlbumCategoryName nvarchar(100) = NULL,
@PhotoAlbumCategoryNameEn nvarchar(100) = NULL,
@ConvertedPhotoAlbumCategoryName nvarchar(100) = NULL, 
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@PhotoAlbumCategoryID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into PhotoAlbumCategory(
	[ImageName],
	[PhotoAlbumCategoryName],
	[PhotoAlbumCategoryNameEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@PhotoAlbumCategoryName,
	@PhotoAlbumCategoryNameEn,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable,
	@Priority
)

SELECT @PhotoAlbumCategoryID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedPhotoAlbumCategoryName is null then '''' else @ConvertedPhotoAlbumCategoryName + ''-'' end + cast(@PhotoAlbumCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update PhotoAlbumCategory set [ImageName] = @ImageName where PhotoAlbumCategoryID = @PhotoAlbumCategoryID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR









' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PhotoAlbumCategory_Update]
@PhotoAlbumCategoryID int = NULL,
@ImageName nvarchar(100) = NULL,
@PhotoAlbumCategoryName nvarchar(100) = NULL,
@PhotoAlbumCategoryNameEn nvarchar(100) = NULL,
@ConvertedPhotoAlbumCategoryName nvarchar(100) = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedPhotoAlbumCategoryName is null then '''' else @ConvertedPhotoAlbumCategoryName + ''-'' end + cast(@PhotoAlbumCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from PhotoAlbumCategory where PhotoAlbumCategoryID = @PhotoAlbumCategoryID

update PhotoAlbumCategory set 
	[ImageName] = @ImageName,
	[PhotoAlbumCategoryName] = @PhotoAlbumCategoryName,
	[PhotoAlbumCategoryNameEn] = @PhotoAlbumCategoryNameEn,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [PhotoAlbumCategoryID] = @PhotoAlbumCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[usp_PhotoAlbumCategory_Delete]
@PhotoAlbumCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from PhotoAlbumCategory
where [PhotoAlbumCategoryID] = @PhotoAlbumCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PhotoAlbumCategory_SelectOne]
@PhotoAlbumCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[PhotoAlbumCategoryID],
	[ImageName],
	[PhotoAlbumCategoryName],
	[PhotoAlbumCategoryNameEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
from PhotoAlbumCategory
where [PhotoAlbumCategoryID] = @PhotoAlbumCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_PhotoAlbumCategoryImage_Delete]
@PhotoAlbumCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update PhotoAlbumCategory set ImageName = NULL where [PhotoAlbumCategoryID] = @PhotoAlbumCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PhotoAlbumCategory_QuickUpdate]
@PhotoAlbumCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update PhotoAlbumCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [PhotoAlbumCategoryID] = @PhotoAlbumCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_PhotoAlbum_SelectOne]
@PhotoAlbumID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[PhotoAlbumID],
	pa.[ImageName],
	pa.[Title],
	pa.[Descripttion],
	pa.[TitleEn],
	pa.[DescripttionEn],
	pa.[PhotoAlbumCategoryID],
	pa.[IsAvailable],
	pa.[Priority],
	[PhotoAlbumCategoryName],
	[PhotoAlbumCategoryNameEn]
from PhotoAlbum pa
left join PhotoAlbumCategory pac on pac.PhotoAlbumCategoryID = pa.PhotoAlbumCategoryID
where [PhotoAlbumID] = @PhotoAlbumID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_MenuPosition_Insert]
@MenuPositionName nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into MenuPosition(
	[MenuPositionName],
	[IsAvailable]
) values(
	@MenuPositionName,
	@IsAvailable
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_MenuPosition_SelectOne]
@MenuPositionID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[MenuPositionID],
	[MenuPositionName],
	[IsAvailable]
from MenuPosition
where [MenuPositionID] = @MenuPositionID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_MenuPosition_Delete]
@MenuPositionID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from MenuPosition
where [MenuPositionID] = @MenuPositionID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuPosition_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuPosition_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_MenuPosition_Update]
@MenuPositionID int = NULL,
@MenuPositionName nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update MenuPosition set 
	[MenuPositionName] = @MenuPositionName,
	[IsAvailable] = @IsAvailable
where [MenuPositionID] = @MenuPositionID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Visitor_Edit]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Visitor_Edit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[usp_Visitor_Edit]
as
begin
	declare @SoTruyCapGanNhat bigint
	DECLARE @Count int
	SELECT @Count = Count(*) FROM Visitor ttk
	IF @Count IS NULL SET @Count = 0
	IF @Count = 0
		INSERT INTO Visitor(CreateDate, Visitors)
		VALUES (GetDate(),1)
	ELSE
		BEGIN
			DECLARE @ThoiGianGanNhat datetime
			SELECT @SoTruyCapGanNhat=ttk.Visitors, @ThoiGianGanNhat=ttk.CreateDate
				FROM Visitor ttk WHERE ttk.VisitorID=(SELECT Max(ttk2.VisitorID) FROM Visitor ttk2)
			IF @SoTruyCapGanNhat IS NULL SET @SoTruyCapGanNhat = 0
			IF @ThoiGianGanNhat IS NULL SET @ThoiGianGanNhat = getdate()

		-- Kiểm tra xem lần truy cập này có phải đã sang ngày mới không (Qua thời điểm 12h00)
		-- Nếu chưa sang ngày mới thì cập nhật lại Visitors
			IF Day(@ThoiGianGanNhat)=Day(GETDATE())
				BEGIN
					UPDATE Visitor
					SET
						Visitors = @SoTruyCapGanNhat + 1,
						CreateDate = GetDate()
					WHERE VisitorID=(SELECT Max(ttk2.VisitorID) FROM Visitor ttk2)
				END

		-- Nếu đã sang ngày mới thì thêm mới bản ghi, Visitors bắt đầu lại là 1
			ELSE
				BEGIN
					INSERT INTO Visitor(CreateDate, Visitors)
					VALUES (GetDate(),1)
				END
		END

		-- Thống kê Hom nay, Hom qua, Tuan nay, Tuan Truoc, Thang nay, Thang Truoc
		DECLARE @HomNay INT
		SET @HomNay = datepart(dw, GetDate())
		SELECT @SoTruyCapGanNhat=ttk.Visitors, @ThoiGianGanNhat=ttk.CreateDate
			FROM Visitor ttk WHERE ttk.VisitorID=(SELECT Max(ttk2.VisitorID) FROM Visitor ttk2)

		--Tính VisitorsHomQua
		DECLARE @VisitorsHomQua bigint
		SELECT @VisitorsHomQua=isnull(Visitors,0) FROM Visitor
			WHERE CONVERT(nvarchar(20),CreateDate,103)=CONVERT(nvarchar(20),GETDATE()-1,103)
		IF @VisitorsHomQua IS null SET @VisitorsHomQua = 0
		
		-- Tính Ngày đầu tuần này
		DECLARE @DauTuanNay datetime
        SET @DauTuanNay= DATEADD(wk, DATEDIFF(wk, 6, GetDate()), 6)
        -- Tính Ngày đầu của tuần trước Tính từ thời điểm 00:00:))
        DECLARE @NgayDauTuanTruoc datetime
        SET @NgayDauTuanTruoc = Cast(CONVERT(nvarchar(30),DATEADD(dd, -(@HomNay+6), GetDate()),101) AS datetime)
        -- Tính ngày cuối tuần trước tính đến 24h ngày cuối tuần
        DECLARE @NgayCuoiTuanTruoc datetime
        SET @NgayCuoiTuanTruoc = Cast(CONVERT(nvarchar(30),DATEADD(dd, -@HomNay, GetDate()),101) +'' 23:59:59'' AS datetime)
         
        -- Tính số truy cập tuần này
        DECLARE @VisitorsTuanNay bigint
        SELECT @VisitorsTuanNay=isnull(Sum(Visitors),0) FROM Visitor ttk
            WHERE ttk.CreateDate BETWEEN @DauTuanNay AND getdate()
          
        -- Tính số truy cập tuần trước
        DECLARE @SoLanTruyCapTuanTruoc bigint
        SELECT @SoLanTruyCapTuanTruoc = isnull(sum(Visitors),0)  FROM Visitor ttk
            WHERE ttk.CreateDate BETWEEN @NgayDauTuanTruoc AND @NgayCuoiTuanTruoc
         
        -- Tính số truy cập tháng này
        DECLARE @VisitorsThangNay bigint
        SELECT @VisitorsThangNay=isnull(Sum(Visitors),0)
            FROM Visitor ttk WHERE MONTH(ttk.CreateDate)=MONTH(GETDATE())
         
        -- Tính số truy cập tháng trước
        DECLARE @VisitorsThangTruoc bigint
        SELECT @VisitorsThangTruoc=isnull(Sum(Visitors),0)
            FROM Visitor ttk WHERE MONTH(ttk.CreateDate)=MONTH(GETDATE())-1
         
        -- Tính tổng số
        DECLARE @TongSo bigint
        SELECT  @TongSo=isnull(Sum(Visitors),0) FROM Visitor ttk
         
        SELECT @SoTruyCapGanNhat AS HomNay,
        @VisitorsHomQua AS HomQua,
        @VisitorsTuanNay AS TuanNay,
        @SoLanTruyCapTuanTruoc AS TuanTruoc,
        @VisitorsThangNay AS ThangNay,
        @VisitorsThangTruoc AS ThangTruoc,
        @TongSo AS TatCa
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Newsletter_Delete]
@Email nvarchar(200) = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Newsletter
where [Email] = @Email

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Newsletter_SelectOne]
@Email nvarchar(200) = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[Email]
from Newsletter
where [Email] = @Email

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_Newsletter_Insert]
@Email nvarchar(200) = NULL,
@ErrorCode int = NULL OUTPUT
as
if not exists(select 1 from Newsletter where Email = @Email)
insert into Newsletter(
	[Email]
) values(
	@Email
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Newsletter_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Newsletter_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_Newsletter_Update]
@Email nvarchar(200) = NULL,
@ErrorCode int = NULL OUTPUT
as
update Newsletter set 
	[Email] = @Email
where [Email] = @Email

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[usp_WishList_SelectOne]
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProductID],
	[UserName],
	[Quantity],
	[Price],
	[CreateDate]
from WishList
where [ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_WishList_Delete]
@ProductID int = NULL,
@UserName nvarchar(256) = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from WishList
where [ProductID] = @ProductID and [UserName] = @UserName

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_WishList_Insert]
@ProductID int = NULL,
@UserName nvarchar(256) = NULL,
@Quantity int = NULL,
@Price money = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into WishList(
	[ProductID],
	[UserName],
	[Quantity],
	[Price],
	[CreateDate]
) values(
	@ProductID,
	@UserName,
	@Quantity,
	@Price,
	getdate()
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_WishList_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_WishList_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_WishList_Update]
@ProductID int = NULL,
@UserName nvarchar(256) = NULL,
@Quantity int = NULL,
@Price money = NULL,
@ErrorCode int = NULL OUTPUT
as
update WishList set 
	[ProductID] = @ProductID,
	[UserName] = @UserName,
	[Quantity] = @Quantity,
	[Price] = @Price
where [ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductCategory_IsChildrenExist]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from ProductCategory where ParentID = @ProductCategoryID

if @exist is null
	select @exist = 1 from Product where CategoryID = @ProductCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductCategory_DownOrder]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextProductCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ProductCategory where 
ProductCategoryID = @ProductCategoryID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from ProductCategory where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from ProductCategory 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextProductCategoryID = ProductCategoryID
	from ProductCategory 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from ProductCategory where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from ProductCategory 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextProductCategoryID = ProductCategoryID
	from ProductCategory 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update ProductCategory 
set [SortOrder] = @CurrentSortOrder
where [ProductCategoryID] = @ProductCategoryID

update ProductCategory 
set [SortOrder] = @NextSortOrder
where [ProductCategoryID] = @NextProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProductCategory_SelectOne]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProductCategoryID],
	[ProductCategoryName],
	[ProductCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsAvailable]
from ProductCategory
where [ProductCategoryID] = @ProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductCategory_UpOrder]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevProductCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ProductCategory where 
ProductCategoryID = @ProductCategoryID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ProductCategory 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevProductCategoryID = ProductCategoryID
	from ProductCategory 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ProductCategory 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevProductCategoryID = ProductCategoryID
	from ProductCategory 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update ProductCategory 
set [SortOrder] = @CurrentSortOrder
where [ProductCategoryID] = @ProductCategoryID

update ProductCategory 
set [SortOrder] = @PrevSortOrder
where [ProductCategoryID] = @PrevProductCategoryID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @ProductCategoryID
--print @PrevProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProductCategory_Insert]
@ProductCategoryName nvarchar(100) = NULL,
@ProductCategoryNameEn nvarchar(100) = NULL,
@ConvertedProductCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from ProductCategory where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from ProductCategory where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into ProductCategory(
	[ProductCategoryName],
	[ProductCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@ProductCategoryName,
	@ProductCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedProductCategoryName is null then '''' else @ConvertedProductCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update ProductCategory set [ImageName] = @ImageName where ProductCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProductCategory_Delete]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProductCategory
where [ProductCategoryID] = @ProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductCategory_QuickUpdate]
@ProductCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProductCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ProductCategoryID] = @ProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_RelatedProductCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_RelatedProductCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ufn_RelatedProductCategory_SelectAll] (
@RootProductCategoryID int
)
RETURNS @Reached TABLE(ProductCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootProductCategoryID)
	
	--find child nodes
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (ProductCategoryID) 
		select distinct p.ProductCategoryID
		from ProductCategory p inner join @Reached r on r.ProductCategoryID = p.ParentID
		where p.ProductCategoryID not in (select ProductCategoryID from @Reached)
	end
	
	--find parent nodes
	DECLARE @parentID int
	SELECT @parentID = parentID
	FROM ProductCategory
	WHERE ProductCategoryID = @RootProductCategoryID

	WHILE @parentID is not NULL
	BEGIN
		insert into @Reached values(@parentID)

		SELECT @RootProductCategoryID = @parentID

		SELECT @parentID = parentID
		FROM ProductCategory
		WHERE ProductCategoryID = @RootProductCategoryID
	END

	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProductCategory_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[ProductCategoryID],
	[ProductCategoryName],
	[ProductCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 ProductCategoryName from ProductCategory b where b.ProductCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from ProductCategory a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProductCategory_Update]
@ProductCategoryID int = NULL,
@ProductCategoryName nvarchar(100) = NULL,
@ProductCategoryNameEn nvarchar(100) = NULL,
@ConvertedProductCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from ProductCategory where ProductCategoryID = @ProductCategoryID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from ProductCategory where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from ProductCategory where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from ProductCategory where ProductCategoryID = @ProductCategoryID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedProductCategoryName is null then '''' else @ConvertedProductCategoryName + ''-'' end + cast(@ProductCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from ProductCategory where ProductCategoryID = @ProductCategoryID

update ProductCategory set 
	[ProductCategoryName] = @ProductCategoryName,
	[ProductCategoryNameEn] = @ProductCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ProductCategoryID] = @ProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductCategoryForEdit_SelectAll]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProductCategoryID],
	[ProductCategoryName],
	[ProductCategoryNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 ProductCategoryName from ProductCategory b where b.ProductCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from ProductCategory a
where [ProductCategoryID] <> @ProductCategoryID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildProductCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildProductCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ufn_ChildProductCategory_SelectAll] (
@RootProductCategoryID int
)
RETURNS @Reached TABLE(ProductCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootProductCategoryID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (ProductCategoryID) 
		select distinct p.ProductCategoryID
		from ProductCategory p inner join @Reached r on r.ProductCategoryID = p.ParentID
		where p.ProductCategoryID not in (select ProductCategoryID from @Reached)
	end
	return 
END
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ProductCategoryRootID_SelectOne]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ProductCategoryRootID_SelectOne]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ufn_ProductCategoryRootID_SelectOne] (
@CurrentProductCategoryID int
)
RETURNS int
AS
BEGIN
	DECLARE @parentID int
	SELECT @parentID = parentID
	FROM ProductCategory
	WHERE ProductCategoryID = @CurrentProductCategoryID

	WHILE @parentID is not NULL
	BEGIN
		SELECT @CurrentProductCategoryID = @parentID

		SELECT @parentID = parentID
		FROM ProductCategory
		WHERE ProductCategoryID = @CurrentProductCategoryID
	END

	return @CurrentProductCategoryID
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductCategoryImage_Delete]
@ProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProductCategory set ImageName = NULL where [ProductCategoryID] = @ProductCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[usp_ProductCategoryHierarchyToTop_SelectAll]
@CurrentProductCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
--find parent nodes
DECLARE @Reached TABLE(Number int,ProductCategoryID int)
DECLARE @parentID int
Declare @Number int

SET @Number = 0
SELECT @parentID = parentID
FROM ProductCategory
WHERE ProductCategoryID = @CurrentProductCategoryID

insert into @Reached values(@Number, @CurrentProductCategoryID)

WHILE @parentID is not NULL
BEGIN
	set @Number = @Number + 1
	insert into @Reached values(@Number, @parentID)

	SELECT @CurrentProductCategoryID = @parentID

	SELECT @parentID = parentID
	FROM ProductCategory
	WHERE ProductCategoryID = @CurrentProductCategoryID
END

select * from @Reached r
left join ProductCategory p on r.ProductCategoryID = p.ProductCategoryID
order by Number desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ArticleCategory_IsChildrenExist]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from ArticleCategory where ParentID = @ArticleCategoryID

if @exist is null
	select @exist = 1 from Article where ArticleCategoryID = @ArticleCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Article_SelectOne]
@ArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ArticleID],
	a.[ImageName],
	a.[MetaTittle],
	a.[MetaDescription],
	[ArticleTitle],
	a.[Content],
	a.[Description],
	[Tag],
	a.[MetaTittleEn],
	a.[MetaDescriptionEn],
	a.[ArticleTitleEn],
	a.[DescriptionEn],
	a.[ContenteN],
	[TagEn],
	a.[ArticleCategoryID],
	[CreateDate],
	a.[IsShowOnHomePage],
	a.[IsHot],
	a.[IsNew],
	a.[IsAvailable],
	[ArticleCategoryName],
	[ArticleCategoryNameEn],
	a.[Priority]
FROM Article a
left join ArticleCategory ac on ac.ArticleCategoryID = a.ArticleCategoryID
where a.[ArticleID] = @ArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildArticleCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildArticleCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ufn_ChildArticleCategory_SelectAll] (
@RootArticleCategoryID int
)
RETURNS @Reached TABLE(ArticleCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootArticleCategoryID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (ArticleCategoryID) 
		select distinct p.ArticleCategoryID
		from ArticleCategory p inner join @Reached r on r.ArticleCategoryID = p.ParentID
		where p.ArticleCategoryID not in (select ArticleCategoryID from @Reached)
	end
	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ArticleCategoryImage_Delete]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ArticleCategory set ImageName = NULL where [ArticleCategoryID] = @ArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ArticleCategory_DownOrder]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextArticleCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ArticleCategory where 
ArticleCategoryID = @ArticleCategoryID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from ArticleCategory where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from ArticleCategory 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextArticleCategoryID = ArticleCategoryID
	from ArticleCategory 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from ArticleCategory where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from ArticleCategory 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextArticleCategoryID = ArticleCategoryID
	from ArticleCategory 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update ArticleCategory 
set [SortOrder] = @CurrentSortOrder
where [ArticleCategoryID] = @ArticleCategoryID

update ArticleCategory 
set [SortOrder] = @NextSortOrder
where [ArticleCategoryID] = @NextArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_ArticleCategory_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[ArticleCategoryID],
	[ArticleCategoryName],
	[ArticleCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 ArticleCategoryName from ArticleCategory b where b.ArticleCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from ArticleCategory a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ArticleCategory_QuickUpdate]
@ArticleCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update ArticleCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ArticleCategoryID] = @ArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_ArticleCategory_SelectOne]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ArticleCategoryID],
	[ArticleCategoryName],
	[ArticleCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsAvailable]
from ArticleCategory
where [ArticleCategoryID] = @ArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_ArticleCategory_Update]
@ArticleCategoryID int = NULL,
@ArticleCategoryName nvarchar(100) = NULL,
@ArticleCategoryNameEn nvarchar(100) = NULL,
@ConvertedArticleCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from ArticleCategory where ArticleCategoryID = @ArticleCategoryID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from ArticleCategory where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from ArticleCategory where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from ArticleCategory where ArticleCategoryID = @ArticleCategoryID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedArticleCategoryName is null then '''' else @ConvertedArticleCategoryName + ''-'' end + cast(@ArticleCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from ArticleCategory where ArticleCategoryID = @ArticleCategoryID

update ArticleCategory set 
	[ArticleCategoryName] = @ArticleCategoryName,
	[ArticleCategoryNameEn] = @ArticleCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ArticleCategoryID] = @ArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[usp_ArticleCategoryHierarchyToTop_SelectAll]
@CurrentArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
--find parent nodes
DECLARE @Reached TABLE(Number int,ArticleCategoryID int)
DECLARE @parentID int
Declare @Number int

SET @Number = 0
SELECT @parentID = parentID
FROM ArticleCategory
WHERE ArticleCategoryID = @CurrentArticleCategoryID

insert into @Reached values(@Number, @CurrentArticleCategoryID)

WHILE @parentID is not NULL
BEGIN
	set @Number = @Number + 1
	insert into @Reached values(@Number, @parentID)

	SELECT @CurrentArticleCategoryID = @parentID

	SELECT @parentID = parentID
	FROM ArticleCategory
	WHERE ArticleCategoryID = @CurrentArticleCategoryID
END

select * from @Reached r
left join ArticleCategory p on r.ArticleCategoryID = p.ArticleCategoryID
order by Number desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_ArticleCategoryForEdit_SelectAll]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ArticleCategoryID],
	[ArticleCategoryName],
	[ArticleCategoryNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 ArticleCategoryName from ArticleCategory b where b.ArticleCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from ArticleCategory a
where [ArticleCategoryID] <> @ArticleCategoryID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ArticleCategory_Delete]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ArticleCategory
where [ArticleCategoryID] = @ArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_ArticleCategory_Insert]
@ArticleCategoryName nvarchar(100) = NULL,
@ArticleCategoryNameEn nvarchar(100) = NULL,
@ConvertedArticleCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from ArticleCategory where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from ArticleCategory where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into ArticleCategory(
	[ArticleCategoryName],
	[ArticleCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@ArticleCategoryName,
	@ArticleCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedArticleCategoryName is null then '''' else @ConvertedArticleCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update ArticleCategory set [ImageName] = @ImageName where ArticleCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleCategory_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ArticleCategory_UpOrder]
@ArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevArticleCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ArticleCategory where 
ArticleCategoryID = @ArticleCategoryID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ArticleCategory 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevArticleCategoryID = ArticleCategoryID
	from ArticleCategory 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ArticleCategory 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevArticleCategoryID = ArticleCategoryID
	from ArticleCategory 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update ArticleCategory 
set [SortOrder] = @CurrentSortOrder
where [ArticleCategoryID] = @ArticleCategoryID

update ArticleCategory 
set [SortOrder] = @PrevSortOrder
where [ArticleCategoryID] = @PrevArticleCategoryID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @ArticleCategoryID
--print @PrevArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategory_UpOrder]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevCareerCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from CareerCategory where 
CareerCategoryID = @CareerCategoryID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from CareerCategory 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevCareerCategoryID = CareerCategoryID
	from CareerCategory 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from CareerCategory 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevCareerCategoryID = CareerCategoryID
	from CareerCategory 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update CareerCategory 
set [SortOrder] = @CurrentSortOrder
where [CareerCategoryID] = @CareerCategoryID

update CareerCategory 
set [SortOrder] = @PrevSortOrder
where [CareerCategoryID] = @PrevCareerCategoryID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @CareerCategoryID
--print @PrevCareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategoryForEdit_SelectAll]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[CareerCategoryID],
	[CareerCategoryName],
	[CareerCategoryNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 CareerCategoryName from CareerCategory b where b.CareerCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from CareerCategory a
where [CareerCategoryID] <> @CareerCategoryID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategory_DownOrder]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextCareerCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from CareerCategory where 
CareerCategoryID = @CareerCategoryID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from CareerCategory where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from CareerCategory 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextCareerCategoryID = CareerCategoryID
	from CareerCategory 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from CareerCategory where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from CareerCategory 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextCareerCategoryID = CareerCategoryID
	from CareerCategory 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update CareerCategory 
set [SortOrder] = @CurrentSortOrder
where [CareerCategoryID] = @CareerCategoryID

update CareerCategory 
set [SortOrder] = @NextSortOrder
where [CareerCategoryID] = @NextCareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategoryImage_Delete]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update CareerCategory set ImageName = NULL where [CareerCategoryID] = @CareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_CareerCategory_SelectOne]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[CareerCategoryID],
	[CareerCategoryName],
	[CareerCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsAvailable]
from CareerCategory
where [CareerCategoryID] = @CareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_CareerCategory_Update]
@CareerCategoryID int = NULL,
@CareerCategoryName nvarchar(100) = NULL,
@CareerCategoryNameEn nvarchar(100) = NULL,
@ConvertedCareerCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from CareerCategory where CareerCategoryID = @CareerCategoryID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from CareerCategory where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from CareerCategory where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from CareerCategory where CareerCategoryID = @CareerCategoryID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedCareerCategoryName is null then '''' else @ConvertedCareerCategoryName + ''-'' end + cast(@CareerCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from CareerCategory where CareerCategoryID = @CareerCategoryID

update CareerCategory set 
	[CareerCategoryName] = @CareerCategoryName,
	[CareerCategoryNameEn] = @CareerCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [CareerCategoryID] = @CareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_CareerCategory_Insert]
@CareerCategoryName nvarchar(100) = NULL,
@CareerCategoryNameEn nvarchar(100) = NULL,
@ConvertedCareerCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from CareerCategory where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from CareerCategory where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into CareerCategory(
	[CareerCategoryName],
	[CareerCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@CareerCategoryName,
	@CareerCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedCareerCategoryName is null then '''' else @ConvertedCareerCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update CareerCategory set [ImageName] = @ImageName where CareerCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_CareerCategory_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[CareerCategoryID],
	[CareerCategoryName],
	[CareerCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 CareerCategoryName from CareerCategory b where b.CareerCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from CareerCategory a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[usp_CareerCategoryHierarchyToTop_SelectAll]
@CurrentCareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
--find parent nodes
DECLARE @Reached TABLE(Number int,CareerCategoryID int)
DECLARE @parentID int
Declare @Number int

SET @Number = 0
SELECT @parentID = parentID
FROM CareerCategory
WHERE CareerCategoryID = @CurrentCareerCategoryID

insert into @Reached values(@Number, @CurrentCareerCategoryID)

WHILE @parentID is not NULL
BEGIN
	set @Number = @Number + 1
	insert into @Reached values(@Number, @parentID)

	SELECT @CurrentCareerCategoryID = @parentID

	SELECT @parentID = parentID
	FROM CareerCategory
	WHERE CareerCategoryID = @CurrentCareerCategoryID
END

select * from @Reached r
left join CareerCategory p on r.CareerCategoryID = p.CareerCategoryID
order by Number desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategory_Delete]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from CareerCategory
where [CareerCategoryID] = @CareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategory_QuickUpdate]
@CareerCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update CareerCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [CareerCategoryID] = @CareerCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildCareerCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildCareerCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create FUNCTION [dbo].[ufn_ChildCareerCategory_SelectAll] (
@RootCareerCategoryID int
)
RETURNS @Reached TABLE(CareerCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootCareerCategoryID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (CareerCategoryID) 
		select distinct p.CareerCategoryID
		from CareerCategory p inner join @Reached r on r.CareerCategoryID = p.ParentID
		where p.CareerCategoryID not in (select CareerCategoryID from @Reached)
	end
	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Career_SelectOne]
@CareerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[CareerID],
	c.[ImageName],
	c.[MetaTittle],
	c.[MetaDescription],
	[CareerTitle],
	c.[Content],
	c.[Description],
	[Tag],
	c.[MetaTittleEn],
	c.[MetaDescriptionEn],
	[CareerTitleEn],
	c.[DescriptionEn],
	c.[ContentEn],
	[TagEn],
	c.[CareerCategoryID],
	[CreateDate],
	c.[IsShowOnHomePage],
	c.[IsAvailable],
	[CareerCategoryName],
	[CareerCategoryNameEn],
	c.[Priority]
FROM Career c
left join CareerCategory ac on ac.CareerCategoryID = c.CareerCategoryID
where c.[CareerID] = @CareerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerCategory_IsChildrenExist]
@CareerCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from CareerCategory where ParentID = @CareerCategoryID

if @exist is null
	select @exist = 1 from Career where CareerCategoryID = @CareerCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProjectCategory_Update]
@ProjectCategoryID int = NULL,
@ProjectCategoryName nvarchar(100) = NULL,
@ProjectCategoryNameEn nvarchar(100) = NULL,
@ConvertedProjectCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from ProjectCategory where ProjectCategoryID = @ProjectCategoryID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from ProjectCategory where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from ProjectCategory where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from ProjectCategory where ProjectCategoryID = @ProjectCategoryID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedProjectCategoryName is null then '''' else @ConvertedProjectCategoryName + ''-'' end + cast(@ProjectCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from ProjectCategory where ProjectCategoryID = @ProjectCategoryID

update ProjectCategory set 
	[ProjectCategoryName] = @ProjectCategoryName,
	[ProjectCategoryNameEn] = @ProjectCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ProjectCategoryID] = @ProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[usp_ProjectCategoryHierarchyToTop_SelectAll]
@CurrentProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
--find parent nodes
DECLARE @Reached TABLE(Number int,ProjectCategoryID int)
DECLARE @parentID int
Declare @Number int

SET @Number = 0
SELECT @parentID = parentID
FROM ProjectCategory
WHERE ProjectCategoryID = @CurrentProjectCategoryID

insert into @Reached values(@Number, @CurrentProjectCategoryID)

WHILE @parentID is not NULL
BEGIN
	set @Number = @Number + 1
	insert into @Reached values(@Number, @parentID)

	SELECT @CurrentProjectCategoryID = @parentID

	SELECT @parentID = parentID
	FROM ProjectCategory
	WHERE ProjectCategoryID = @CurrentProjectCategoryID
END

select * from @Reached r
left join ProjectCategory p on r.ProjectCategoryID = p.ProjectCategoryID
order by Number desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategory_DownOrder]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextProjectCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ProjectCategory where 
ProjectCategoryID = @ProjectCategoryID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from ProjectCategory where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from ProjectCategory 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextProjectCategoryID = ProjectCategoryID
	from ProjectCategory 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from ProjectCategory where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from ProjectCategory 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextProjectCategoryID = ProjectCategoryID
	from ProjectCategory 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update ProjectCategory 
set [SortOrder] = @CurrentSortOrder
where [ProjectCategoryID] = @ProjectCategoryID

update ProjectCategory 
set [SortOrder] = @NextSortOrder
where [ProjectCategoryID] = @NextProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildProjectCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildProjectCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create FUNCTION [dbo].[ufn_ChildProjectCategory_SelectAll] (
@RootProjectCategoryID int
)
RETURNS @Reached TABLE(ProjectCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootProjectCategoryID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (ProjectCategoryID) 
		select distinct p.ProjectCategoryID
		from ProjectCategory p inner join @Reached r on r.ProjectCategoryID = p.ParentID
		where p.ProjectCategoryID not in (select ProjectCategoryID from @Reached)
	end
	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategoryForEdit_SelectAll]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectCategoryID],
	[ProjectCategoryName],
	[ProjectCategoryNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 ProjectCategoryName from ProjectCategory b where b.ProjectCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from ProjectCategory a
where [ProjectCategoryID] <> @ProjectCategoryID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProjectCategory_Insert]
@ProjectCategoryName nvarchar(100) = NULL,
@ProjectCategoryNameEn nvarchar(100) = NULL,
@ConvertedProjectCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from ProjectCategory where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from ProjectCategory where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into ProjectCategory(
	[ProjectCategoryName],
	[ProjectCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@ProjectCategoryName,
	@ProjectCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedProjectCategoryName is null then '''' else @ConvertedProjectCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update ProjectCategory set [ImageName] = @ImageName where ProjectCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProjectCategory_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectCategoryID],
	[ProjectCategoryName],
	[ProjectCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 ProjectCategoryName from ProjectCategory b where b.ProjectCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from ProjectCategory a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategory_Delete]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProjectCategory
where [ProjectCategoryID] = @ProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategoryImage_Delete]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProjectCategory set ImageName = NULL where [ProjectCategoryID] = @ProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ProjectCategory_SelectOne]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectCategoryID],
	[ProjectCategoryName],
	[ProjectCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsAvailable]
from ProjectCategory
where [ProjectCategoryID] = @ProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategory_UpOrder]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevProjectCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ProjectCategory where 
ProjectCategoryID = @ProjectCategoryID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ProjectCategory 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevProjectCategoryID = ProjectCategoryID
	from ProjectCategory 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ProjectCategory 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevProjectCategoryID = ProjectCategoryID
	from ProjectCategory 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update ProjectCategory 
set [SortOrder] = @CurrentSortOrder
where [ProjectCategoryID] = @ProjectCategoryID

update ProjectCategory 
set [SortOrder] = @PrevSortOrder
where [ProjectCategoryID] = @PrevProjectCategoryID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @ProjectCategoryID
--print @PrevProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategory_QuickUpdate]
@ProjectCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProjectCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ProjectCategoryID] = @ProjectCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Project_SelectOne]
@ProjectID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectID],
	p.[MetaTittle],
	p.[MetaDescription],
	[ProjectTitle],
	p.[ImageName],
	p.[Description],
	p.[Content],
	p.[MetaTittleEn],
	p.[MetaDescriptionEn],
	[ProjectTitleEn],
	p.[DescriptionEn],
	p.[ContentEn],
	[TagEn],
	p.[ProjectCategoryID],
	[ProjectCategoryName],
	[ProjectCategoryNameEn],
	[CreateDate],
	[Tag],
	p.[IsShowOnHomePage],
	p.[IsAvailable],
	p.[Priority]
from Project p
left join ProjectCategory pc on pc.ProjectCategoryID = p.ProjectCategoryID
where [ProjectID] = @ProjectID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectCategory_IsChildrenExist]
@ProjectCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from ProjectCategory where ParentID = @ProjectCategoryID

if @exist is null
	select @exist = 1 from Project where ProjectCategoryID = @ProjectCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ServiceCategory_SelectOne]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ServiceCategoryID],
	[ServiceCategoryName],
	[ServiceCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsAvailable]
from ServiceCategory
where [ServiceCategoryID] = @ServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategoryHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategoryHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[usp_ServiceCategoryHierarchyToTop_SelectAll]
@CurrentServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
--find parent nodes
DECLARE @Reached TABLE(Number int,ServiceCategoryID int)
DECLARE @parentID int
Declare @Number int

SET @Number = 0
SELECT @parentID = parentID
FROM ServiceCategory
WHERE ServiceCategoryID = @CurrentServiceCategoryID

insert into @Reached values(@Number, @CurrentServiceCategoryID)

WHILE @parentID is not NULL
BEGIN
	set @Number = @Number + 1
	insert into @Reached values(@Number, @parentID)

	SELECT @CurrentServiceCategoryID = @parentID

	SELECT @parentID = parentID
	FROM ServiceCategory
	WHERE ServiceCategoryID = @CurrentServiceCategoryID
END

select * from @Reached r
left join ServiceCategory p on r.ServiceCategoryID = p.ServiceCategoryID
order by Number desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceCategory_UpOrder]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevServiceCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ServiceCategory where 
ServiceCategoryID = @ServiceCategoryID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ServiceCategory 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevServiceCategoryID = ServiceCategoryID
	from ServiceCategory 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from ServiceCategory 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevServiceCategoryID = ServiceCategoryID
	from ServiceCategory 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update ServiceCategory 
set [SortOrder] = @CurrentSortOrder
where [ServiceCategoryID] = @ServiceCategoryID

update ServiceCategory 
set [SortOrder] = @PrevSortOrder
where [ServiceCategoryID] = @PrevServiceCategoryID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @ServiceCategoryID
--print @PrevServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ServiceCategory_Insert]
@ServiceCategoryName nvarchar(100) = NULL,
@ServiceCategoryNameEn nvarchar(100) = NULL,
@ConvertedServiceCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from ServiceCategory where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from ServiceCategory where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into ServiceCategory(
	[ServiceCategoryName],
	[ServiceCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@ServiceCategoryName,
	@ServiceCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedServiceCategoryName is null then '''' else @ConvertedServiceCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update ServiceCategory set [ImageName] = @ImageName where ServiceCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ServiceCategory_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[ServiceCategoryID],
	[ServiceCategoryName],
	[ServiceCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 ServiceCategoryName from ServiceCategory b where b.ServiceCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from ServiceCategory a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildServiceCategory_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildServiceCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ufn_ChildServiceCategory_SelectAll] (
@RootServiceCategoryID int
)
RETURNS @Reached TABLE(ServiceCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootServiceCategoryID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (ServiceCategoryID) 
		select distinct p.ServiceCategoryID
		from ServiceCategory p inner join @Reached r on r.ServiceCategoryID = p.ParentID
		where p.ServiceCategoryID not in (select ServiceCategoryID from @Reached)
	end
	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceCategory_DownOrder]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextServiceCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from ServiceCategory where 
ServiceCategoryID = @ServiceCategoryID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from ServiceCategory where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from ServiceCategory 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextServiceCategoryID = ServiceCategoryID
	from ServiceCategory 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from ServiceCategory where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from ServiceCategory 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextServiceCategoryID = ServiceCategoryID
	from ServiceCategory 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update ServiceCategory 
set [SortOrder] = @CurrentSortOrder
where [ServiceCategoryID] = @ServiceCategoryID

update ServiceCategory 
set [SortOrder] = @NextSortOrder
where [ServiceCategoryID] = @NextServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategoryForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceCategoryForEdit_SelectAll]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ServiceCategoryID],
	[ServiceCategoryName],
	[ServiceCategoryNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 ServiceCategoryName from ServiceCategory b where b.ServiceCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from ServiceCategory a
where [ServiceCategoryID] <> @ServiceCategoryID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Service_SelectOne]
@ServiceID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ServiceID],
	a.[ImageName],
	a.[MetaTittle],
	a.[MetaDescription],
	[ServiceTitle],
	a.[Content],
	a.[Description],
	[Tag],
	a.[MetaTittleEn],
	a.[MetaDescriptionEn],
	[ServiceTitleEn],
	a.[DescriptionEn],
	a.[ContenteN],
	[TagEn],
	a.[ServiceCategoryID],
	[CreateDate],
	a.[IsShowOnHomePage],
	a.[IsHot],
	a.[IsNew],
	a.[IsAvailable],
	[ServiceCategoryName],
	[ServiceCategoryNameEn],
	a.[Priority]
FROM Service a
left join ServiceCategory ac on ac.ServiceCategoryID = a.ServiceCategoryID
where a.[ServiceID] = @ServiceID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceCategory_QuickUpdate]
@ServiceCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update ServiceCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ServiceCategoryID] = @ServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceCategory_IsChildrenExist]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from ServiceCategory where ParentID = @ServiceCategoryID

if @exist is null
	select @exist = 1 from Service where ServiceCategoryID = @ServiceCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceCategoryImage_Delete]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ServiceCategory set ImageName = NULL where [ServiceCategoryID] = @ServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_ServiceCategory_Update]
@ServiceCategoryID int = NULL,
@ServiceCategoryName nvarchar(100) = NULL,
@ServiceCategoryNameEn nvarchar(100) = NULL,
@ConvertedServiceCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from ServiceCategory where ServiceCategoryID = @ServiceCategoryID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from ServiceCategory where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from ServiceCategory where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from ServiceCategory where ServiceCategoryID = @ServiceCategoryID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedServiceCategoryName is null then '''' else @ConvertedServiceCategoryName + ''-'' end + cast(@ServiceCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from ServiceCategory where ServiceCategoryID = @ServiceCategoryID

update ServiceCategory set 
	[ServiceCategoryName] = @ServiceCategoryName,
	[ServiceCategoryNameEn] = @ServiceCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ServiceCategoryID] = @ServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ServiceCategory_Delete]
@ServiceCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ServiceCategory
where [ServiceCategoryID] = @ServiceCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_VideoCategory_Update]
@VideoCategoryID int = NULL,
@ImageName nvarchar(100) = NULL,
@VideoCategoryName nvarchar(100) = NULL,
@VideoCategoryNameEn nvarchar(100) = NULL,
@ConvertedVideoCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedVideoCategoryName is null then '''' else @ConvertedVideoCategoryName + ''-'' end + cast(@VideoCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from VideoCategory where VideoCategoryID = @VideoCategoryID

update VideoCategory set 
	[ImageName] = @ImageName,
	[VideoCategoryName] = @VideoCategoryName,
	[VideoCategoryNameEn] = @VideoCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [VideoCategoryID] = @VideoCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_VideoCategory_SelectOne]
@VideoCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[VideoCategoryID],
	[ImageName],
	[VideoCategoryName],
	[VideoCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
from VideoCategory
where [VideoCategoryID] = @VideoCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_VideoCategory_Insert]
@ImageName nvarchar(100) = NULL,
@VideoCategoryName nvarchar(100) = NULL,
@VideoCategoryNameEn nvarchar(100) = NULL,
@ConvertedVideoCategoryName nvarchar(100) = NULL, 
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into VideoCategory(
	[ImageName],
	[VideoCategoryName],
	[VideoCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@VideoCategoryName,
	@VideoCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedVideoCategoryName is null then '''' else @ConvertedVideoCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update VideoCategory set [ImageName] = @ImageName where VideoCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_VideoCategoryImage_Delete]
@VideoCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update VideoCategory set ImageName = NULL where [VideoCategoryID] = @VideoCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_VideoCategory_Delete]
@VideoCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from VideoCategory
where [VideoCategoryID] = @VideoCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_VideoCategory_QuickUpdate]
@VideoCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update VideoCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [VideoCategoryID] = @VideoCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Video_SelectOne]
@VideoID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[VideoID],
	[Title],
	v.[Description],
	[TitleEn],
	v.[DescriptionEn],
	[ImagePath],
	[VideoPath],
	[GLobalEmbedScript],
	v.[VideoCategoryID],
	[VideoCategoryName],
	[CreateDate],
	v.[IsAvailable],
	v.[Priority]
from Video v
left join VideoCategory vc on vc.VideoCategoryID = v.VideoCategoryID
where [VideoID] = @VideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Manufacturer_Delete]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Manufacturer
where [ManufacturerID] = @ManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ManufacturerForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ManufacturerForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_ManufacturerForEdit_SelectAll]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ManufacturerID],
	[ManufacturerName],
	[ManufacturerNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 ManufacturerName from Manufacturer b where b.ManufacturerID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from Manufacturer a
where [ManufacturerID] <> @ManufacturerID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Manufacturer_UpOrder]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevManufacturerID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from Manufacturer where 
ManufacturerID = @ManufacturerID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from Manufacturer 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevManufacturerID = ManufacturerID
	from Manufacturer 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from Manufacturer 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevManufacturerID = ManufacturerID
	from Manufacturer 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update Manufacturer 
set [SortOrder] = @CurrentSortOrder
where [ManufacturerID] = @ManufacturerID

update Manufacturer 
set [SortOrder] = @PrevSortOrder
where [ManufacturerID] = @PrevManufacturerID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @ManufacturerID
--print @PrevManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Manufacturer_SelectOne]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ManufacturerID],
	[ManufacturerName],
	[ManufacturerNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsAvailable]
from Manufacturer
where [ManufacturerID] = @ManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Manufacturer_QuickUpdate]
@ManufacturerID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update Manufacturer set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ManufacturerID] = @ManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildManufacturer_SelectAll]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildManufacturer_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[ufn_ChildManufacturer_SelectAll] (
@RootManufacturerID int
)
RETURNS @Reached TABLE(ManufacturerID int)
AS
BEGIN
	insert into @Reached values (@RootManufacturerID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (ManufacturerID) 
		select distinct p.ManufacturerID
		from Manufacturer p inner join @Reached r on r.ManufacturerID = p.ParentID
		where p.ManufacturerID not in (select ManufacturerID from @Reached)
	end
	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Manufacturer_DownOrder]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextManufacturerID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from Manufacturer where 
ManufacturerID = @ManufacturerID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from Manufacturer where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from Manufacturer 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextManufacturerID = ManufacturerID
	from Manufacturer 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from Manufacturer where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from Manufacturer 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextManufacturerID = ManufacturerID
	from Manufacturer 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update Manufacturer 
set [SortOrder] = @CurrentSortOrder
where [ManufacturerID] = @ManufacturerID

update Manufacturer 
set [SortOrder] = @NextSortOrder
where [ManufacturerID] = @NextManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Manufacturer_IsChildrenExist]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from Manufacturer where ParentID = @ManufacturerID

if @exist is null
	select @exist = 1 from Manufacturer where ManufacturerID = @ManufacturerID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Manufacturer_Insert]
@ManufacturerName nvarchar(100) = NULL,
@ManufacturerNameEn nvarchar(100) = NULL,
@ConvertedManufacturerName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from Manufacturer where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from Manufacturer where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into Manufacturer(
	[ManufacturerName],
	[ManufacturerNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@ManufacturerName,
	@ManufacturerNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedManufacturerName is null then '''' else @ConvertedManufacturerName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update Manufacturer set [ImageName] = @ImageName where ManufacturerID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ManufacturerImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ManufacturerImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ManufacturerImage_Delete]
@ManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Manufacturer set ImageName = NULL where [ManufacturerID] = @ManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Manufacturer_Update]
@ManufacturerID int = NULL,
@ManufacturerName nvarchar(100) = NULL,
@ManufacturerNameEn nvarchar(100) = NULL,
@ConvertedManufacturerName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from Manufacturer where ManufacturerID = @ManufacturerID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from Manufacturer where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from Manufacturer where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from Manufacturer where ManufacturerID = @ManufacturerID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedManufacturerName is null then '''' else @ConvertedManufacturerName + ''-'' end + cast(@ManufacturerID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Manufacturer where ManufacturerID = @ManufacturerID

update Manufacturer set 
	[ManufacturerName] = @ManufacturerName,
	[ManufacturerNameEn] = @ManufacturerNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [ManufacturerID] = @ManufacturerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ManufacturerHierarchyToTop_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ManufacturerHierarchyToTop_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create proc [dbo].[usp_ManufacturerHierarchyToTop_SelectAll]
@CurrentManufacturerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
--find parent nodes
DECLARE @Reached TABLE(Number int,ManufacturerID int)
DECLARE @parentID int
Declare @Number int

SET @Number = 0
SELECT @parentID = parentID
FROM Manufacturer
WHERE ManufacturerID = @CurrentManufacturerID

insert into @Reached values(@Number, @CurrentManufacturerID)

WHILE @parentID is not NULL
BEGIN
	set @Number = @Number + 1
	insert into @Reached values(@Number, @parentID)

	SELECT @CurrentManufacturerID = @parentID

	SELECT @parentID = parentID
	FROM Manufacturer
	WHERE ManufacturerID = @CurrentManufacturerID
END

select * from @Reached r
left join Manufacturer p on r.ManufacturerID = p.ManufacturerID
order by Number desc

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Manufacturer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Manufacturer_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Manufacturer_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[ManufacturerID],
	[ManufacturerName],
	[ManufacturerNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 ManufacturerName from Manufacturer b where b.ManufacturerID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from Manufacturer a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OrderStatus_Insert]
@OrderStatusName nvarchar(100) = NULL,
@OrderStatusNameEn nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into OrderStatus(
	[OrderStatusName],
	[OrderStatusNameEn],
	[IsAvailable]
) values(
	@OrderStatusName,
	@OrderStatusNameEn,
	@IsAvailable
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OrderStatus_SelectOne]
@OrderStatusID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[OrderStatusID],
	[OrderStatusName],
	[OrderStatusNameEn],
	[IsAvailable]
from OrderStatus
where [OrderStatusID] = @OrderStatusID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OrderStatus_SelectAll]
@ErrorCode int = NULL OUTPUT
as
select 
	[OrderStatusID],
	[OrderStatusName],
	[OrderStatusNameEn],
	[IsAvailable]
from OrderStatus
order by [OrderStatusID]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OrderStatus_Delete]
@OrderStatusID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from OrderStatus
where [OrderStatusID] = @OrderStatusID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OrderStatus_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OrderStatus_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OrderStatus_Update]
@OrderStatusID int = NULL,
@OrderStatusName nvarchar(100) = NULL,
@OrderStatusNameEn nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update OrderStatus set 
	[OrderStatusName] = @OrderStatusName,
	[OrderStatusNameEn] = @OrderStatusNameEn,
	[IsAvailable] = @IsAvailable
where [OrderStatusID] = @OrderStatusID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_AdsCategory_Delete]
@AdsCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from AdsCategory
where [AdsCategoryID] = @AdsCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_AdsCategory_Update]
@AdsCategoryID int = NULL,
@AdsCategoryName nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update AdsCategory set 
	[AdsCategoryName] = @AdsCategoryName,
	[IsAvailable] = @IsAvailable
where [AdsCategoryID] = @AdsCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_AdsCategory_SelectAll]
@IsAvailable bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[AdsCategoryID],
	[AdsCategoryName],
	[IsAvailable]
from AdsCategory
where IsAvailable = 1
order by [AdsCategoryID]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_AdsCategory_SelectOne]
@AdsCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[AdsCategoryID],
	[AdsCategoryName],
	[IsAvailable]
from AdsCategory
where [AdsCategoryID] = @AdsCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AdsCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_AdsCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_AdsCategory_Insert]
@AdsCategoryName nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into AdsCategory(
	[AdsCategoryName],
	[IsAvailable]
) values(
	@AdsCategoryName,
	@IsAvailable
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_Download_SelectOne]
@DownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[DownloadID],
	[DownloadName],
	[DownloadNameEn],
	d.[ImageName],
	[FilePath],
	d.[DownloadCategoryID],
	[DownloadCategoryName],
	[CreateDate],
	d.[IsAvailable],
	d.[Priority]
from Download d
left join DownloadCategory dc on dc.DownloadCategoryID = d.DownloadCategoryID
where [DownloadID] = @DownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Download_Delete]
@DownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Download
where [DownloadID] = @DownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Download_Update]
@DownloadID int = NULL,
@DownloadName nvarchar(200) = NULL,
@DownloadNameEn nvarchar(200) = NULL,
@ConvertedDownloadName nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@FilePath nvarchar(100) = NULL,
@DownloadCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedDownloadName is null then '''' else @ConvertedDownloadName + ''-'' end + cast(@DownloadID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Download where DownloadID = @DownloadID

if @FilePath IS NULL
	select @FilePath = FilePath from Download where DownloadID = @DownloadID

update Download set 
	[ImageName] = @ImageName,
	[FilePath] = @FilePath,
	[DownloadName] = @DownloadName,
	[DownloadNameEn] = @DownloadNameEn,
	[DownloadCategoryID] = @DownloadCategoryID,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [DownloadID] = @DownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Download_Insert]
@DownloadName nvarchar(200) = NULL,
@DownloadNameEn nvarchar(200) = NULL,
@ConvertedDownloadName nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@FilePath nvarchar(100) = NULL,
@DownloadCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutDownloadID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Download(
	[DownloadName],
	[DownloadNameEn],
	[ImageName],
	[FilePath],
	[DownloadCategoryID],
	[CreateDate],
	[IsAvailable],
	[Priority]
) values(
	@DownloadName,
	@DownloadNameEn,
	@ImageName,
	@FilePath,
	@DownloadCategoryID,
	getdate(),
	@IsAvailable,
	@Priority
)

SELECT @OutDownloadID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedDownloadName is null then '''' else @ConvertedDownloadName + ''-'' end  + cast(@OutDownloadID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))

update Download set [ImageName] = @ImageName where DownloadID = @OutDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_DownloadCategory_IsChildrenExist]
@DownloadCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from Download 
where DownloadCategoryID = @DownloadCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Download_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Download_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Download_QuickUpdate]
@DownloadID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Download set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [DownloadID] = @DownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_DownloadImage_Delete]
@DownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Download set ImageName = NULL where [DownloadID] = @DownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Project_Insert]
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ProjectTitle nvarchar(100) = NULL,
@ConvertedProjectTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ProjectTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@ProjectCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Project(
	[ImageName],
	[MetaTittle],
	[MetaDescription],
	[ProjectTitle],
	[Description],
	[Content],
	[Tag],
	[MetaTittleEn],
	[MetaDescriptionEn],
	[ProjectTitleEn],
	[DescriptionEn],
	[ContentEn],
	[TagEn],
	[ProjectCategoryID],
	[CreateDate],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@MetaTittle,
	@MetaDescription,
	@ProjectTitle,
	@Description,
	@Content,
	@Tag,
	@MetaTittleEn,
	@MetaDescriptionEn,
	@ProjectTitleEn,
	@DescriptionEn,
	@ContentEn,
	@TagEn,
	@ProjectCategoryID,
	getdate(),
	@IsShowOnHomePage,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedProjectTitle is null then '''' else @ConvertedProjectTitle + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update Project set [ImageName] = @ImageName where ProjectID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderProject_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderProject_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OlderProject_SelectAll]
@RerultCount int = NULL,
@ProjectID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ProjectCategoryID int
select  @ProjectCategoryID = ProjectCategoryID from Project where ProjectID = @ProjectID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ProjectID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ProjectTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ProjectTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ProjectCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ProjectCategoryName],
		[ProjectCategoryNameEn],
		c.[Priority]
	FROM Project c
	left join ProjectCategory ac on ac.ProjectCategoryID = c.ProjectCategoryID
	WHERE c.IsAvailable = 1 ''

if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ProjectCategoryID = '' + str(@ProjectCategoryID)

if @ProjectID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ProjectID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ProjectID FROM Project WHERE ProjectID < '' + str(@ProjectID) + '' ''

if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ProjectCategoryID = '' + str(@ProjectCategoryID)

end

set @SelectQuery = @SelectQuery + '' order by - Priority desc, ProjectID desc) ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImages_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImages_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectImages_Delete]
@ProjectID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Project set ImageName = NULL where [ProjectID] = @ProjectID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Project_Delete]
@ProjectID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Project
where [ProjectID] = @ProjectID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Project_Update]
@ProjectID int = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ProjectTitle nvarchar(100) = NULL,
@ConvertedProjectTitle nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ProjectTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@ProjectCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedProjectTitle is null then '''' else @ConvertedProjectTitle + ''-'' end + cast(@ProjectID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Project where ProjectID = @ProjectID

update Project set 
	[ImageName] = @ImageName,
	[MetaTittle] = @MetaTittle,
	[MetaDescription] = @MetaDescription,
	[ProjectTitle] = @ProjectTitle,
	[Description] = @Description,
	[Content] = @Content,
	[Tag] = @Tag,
	[MetaTittleEn] = @MetaTittleEn,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ProjectTitleEn] = @ProjectTitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ContentEn] = @ContentEn,
	[TagEn] = @TagEn,
	[ProjectCategoryID] = @ProjectCategoryID,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectID] = @ProjectID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerProject_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerProject_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_NewerProject_SelectAll]
@RerultCount int = NULL,
@ProjectID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ProjectCategoryID int
select  @ProjectCategoryID = ProjectCategoryID from Project where ProjectID = @ProjectID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ProjectID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ProjectTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ProjectTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ProjectCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ProjectCategoryName],
		[ProjectCategoryNameEn],
		c.[Priority]
	FROM Project c
	left join ProjectCategory ac on ac.ProjectCategoryID = c.ProjectCategoryID
	WHERE c.IsAvailable = 1 ''

if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ProjectCategoryID = '' + str(@ProjectCategoryID)

if @ProjectID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ProjectID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ProjectID 
			FROM Project 
			WHERE ProjectID > '' + str(@ProjectID)

if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ProjectCategoryID = '' + str(@ProjectCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameProject_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameProject_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_SameProject_SelectAll]
@RerultCount int = NULL,
@ProjectID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ProjectCategoryID int
select  @ProjectCategoryID = ProjectCategoryID from Project where ProjectID = @ProjectID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ProjectID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ProjectTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ProjectTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ProjectCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ProjectCategoryName],
		[ProjectCategoryNameEn],
		c.[Priority]
	FROM Project c
	left join ProjectCategory ac on ac.ProjectCategoryID = c.ProjectCategoryID
	WHERE c.IsAvailable = 1 ''

if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ProjectCategoryID = '' + str(@ProjectCategoryID)

if @ProjectID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ProjectID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' ProjectID FROM Project WHERE ProjectID < '' + str(@ProjectID) + '' ''

	if @ProjectCategoryID IS NOT NULL
		set @SelectQuery = @SelectQuery + '' and ProjectCategoryID = '' + str(@ProjectCategoryID)

	set @SelectQuery = @SelectQuery + '' order by ProjectID desc) or
			c.ProjectID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' ProjectID 
				FROM Project 
				WHERE ProjectID > '' + str(@ProjectID)

	if @ProjectCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ProjectCategoryID = '' + str(@ProjectCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY c.Priority, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Project_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Project_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[usp_Project_QuickUpdate]
@ProjectID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

update Project set 
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectID] = @ProjectID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectVideo_SelectOne]
@ProjectVideoID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectVideoID],
	[Title],
	[Description],
	[TitleEn],
	[DescriptionEn],
	[ImagePath],
	[ProjectVideoPath],
	[ProjectID],
	[CreateDate],
	[IsAvailable],
	[Priority]
from ProjectVideo
where [ProjectVideoID] = @ProjectVideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectVideo_Insert]
@Title nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescriptionEn nvarchar(1000) = NULL,
@ConvertedTitle nvarchar(100) = NULL,
@ImagePath nvarchar(100) = NULL,
@ProjectVideoPath nvarchar(100) = NULL,
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutProjectVideoID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into ProjectVideo(
	[Title],
	[Description],
	[TitleEn],
	[DescriptionEn],
	[ImagePath],
	[ProjectVideoPath],
	[ProjectID],
	[CreateDate],
	[IsAvailable],
	[Priority]
) values(
	@Title,
	@Description,
	@TitleEn,
	@DescriptionEn,
	@ImagePath,
	@ProjectVideoPath,
	@ProjectID,
	getdate(),
	@IsAvailable,
	@Priority
)

SELECT @OutProjectVideoID = SCOPE_IDENTITY();

if @ImagePath IS NOT NULL
	set @ImagePath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@OutProjectVideoID as nvarchar(50)) + substring(@ImagePath,len(@ImagePath) - CHARINDEX(''.'',reverse(@ImagePath)) + 1,len(@ImagePath))

if @ProjectVideoPath IS NOT NULL
	set @ProjectVideoPath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@OutProjectVideoID as nvarchar(50)) + substring(@ProjectVideoPath,len(@ProjectVideoPath) - CHARINDEX(''.'',reverse(@ProjectVideoPath)) + 1,len(@ProjectVideoPath))

update ProjectVideo set [ImagePath] = @ImagePath, [ProjectVideoPath] = @ProjectVideoPath where ProjectVideoID = @OutProjectVideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectVideo_Delete]
@ProjectVideoID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProjectVideo
where [ProjectVideoID] = @ProjectVideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectVideo_Update]
@ProjectVideoID int = NULL,
@Title nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescriptionEn nvarchar(1000) = NULL,
@ConvertedTitle nvarchar(100) = NULL,
@ImagePath nvarchar(100) = NULL,
@ProjectVideoPath nvarchar(100) = NULL,
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

if @ImagePath IS NOT NULL
	set @ImagePath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@ProjectVideoID as nvarchar(50)) + substring(@ImagePath,len(@ImagePath) - CHARINDEX(''.'',reverse(@ImagePath)) + 1,len(@ImagePath))
else
	select @ImagePath = ImagePath from ProjectVideo where ProjectVideoID = @ProjectVideoID

if @ProjectVideoPath IS NOT NULL
	set @ProjectVideoPath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@ProjectVideoID as nvarchar(50)) + substring(@ProjectVideoPath,len(@ProjectVideoPath) - CHARINDEX(''.'',reverse(@ProjectVideoPath)) + 1,len(@ProjectVideoPath))
else
	select @ProjectVideoPath = ProjectVideoPath from ProjectVideo where ProjectVideoID = @ProjectVideoID

update ProjectVideo set 
	[Title] = @Title,
	[Description] = @Description,
	[TitleEn] = @TitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ImagePath] = @ImagePath,
	[ProjectVideoPath] = @ProjectVideoPath,
	[ProjectID] = @ProjectID,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectVideoID] = @ProjectVideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectVideo_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectVideo_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProjectVideo_QuickUpdate]
@ProjectVideoID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProjectVideo set
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectVideoID] = @ProjectVideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectImage_SelectOne]
@ProjectImageID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectImageID],
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[ProjectID],
	[IsAvailable],
	[Priority]
from ProjectImage
where [ProjectImageID] = @ProjectImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectImage_Delete]
@ProjectImageID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProjectImage where ProjectImageID = @ProjectImageID
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProjectImage_QuickUpdate]
@ProjectImageID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProjectImage set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectImageID] = @ProjectImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectImage_Update]
@ProjectImageID int = NULL,
@ImageName nvarchar(100) = NULL,
@ConvertedProjectName nvarchar(100) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescripttionEn nvarchar(500) = NULL,
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedProjectName is null then '''' else @ConvertedProjectName + ''-'' end + cast(@ProjectImageID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from ProjectImage where ProjectImageID = @ProjectImageID

update ProjectImage set 
	[ImageName] = @ImageName,
	[Title] = @Title,
	[Descripttion] = @Descripttion,
	[TitleEn] = @TitleEn,
	[DescripttionEn] = @DescripttionEn,
	[ProjectID] = @ProjectID,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectImageID] = @ProjectImageID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectImage_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectImage_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectImage_Insert]
@ImageName nvarchar(100) = NULL,
@ConvertedProjectName nvarchar(100) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescripttionEn nvarchar(500) = NULL,
@ProjectID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into ProjectImage(
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[ProjectID],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@Title,
	@Descripttion,
	@TitleEn,
	@DescripttionEn,
	@ProjectID,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedProjectName is null then '''' else @ConvertedProjectName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update ProjectImage set [ImageName] = @ImageName where ProjectImageID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectDownload_Insert]
@ProjectID int = NULL,
@FileName nvarchar(100) = NULL,
@FileNameEn nvarchar(100) = NULL,
@LinkDownload nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
insert into ProjectDownload(
	[ProjectID],
	[FileName],
	[FileNameEn],
	[LinkDownload],
	[IsAvailable],
	[Priority]
) values(
	@ProjectID,
	@FileName,
	@FileNameEn,
	@LinkDownload,
	@IsAvailable,
	@Priority
)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectDownload_SelectOne]
@ProjectDownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[ProjectDownloadID],
	[ProjectID],
	[FileName],
	[FileNameEn],
	[LinkDownload],
	[IsAvailable],
	[Priority]
from ProjectDownload
where [ProjectDownloadID] = @ProjectDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectDownload_Update]
@ProjectDownloadID int = NULL,
@ProjectID int = NULL,
@FileName nvarchar(100) = NULL,
@FileNameEn nvarchar(100) = NULL,
@LinkDownload nvarchar(100) = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @LinkDownload IS NULL
	select @LinkDownload = LinkDownload from ProjectDownload where ProjectDownloadID = @ProjectDownloadID

update ProjectDownload set 
	[ProjectID] = @ProjectID,
	[FileName] = @FileName,
	[FileNameEn] = @FileNameEn,
	[LinkDownload] = @LinkDownload,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectDownloadID] = @ProjectDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProjectDownload_Delete]
@ProjectDownloadID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from ProjectDownload
where [ProjectDownloadID] = @ProjectDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProjectDownload_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProjectDownload_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_ProjectDownload_QuickUpdate]
@ProjectDownloadID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update ProjectDownload set
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ProjectDownloadID] = @ProjectDownloadID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameProduct_SelectAll1]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameProduct_SelectAll1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_SameProduct_SelectAll1]
@RerultCount int = NULL,
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ProductCategoryID int
select  @ProductCategoryID = CategoryID from Product where ProductID = @ProductID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' p.[ProductID],
		p.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ProductName],
		[Description],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ProductNameEn],
		[DescriptionEn],
		[TagEn],
		[Price],
		[OtherPrice],
		[SavePrice],
		[CategoryID],
		p.[ManufacturerID],
		p.[OriginID],
		[InStock],
		[Views],
		[CreateDate],
		[IsHot],
		[IsNew],
		[IsBestSeller],
		p.[IsShowOnHomePage],
		p.[IsAvailable],
		[ProductCategoryName],
		[ManufacturerName],
		[OriginName],
		cast(Rating1 + 2*Rating2 + 3*Rating3 + 4*Rating4 + 5*Rating5 as float)/(Rating1 + Rating2 + Rating3 + Rating4 + Rating5) Rating
	FROM Product p
	left join ProductCategory pc on pc.ProductCategoryID = p.CategoryID and pc.IsAvailable = 1 
	left join Manufacturer m on m.ManufacturerID = p.ManufacturerID and m.IsAvailable = 1 
	left join Origin o on o.OriginID = p.OriginID and o.IsAvailable = 1 
	left join Rating r on r.ProductID = p.ProductID
	WHERE p.IsAvailable = 1 ''

if @ProductCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (p.ProductID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ProductID FROM Product WHERE ProductID < '' + str(@ProductID) +'' and CategoryID in (select * from [dbo].[ufn_ChildProductCategory_SelectAll]([dbo].[ufn_ProductCategoryRootID_SelectOne]('' + str(@ProductCategoryID) + ''))) order by ProductID desc) or
		p.ProductID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ProductID FROM Product WHERE ProductID > '' + str(@ProductID) +'' and CategoryID = '' + str(@ProductCategoryID)+ '')) ''
else
	set @SelectQuery = @SelectQuery + '' and (p.ProductID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ProductID FROM Product WHERE ProductID < '' + str(@ProductID) +'' and CategoryID is null order by ProductID desc) or
		p.ProductID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ProductID FROM Product WHERE ProductID > '' + str(@ProductID) +'' and CategoryID is null)) ''

set @SelectQuery = @SelectQuery + '' ORDER BY p.Priority, CreateDate desc''

exec(@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Product_QuickUpdate]
@ProductID int = NULL,
@InStock bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsBestSeller bit = NULL,
@IsSaleOff bit = NULL,
@IsShowOnHomePage bit = NULL,
@Priority int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update Product set 
	[InStock] = @InStock,
	[IsHot] = @IsHot,
	[IsNew] = @IsNew,
	[IsBestSeller] = @IsBestSeller,
	[IsSaleOff] = @IsSaleOff,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[Priority] = @Priority,
	[IsAvailable] = @IsAvailable
where [ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Product_Insert]
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ProductName nvarchar(200) = NULL,
@ConvertedProductName nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ProductNameEn nvarchar(200) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@Price money = NULL,
@OtherPrice nvarchar(200) = NULL,
@SavePrice money = NULL,
@Discount smallint = NULL,
@CategoryID int = NULL,
@ManufacturerID int = NULL,
@OriginID int = NULL,
@InStock bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsBestSeller bit = NULL,
@IsSaleOff bit = NULL,
@IsShowOnHomePage bit = NULL,
@Priority int = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@OutProductID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Product(
	[ImageName],
	[MetaTittle],
	[MetaDescription],
	[ProductName],
	[Description],
	[Content],
	[Tag],
	[MetaTittleEn],
	[MetaDescriptionEn],
	[ProductNameEn],
	[DescriptionEn],
	[ContentEn],
	[TagEn],
	[SavePrice],
	[Price],
	[OtherPrice],
	[Discount],
	[CategoryID],
	[ManufacturerID],
	[OriginID],
	[InStock],
	[CreateDate],
	[IsHot],
	[IsNew],
	[IsBestSeller],
	[IsSaleOff],
	[IsShowOnHomePage],
	[Priority],
	[IsAvailable]
) values(
	@ImageName,
	@MetaTittle,
	@MetaDescription,
	@ProductName,
	@Description,
	@Content,
	@Tag,
	@MetaTittleEn,
	@MetaDescriptionEn,
	@ProductNameEn,
	@DescriptionEn,
	@ContentEn,
	@TagEn,
	@SavePrice,
	@Price,
	@OtherPrice,
	@Discount,
	@CategoryID,
	@ManufacturerID,
	@OriginID,
	@InStock,
	getdate(),
	@IsHot,
	@IsNew,
	@IsBestSeller,
	@IsSaleOff,
	@IsShowOnHomePage,
	@Priority,
	@IsAvailable
)

SELECT @OutProductID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedProductName is null then '''' else @ConvertedProductName + ''-'' end + cast(@OutProductID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update Product set [ImageName] = @ImageName where ProductID = @OutProductID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Product_Update]
@ProductID int = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ImageName nvarchar(100) = NULL,
@ProductName nvarchar(200) = NULL,
@ConvertedProductName nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ProductNameEn nvarchar(200) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@Price money = NULL,
@OtherPrice nvarchar(200) = NULL,
@SavePrice money = NULL,
@Discount smallint = NULL,
@CategoryID int = NULL,
@ManufacturerID int = NULL,
@OriginID int = NULL,
@InStock bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsBestSeller bit = NULL,
@IsSaleOff bit = NULL,
@IsShowOnHomePage bit = NULL,
@Priority int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName =  case when @ConvertedProductName is null then '''' else @ConvertedProductName + ''-'' end + cast(@ProductID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Product where ProductID = @ProductID

update Product set 
	[ImageName] = @ImageName,
	[MetaTittle] = @MetaTittle,
	[MetaDescription] = @MetaDescription,
	[ProductName] = @ProductName,
	[Description] = @Description,
	[Content] = @Content,
	[Tag] = @Tag,
	[MetaTittleEn] = @MetaTittleEn,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ProductNameEn] = @ProductNameEn,
	[DescriptionEn] = @DescriptionEn,
	[ContentEn] = @ContentEn,
	[TagEn] = @TagEn,
	[Price] = @Price,
	[OtherPrice] = @OtherPrice,
	[SavePrice] = @SavePrice,
	[Discount] = @Discount,
	[CategoryID] = @CategoryID,
	[ManufacturerID] = @ManufacturerID,
	[OriginID] = @OriginID,
	[InStock] = @InStock,
	[IsHot] = @IsHot,
	[IsNew] = @IsNew,
	[IsBestSeller] = @IsBestSeller,
	[IsSaleOff] = @IsSaleOff,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[Priority] = @Priority,
	[IsAvailable] = @IsAvailable
where [ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Product_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Product_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Product_Delete]
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Product
where [ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductImages_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ProductImages_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ProductImages_Delete]
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Product set ImageName = NULL where [ProductID] = @ProductID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameProduct_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameProduct_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[usp_SameProduct_SelectAll]
@RerultCount int = NULL,
@ProductID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ProductCategoryID int
select  @ProductCategoryID = CategoryID from Product where ProductID = @ProductID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' p.[ProductID],
		p.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ProductName],
		p.[Description],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ProductNameEn],
		p.[DescriptionEn],
		[TagEn],
		[Price],
		[Discount],
		[OtherPrice],
		[SavePrice],
		[CategoryID],
		p.[ManufacturerID],
		p.[OriginID],
		[InStock],
		[Views],
		[CreateDate],
		[IsHot],
		[IsNew],
		[IsBestSeller],
		p.[IsShowOnHomePage],
		p.[IsAvailable],
		[ProductCategoryName],
		[ManufacturerName],
		[OriginName],
		cast(Rating1 + 2*Rating2 + 3*Rating3 + 4*Rating4 + 5*Rating5 as float)/(Rating1 + Rating2 + Rating3 + Rating4 + Rating5) Rating
	FROM Product p
	left join ProductCategory pc on pc.ProductCategoryID = p.CategoryID and pc.IsAvailable = 1 
	left join Manufacturer m on m.ManufacturerID = p.ManufacturerID and m.IsAvailable = 1 
	left join Origin o on o.OriginID = p.OriginID and o.IsAvailable = 1 
	left join Rating r on r.ProductID = p.ProductID
	WHERE p.IsAvailable = 1 ''

declare @Count varchar(20)
set @Count = str(isnull(@RerultCount/2, 0))

if @ProductCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (p.ProductID in (SELECT top '' + @Count + '' ProductID FROM Product WHERE ProductID < '' + str(@ProductID) +'' and CategoryID = '' + str(@ProductCategoryID) + '' order by ProductID desc) or
		p.ProductID in (SELECT top '' + @Count + '' ProductID FROM Product WHERE ProductID > '' + str(@ProductID) +'' and CategoryID = '' + str(@ProductCategoryID)+ '')) ''
else
	set @SelectQuery = @SelectQuery + '' and (p.ProductID in (SELECT top '' + @Count + '' ProductID FROM Product WHERE ProductID < '' + str(@ProductID) +'' and CategoryID is null order by ProductID desc) or
		p.ProductID in (SELECT top '' + @Count + '' ProductID FROM Product WHERE ProductID > '' + str(@ProductID) +'' and CategoryID is null)) ''

set @SelectQuery = @SelectQuery + '' ORDER BY p.Priority, CreateDate desc''

exec(@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR


' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PhotoAlbum_Delete]
@PhotoAlbumID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from PhotoAlbum
where [PhotoAlbumID] = @PhotoAlbumID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_PhotoAlbum_QuickUpdate]
@PhotoAlbumID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update PhotoAlbum set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [PhotoAlbumID] = @PhotoAlbumID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'








CREATE procedure [dbo].[usp_PhotoAlbum_Update]
@PhotoAlbumID int = NULL,
@ImageName nvarchar(100) = NULL,
@ConvertedTitle nvarchar(100) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescripttionEn nvarchar(500) = NULL,
@PhotoAlbumCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
--if @ImageName IS NOT NULL
--	set @ImageName = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@PhotoAlbumID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
--else
--	select @ImageName = ImageName from PhotoAlbum where PhotoAlbumID = @PhotoAlbumID

update PhotoAlbum set 
	[ImageName] = @ImageName,
	[Title] = @Title,
	[Descripttion] = @Descripttion,
	[TitleEn] = @TitleEn,
	[DescripttionEn] = @DescripttionEn,
	[PhotoAlbumCategoryID] = @PhotoAlbumCategoryID,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [PhotoAlbumID] = @PhotoAlbumID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR








' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbum_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbum_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'








CREATE procedure [dbo].[usp_PhotoAlbum_Insert]
@ImageName nvarchar(100) = NULL,
@ConvertedTitle nvarchar(100) = NULL,
@Title nvarchar(200) = NULL,
@Descripttion nvarchar(500) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescripttionEn nvarchar(500) = NULL,
@PhotoAlbumCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into PhotoAlbum(
	[ImageName],
	[Title],
	[Descripttion],
	[TitleEn],
	[DescripttionEn],
	[PhotoAlbumCategoryID],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@Title,
	@Descripttion,
	@TitleEn,
	@DescripttionEn,
	@PhotoAlbumCategoryID,
	@IsAvailable,
	@Priority
)

--DECLARE @ID int
--SELECT @ID = SCOPE_IDENTITY();
--
--if @ImageName IS NOT NULL
--begin
--	set @ImageName = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
--	update PhotoAlbum set [ImageName] = @ImageName where PhotoAlbumID = @ID
--	select @OutImageName = @ImageName
--end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR








' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PhotoAlbumCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PhotoAlbumCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_PhotoAlbumCategory_IsChildrenExist]
@PhotoAlbumCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from PhotoAlbum
where PhotoAlbumCategoryID = @PhotoAlbumCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_Delete]
@MenuID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Menu
where [MenuID] = @MenuID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_Update]
@MenuID int = NULL,
@ImageName nvarchar(100) = NULL,
@ImageNameEn nvarchar(100) = NULL,
@MenuTitle nvarchar(100) = NULL,
@MenuTitleEn nvarchar(100) = NULL,
@Link nvarchar(500) = NULL,
@LinkEn nvarchar(500) = NULL,
@MenuPositionID int = NULL,
@ParentID int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0) from Menu where MenuID = @MenuID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from Menu where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from Menu where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from Menu where MenuID = @MenuID

update Menu set 
	[ImageName] = @ImageName,
	[ImageNameEn] = @ImageNameEn,
	[MenuTitle] = @MenuTitle,
	[MenuTitleEn] = @MenuTitleEn,
	[Link] = @Link,
	[LinkEn] = @LinkEn,
	[MenuPositionID] = @MenuPositionID,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsAvailable] = @IsAvailable
where [MenuID] = @MenuID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_Insert]
@ImageName nvarchar(100) = NULL,
@ImageNameEn nvarchar(100) = NULL,
@MenuTitle nvarchar(100) = NULL,
@MenuTitleEn nvarchar(100) = NULL,
@Link nvarchar(500) = NULL,
@LinkEn nvarchar(500) = NULL,
@MenuPositionID int = NULL,
@ParentID int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from Menu where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from Menu where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into Menu(
	ImageName,
	ImageNameEn,
	MenuTitle,
	MenuTitleEn,
	Link,
	LinkEn,
	MenuPositionID,
	ParentID,
	SortOrder,
	IsAvailable
) values(
	@ImageName,
	@ImageNameEn,
	@MenuTitle,
	@MenuTitleEn,
	@Link,
	@LinkEn,
	@MenuPositionID,
	@ParentID,
	@SortOrder,
	@IsAvailable
)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_QuickUpdate]
@MenuID int = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update Menu set 
	[IsAvailable] = @IsAvailable
where [MenuID] = @MenuID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_IsChildrenExist]
@MenuID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from Menu where ParentID = @MenuID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_SelectOne]
@MenuID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[MenuID],
	[MenuTitle],
	[MenuTitleEn],
	[ImageName],
	[ImageNameEn],
	[Link],
	[LinkEn],
	[MenuPositionID],
	isnull([ParentID], 0) ParentID,
	(select top 1 MenuTitle from Menu b where b.MenuID = a.ParentID) ParentName,
	[SortOrder],
	[IsAvailable]
from Menu a
where [MenuID] = @MenuID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_MenuForEdit_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_MenuForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_MenuForEdit_SelectAll]
@MenuID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[MenuID],
	[MenuTitle],
	[MenuTitleEn],
	[ImageName],
	[ImageNameEn],
	[Link],
	[LinkEn],
	[MenuPositionID],
	isnull([ParentID], 0) ParentID,
	(select top 1 MenuTitle from Menu b where b.MenuID = a.ParentID) ParentName,
	[SortOrder],
	[IsAvailable]
from Menu a
where [MenuID] <> @MenuID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_UpOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Menu_UpOrder]
@MenuID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevMenuID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from Menu where 
MenuID = @MenuID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from Menu 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevMenuID = MenuID
	from Menu 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from Menu 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevMenuID = MenuID
	from Menu 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update Menu 
set [SortOrder] = @CurrentSortOrder
where [MenuID] = @MenuID

update Menu 
set [SortOrder] = @PrevSortOrder
where [MenuID] = @PrevMenuID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @MenuID
--print @PrevMenuID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Menu_DownOrder]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Menu_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[usp_Menu_DownOrder]
@MenuID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextMenuID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from Menu where 
MenuID = @MenuID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from Menu where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from Menu 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextMenuID = MenuID
	from Menu 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from Menu where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from Menu 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextMenuID = MenuID
	from Menu 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update Menu 
set [SortOrder] = @CurrentSortOrder
where [MenuID] = @MenuID

update Menu 
set [SortOrder] = @NextSortOrder
where [MenuID] = @NextMenuID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ArticleImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ArticleImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ArticleImage_Delete]
@ArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Article set ImageName = NULL where [ArticleID] = @ArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameArticle_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_SameArticle_SelectAll]
@RerultCount int = NULL,
@ArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ArticleCategoryID int
select  @ArticleCategoryID = ArticleCategoryID from Article where ArticleID = @ArticleID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ArticleCategoryName],
		[ArticleCategoryNameEn],
		c.[Priority]
	FROM Article c
	left join ArticleCategory ac on ac.ArticleCategoryID = c.ArticleCategoryID
	WHERE c.IsAvailable = 1 ''

if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ArticleCategoryID = '' + str(@ArticleCategoryID)

if @ArticleID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ArticleID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' ArticleID FROM Article WHERE ArticleID < '' + str(@ArticleID) + '' ''

	if @ArticleCategoryID IS NOT NULL
		set @SelectQuery = @SelectQuery + '' and ArticleCategoryID = '' + str(@ArticleCategoryID)

	set @SelectQuery = @SelectQuery + '' order by ArticleID desc) or
			c.ArticleID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' ArticleID 
				FROM Article 
				WHERE ArticleID > '' + str(@ArticleID)

	if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ArticleCategoryID = '' + str(@ArticleCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY c.Priority, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Article_QuickUpdate]
@ArticleID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

update Article set 
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsHot] = @IsHot,
	[IsNew] = @IsNew,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ArticleID] = @ArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Article_Delete]
@ArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Article
where [ArticleID] = @ArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Article_Insert]
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ArticleTitle nvarchar(100) = NULL,
@ConvertedArticleTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ArticleTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@ArticleCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Article(
	[ImageName],
	[MetaTittle],
	[MetaDescription],
	[ArticleTitle],
	[Description],
	[Content],
	[Tag],
	[MetaTittleEn],
	[MetaDescriptionEn],
	[ArticleTitleEn],
	[DescriptionEn],
	[ContentEn],
	[TagEn],
	[ArticleCategoryID],
	[CreateDate],
	[IsShowOnHomePage],
	[IsHot],
	[IsNew],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@MetaTittle,
	@MetaDescription,
	@ArticleTitle,
	@Description,
	@Content,
	@Tag,
	@MetaTittleEn,
	@MetaDescriptionEn,
	@ArticleTitleEn,
	@DescriptionEn,
	@ContentEn,
	@TagEn,
	@ArticleCategoryID,
	getdate(),
	@IsShowOnHomePage,
	@IsHot,
	@IsNew,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedArticleTitle is null then '''' else @ConvertedArticleTitle + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update Article set [ImageName] = @ImageName where ArticleID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderArticle_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OlderArticle_SelectAll]
@RerultCount int = NULL,
@ArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ArticleCategoryID int
select  @ArticleCategoryID = ArticleCategoryID from Article where ArticleID = @ArticleID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ArticleCategoryName],
		[ArticleCategoryNameEn],
		c.[Priority]
	FROM Article c
	left join ArticleCategory ac on ac.ArticleCategoryID = c.ArticleCategoryID
	WHERE c.IsAvailable = 1 ''

if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ArticleCategoryID = '' + str(@ArticleCategoryID)

if @ArticleID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ArticleID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ArticleID FROM Article WHERE ArticleID < '' + str(@ArticleID) + '' ''

if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ArticleCategoryID = '' + str(@ArticleCategoryID)

end

set @SelectQuery = @SelectQuery + '' order by - Priority desc, ArticleID desc) ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Article_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Article_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Article_Update]
@ArticleID int = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ArticleTitle nvarchar(100) = NULL,
@ConvertedArticleTitle nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ArticleTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@ArticleCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedArticleTitle is null then '''' else @ConvertedArticleTitle + ''-'' end + cast(@ArticleID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Article where ArticleID = @ArticleID

update Article set 
	[ImageName] = @ImageName,
	[MetaTittle] = @MetaTittle,
	[MetaDescription] = @MetaDescription,
	[ArticleTitle] = @ArticleTitle,
	[Description] = @Description,
	[Content] = @Content,
	[Tag] = @Tag,
	[MetaTittleEn] = @MetaTittleEn,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ArticleTitleEn] = @ArticleTitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ContentEn] = @ContentEn,
	[TagEn] = @TagEn,
	[ArticleCategoryID] = @ArticleCategoryID,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsHot] = @IsHot,
	[IsNew] = @IsNew,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ArticleID] = @ArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerArticle_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_NewerArticle_SelectAll]
@RerultCount int = NULL,
@ArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ArticleCategoryID int
select  @ArticleCategoryID = ArticleCategoryID from Article where ArticleID = @ArticleID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ArticleCategoryName],
		[ArticleCategoryNameEn],
		c.[Priority]
	FROM Article c
	left join ArticleCategory ac on ac.ArticleCategoryID = c.ArticleCategoryID
	WHERE c.IsAvailable = 1 ''

if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ArticleCategoryID = '' + str(@ArticleCategoryID)

if @ArticleID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ArticleID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ArticleID 
			FROM Article 
			WHERE ArticleID > '' + str(@ArticleID)

if @ArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ArticleCategoryID = '' + str(@ArticleCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Career_Update]
@CareerID int = NULL,
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@CareerTitle nvarchar(100) = NULL,
@ConvertedCareerTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@CareerTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@CareerCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedCareerTitle is null then '''' else @ConvertedCareerTitle + ''-'' end + cast(@CareerID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Career where CareerID = @CareerID

update Career set 
	[ImageName] = @ImageName,
	[MetaTittle] = @MetaTittle,
	[MetaDescription] = @MetaDescription,
	[CareerTitle] = @CareerTitle,
	[Description] = @Description,
	[Content] = @Content,
	[Tag] = @Tag,
	[MetaTittleEn] = @MetaTittleEn,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[CareerTitleEn] = @CareerTitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ContentEn] = @ContentEn,
	[TagEn] = @TagEn,
	[CareerCategoryID] = @CareerCategoryID,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [CareerID] = @CareerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerCareer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerCareer_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_NewerCareer_SelectAll]
@RerultCount int = NULL,
@CareerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @CareerCategoryID int
select  @CareerCategoryID = CareerCategoryID from Career where CareerID = @CareerID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [CareerID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[CareerTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[CareerTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[CareerCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[CareerCategoryName],
		[CareerCategoryNameEn],
		c.[Priority]
	FROM Career c
	left join CareerCategory ac on ac.CareerCategoryID = c.CareerCategoryID
	WHERE c.IsAvailable = 1 ''

if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.CareerCategoryID = '' + str(@CareerCategoryID)

if @CareerID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.CareerID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' CareerID 
			FROM Career 
			WHERE CareerID > '' + str(@CareerID)

if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and CareerCategoryID = '' + str(@CareerCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Career_Delete]
@CareerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Career
where [CareerID] = @CareerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameCareer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameCareer_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_SameCareer_SelectAll]
@RerultCount int = NULL,
@CareerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @CareerCategoryID int
select  @CareerCategoryID = CareerCategoryID from Career where CareerID = @CareerID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [CareerID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[CareerTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[CareerTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[CareerCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[CareerCategoryName],
		[CareerCategoryNameEn],
		c.[Priority]
	FROM Career c
	left join CareerCategory ac on ac.CareerCategoryID = c.CareerCategoryID
	WHERE c.IsAvailable = 1 ''

if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.CareerCategoryID = '' + str(@CareerCategoryID)

if @CareerID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.CareerID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' CareerID FROM Career WHERE CareerID < '' + str(@CareerID) + '' ''

	if @CareerCategoryID IS NOT NULL
		set @SelectQuery = @SelectQuery + '' and CareerCategoryID = '' + str(@CareerCategoryID)

	set @SelectQuery = @SelectQuery + '' order by CareerID desc) or
			c.CareerID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' CareerID 
				FROM Career 
				WHERE CareerID > '' + str(@CareerID)

	if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and CareerCategoryID = '' + str(@CareerCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY c.Priority, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Career_QuickUpdate]
@CareerID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

update Career set 
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [CareerID] = @CareerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderCareer_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderCareer_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OlderCareer_SelectAll]
@RerultCount int = NULL,
@CareerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @CareerCategoryID int
select  @CareerCategoryID = CareerCategoryID from Career where CareerID = @CareerID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [CareerID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[CareerTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[CareerTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[CareerCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[CareerCategoryName],
		[CareerCategoryNameEn],
		c.[Priority]
	FROM Career c
	left join CareerCategory ac on ac.CareerCategoryID = c.CareerCategoryID
	WHERE c.IsAvailable = 1 ''

if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.CareerCategoryID = '' + str(@CareerCategoryID)

if @CareerID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.CareerID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' CareerID FROM Career WHERE CareerID < '' + str(@CareerID) + '' ''

if @CareerCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and CareerCategoryID = '' + str(@CareerCategoryID)

end

set @SelectQuery = @SelectQuery + '' order by - Priority desc, CareerID desc) ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CareerImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CareerImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_CareerImage_Delete]
@CareerID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Career set ImageName = NULL where [CareerID] = @CareerID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Career_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Career_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Career_Insert]
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@CareerTitle nvarchar(100) = NULL,
@ConvertedCareerTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@CareerTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@CareerCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Career(
	[ImageName],
	[MetaTittle],
	[MetaDescription],
	[CareerTitle],
	[Description],
	[Content],
	[Tag],
	[MetaTittleEn],
	[MetaDescriptionEn],
	[CareerTitleEn],
	[DescriptionEn],
	[ContentEn],
	[TagEn],
	[CareerCategoryID],
	[CreateDate],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@MetaTittle,
	@MetaDescription,
	@CareerTitle,
	@Description,
	@Content,
	@Tag,
	@MetaTittleEn,
	@MetaDescriptionEn,
	@CareerTitleEn,
	@DescriptionEn,
	@ContentEn,
	@TagEn,
	@CareerCategoryID,
	getdate(),
	@IsShowOnHomePage,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedCareerTitle is null then '''' else @ConvertedCareerTitle + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update Career set [ImageName] = @ImageName where CareerID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Service_Update]
@ServiceID int = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ServiceTitle nvarchar(100) = NULL,
@ConvertedServiceTitle nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ServiceTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@ServiceCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedServiceTitle is null then '''' else @ConvertedServiceTitle + ''-'' end + cast(@ServiceID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from Service where ServiceID = @ServiceID

update Service set 
	[ImageName] = @ImageName,
	[MetaTittle] = @MetaTittle,
	[MetaDescription] = @MetaDescription,
	[ServiceTitle] = @ServiceTitle,
	[Description] = @Description,
	[Content] = @Content,
	[Tag] = @Tag,
	[MetaTittleEn] = @MetaTittleEn,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[ServiceTitleEn] = @ServiceTitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ContentEn] = @ContentEn,
	[TagEn] = @TagEn,
	[ServiceCategoryID] = @ServiceCategoryID,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsHot] = @IsHot,
	[IsNew] = @IsNew,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ServiceID] = @ServiceID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Service_Insert]
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@ServiceTitle nvarchar(100) = NULL,
@ConvertedServiceTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@ServiceTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@ServiceCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Service(
	[ImageName],
	[MetaTittle],
	[MetaDescription],
	[ServiceTitle],
	[Description],
	[Content],
	[Tag],
	[MetaTittleEn],
	[MetaDescriptionEn],
	[ServiceTitleEn],
	[DescriptionEn],
	[ContentEn],
	[TagEn],
	[ServiceCategoryID],
	[CreateDate],
	[IsShowOnHomePage],
	[IsHot],
	[IsNew],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@MetaTittle,
	@MetaDescription,
	@ServiceTitle,
	@Description,
	@Content,
	@Tag,
	@MetaTittleEn,
	@MetaDescriptionEn,
	@ServiceTitleEn,
	@DescriptionEn,
	@ContentEn,
	@TagEn,
	@ServiceCategoryID,
	getdate(),
	@IsShowOnHomePage,
	@IsHot,
	@IsNew,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedServiceTitle is null then '''' else @ConvertedServiceTitle + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update Service set [ImageName] = @ImageName where ServiceID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameService_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameService_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_SameService_SelectAll]
@RerultCount int = NULL,
@ServiceID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ServiceCategoryID int
select  @ServiceCategoryID = ServiceCategoryID from Service where ServiceID = @ServiceID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ServiceID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ServiceTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ServiceTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ServiceCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ServiceCategoryName],
		[ServiceCategoryNameEn],
		c.[Priority]
	FROM Service c
	left join ServiceCategory ac on ac.ServiceCategoryID = c.ServiceCategoryID
	WHERE c.IsAvailable = 1 ''

if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ServiceCategoryID = '' + str(@ServiceCategoryID)

if @ServiceID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ServiceID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' ServiceID FROM Service WHERE ServiceID < '' + str(@ServiceID) + '' ''

	if @ServiceCategoryID IS NOT NULL
		set @SelectQuery = @SelectQuery + '' and ServiceCategoryID = '' + str(@ServiceCategoryID)

	set @SelectQuery = @SelectQuery + '' order by ServiceID desc) or
			c.ServiceID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' ServiceID 
				FROM Service 
				WHERE ServiceID > '' + str(@ServiceID)

	if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ServiceCategoryID = '' + str(@ServiceCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY c.Priority, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Service_QuickUpdate]
@ServiceID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsHot bit = NULL,
@IsNew bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

update Service set 
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsHot] = @IsHot,
	[IsNew] = @IsNew,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [ServiceID] = @ServiceID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerService_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerService_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_NewerService_SelectAll]
@RerultCount int = NULL,
@ServiceID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ServiceCategoryID int
select  @ServiceCategoryID = ServiceCategoryID from Service where ServiceID = @ServiceID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ServiceID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ServiceTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ServiceTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ServiceCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ServiceCategoryName],
		[ServiceCategoryNameEn],
		c.[Priority]
	FROM Service c
	left join ServiceCategory ac on ac.ServiceCategoryID = c.ServiceCategoryID
	WHERE c.IsAvailable = 1 ''

if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ServiceCategoryID = '' + str(@ServiceCategoryID)

if @ServiceID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ServiceID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ServiceID 
			FROM Service 
			WHERE ServiceID > '' + str(@ServiceID)

if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ServiceCategoryID = '' + str(@ServiceCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Service_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Service_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Service_Delete]
@ServiceID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Service
where [ServiceID] = @ServiceID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderService_SelectAll]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderService_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OlderService_SelectAll]
@RerultCount int = NULL,
@ServiceID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ServiceCategoryID int
select  @ServiceCategoryID = ServiceCategoryID from Service where ServiceID = @ServiceID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [ServiceID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[ServiceTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[ServiceTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[ServiceCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[ServiceCategoryName],
		[ServiceCategoryNameEn],
		c.[Priority]
	FROM Service c
	left join ServiceCategory ac on ac.ServiceCategoryID = c.ServiceCategoryID
	WHERE c.IsAvailable = 1 ''

if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.ServiceCategoryID = '' + str(@ServiceCategoryID)

if @ServiceID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.ServiceID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' ServiceID FROM Service WHERE ServiceID < '' + str(@ServiceID) + '' ''

if @ServiceCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and ServiceCategoryID = '' + str(@ServiceCategoryID)

end

set @SelectQuery = @SelectQuery + '' order by - Priority desc, ServiceID desc) ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ServiceImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_ServiceImage_Delete]
@ServiceID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Service set ImageName = NULL where [ServiceID] = @ServiceID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_DownloadCategory_Delete]
@DownloadCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from DownloadCategory
where [DownloadCategoryID] = @DownloadCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_SelectOne]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_DownloadCategory_SelectOne]
@DownloadCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[DownloadCategoryID],
	[ImageName],
	[DownloadCategoryName],
	[DownloadCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
from DownloadCategory
where [DownloadCategoryID] = @DownloadCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_DownloadCategory_Update]
@DownloadCategoryID int = NULL,
@ImageName nvarchar(100) = NULL,
@DownloadCategoryName nvarchar(100) = NULL,
@DownloadCategoryNameEn nvarchar(100) = NULL,
@ConvertedDownloadCategoryName nvarchar(100) = NULL,
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedDownloadCategoryName is null then '''' else @ConvertedDownloadCategoryName + ''-'' end + cast(@DownloadCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from DownloadCategory where DownloadCategoryID = @DownloadCategoryID

update DownloadCategory set 
	[ImageName] = @ImageName,
	[DownloadCategoryName] = @DownloadCategoryName,
	[DownloadCategoryNameEn] = @DownloadCategoryNameEn,
	[Description] = @Description,
	[DescriptionEn] = @DescriptionEn,
	[Content] = @Content,
	[ContentEn] = @ContentEn,
	[MetaTitle] = @MetaTitle,
	[MetaTitleEn] = @MetaTitleEn,
	[MetaDescription] = @MetaDescription,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [DownloadCategoryID] = @DownloadCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[usp_DownloadCategory_Insert]
@ImageName nvarchar(100) = NULL,
@DownloadCategoryName nvarchar(100) = NULL,
@DownloadCategoryNameEn nvarchar(100) = NULL,
@ConvertedDownloadCategoryName nvarchar(100) = NULL, 
@Description nvarchar(500) = NULL,
@DescriptionEn nvarchar(500) = NULL,
@Content nvarchar(max) = NULL,
@ContentEn nvarchar(max) = NULL,
@MetaTitle nvarchar(100) = NULL,
@MetaTitleEn nvarchar(100) = NULL,
@MetaDescription nvarchar(300) = NULL,
@MetaDescriptionEn nvarchar(300) = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into DownloadCategory(
	[ImageName],
	[DownloadCategoryName],
	[DownloadCategoryNameEn],
	[Description],
	[DescriptionEn],
	[Content],
	[ContentEn],
	[MetaTitle],
	[MetaTitleEn],
	[MetaDescription],
	[MetaDescriptionEn],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@DownloadCategoryName,
	@DownloadCategoryNameEn,
	@Description,
	@DescriptionEn,
	@Content,
	@ContentEn,
	@MetaTitle,
	@MetaTitleEn,
	@MetaDescription,
	@MetaDescriptionEn,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedDownloadCategoryName is null then '''' else @ConvertedDownloadCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update DownloadCategory set [ImageName] = @ImageName where DownloadCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR

' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategory_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_DownloadCategory_QuickUpdate]
@DownloadCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update DownloadCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [DownloadCategoryID] = @DownloadCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_DownloadCategoryImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_DownloadCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_DownloadCategoryImage_Delete]
@DownloadCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update DownloadCategory set ImageName = NULL where [DownloadCategoryID] = @DownloadCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_Update]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Video_Update]
@VideoID int = NULL,
@Title nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescriptionEn nvarchar(1000) = NULL,
@ConvertedTitle nvarchar(100) = NULL,
@ImagePath nvarchar(100) = NULL,
@VideoPath nvarchar(100) = NULL,
@GLobalEmbedScript nvarchar(1000) = NULL,
@VideoCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

if @ImagePath IS NOT NULL
	set @ImagePath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@VideoID as nvarchar(50)) + substring(@ImagePath,len(@ImagePath) - CHARINDEX(''.'',reverse(@ImagePath)) + 1,len(@ImagePath))
else
	select @ImagePath = ImagePath from Video where VideoID = @VideoID

if @VideoPath IS NOT NULL
	set @VideoPath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@VideoID as nvarchar(50)) + substring(@VideoPath,len(@VideoPath) - CHARINDEX(''.'',reverse(@VideoPath)) + 1,len(@VideoPath))
else
	select @VideoPath = VideoPath from Video where VideoID = @VideoID

update Video set 
	[Title] = @Title,
	[Description] = @Description,
	[TitleEn] = @TitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ImagePath] = @ImagePath,
	[VideoPath] = @VideoPath,
	[GLobalEmbedScript] = @GLobalEmbedScript,
	[VideoCategoryID] = @VideoCategoryID,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [VideoID] = @VideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoImage_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_VideoImage_Delete]
@VideoID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Video set ImagePath = NULL where [VideoID] = @VideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_Insert]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_Video_Insert]
@Title nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@TitleEn nvarchar(200) = NULL,
@DescriptionEn nvarchar(1000) = NULL,
@ConvertedTitle nvarchar(100) = NULL,
@ImagePath nvarchar(100) = NULL,
@VideoPath nvarchar(100) = NULL,
@GLobalEmbedScript nvarchar(1000) = NULL,
@VideoCategoryID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutVideoID int = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into Video(
	[Title],
	[Description],
	[TitleEn],
	[DescriptionEn],
	[ImagePath],
	[VideoPath],
	[GLobalEmbedScript],
	[VideoCategoryID],
	[CreateDate],
	[IsAvailable],
	[Priority]
) values(
	@Title,
	@Description,
	@TitleEn,
	@DescriptionEn,
	@ImagePath,
	@VideoPath,
	@GLobalEmbedScript,
	@VideoCategoryID,
	getdate(),
	@IsAvailable,
	@Priority
)

SELECT @OutVideoID = SCOPE_IDENTITY();

if @ImagePath IS NOT NULL
	set @ImagePath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@OutVideoID as nvarchar(50)) + substring(@ImagePath,len(@ImagePath) - CHARINDEX(''.'',reverse(@ImagePath)) + 1,len(@ImagePath))

if @VideoPath IS NOT NULL
	set @VideoPath = case when @ConvertedTitle is null then '''' else @ConvertedTitle + ''-'' end + cast(@OutVideoID as nvarchar(50)) + substring(@VideoPath,len(@VideoPath) - CHARINDEX(''.'',reverse(@VideoPath)) + 1,len(@VideoPath))

update Video set [ImagePath] = @ImagePath, [VideoPath] = @VideoPath where VideoID = @OutVideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_QuickUpdate]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Video_QuickUpdate]
@VideoID int = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
update Video set 
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [VideoID] = @VideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_VideoCategory_IsChildrenExist]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_VideoCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_VideoCategory_IsChildrenExist]
@VideoCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from Video 
where VideoCategoryID = @VideoCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Video_Delete]    Script Date: 09/03/2015 10:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Video_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_Video_Delete]
@VideoID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from Video
where [VideoID] = @VideoID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 09/03/2015 10:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__014935CB]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__014935CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]  DEFAULT (newid()) FOR [ApplicationId]
END


End
GO
/****** Object:  Default [DF__aspnet_Me__Passw__164452B1]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__164452B1]  DEFAULT ((0)) FOR [PasswordFormat]
END


End
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__46E78A0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]  DEFAULT (newid()) FOR [PathId]
END


End
GO
/****** Object:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]  DEFAULT (newid()) FOR [Id]
END


End
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__33D4B598]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]  DEFAULT (newid()) FOR [RoleId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0519C6AF]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]  DEFAULT (newid()) FOR [UserId]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]  DEFAULT (NULL) FOR [MobileAlias]
END


End
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__07020F21]    Script Date: 09/03/2015 10:08:26 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__07020F21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]  DEFAULT ((0)) FOR [IsAnonymous]
END


End
GO
/****** Object:  Default [DF_Rating_Rating1_1]    Script Date: 09/03/2015 10:08:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating1_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating1_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_Rating1_1]  DEFAULT ((0)) FOR [Rating1]
END


End
GO
/****** Object:  Default [DF_Rating_Rating2_1]    Script Date: 09/03/2015 10:08:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating2_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating2_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_Rating2_1]  DEFAULT ((0)) FOR [Rating2]
END


End
GO
/****** Object:  Default [DF_Rating_Rating3_1]    Script Date: 09/03/2015 10:08:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating3_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating3_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_Rating3_1]  DEFAULT ((0)) FOR [Rating3]
END


End
GO
/****** Object:  Default [DF_Rating_Rating4_1]    Script Date: 09/03/2015 10:08:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating4_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating4_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_Rating4_1]  DEFAULT ((0)) FOR [Rating4]
END


End
GO
/****** Object:  Default [DF_Rating_Rating5_1]    Script Date: 09/03/2015 10:08:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Rating_Rating5_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Rating_Rating5_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Rating] ADD  CONSTRAINT [DF_Rating_Rating5_1]  DEFAULT ((0)) FOR [Rating5]
END


End
GO
/****** Object:  ForeignKey [FK_AdsBanner_AdsCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdsBanner_AdsCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdsBanner]'))
ALTER TABLE [dbo].[AdsBanner]  WITH CHECK ADD  CONSTRAINT [FK_AdsBanner_AdsCategory] FOREIGN KEY([AdsCategoryID])
REFERENCES [dbo].[AdsCategory] ([AdsCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AdsBanner_AdsCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[AdsBanner]'))
ALTER TABLE [dbo].[AdsBanner] CHECK CONSTRAINT [FK_AdsBanner_AdsCategory]
GO
/****** Object:  ForeignKey [FK_Article_ArticleCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Article_ArticleCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Article]'))
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_ArticleCategory] FOREIGN KEY([ArticleCategoryID])
REFERENCES [dbo].[ArticleCategory] ([ArticleCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Article_ArticleCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Article]'))
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_ArticleCategory]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__15502E78] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__5070F446] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__29572725] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0425A276] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__36B12243] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
/****** Object:  ForeignKey [FK_Career_CareerCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Career_CareerCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Career]'))
ALTER TABLE [dbo].[Career]  WITH CHECK ADD  CONSTRAINT [FK_Career_CareerCategory] FOREIGN KEY([CareerCategoryID])
REFERENCES [dbo].[CareerCategory] ([CareerCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Career_CareerCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Career]'))
ALTER TABLE [dbo].[Career] CHECK CONSTRAINT [FK_Career_CareerCategory]
GO
/****** Object:  ForeignKey [FK_Download_DownloadCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Download_DownloadCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Download]'))
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_DownloadCategory] FOREIGN KEY([DownloadCategoryID])
REFERENCES [dbo].[DownloadCategory] ([DownloadCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Download_DownloadCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Download]'))
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_DownloadCategory]
GO
/****** Object:  ForeignKey [FK_Menu_MenuPosition]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Menu_MenuPosition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Menu]'))
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_MenuPosition] FOREIGN KEY([MenuPositionID])
REFERENCES [dbo].[MenuPosition] ([MenuPositionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Menu_MenuPosition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Menu]'))
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_MenuPosition]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Order]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Order]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetail_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
/****** Object:  ForeignKey [FK_Orders_OrderStatus]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_OrderStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_OrderStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]'))
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStatus]
GO
/****** Object:  ForeignKey [FK_PhotoAlbum_PhotoAlbumCategory]    Script Date: 09/03/2015 10:08:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhotoAlbum_PhotoAlbumCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhotoAlbum]'))
ALTER TABLE [dbo].[PhotoAlbum]  WITH CHECK ADD  CONSTRAINT [FK_PhotoAlbum_PhotoAlbumCategory] FOREIGN KEY([PhotoAlbumCategoryID])
REFERENCES [dbo].[PhotoAlbumCategory] ([PhotoAlbumCategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhotoAlbum_PhotoAlbumCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhotoAlbum]'))
ALTER TABLE [dbo].[PhotoAlbum] CHECK CONSTRAINT [FK_PhotoAlbum_PhotoAlbumCategory]
GO
/****** Object:  ForeignKey [FK_Product_Manufacturer]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
/****** Object:  ForeignKey [FK_Product_Origin]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Origin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Origin] FOREIGN KEY([OriginID])
REFERENCES [dbo].[Origin] ([OriginID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Origin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Origin]
GO
/****** Object:  ForeignKey [FK_Product_ProductCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_ProductCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_ProductCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
/****** Object:  ForeignKey [FK_ProductDownload_Product]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDownload_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDownload]'))
ALTER TABLE [dbo].[ProductDownload]  WITH CHECK ADD  CONSTRAINT [FK_ProductDownload_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductDownload_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductDownload]'))
ALTER TABLE [dbo].[ProductDownload] CHECK CONSTRAINT [FK_ProductDownload_Product]
GO
/****** Object:  ForeignKey [FK_ProductImage_Product]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImage_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImage]'))
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductImage_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImage]'))
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
/****** Object:  ForeignKey [FK_Project_ProjectCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Project_ProjectCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Project]'))
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_ProjectCategory] FOREIGN KEY([ProjectCategoryID])
REFERENCES [dbo].[ProjectCategory] ([ProjectCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Project_ProjectCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Project]'))
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_ProjectCategory]
GO
/****** Object:  ForeignKey [FK_ProjectDownload_Project]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectDownload_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectDownload]'))
ALTER TABLE [dbo].[ProjectDownload]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDownload_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectDownload_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectDownload]'))
ALTER TABLE [dbo].[ProjectDownload] CHECK CONSTRAINT [FK_ProjectDownload_Project]
GO
/****** Object:  ForeignKey [FK_ProjectImage_Project]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectImage_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectImage]'))
ALTER TABLE [dbo].[ProjectImage]  WITH CHECK ADD  CONSTRAINT [FK_ProjectImage_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectImage_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectImage]'))
ALTER TABLE [dbo].[ProjectImage] CHECK CONSTRAINT [FK_ProjectImage_Project]
GO
/****** Object:  ForeignKey [FK_ProjectVideo_Project]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectVideo_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectVideo]'))
ALTER TABLE [dbo].[ProjectVideo]  WITH CHECK ADD  CONSTRAINT [FK_ProjectVideo_Project] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Project] ([ProjectID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectVideo_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectVideo]'))
ALTER TABLE [dbo].[ProjectVideo] CHECK CONSTRAINT [FK_ProjectVideo_Project]
GO
/****** Object:  ForeignKey [FK_Rating_Product]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Product]
GO
/****** Object:  ForeignKey [FK_Service_ServiceCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Service_ServiceCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Service]'))
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_ServiceCategory] FOREIGN KEY([ServiceCategoryID])
REFERENCES [dbo].[ServiceCategory] ([ServiceCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Service_ServiceCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Service]'))
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_ServiceCategory]
GO
/****** Object:  ForeignKey [FK_Video_VideoCategory]    Script Date: 09/03/2015 10:08:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_VideoCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_VideoCategory] FOREIGN KEY([VideoCategoryID])
REFERENCES [dbo].[VideoCategory] ([VideoCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_VideoCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_VideoCategory]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_MembershipUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Profiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Roles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_UsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Paths] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Shared] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_User] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
