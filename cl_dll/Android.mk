LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := client

include $(XASH3D_CONFIG)

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
LOCAL_MODULE_FILENAME = libclient_hardfp
endif

SOURCE_DIR = ..

UTIL_DIR=$(SOURCE_DIR)/util
UI_DIR=$(SOURCE_DIR)/ui
NS_MOD_SRC_DIR=$(SOURCE_DIR)/mod
HL1_DIR=$(SOURCE_DIR)/cl_dll
HL_SERVER_DIR=$(SOURCE_DIR)/dlls
HL1_SERVER_DIR=$(SOURCE_DIR)/dlls

GAME_SHARED_DIR=$(SOURCE_DIR)/game_shared
PM_SHARED_DIR=$(SOURCE_DIR)/pm_shared
TEXTREP_DIR=$(SOURCE_DIR)/textrep
VGUI_DIR=$(SOURCE_DIR)/vgui_dll
NS_MOD_DIR=$(SOURCE_DIR)/mod
COMMON_DIR=$(SOURCE_DIR)/common

NS_SOURCES = \
	$(HL1_DIR)/hl/hl_baseentity.cpp \
	$(HL1_DIR)/hl/hl_objects.cpp \
	$(HL1_DIR)/hl/hl_weapons.cpp \
	$(HL1_DIR)/ammo.cpp  \
	$(HL1_DIR)/cdll_int.cpp \
	$(HL1_DIR)/ammo_secondary.cpp \
	$(HL1_DIR)/ammohistory.cpp \
	$(HL1_DIR)/battery.cpp \
	$(HL1_DIR)/com_weapons.cpp \
	$(HL1_DIR)/death.cpp \
	$(HL1_DIR)/entity.cpp \
	$(HL1_DIR)/ev_common.cpp \
	$(HL1_DIR)/events.cpp \
	$(HL1_DIR)/flashlight.cpp \
	$(HL1_DIR)/GameStudioModelRenderer.cpp \
	$(HL1_DIR)/geiger.cpp \
	$(HL1_DIR)/hud.cpp \
	$(HL1_DIR)/hud_msg.cpp \
	$(HL1_DIR)/hud_redraw.cpp \
	$(HL1_DIR)/hud_servers.cpp \
	$(HL1_DIR)/hud_spectator.cpp \
	$(HL1_DIR)/hud_update.cpp \
	$(HL1_DIR)/in_camera.cpp \
	$(HL1_DIR)/input.cpp \
	$(HL1_DIR)/input_xash3d.cpp \
	$(HL1_DIR)/menu.cpp \
	$(HL1_DIR)/vgui_SpectatorPanel.cpp \
	$(HL1_DIR)/vgui_TeamFortressViewport.cpp \
	$(HL1_DIR)/vgui_teammenu.cpp \
	$(HL1_DIR)/view.cpp \
	$(HL1_DIR)/message.cpp \
	$(HL1_DIR)/parsemsg.cpp \
	$(HL1_DIR)/saytext.cpp \
	$(HL1_DIR)/status_icons.cpp \
	$(HL1_DIR)/statusbar.cpp \
	$(HL1_DIR)/studio_util.cpp \
	$(HL1_DIR)/StudioModelRenderer.cpp \
	$(HL1_DIR)/text_message.cpp \
	$(HL1_DIR)/train.cpp \
	$(HL1_DIR)/tri.cpp \
	$(HL1_DIR)/vgui_int.cpp \
	$(HL1_DIR)/cl_util.cpp \
	$(HL1_DIR)/ev_hldm.cpp \
	$(HL1_DIR)/vgui_MOTDWindow.cpp \
	$(HL1_DIR)/vgui_SchemeManager.cpp \
	$(HL1_DIR)/vgui_ScorePanel.cpp \
	$(HL1_DIR)/vgui_ClassMenu.cpp \
	$(HL1_DIR)/vgui_ConsolePanel.cpp \
	$(HL1_DIR)/vgui_ControlConfigPanel.cpp \
	$(HL1_DIR)/vgui_CustomObjects.cpp \
	$(HL1_DIR)/vgui_ServerBrowser.cpp \
	$(HL1_DIR)/util.cpp \
	$(HL1_DIR)/health.cpp \
	$(HL1_DIR)/demo.cpp \
	$(NS_MOD_DIR)/AvHAcidRocketGun.cpp \
	$(NS_MOD_DIR)/AvHAlienAbilities.cpp \
	$(NS_MOD_DIR)/AvHBasePlayerWeapon.cpp \
	$(NS_MOD_DIR)/AvHBileBombGun.cpp \
	$(NS_MOD_DIR)/AvHBite.cpp \
	$(NS_MOD_DIR)/AvHBite2.cpp \
	$(NS_MOD_DIR)/AvHBlink.cpp \
	$(NS_MOD_DIR)/AvHClaws.cpp \
	$(NS_MOD_DIR)/AvHDevour.cpp \
	$(NS_MOD_DIR)/AvHGrenade.cpp \
	$(NS_MOD_DIR)/AvHDivineWind.cpp \
	$(NS_MOD_DIR)/AvHGrenadeGun.cpp \
	$(NS_MOD_DIR)/AvHHealingSpray.cpp \
	$(NS_MOD_DIR)/AvHHeavyMachineGun.cpp \
	$(NS_MOD_DIR)/AvHItemInfo.cpp \
	$(NS_MOD_DIR)/AvHKnife.cpp \
	$(NS_MOD_DIR)/AvHMachineGun.cpp \
	$(NS_MOD_DIR)/AvHMarineWeapon.cpp \
	$(NS_MOD_DIR)/AvHMetabolize.cpp \
	$(NS_MOD_DIR)/AvHMine.cpp \
	$(NS_MOD_DIR)/AvHParasiteGun.cpp \
	$(NS_MOD_DIR)/AvHPistol.cpp \
	$(NS_MOD_DIR)/AvHPrimalScream.cpp \
	$(NS_MOD_DIR)/AvHSonicGun.cpp \
	$(NS_MOD_DIR)/AvHSpikeGun.cpp \
	$(NS_MOD_DIR)/AvHSpitGun.cpp \
	$(NS_MOD_DIR)/AvHSpores.cpp \
	$(NS_MOD_DIR)/AvHStomp.cpp \
	$(NS_MOD_DIR)/AvHSwipe.cpp \
	$(NS_MOD_DIR)/AvHUmbraGun.cpp \
	$(NS_MOD_DIR)/AvHWebSpinner.cpp \
	$(NS_MOD_DIR)/AvHWelder.cpp \
	$(NS_MOD_DIR)/AnimationUtil.cpp \
	$(NS_MOD_DIR)/AvHActionButtons.cpp \
	$(NS_MOD_DIR)/AvHAlienWeapon.cpp \
	$(NS_MOD_DIR)/AvHAmbientSound.cpp \
	$(NS_MOD_DIR)/AvHAssert.cpp \
	$(NS_MOD_DIR)/AvHBaseInfoLocation.cpp \
	$(NS_MOD_DIR)/AvHClientUtil.cpp \
	$(NS_MOD_DIR)/AvHCommanderModeHandler.cpp \
	$(NS_MOD_DIR)/AvHConstants.cpp \
	$(NS_MOD_DIR)/AvHEntityHierarchy.cpp \
	$(NS_MOD_DIR)/AvHEvents.cpp \
	$(NS_MOD_DIR)/AvHFont.cpp \
	$(NS_MOD_DIR)/AvHHelp.cpp \
	$(NS_MOD_DIR)/AvHHud.cpp \
	$(NS_MOD_DIR)/AvHHudRender.cpp \
	$(NS_MOD_DIR)/AvHLogoutComponent.cpp \
	$(NS_MOD_DIR)/AvHMapExtents.cpp \
	$(NS_MOD_DIR)/AvHMiniMap.cpp \
	$(NS_MOD_DIR)/AvHMovementUtil.cpp \
	$(NS_MOD_DIR)/AvHNetworkMessages.cpp \
	$(NS_MOD_DIR)/AvHNexusClient.cpp \
	$(NS_MOD_DIR)/AvHNexusTunnelToServer.cpp \
	$(NS_MOD_DIR)/AvHOrder.cpp \
	$(NS_MOD_DIR)/AvHOverviewControl.cpp \
	$(NS_MOD_DIR)/AvHOverviewMap.cpp \
	$(NS_MOD_DIR)/AvHParticleEditorHandler.cpp \
	$(NS_MOD_DIR)/AvHPieMenuHandler.cpp \
	$(NS_MOD_DIR)/AvHPlayerUpgrade.cpp \
	$(NS_MOD_DIR)/AvHScriptClient.cpp \
	$(NS_MOD_DIR)/AvHScriptManager.cpp \
	$(NS_MOD_DIR)/AvHScriptShared.cpp \
	$(NS_MOD_DIR)/AvHScrollHandler.cpp \
	$(NS_MOD_DIR)/AvHScrollPanel.cpp \
	$(NS_MOD_DIR)/AvHSharedMovementInfo.cpp \
	$(NS_MOD_DIR)/AvHSharedUtil.cpp \
	$(NS_MOD_DIR)/AvHSpecials.cpp \
	$(NS_MOD_DIR)/AvHSpriteAPI.cpp \
	$(NS_MOD_DIR)/AvHTeamHierarchy.cpp \
	$(NS_MOD_DIR)/AvHTechImpulsePanel.cpp \
	$(NS_MOD_DIR)/AvHTechNode.cpp \
	$(NS_MOD_DIR)/AvHTechSlotManager.cpp \
	$(NS_MOD_DIR)/AvHTechTree.cpp \
	$(NS_MOD_DIR)/AvHTooltip.cpp \
	$(NS_MOD_DIR)/AvHUIFactory.cpp \
	$(NS_MOD_DIR)/AvHVisibleBlipList.cpp \
	$(NS_MOD_DIR)/CollisionChecker.cpp \
	$(NS_MOD_DIR)/CollisionUtil.cpp \
	$(NS_MOD_DIR)/AvHParticleSystem.cpp \
	$(NS_MOD_DIR)/AvHParticleSystemManager.cpp \
	$(NS_MOD_DIR)/AvHParticleTemplate.cpp \
	$(NS_MOD_DIR)/AvHParticleTemplateClient.cpp \
	$(NS_MOD_DIR)/AvHSelectionHelper.cpp \
	$(COMMON_DIR)/interface.cpp \
	$(HL1_SERVER_DIR)/hl_wpn_glock.cpp \
	$(GAME_SHARED_DIR)/vgui_checkbutton2.cpp \
	$(GAME_SHARED_DIR)/vgui_grid.cpp \
	$(GAME_SHARED_DIR)/vgui_helpers.cpp \
	$(GAME_SHARED_DIR)/vgui_listbox.cpp \
	$(GAME_SHARED_DIR)/vgui_loadtga.cpp \
	$(GAME_SHARED_DIR)/vgui_scrollbar2.cpp \
	$(GAME_SHARED_DIR)/vgui_slider2.cpp \
	$(GAME_SHARED_DIR)/voice_banmgr.cpp \
	$(GAME_SHARED_DIR)/voice_status.cpp \
	$(GAME_SHARED_DIR)/voice_vgui_tweakdlg.cpp \
	$(PM_SHARED_DIR)/pm_debug.cpp \
	$(PM_SHARED_DIR)/pm_shared.cpp \
	$(PM_SHARED_DIR)/pm_math.cpp \
	$(UI_DIR)/bitmappng.cpp \
	$(UI_DIR)/ChatPanel.cpp \
	$(UI_DIR)/ColoredPanel.cpp \
	$(UI_DIR)/DummyPanel.cpp \
	$(UI_DIR)/FadingImageLabel.cpp \
	$(UI_DIR)/loadpng.cpp \
	$(UI_DIR)/MarqueeComponent.cpp \
	$(UI_DIR)/MemoryInputStream.cpp \
	$(UI_DIR)/PieMenu.cpp \
	$(UI_DIR)/PieNode.cpp \
	$(UI_DIR)/ScoreboardIcon.cpp \
	$(UI_DIR)/SliderPlus.cpp \
	$(UI_DIR)/SpritePanel.cpp \
	$(UI_DIR)/UIComponent.cpp \
	$(UI_DIR)/UIComponents.cpp \
	$(UI_DIR)/UIFactory.cpp \
	$(UI_DIR)/UIHud.cpp \
	$(UI_DIR)/UIManager.cpp \
	$(UI_DIR)/UIPieMenu.cpp \
	$(UI_DIR)/UIUtil.cpp \
	$(UI_DIR)/InvisiblePanel.cpp \
	$(UTIL_DIR)/Balance.cpp \
	$(UTIL_DIR)/Checksum.cpp \
	$(UTIL_DIR)/GammaTable.cpp \
	$(UTIL_DIR)/LinuxSupport.cpp \
	$(UTIL_DIR)/Mat3.cpp \
	$(UTIL_DIR)/MathUtil.cpp \
	$(UTIL_DIR)/Quat.cpp \
	$(UTIL_DIR)/Stacktrace.cpp \
	$(UTIL_DIR)/STLUtil.cpp \
	$(UTIL_DIR)/Tokenizer.cpp \
	$(TEXTREP_DIR)/TRDescription.cpp \
	$(TEXTREP_DIR)/TRFactory.cpp 

