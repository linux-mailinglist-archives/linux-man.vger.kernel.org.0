Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5B8368000E
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 16:48:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbjA2PsR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 10:48:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbjA2PsQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 10:48:16 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC36FC150
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 07:48:14 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d14so8967687wrr.9
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 07:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7gZGpJSCHWEmhk0EJbGpHK+w5Dnfx1WdP3AW3ijsTdY=;
        b=AmusrsQMwYVW5+ygg2pYJiGe3APjrGOBBaxUp25NFcorFQzJkGjmfjjPXS9TTliC4P
         MV8PjzGVoy2VnukDqOhNzblhOVqyKhOnU06ONhI9H5DLZ0iZR3wycDuoI0HVqTNuZI2y
         sbzR31wTXwtB96qC2Zd4mBUEGnDatjkwFq0CqEqstufopvFECAtKSrdEMTqAiPSpUAbW
         RBJ2PAKfVq3S85RPucGQmtwgeDeEUuo9OyG02NADkjXpIHjHg73N/grVYujZHpLtVpf3
         tzrZeLIweb8gG+mhRZ7axs9hGl/wHhndHFxZGsme361oHQv7f/iKs4UzFCHvc8zumSeY
         EgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7gZGpJSCHWEmhk0EJbGpHK+w5Dnfx1WdP3AW3ijsTdY=;
        b=vH0LzOmoydgJ4sGDmJ0LYDmnhGChI/pKD1IAs5WauSqjSPp6yU2iVFcpjVPupn2Weu
         kku6BLTATYacVeh5/8P+L1dloTWrrmDlF02y3U/AU0Fx1DiQCdAPA8wQ7T0UGkmW7oD5
         baouVD2/2/vtWI/YosWhX9MZZ9FJwNcK4bpMB76yJrWCAsiriEIgv0oiCsNXt82vuUuz
         +uMg/BvlFh/hUZ4bF28p0WpZ4PlBe4KXu0oZ5QnMJyBD/tYBDsDSQPscesb13XVSPS9N
         BGZj3VV/uaT5S0wRDIJhT9EAOHKLhdbekWl4GsupWu+KbJw3Zmwhie6VNf8F2TvhwbQK
         Amcg==
X-Gm-Message-State: AFqh2ko+O/OdqcruCQb7TIaYz5IpOZ74Ph1AIcz925eiMKJ692y0iU6Q
        4tc3SU9tMsYhw4PUqJXMZvLmuc7iA20=
X-Google-Smtp-Source: AMrXdXsddD0Fo/pD0p1UcAxDez3u0bcm8hcife/Bo4ZUJKJZuqNWX+iO9WGIkJfBSUhUASm0RMTrOg==
X-Received: by 2002:a05:6000:1f0f:b0:2b4:e5e:c0a3 with SMTP id bv15-20020a0560001f0f00b002b40e5ec0a3mr33632605wrb.21.1675007293381;
        Sun, 29 Jan 2023 07:48:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f7-20020a5d64c7000000b002bdfe3aca17sm10022100wri.51.2023.01.29.07.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 07:48:12 -0800 (PST)
Message-ID: <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
Date:   Sun, 29 Jan 2023 16:48:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MmaRp01GRngPs6UzzInqWywf"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------MmaRp01GRngPs6UzzInqWywf
Content-Type: multipart/mixed; boundary="------------tf0uAJXTldB8rP83xuWXEbm4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>

