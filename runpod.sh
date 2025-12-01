#!/bin/bash

set -ex

./download_loras.sh

cd /ComfyUI/models/diffusion_models
wget https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp8_scaled.safetensors

cd /ComfyUI/models/unet
wget https://huggingface.co/QuantStack/Wan2.2-I2V-A14B-GGUF/resolve/main/HighNoise/Wan2.2-I2V-A14B-HighNoise-Q8_0.gguf
wget https://huggingface.co/QuantStack/Wan2.2-I2V-A14B-GGUF/resolve/main/LowNoise/Wan2.2-I2V-A14B-LowNoise-Q8_0.gguf

cd /ComfyUI/models/clip_vision/
wget https://huggingface.co/ricecake/wan21NSFWClipVisionH_v10/resolve/main/wan21NSFWClipVisionH_v10.safetensors

cd /ComfyUI/models/diffusion_models
wget https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/I2V/Wan2_2-I2V-A14B-HIGH_fp8_e4m3fn_scaled_KJ.safetensors
wget https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/I2V/Wan2_2-I2V-A14B-LOW_fp8_e4m3fn_scaled_KJ.safetensors

cd /ComfyUI/models/upscale_models
wget https://huggingface.co/dtarnow/UPscaler/resolve/main/RealESRGAN_x2plus.pth

cd /ComfyUI/models/loras
wget https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/LoRAs/Wan22-Lightning/old/Wan2.2-Lightning_I2V-A14B-4steps-lora_LOW_fp16.safetensors
wget https://huggingface.co/Aitrepreneur/FLX/resolve/main/Wan2.2-Lightning_I2V-A14B-4steps-lora_HIGH_fp16.safetensors
wget https://huggingface.co/chococka/wanloras/resolve/main/jfj-deepthroat-v1.safetensors
wget https://huggingface.co/romanfratric234/WAN_2-1_WAN_General_NSFW_model_FIXED/resolve/main/wan-nsfw-e14-fixed.safetensors
wget https://huggingface.co/Chroma111/CivitAI-Archive-2/resolve/main/1333923/2021249/wan_i2v_pov_blowjob_v1.2.safetensors
wget https://civitai.com/api/download/models/2267675 -O "PENISLORA_22_LOW_e93.safetensors"
wget https://huggingface.co/ehissoia/csho/resolve/main/wan2.2_highnoise_cumshot_v.1.0.safetensors -O wan2.2_highnoise_cumshot_v.1.0.safetensors
wget https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/LoRAs/Wan22_Lightx2v/Wan_2_2_I2V_A14B_HIGH_lightx2v_MoE_distill_lora_rank_64_bf16.safetensors
wget https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/LoRAs/Wan22_Lightx2v/Wan_2_2_I2V_A14B_HIGH_lightx2v_4step_lora_v1030_rank_64_bf16.safetensors
wget https://huggingface.co/lightx2v/Wan2.2-Distill-Loras/resolve/main/wan2.2_i2v_A14b_low_noise_lora_rank64_lightx2v_4step_1022.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6304323/wan22Ultimatedeepthroat.KEMB.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan22-ultimatedeepthroat-i2v-102epoc-high-k3nk.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T152410Z&X-Amz-SignedHeaders=host&X-Amz-Signature=6e603efaef3c610b862abdf745e9adae8bce2d5d3009137835c6451694af58d4" \
-O "wan22-ultimatedeepthroat-i2v-102epoc-high-k3nk.safetensors"

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6304323/wan22Ultimatedeepthroat.7UDp.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan22-ultimatedeepthroat-I2V-101epoc-low-k3nk.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T175656Z&X-Amz-SignedHeaders=host&X-Amz-Signature=cb071fbc447b71fe303ccb788f417557ff82d1c70338826c6ea8ee1275e22f73" \
-O "wan22-ultimatedeepthroat-I2V-101epoc-low-k3nk.safetensors"

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6304323/wan22F4c3spl4sh154epoc.Yp0s.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan22-f4c3spl4sh-154epoc-low-k3nk.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T180638Z&X-Amz-SignedHeaders=host&X-Amz-Signature=9ffdcf930269f412d2acf5286065521df880dea19b4259b1c52b7eac6d998bf3" \
-O "wan22-f4c3spl4sh-154epoc-low-k3nk.safetensors"

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6304323/wan22F4c3spl4sh100epoc.OYoR.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan22-f4c3spl4sh-100epoc-high-k3nk.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T180719Z&X-Amz-SignedHeaders=host&X-Amz-Signature=5085cb79d752ec98736feea24960f6e4c6221917e3ebab51204c1bca388500ae" \
-O "wan22-f4c3spl4sh-100epoc-high-k3nk.safetensors"

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/4998217/forced20fellatioPony.hQMF.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22forced%20fellatio_pony.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T173952Z&X-Amz-SignedHeaders=host&X-Amz-Signature=49f99003a5671b0f336fd73925c5c08d898b0cc6ed5dbfc1cc75b351fed3f4ca" \
-O "forced fellatio_pony.safetensors"

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6304323/wan22Ultimatedeepthroat.gf2j.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan22-ultimatedeepthroat-I2V-34epoc-high-k3nk.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T191542Z&X-Amz-SignedHeaders=host&X-Amz-Signature=3b6e1d875c5e1544bc054f7253ae91d0ff9f4fe00bfed810cda82ad7069188c0" \
-O wan22-ultimatedeepthroat-I2V-16epoc-low-k3nk

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6304323/wan22Ultimatedeepthroat.DvKb.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan22-ultimatedeepthroat-I2V-16epoc-low-k3nk.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T191637Z&X-Amz-SignedHeaders=host&X-Amz-Signature=4eccad2df95d94422693d951295987c7fefd2d78355f7a072dd1e818fa449b40" \
-O wan22-ultimatedeepthroat-I2V-16epoc-low-k3nk