LOCAL_C_INCLUDES = $(LOCAL_PATH)/$(HL1_DIR) $(LOCAL_PATH)/$(NS_MOD_DIR) $(LOCAL_PATH)/$(COMMON_DIR) $(LOCAL_PATH)/$(PUBLIC_DIR) $(LOCAL_PATH)/$(PM_SHARED_DIR) $(LOCAL_PATH)/../engine $(LOCAL_PATH)/$(GAME_SHARED_DIR) $(LOCAL_PATH)/../external/ $(LOCAL_PATH)/../particles $(LOCAL_PATH)/../includes/fmodapi375linux/api/inc $(LOCAL_PATH)/$(HL_SERVER_DIR) $(LOCAL_PATH)/$(VGUI_DIR)/include $(LOCAL_PATH)/$(UI_DIR) $(LOCAL_PATH)/$(UTIL_DIR) $(LOCAL_PATH)/../ $(LOCAL_PATH)/../includes/fmodapi375linux/api $(LOCAL_PATH)/../includes/lpng1251 $(LOCAL_PATH)/../public $(LOCAL_PATH)/../common $(LOCAL_PATH)/../external $(LOCAL_PATH)/../mod $(LOCAL_PATH)/$(VGUI_DIR)/lib-src/win32 $(LOCAL_PATH)/$(VGUI_DIR)/lib-src/vgui $(LOCAL_PATH)/../xash3d/engine $(LOCAL_PATH)/../xash3d/common