--------------tf0uAJXTldB8rP83xuWXEbm4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5INC90LDQsSENCg0KT24gMS8yOC8yMyAxNToxNywg0L3QsNCxIHdyb3RlOg0KPiBuMzA5
MSBhY2NlcHRzIG4zMDY2LCBtYWtpbmcgaXQgcGFydCBvZiB0aGUgbmV4dCB3b3JraW5nIGRy
YWZ0IGFuZCBDMjM6DQo+ICAgIGh0dHBzOi8vd3d3Lm9wZW4tc3RkLm9yZy9qdGMxL3NjMjIv
d2cxNC93d3cvZG9jcy9uMzA5MS5kb2MNCj4gDQo+IFVwZGF0ZSB0aW1lc3BlYy4zdHlwZSBh
cHByb3ByaWF0ZWx5LCBsYXJnZWx5IG1pcnJvcmluZyBteSBwYXBlci4NCk5pY2UhIDotKQ0K
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3ps
ZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KPiAtLS0NCj4gVGhpcyBpcyBpbiBtYW55IHdh
eXMgYSBmb2xsb3d1cCB0byB0aGUgcGF0Y2hzZXQgdGhhdCBvcmlnaW5hbGx5IGFkZGVkDQo+
IHRoZSBCVUdTIHNleGlvbiB0byB0aW1lc3BlYy4zdHlwZSwgcm9vdCBtc2dpZCBvZg0KPiAg
ICA8ZWMxZGNjNjU1MTg0ZjZjZGFhZTQwZmY4Yjc5NzBiNzUwNDM0ZTRlZi4xNjM4MTIzNDI1
LmdpdC5uYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+IA0KPiBGb3IgZWFz
ZSBvZiByZWZlcmVuY2UsIG4zMDY2Og0KPiAgICBodHRwczovL3d3dy5vcGVuLXN0ZC5vcmcv
anRjMS9zYzIyL3dnMTQvd3d3L2RvY3MvbjMwNjYucGRmDQo+IGFuZCB0aGUgcmVsZXZhbnQg
cGFydCBvZiBuMzA5MSAoc2NyZWVuc2hvdCwgaXQncyBhIC5kb2MpOg0KPiAgICBodHRwczov
L2NvaG9zdC5vcmcvbmFiaWphY3psZXdlbGkvcG9zdC85MjI1NzgtcG9nLXBvZw0KDQpXaGF0
IGhhcHBlbmVkIGluIHRoZSBlbmQgd2l0aCBuc2VjX3Q/ICBXYXMgaXQgcmVqZWN0ZWQsIG9y
IGFyZSB0aGV5IHN0aWxsIA0KY29uc2lkZXJpbmcgaXQ/DQoNCj4gDQo+IDIvMyBhbmQgMy8z
IG9ubHkgc3BhbiB0aGUgcGFnZXMgdGhhdCBtYXRjaGVkIGdpdCBncmVwIC1sIHR2X25zZWMs
DQo+IGJ1dCB0aGF0IHNob3VsZCBiZSBtb3N0IG9mIHRoZSByZWxldmFudCBvbmVzDQo+IA0K
PiAgIG1hbjN0eXBlL3RpbWVzcGVjLjN0eXBlIHwgNDYgKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKSwgMzIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuM3R5cGUvdGlt
ZXNwZWMuM3R5cGUgYi9tYW4zdHlwZS90aW1lc3BlYy4zdHlwZQ0KPiBpbmRleCA3Y2Q4MGNl
ODYuLmNhNTUzMzgxNCAxMDA2NDQNCj4gLS0tIGEvbWFuM3R5cGUvdGltZXNwZWMuM3R5cGUN
Cj4gKysrIGIvbWFuM3R5cGUvdGltZXNwZWMuM3R5cGUNCj4gQEAgLTE2LDE0ICsxNiwyNyBA
QCBTdGFuZGFyZCBDIGxpYnJhcnkNCj4gICAuUFANCj4gICAuQiBzdHJ1Y3QgdGltZXNwZWMg
ew0KPiAgIC5CUiAiICAgIHRpbWVfdCAgdHZfc2VjOyIgIiAgIC8qIFNlY29uZHMgKi8iDQo+
IC0uQlIgIiAgICBsb25nICAgIHR2X25zZWM7IiAiICAvKiBOYW5vc2Vjb25kcyBbIiAwICIs
ICIgOTk5OTk5OTk5ICJdICovIg0KPiArLkJSICIgICAgLypcKGRhKi8gICB0dl9uc2VjOyIg
IiAgLyogTmFub3NlY29uZHMgWyIgMCAiLCAiIDk5OTk5OTk5OSAiXSAqLyINCg0KSSdtIHRl
bXB0ZWQgdG8gbWVyZ2UgdGhpcyBwYXRjaC4gIEl0J3Mgc29vbyBxdXRlIC8q4oaTKi8NCg0K
UGxlYXNlIHVzZSB0aGUgZGlnaXQgc2VwYXJhdG9yIFwoYXEgZm9yIHRoZSBiaWcgbnVtYmVy
Lg0KDQo+ICAgLkIgfTsNCj4gICAuRUUNCj4gICAuU0ggREVTQ1JJUFRJT04NCj4gICBEZXNj
cmliZXMgdGltZXMgaW4gc2Vjb25kcyBhbmQgbmFub3NlY29uZHMuDQo+ICsuUFANCj4gKy5J
IHR2X25zZWMNCj4gK2lzIG9mIGFuIGltcGxlbWVudGF0aW9uLWRlZmluZWQgc2lnbmVkIHR5
cGUgY2FwYWJsZSBvZiBob2xkaW5nIHRoZSBzcGVjaWZpZWQgcmFuZ2UuDQo+ICtVbmRlciBn
bGliYywgdGhpcyBpcyB1c3VhbGx5DQo+ICsuSVIgbG9uZyAsDQo+ICthbmQNCj4gKy5JIGxv
bmcgbG9uZw0KPiArb24gWDMyLg0KPiArSXQgY2FuIHNhZmVseSBiZSBkb3duLWNhc3QgdG8g
YW55IGNvbmNyZXRlIDMyLWJpdCBpbnRlZ2VyIHR5cGUgZm9yIHByb2Nlc3NpbmcuDQoNCk9r
Lg0KDQo+ICAgLlNIIFNUQU5EQVJEUw0KPiAgIEMxMSBhbmQgbGF0ZXI7DQo+ICAgUE9TSVgu
MS0yMDAxIGFuZCBsYXRlci4NCj4gK1ByaW9yIHRvIEMyMw0KDQpBIGNvbW1hIGhlcmU/DQoN
Cj4gKy5JIHR2X25zZWMNCj4gK3dhcw0KPiArLklSIGxvbmcgLg0KDQpQbGVhc2UgbW92ZSB0
aGlzIHRvIGEgbmV3IFZFUlNJT05TIHNleGlvbi4NCg0KPiAgIC5TSCBOT1RFUw0KPiAgIFRo
ZSBmb2xsb3dpbmcgaGVhZGVycyBhbHNvIHByb3ZpZGUgdGhpcyB0eXBlOg0KPiAgIC5JUiA8
YWlvLmg+ICwNCj4gQEAgLTMzLDM3ICs0Niw2IEBAIFRoZSBmb2xsb3dpbmcgaGVhZGVycyBh
bHNvIHByb3ZpZGUgdGhpcyB0eXBlOg0KPiAgIC5JUiA8c3lzL3NlbGVjdC5oPiAsDQo+ICAg
YW5kDQo+ICAgLklSIDxzeXMvc3RhdC5oPiAuDQo+IC0uU0ggQlVHUw0KPiAtVW5kZXIgZ2xp
YmMsDQo+IC0uSSB0dl9uc2VjDQo+IC1pcyB0aGUNCj4gLS5JIHN5c2NhbGwNCj4gLWxvbmcs
DQo+IC10aG91Z2ggdGhpcyBhZmZlY3RzIG9ubHkgZnJpbmdlIGFyY2hpdGVjdHVyZXMgbGlr
ZSBYMzIsDQo+IC13aGljaCBpcyBJTFAzMiwgYnV0IHVzZXMgdGhlIExQNjQgQU1ENjQgc3lz
Y2FsbCBBQkkuDQo+IC1JbiByZWFsaXR5LCB0aGUgZmllbGQgZW5kcyB1cCBiZWluZyBkZWZp
bmVkIGFzOg0KPiAtLlBQDQo+IC0uaW4gKzRuDQo+IC0uRVgNCj4gLSNpZiBfX3g4Nl82NF9f
ICYmIF9fSUxQMzJfXyAgLyogPT0geDMyICovDQo+IC0gICAgbG9uZyBsb25nICB0dl9uc2Vj
Ow0KPiAtI2Vsc2UNCj4gLSAgICBsb25nICAgICAgIHR2X25zZWM7DQo+IC0jZW5kaWYNCj4g
LS5FRQ0KPiAtLmluDQo+IC0uUFANCj4gLVRoaXMgaXMgYSBsb25nLXN0YW5kaW5nIGFuZCBs
b25nLWVuc2hyaW5lZCBnbGliYyBidWcNCj4gLS5VUiBodHRwczovL3NvdXJjZXdhcmUub3Jn
L2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD0xNjQzNw0KPiAtLkkgIzE2NDM3DQo+IC0uVUUg
LA0KPiAtYW5kIGFuIGluY29tcGF0aWJsZSBleHRlbnNpb24gdG8gdGhlIHN0YW5kYXJkczsN
Cj4gLWhvd2V2ZXIsIGFzIGV2ZW4gYSAzMi1iaXQNCj4gLS5JIGxvbmcNCj4gLWNhbiBob2xk
IHRoZSBlbnRpcmUNCj4gLS5JIHR2X25zZWMNCj4gLXJhbmdlLA0KPiAtaXQncyBhbHdheXMg
c2FmZSB0byBmb3JjaWJseSBkb3duLWNhc3QgaXQgdG8gdGhlIHN0YW5kYXJkIHR5cGUuDQoN
Ck9rLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAgIC5TSCBTRUUgQUxTTw0KPiAgIC5CUiBj
bG9ja19nZXR0aW1lICgyKSwNCj4gICAuQlIgY2xvY2tfbmFub3NsZWVwICgyKSwNCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------tf0uAJXTldB8rP83xuWXEbm4--

