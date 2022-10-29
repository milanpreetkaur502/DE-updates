import requests
import json

dev_id="D0315"
user="milan"
cat=input("Enter category-")
mode=input("Enter mode-")

#Camera payload
cam_payload={
            "brightness": "2",

    "zoom_absolute": "100",

    "contrast" : "15"

     }
     
#RANA Payload
rana_payload={

    "stream_name": "Bombus-terrestris:T",

    "log": "no",

    "verbose_motion_logging": "no",

    "number_omp_threads": "   4",

    "jpeg_quality": "  70",

    "image_overlays": "yes",

    "text_show_type": "no",

    "text_left": "%S",

    "text_right": "\"frame: %F  event: %E\"",

    "text_double": "yes",

    "enable_timelapse": "   0",

    "post_capture_frames": "  0 ",

    "luma_threshold": "20.000",

    "minimum_motion_pixels": "0.01",

    "maximum_motion_pixels": "10.000",

    "reference_period": "0.0",

    "motion_centre": "invert ",

    "motion_box": "invert ",

    "motion_frame_pixel_overlay": "no ",

    "virtual_tracking_nonmotion_gap": "1.0 ",

    "virtual_tracking_pv_threshold": "35.000",

    "virtual_tracking_minimum_motion_track": "0.0",

    "virtual_tracking_minimum_interframe_motion_track": "0.0",

    "virtual_tracking_minimum_steps": "  1 ",

    "blob_threshold": "0.95",

    "blob_size_threshold": "25.0 ",

    "blob_diff_density": "0.25",

    "blob_diameter": "15x15 ",

    "blob_change_threshold": "3.000",

    "blob_min_width_height_ratio": "0.4",

    "blob_max_width_height_ratio": "1.000",

    "blob_periphery": "80x85",

    "blob_fovea": "75x80",

    "blob_centre_offset": "0+0",

    "show_rectangles": "invert ",

    "motion_noise_multiplier": "1.000",

    "motion_noise_samples": "100"

  }


if mode=="data":
	print("===DATA===")
	url=f"https://4k5m4b6lha.execute-api.us-east-1.amazonaws.com/data?deviceid={dev_id}&category={cat}&user={user}"
	print(url)
	res=requests.get(url)
	print(res)
elif mode=="config":
	print("===CONFIG===")
	url=f"https://4k5m4b6lha.execute-api.us-east-1.amazonaws.com/config?deviceid={dev_id}&category={cat}&user={user}"
	if cat=="camera":
		res=requests.post(url,json=cam_payload)
		print(res)
	elif cat=="rana":
		res=requests.post(url,json=rana_payload)
		print(res)
elif mode=="image":
	print("===IMAGE===")
	url=f"https://4k5m4b6lha.execute-api.us-east-1.amazonaws.com/image?deviceid={dev_id}&user={user}"
	res=requests.get(url)
	print(res)
	