LIBPNG_DIR = ../includes/lpng1251

LIBPNG_SOURCES = $(LIBPNG_DIR)/png.c $(LIBPNG_DIR)/pngerror.c $(LIBPNG_DIR)/pngget.c $(LIBPNG_DIR)/pngmem.c $(LIBPNG_DIR)/pngpread.c $(LIBPNG_DIR)/pngread.c $(LIBPNG_DIR)/pngrio.c $(LIBPNG_DIR)/pngrtran.c $(LIBPNG_DIR)/pngrutil.c $(LIBPNG_DIR)/pngset.c $(LIBPNG_DIR)/pngtrans.c $(LIBPNG_DIR)/pngwio.c $(LIBPNG_DIR)/pngwrite.c $(LIBPNG_DIR)/pngwtran.c $(LIBPNG_DIR)/pngwutil.c

ZLIB_DIR= ../includes/zlib-1.2.8

ZLIB_SOURCES = $(ZLIB_DIR)/adler32.c $(ZLIB_DIR)/compress.c $(ZLIB_DIR)/crc32.c $(ZLIB_DIR)/deflate.c $(ZLIB_DIR)/gzclose.c $(ZLIB_DIR)/gzlib.c $(ZLIB_DIR)/gzread.c $(ZLIB_DIR)/gzwrite.c $(ZLIB_DIR)/inflate.c $(ZLIB_DIR)/infback.c $(ZLIB_DIR)/inftrees.c $(ZLIB_DIR)/inffast.c $(ZLIB_DIR)/trees.c $(ZLIB_DIR)/uncompr.c $(ZLIB_DIR)/zutil.c

