Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 886B06494FF
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 16:58:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230164AbiLKP6n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 10:58:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbiLKP6k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 10:58:40 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6BA2BE2E
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 07:58:39 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id m19so3272126wms.5
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 07:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTV9dDljf0PYYF05Ij+N822LKzjMNzXiXOl+2nu8mPc=;
        b=Xm6F6xqWi5PofM2/56JyWZLzePWDM0QlWOyBS5o39Cb0ScQlVB4xtVBxae5RBPIlxI
         zWmpCZ7hZmDhrKNV4+9a/Ocyh2prMLyaOLjv7uxDNnkpdEFNN+q1s9/6KBBux7wRQ4Ak
         spk064lZ+sezSWXYW8tEG8P1LWCNyOZioRqFwVGx/VDoU2AxYfovcYjVhdmMOSTY1TFe
         cLKXjA+YeZ1e4ZzbjtqqhPVV1MZQCdITYJUPZawMmze15yILhkuoe7dQkl20RrD/AY43
         +wew7UmuVHFRuF/vrah0PTlJ6wFoGSrH++fmUIBh0GrWp+avfBUXXFz3CXANc3s1Jypb
         NMlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YTV9dDljf0PYYF05Ij+N822LKzjMNzXiXOl+2nu8mPc=;
        b=cd5GM4habkZEzmjLpkFAVTtclggQdDwKjIvSPttS7vr82luZ62yCtsQA3PJgDtvyG2
         PgUij0RMYT/GKj+GNzj/8W+LYamY2aRJUf9IgYKgvb31KBkEtDfl2GjOnEvGuMKRFANr
         kRxStTdMuOcRqfrm3Zt2MUn5hv8FTGvkK+901fWVuM/bABEnTGKBMoMvP4IsrCj8/grv
         UgesJJv7LZ41HmozZDSta6czuVnNdR/8I/NJHhnPv9z9Vu0akVh3+73xKfRzNz4R7tz9
         x8CQ1Lf9sgDXeoPy0UkDZVOHKc/eVL5CBb8NNO3TyPq3hm29LWmPqT7zkPl4UPyxCf0y
         6FFg==
X-Gm-Message-State: ANoB5pnDbCQr3MY9JpTqPZ8TFcwCVEh8r66dYJSNIyObG7/bRm2liGB8
        UTlkcq+Yt6X81KuUUGL3bc0=
X-Google-Smtp-Source: AA0mqf58refZKu6DpMKmoGm1SPSF6emknpLKAZUvszrrwLJcbapk8N1l7qbmoErQYI9bjmYClP2Png==
X-Received: by 2002:a05:600c:1d98:b0:3cf:74b4:c3c8 with SMTP id p24-20020a05600c1d9800b003cf74b4c3c8mr10242895wms.17.1670774317893;
        Sun, 11 Dec 2022 07:58:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bi27-20020a05600c3d9b00b003d225cdb68esm1438060wmb.0.2022.12.11.07.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 07:58:37 -0800 (PST)
Message-ID: <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
Date:   Sun, 11 Dec 2022 16:58:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Zack Weinberg <zack@owlfolio.org>, libc-alpha@sourceware.org,
        'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
Cc:     Ian Abbott <abbotti@mev.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8jR4fWoX80DNo2lKyPnKXAwD"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8jR4fWoX80DNo2lKyPnKXAwD
Content-Type: multipart/mixed; boundary="------------XBM6waUV2aALaQe4340VR0vK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>, libc-alpha@sourceware.org,
 'linux-man' <linux-man@vger.kernel.org>
Cc: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
In-Reply-To: <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>

