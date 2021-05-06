// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
//
// http://go.microsoft.com/fwlink/?LinkId=248929
// http://create.msdn.com/en-US/education/catalog/sample/stock_effects


Texture2D<float4> Texture : register(t0);
sampler TextureSampler : register(s0);


cbuffer Parameters : register(b0)
{
    row_major float4x4 MatrixTransform;
};


void SpriteVertexShader(inout float4 position : SV_Position,
                        inout float4 color    : COLOR0,
                        inout float2 texCoord : TEXCOORD0,
                        in float2 flip        : FLIP0,
                        in uint instanceId    : SEQUENCE0)
{
    position = mul(float4(position.xyz, 1.f), MatrixTransform);
}


float4 SpritePixelShader(float4 position : SV_POSITION,
                         float4 color    : COLOR0,
                         float2 texCoord : TEXCOORD0) : SV_Target0
{
    return Texture.Sample(TextureSampler, texCoord) * color;
}