VGUI_SOURCES = $(VGUI_DIR)/lib-src/linux/App.cpp $(VGUI_DIR)/lib-src/linux/Cursor.cpp $(VGUI_DIR)/lib-src/linux/fileimage.cpp $(VGUI_DIR)/lib-src/linux/Font.cpp $(VGUI_DIR)/lib-src/linux/Surface.cpp $(VGUI_DIR)/lib-src/linux/vfontdata.cpp $(VGUI_DIR)/lib-src/linux/vgui.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/App.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Bitmap.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/BitmapTGA.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Border.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/BorderLayout.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/BorderPair.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/BuildGroup.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Button.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ButtonGroup.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/CheckButton.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Color.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ConfigWizard.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Cursor.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/DataInputStream.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Desktop.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/DesktopIcon.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/EditPanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/EtchedBorder.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/FileInputStream.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/FlowLayout.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/FocusNavGroup.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Font.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Frame.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/GridLayout.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/HeaderPanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Image.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ImagePanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/IntLabel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Label.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Layout.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/LineBorder.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ListPanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/LoweredBorder.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Menu.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/MenuItem.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/MenuSeparator.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/MessageBox.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/MiniApp.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Panel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/PopupMenu.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ProgressBar.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/RadioButton.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/RaisedBorder.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Scheme.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ScrollBar.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ScrollPanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Slider.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/StackLayout.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/String.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/SurfaceBase.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/Surface.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TablePanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TabPanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TaskBar.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TextEntry.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TextGrid.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TextImage.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TextPanel.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/ToggleButton.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/TreeFolder.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/vgui.cpp $(VGUI_DIR)/../vgui_dll/lib-src/vgui/WizardPanel.cpp