--------------XBM6waUV2aALaQe4340VR0vK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W0NDICs9IElhbl0NCg0KSGkgWmFjaywNCg0KT24gMTIvOS8yMiAyMjo0MSwgWmFjayBXZWlu
YmVyZyB2aWEgTGliYy1hbHBoYSB3cm90ZToNCj4gT24gMjAyMi0xMi0wOSAyOjMzIFBNLCBB
bGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBoYSB3cm90ZToNCj4+PiBUZWNobmljYWxs
eSwgdGhlIGJlaGF2aW9yIGlzIHVuZGVmaW5lZCBpZiB0aGUgcmVzdWx0IG9mIHRoZSBjb252
ZXJzaW9uIGNhbm5vdCANCj4+PiBiZSByZXByZXNlbnRlZCBpbiB0aGUgb2JqZWN0IGJlaW5n
IGFzc2lnbmVkIHRvIGJ5IHNjYW5mLsKgIChJbiB0aGUgY2FzZSBvZiANCj4+PiBnbGliYywg
dGhhdCBwcm9iYWJseSByZXN1bHRzIGluIGVpdGhlciB0aGUgaW50ZWdlciBvYmplY3QgYmVp
bmcgc2V0IHRvIGEgDQo+Pj4gdHJ1bmNhdGVkIHZlcnNpb24gb2YgdGhlIGlucHV0IGludGVn
ZXIsIG9yIHRoZSBpbnRlZ2VyIG9iamVjdCBiZWluZyBzZXQgdG8gYSANCj4+PiB0cnVuY2F0
ZWQgdmVyc2lvbiBvZiBMT05HX01JTiBvciBMT05HX01BWCwgZGVwZW5kaW5nIG9uIHRoZSBh
Y3R1YWwgbnVtYmVyLikNCj4+DQo+PiBIbW0sIFVCLsKgIFVuZGVyIFVCLCBhbnl0aGluZyBj
YW4gY2hhbmdlLCBzbyBlcnJvciByZXBvcnRpbmcgaXMgYWxyZWFkeSANCj4+IHVucmVsaWFi
bGUuwqAgSWYgRU9GK0VSQU5HRSBjYW4gX29ubHlfIGhhcHBlbiB1bmRlciBVQiwgSSdkIHJh
dGhlciByZW1vdmUgdGhlIA0KPj4gcGFyYWdyYXBoLsKgIFBsZWFzZSBjb25maXJtLg0KPiAN
Cj4gQlVHUw0KPiANCj4gVGhlIGBzY2FuZmAgZnVuY3Rpb25zIGhhdmUgdW5kZWZpbmVkIGJl
aGF2aW9yIGlmIG51bWVyaWMgaW5wdXQgb3ZlcmZsb3dzLsKgIFRoaXMgDQo+IG1lYW5zIGl0
IGlzICppbXBvc3NpYmxlKiB0byBkZXRlY3QgbWFsZm9ybWVkIGlucHV0IHJlbGlhYmx5IHVz
aW5nIHRoZXNlIGZ1bmN0aW9ucy4NCj4gDQo+IE1hbnkgaW5wdXQgc3BlY2lmaWNhdGlvbnMg
KGUuZy4gYCVzYCwgYCVbXlxuXWApIHJlYWQgYSBzZXF1ZW5jZSBvZiBjaGFyYWN0ZXJzIA0K
PiBpbnRvIGEgZGVzdGluYXRpb24gYnVmZmVyIHdob3NlIHNpemUgaXMgdW5zcGVjaWZpZWQ7
IGFueSB1c2Ugb2Ygc3VjaCANCj4gc3BlY2lmaWNhdGlvbnMgcmVuZGVycyBgc2NhbmZgIGV2
ZXJ5IGJpdCBhcyBkYW5nZXJvdXMgYXMgYGdldHNgLg0KDQpUaGFua3MgZm9yIHJlbWluZGlu
ZyB0aGF0ISAgU2luY2UgSSBkb24ndCB1c2UgdGhlc2UgZnVuY3Rpb25zLCBJIGRvbid0IHJl
bWVtYmVyIA0KaG93IGJhZCB0aGV5IGFyZSA6KQ0KDQo+IA0KPiBCZXN0IHByYWN0aWNlIGlz
IG5vdCB0byB1c2UgYW55IG9mIHRoZXNlIGZ1bmN0aW9ucyBhdCBhbGwuDQo+IA0KPiB6dyAo
bm8sIHRoaXMgaXMgbm90IGEgam9rZSkNCg0KSSdtIGluY2xpbmVkIHRvIGFkZCB0aGF0IGlu
IHRoYXQgbWFudWFsIHBhZ2UuICBJcyB0aGVyZSBhbnl0aGluZyB0aGF0IGNhbiBiZSANCnNh
dmVkIGZyb20gdGhhdCBwYWdlLCBvciBzaG91bGQgd2UgYnVybiBpdCBhbGw/ICBUbyBiZSBt
b3JlIHNwZWNpZmljOg0KDQotICBBcmUgdGhlcmUgYW55IGZ1bmN0aW9ucyBpbiB0aGF0IHBh
Z2UgdGhhdCBhcmUgc3RpbGwgdXNlZnVsIGZvciBhbnkgY29ybmVyIA0KY2FzZXMsIG9yIGFy
ZSB0aGV5IGFsbCB1c2VsZXNzPw0KLSAgQXJlIHRoZXJlIGFueSBjb252ZXJzaW9uIHNwZWNp
ZmllcnMgdGhhdCBjYW4gYmUgdXNlZCBzYWZlbHk/DQoNCk9yIHRoZSBjb252ZXJzZSBxdWVz
dGlvbnM6DQoNCi0gIFdoaWNoIGNvbnZlcnNpb24gc3BlY2lmaWVycyAob3IgbW9kaWZpZXJz
KSBhcmUgaW1wb3NzaWJsZSB0byB1c2Ugc2FmZWx5IGFzIA0KZ2V0cygzKSBhbmQgc2hvdWxk
IHRoZXJlZm9yZSBiZSBtYXJrZWQgYXMgZGVwcmVjYXRlZCBpbiB0aGUgbWFudWFsIHBhZ2Ug
KGFuZCANCnByb2JhYmx5IHdhcm5lZCBpbiBHQ0MpPw0KLSAgV2hpY2ggZnVuY3Rpb25zIGlu
IHRoYXQgcGFnZSBhcmUgaW1wb3NzaWJsZSB0byB1c2Ugc2FmZWx5IGFuZCBzaG91bGQgDQp0
aGVyZWZvcmUgYmUgbWFya2VkIGFzIGRlcHJlY2F0ZWQ/DQoNCldvdWxkIHlvdSBwbGVhc2Ug
bWFyayB0aGVtIGFzIFtbZGVwcmVjYXRlZF1dIGluIGdsaWJjIHRvbz8gIFRoaXMgaXMgbm90
IA0KZXNzZW50aWFsIHRvIG1lLCBzaW5jZSBJIGNhbiBtYXJrIHRoZW0gYXMgZGVwcmVjYXRl
ZCBpbiB0aGUgbWFudWFsIHBhZ2VzIHdpdGhvdXQgDQp0aGF0IGhhcHBlbmluZywgYnV0IGl0
J2QgaGVscC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------XBM6waUV2aALaQe4340VR0vK--