wget 'https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6612313/wan22I2vLownoisePov.AQ93.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan2.2_i2v_lownoise_pov_missionary_v1.0.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T004124Z&X-Amz-SignedHeaders=host&X-Amz-Signature=3d9fccb95aa0402f2612ea11806430cdb98519d2cd26f26d6d838fc0e12ff8fd' \ 
-O wan2.2_i2v_lownoise_pov_missionary_v1.0.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/40224/nsfw22HE8.BOcA.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22NSFW-22-H-e8.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T010020Z&X-Amz-SignedHeaders=host&X-Amz-Signature=f23fa1e30827fc81a7a99fc6c438e5cb67c348af89d8b2fe0698bae031d6e1d2" \
-O  NSFW-22-H-e8.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/40224/nsfw22LE8.xZ6f.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22NSFW-22-L-e8.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T010246Z&X-Amz-SignedHeaders=host&X-Amz-Signature=7022947a537a0f2d06df0bea0d727a7c39d776962876d0e58e59428d587291c3" \
-O NSFW-22-L-e8.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/8910933/wan22I2VPOVCowgirlHIGH.0JHc.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22WAN-2.2-I2V-POV-Cowgirl-HIGH-v1.0-fixed.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T014015Z&X-Amz-SignedHeaders=host&X-Amz-Signature=3caeb8ee343c4359ac780dcbff370e2722e03a22fc23ff1a1eb0d89f401c66fc" \
-O WAN-2.2-I2V-POV-Cowgirl-HIGH-v1.0-fixed.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/8910933/wan22I2VPOVCowgirlLOW.vIVv.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22WAN-2.2-I2V-POV-Cowgirl-LOW-v1.0-fixed.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T014120Z&X-Amz-SignedHeaders=host&X-Amz-Signature=0a9f202e29ae48a5635b79c5bb2d5e8f2c35241f4bede9e62eb20078fb3a02a3" \
-O WAN-2.2-I2V-POV-Cowgirl-LOW-v1.0-fixed.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/8910933/wan22I2V.kAmV.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22WAN-2.2-I2V-HandjobBlowjobCombo-HIGH-v1.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T032617Z&X-Amz-SignedHeaders=host&X-Amz-Signature=d21f57d0ccfe306520a48fa903d0b676ea1ca2d5abf0a0e8a4938c3dc2e75619" \
-O WAN-2.2-I2V-HandjobBlowjobCombo-HIGH-v1.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/8910933/wan22I2V.S9vS.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22WAN-2.2-I2V-HandjobBlowjobCombo-LOW-v1.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T032728Z&X-Amz-SignedHeaders=host&X-Amz-Signature=7acc0a818fdcad86fc71c99e161aab6ba00d22754093e2c6757708e9f1704a33" \
-O WAN-2.2-I2V-HandjobBlowjobCombo-LOW-v1.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/3494088/dr34mjobI2V14b.IQMn.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22DR34MJOB_I2V_14b_HighNoise.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T032922Z&X-Amz-SignedHeaders=host&X-Amz-Signature=b6b8b06e80aef58795a53b7332ecd7b33f1a121969e918d572d1ce887d721a56" \
-O DR34MJOB_I2V_14b_HighNoise.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/3494088/dr34mjobI2V14b.LQS3.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22DR34MJOB_I2V_14b_LowNoise.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T033002Z&X-Amz-SignedHeaders=host&X-Amz-Signature=d63b4c6276c7dabf946681eb5a13dd88f0ca193c069c7c0e9aa3f779207a0efc" \
-O DR34MJOB_I2V_14b_LowNoise.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/6612313/wan22I2vHighnoisePov.nJ8D.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan2.2_i2v_highnoise_pov_missionary_v1.0.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251201/us-east-1/s3/aws4_request&X-Amz-Date=20251201T004033Z&X-Amz-SignedHeaders=host&X-Amz-Signature=ee41da30024de26f888cbc289f439c9741593814a4891fa5ea824c45c5e64ba1" \
-O wan2.2_i2v_highnoise_pov_missionary_v1.0.safetensors

wget "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/9023356/wan22I2vOralInsertion.WCKU.zip?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22wan2.2-i2v-oral-insertion-v1.0.zip%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20251130/us-east-1/s3/aws4_request&X-Amz-Date=20251130T192336Z&X-Amz-SignedHeaders=host&X-Amz-Signature=5d464dfacad6a3d46b2e2b997c3299f037b481ef244336e4995ab24423efd5c7" \
-O wan2.2-i2v-oral-insertion-v1.0.zip
apt-get install unzip
unzip wan2.2-i2v-oral-insertion-v1.0.zip

mv wan22I2vLownoisePov.AQ93.safetensors\?X-Amz-Expires\=86400\&response-content-disposition\=attachment\;\ filename\=\"wan2.2_i2v_lownoise_pov_missionary_v1.0.safetensors\"\&X-Amz-Algorithm\=AWS4-HMAC-SHA256\&X-Amz-Credential\=e01358d793ad6966166af8b30 wan2.2_i2v_lownoise_pov_missionary_v1.0.safetensors

set +x

echo "!! Success !!!"
