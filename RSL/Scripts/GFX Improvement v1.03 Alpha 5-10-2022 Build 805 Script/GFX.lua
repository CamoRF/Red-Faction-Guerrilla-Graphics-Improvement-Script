local function SetGraphicsSettings()
--GENERAL--
	rfg.Misc.DistortionScale = 0                                      --Default 0.09
	rfg.Misc.DistortionBlurScale = 0                                  --Default 2.00

--DEPTH OF FIELD--
	rfg.Dof.FocusStartA = 15.0                             			  --Default 1.0
	rfg.Dof.FocusStartB = 25.0                                        --Default 3.0
	rfg.Dof.FocusEndA = 100.0                                         --Default 3.0
	rfg.Dof.FocusEndB = 150.0                                         --Default 100.0
	
--SHADOWS--
	rfg.SetShadowResolutions(8192, 9216, 9728, 9728)                  --Resolution of shadow cascades from right to left
	rfg.Shadows.ShadowMapFadePercent = 0.2                            --Default 0.8
	rfg.Shadows.DropShadowPercent = 1.0                               --Default 0.4
	rfg.Shadows.ShadowPercent = 0.7                                   --Default 1.0
											
--CLOUD SHADOWS--
	rfg.Shadows.CloudShadowScale = 0.5                                --Default 0.5
	rfg.Shadows.CloudShadowIntensityScale = 4.5                       --Default 4.5
																	  
--HDR AND BLOOM--
	rfg.Hdr.BloomAmount = 0.125		  		                          --Default 2.5
	rfg.Hdr.LuminanceMin = 0.001							          --Default 0.001
	rfg.Hdr.LuminanceMax = 2.0							              --Default 4.0
	rfg.Lighting.CoronaAdaptionRate = 0.3						      --Default 0.6
	rfg.Hdr.HdrLevel = 0.125		          			              --Default 0.6
	rfg.Hdr.EyeAdaptionBase = 0.1			                          --Default 0.2
	rfg.Hdr.EyeAdaptionAmount = 0.25					              --Default 0.5

--LIGHTING--
	rfg.Lighting.SubstanceSpecAlphaScale = 9.0    			          --Default 7.0
	rfg.Lighting.SubstanceSpecPowerScale = 18.0                       --Default 16.0
	rfg.Lighting.SubstanceFresnelAlphaScale = 1.75            	      --Default 1.0
	rfg.Lighting.SubstanceFresnelPowerScale = 1.05                    --Default 0.6
	rfg.Lighting.AmbientSpecularScale = 1.0                           --Default 0.57
	rfg.Lighting.GlassFresnelPower = 2.8                              --Default 1.4
	rfg.Lighting.IndirectLightScale = 0.038                           --Default 0.019
	rfg.Lighting.IndirectLightAmount = 0.78                           --Default 0.5
	
--SSAO--
	rfg.Ssao.Intensity = 8.0						  	              --Default 4.0
	rfg.Ssao.ImagePlanePixelsPerMeterFactor = 0.62		              --Default 0.32
	rfg.Ssao.Radius = 2.2			                                  --Default 1.2			  	    
	rfg.Ssao.DepthFadeRange = 7.5					              	  --Default 1.0

--SUN SHAFTS--
	rfg.SunShafts.Scale = 30.0             			                  --Default 1.0
	rfg.SunShafts.Radius = 30.0                                       --Default 5.0
	rfg.SunShafts.BlurMultiplier = 2.0                                --Default 1.0								  
	rfg.SunShafts.BaseLum = 1.28                                      --Default 1.0
	rfg.SunShafts.LumStepScale = 1.28                                 --Default 1.0
	rfg.SunShafts.UseHalfResSource = false				              --Default true
	
--LOD--
	rfg.Terrain.FadeStart = 3072 					                  --Default 140.0, Max 11562.0 for anything LOD related.			      
    rfg.Terrain.FadeEnd = 3072                                        --Default 250.0
	rfg.SetFarClip(3072)                    
    rfg.SetHighLodFarClip(3072)
	rfg.LodInfo.Dist = 3072
	rfg.ObjectRenderDistance = 3072
	
--SHADOW LOD--
	rfg.Shadows.ShadowMapMaxDist = 125.0                              --Default 100
	rfg.Shadows.TerrainShadowMaxDist = 260.0                          --Default 240.0		
	
--MISC
	rfg.Terrain.AnisotropyLevel = 0						              --Default 8
	rfg.Misc.FxaaEnabled = false 						              --Default true
	
--MESSAGE POPUPS--    
	rfg.AddUiMessage ("GFX Improvement v1.03a 5-10 805 loaded!", 2.0, true, true)
	rfg.AddUiMessage ("Disable shadows in settings and turn them back on to high for changes to apply!", 2.0, true, true)	
end	

local function OnLoad()
	SetGraphicsSettings()
end

local function Initialized()
	SetGraphicsSettings()
end

rfg.RegisterEvent("Initialized", Initialized, "[Camo graphics tweaks] Init event")

rfg.RegisterEvent("Load", OnLoad, "[Camo graphics tweaks] Save Init event")