--------------8jR4fWoX80DNo2lKyPnKXAwD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV/iMACgkQnowa+77/
2zKkRw/+Ozc9DlWYoRU6PQUcH0Jbtxnl3bJb3dX7kR5GjEiPEPqvClfxSSSq06bF
WNm6a303ysCrRW0ckljMWxBbbgK9y4hd7nMMoI924rCYXWpVOTDZBZ7Wecn4Bj7z
An/pUqZoOkV9gorHtSZqOotM2GDarfAb8aQJTMA1aY5S333nMOBf/usa2qU59S9u
+UB4R9sO4Wsa25BQXJw/DPEZ06wAWYacn/kzA4xe17JIen/9TBMtn03J4b1WziE2
57pqEKzWDnpZiXWp939BwBRMMXqyURuJyPxViVKfemDtmcCf+ozjmu2SjXaOp+ho
hc83eSuyJqA/q+Xq5UrF/3uNVRbm9UaawyzmSRE/JCsfEI7VhPj8jKysLIK34UPJ
AeIQijfhShgFCFYikpr26SzI6R7u1uV+49Ixq6vJPh4wXVWpJlmIP1ZEtOwObjzN
JyEgnJZbXOmHfwuSIfoN4+1FwMM5qaN2TvFgNtY39EsOVeQpcFEHbTIsNB09Fu2D
iSNM+Xs9YnskU4R26V3R+bhB2isa5CMw2EAF8T4J0fxMcX3DOxCcSQFusj7EuYDB
FMLtrCQzEDgmhoGY247K8crFj4PVZwKDd51lzwIRf6TArXZeVk8/a+gXOqkuaJP7
DDX0oNNh6Mbx2AV5jRxfmoeoYUVtRExnjLrreBJ6+nkwQhBgn6Q=
=4/je
-----END PGP SIGNATURE-----

--------------8jR4fWoX80DNo2lKyPnKXAwD--