--------------MmaRp01GRngPs6UzzInqWywf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPWlTUACgkQnowa+77/
2zJASxAAheeq3GSOJAK6ow/TEH0ssGT6T22usxlhnxfe7es32HhgqN3UFl5OkXwn
j0/UGX15SBYXYFfdH3yysmUBiO2f4omZ4eMCwsP0ZyCX1oWEaCSxl5Kp/2LR8drW
6g/SFJlWE2OF691EO2NdKf93nIQP9F8xBrlgNjAVUYRLYhDQLJ5tYJivRD/Qw+WP
fQG3u1iPSa2tjKTJ8x5h0G65fxMMlEPWIbmQZZ914QNIpjWulBKqKf6gjA6yPrSi
D+tjP0FF5UI/p1cmbNyg95TyKNPQtUO2iWm70ThT8WrvgZry4u0PiewqSzz23vnK
eD3fIObEjWdGGE20xXa/EuaWzumfF64VZT/hisZmTRNRILS75y7FpiF//Wc89Sxt
6YNMVRjEcjLAW7FJm8WP1HZqGerCCxiVMeYKqGTVAKpAkzChKW1WGklb2RWX72W+
aHTog1XEMla38MBygzc/btj9RY2sARf1ueGcg5yhUC1OayGLUwcx3tTJ5JZQx8cJ
cp2PCaj8qbANdVGk9DIPcc8VLfLWFkl1dahnl5ghfcQ6IXtjSu6Inf69GUPItWDA
PXshGr1Ad75v+FV6DLf9MTgeotVkIyCIe6QBKb7s/QmR2EDaKQBg5r2SS2nF8wzb
YMee1Xt14tp9P1nlOD1BijLARXzWZAZZYCTAFR6GJaoHRAkLYac=
=VzJQ
-----END PGP SIGNATURE-----

--------------MmaRp01GRngPs6UzzInqWywf--