VGUI_SUPPORT_SOURCES = ../xash3d/vgui_support/vgui_clip.cpp ../xash3d/vgui_support/vgui_font.cpp ../xash3d/vgui_support/vgui_input.cpp ../xash3d/vgui_support/vgui_int.cpp ../xash3d/vgui_support/vgui_surf.cpp

PARTICLES_SOURCES = ../particles/action_api.cpp ../particles/actions.cpp ../particles/HLRender.cpp ../particles/opengl.cpp ../particles/system.cpp

LOCAL_SRC_FILES = $(NS_SOURCES) $(LIBPNG_SOURCES) $(ZLIB_SOURCES) $(VGUI_SOURCES) $(VGUI_SUPPORT_SOURCES) $(PARTICLES_SOURCES)

LOCAL_CFLAGS += -DNO_SDL -DINTERNAL_VGUI_SUPPORT -DNO_OPENGL -DVGUI_NO_INTERNAL_NEW -w -DLINUX -Dstricmp=strcasecmp -D_vsnprintf=vsnprintf -D_snprintf=snprintf -Dstrnicmp=strncasecmp -DCLIENT_DLL -D_snwprintf=swprintf -DAVH_CLIENT -DUSE_OLDAUTH -DAVH_NO_NEXUS -DASSERT=assert -Dsprintf_s=snprintf -DDISABLE_VEC_FUNCS -DDISABLE_VEC_ORIGIN -fpermissive


include $(BUILD_SHARED_LIBRARY)