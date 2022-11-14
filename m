Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3915262879E
	for <lists+linux-man@lfdr.de>; Mon, 14 Nov 2022 18:59:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237482AbiKNR6j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Nov 2022 12:58:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237790AbiKNR6J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Nov 2022 12:58:09 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F8B727176
        for <linux-man@vger.kernel.org>; Mon, 14 Nov 2022 09:58:08 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id z14so19566261wrn.7
        for <linux-man@vger.kernel.org>; Mon, 14 Nov 2022 09:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ufqb82X6dz0sdCT5lYfI0WWilYscaDy27ZJjaBCOb8=;
        b=eliFX1LOa35xq2JXUak0WT8pKoL9Ej5yN/yCLnAWT+OloTHCA9ZHxdDd6m1o6cH+kT
         P81dOV2DSKaOZ5/m8lJPnU2PGaV3cNcw6Vlgy5I/5WcvgD44pDVNjXLkiArEjrRaAuLQ
         I4V+TDsMym/oiLUP48Dacwy+gkOS3Tqr8yXgwcsrIKegsRWQfiliY3bPVqQp+vpW2Yd/
         GLFECND6/VvI/TUmjUY4aNToJZlJWVq3UtRmfagPL4MAexvgG4x6aEkV6UDTwYpGuac/
         yhUrP9dG2vptaGrF5rkqHAI9l2jMMGp0WIicVOE60Z7fcXuT4p+1uGtG7+4AsF9NVT05
         tu8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4ufqb82X6dz0sdCT5lYfI0WWilYscaDy27ZJjaBCOb8=;
        b=DA35kU2jWBHbLFj9R/YimK7mOo+2AiMX80i1yFxGLJPme8MDp8KswC45q6g9w7DvEB
         wMEk4YBJT7P0vJXvMReqK8sIJmCcIpnekzpTFPXm8ud1U10I6LWVtL9HzqUKO+j78D3m
         cn6s90SFSXX+BcJ4MnQ8oEUmnUfnenruPeVd1a9XeaxVU8CCMW0XcdGTyFUp5gbiiZ4Q
         C4J1wGAhpKxbzGeLUKcRQFB3qN/Jpw4Y49CMMvNdXw+FhpOMTXen5kZfdFq+UDIlV33+
         dY2jZdOaaZm6OQQRvdwOqSvZFdkWuxKfGrdc6xseFnb4bskfOirH4nKxbEqZSpnqW0IC
         a4+g==
X-Gm-Message-State: ANoB5pkj2l+wtGB1jl583DkoIOih1SW6P2dh5gGev+jrJfHNu9GJrqcp
        ME5qHTp2fKyqxX6YQF97TzM=
X-Google-Smtp-Source: AA0mqf4qS4CjmZHOQfE05APcmNgh26cf7MIpc/qv2TeLUUR6ss/63RGXpMGSC6BnLEgSf9Fyl7rprg==
X-Received: by 2002:adf:e80e:0:b0:22e:3e28:f8de with SMTP id o14-20020adfe80e000000b0022e3e28f8demr8662984wrm.157.1668448687075;
        Mon, 14 Nov 2022 09:58:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t7-20020a1c7707000000b003cfa80443a0sm13236163wmi.35.2022.11.14.09.58.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 09:58:06 -0800 (PST)
Message-ID: <fbac0ca9-97f5-6122-4335-610129555526@gmail.com>
Date:   Mon, 14 Nov 2022 18:57:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------InMMJidkohCwKdwx6IY6tGdQ"
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
--------------InMMJidkohCwKdwx6IY6tGdQ
Content-Type: multipart/mixed; boundary="------------30bPrxjrF56hzrYaaCCR09CI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <fbac0ca9-97f5-6122-4335-610129555526@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>
In-Reply-To: <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>

--------------30bPrxjrF56hzrYaaCCR09CI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoIQ0KDQpPbiAxMS8xNC8yMiAxODo1MiwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBTdW4sIDEzIE5vdiAyMDIyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgR2NjIHdyb3Rl
Og0KPiANCj4+IE1heWJlIGFsbG93aW5nIGludGVncmFsIHR5cGVzIGFuZCBwb2ludGVycyB3
b3VsZCBiZSBlbm91Z2guICBIb3dldmVyLA0KPj4gZm9yZXNlZWluZyB0aGF0IHRoZSBfTGVu
Z3Rob2YoKSBwcm9wb3NhbCAoQlRXLCB3aGljaCBwYXBlciB3YXMgaXQ/KSB3aWxsDQo+PiBz
dWNjZWVkLCBhbmQgY29tYmluaW5nIGl0IHdpdGggdGhpcyBvbmUsIF9MZW5ndGhvZihwb2lu
dGVyKSB3b3VsZCBpZGVhbGx5IGdpdmUNCj4+IHRoZSBsZW5ndGggb2YgdGhlIGFycmF5LCBz
byBhbGxvd2luZyBwb2ludGVycyB3b3VsZCBjb25mbGljdC4NCj4gDQo+IERvIHlvdSBtZWFu
IE4yNTI5IFJvbWVybywgTmV3IHBvaW50ZXItcHJvb2Yga2V5d29yZCB0byBkZXRlcm1pbmUg
YXJyYXkNCj4gbGVuZ3RoPw0KDQpZZXMsIHRoYXQncyBpdCEgIFRoYW5rcy4NCg0KPiBUbyBx
dW90ZSB0aGUgY29udmVub3IgaW4gV0cxNCByZWZsZWN0b3IgbWVzc2FnZSAxODU3NSAoMTcg
Tm92DQo+IDIwMjApIHdoZW4gSSBhc2tlZCBhYm91dCBpdHMgc3RhdHVzLCAiVGhlIGF1dGhv
ciBhc2tlZCBtZSBub3QgdG8gcHV0IHRob3NlDQo+IG9uIHRoZSBhZ2VuZGEuICBIZSB3aWxs
IHN1cHBseSB1cGRhdGVkIHZlcnNpb25zIGxhdGVyLiIuDQoNClNpbmNlIGhpcyBlbWFpbCBp
cyBub3QgaW4gdGhlIHBhcGVyLCB3b3VsZCB5b3UgbWluZCBmb3J3YXJkaW5nIGhpbSB0aGlz
IA0Kc3VnZ2VzdGlvbiBvZiBtaW5lIG9mIHJlbmFtaW5nIGl0IHRvIGF2b2lkIGNvbmZ1c2lv
biB3aXRoIHN0cmluZyBsZW5ndGhzPyAgT3IgDQptYXliZSBwb2ludCBoaW0gdG8gdGhlIG1h
aWxpbmcgbGlzdCBkaXNjdXNzaW9uWzFdPw0KDQpbMV06IA0KPGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LW1hbi8yMDIyMTExMDIyMjU0MC5hczNqcmpkenhzbm90M3ptQGlsbGl0
aGlkL1QvI203OTRhZDJhMzE3M2ExOTA5OTYyNWVlMWRlYzdlYTExYWI3NTQ1MTNkPg0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------30bPrxjrF56hzrYaaCCR09CI--

--------------InMMJidkohCwKdwx6IY6tGdQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNygaYACgkQnowa+77/
2zJfjw/9FmelXcbV12vFsn4H92bk1gPSgiZz/hYi5QK20NFfyVJCu03OjiX8/ewA
xUqFzwsyzHs3+BrquHW29Z3/RwvAXSdjVR+5JlPz1xc8+2uRXGaIBDZnuGRkNJLi
VLTEy6nJujcl76tXZNyHL3fK8ktiCpAoB+J/m/+0IJw5ZWoaaeWNQzzxXk40849I
4ER1HyZwO8mWbjOmMmQGSzGlHlwDptClPnecBPAkiIpc5vj4+i0Ux6FgJAM/Ue+0
cyNhsojZTzwafBJmF2mQWt/AiSmIbf05IsFviiF1smm4wMLRBx6V9a222nlhCzPw
ZNRTqGM9SoF8fmgn4cQUcspKncGKtUo3Kau2DwczsaV8acq71fHFViHzb+68uIQ9
LDqy/gs6+0ui1avhKxpsSQwhJo5PLqSbrIxx6A6+JrtprEyLZp/XVPfIR25Fj20E
8Y434u7otfSgwE7SYBJUibBWgLMA4ystC7JxmwLtgYGUBe/uFkDct8oHC8UgNtYH
y6bGlaP41KqRssK4Z9c5nMWuidaoFBFBBll6PSJ9rAUDeCrDJXdpR3F87VCb0uN2
ZNn4vltiqDJXUs2n5rnNqQFt+xo3pIBDMsR+xPsTx6sqGTQaGbAT0QG+HIOTBWQA
/TVJj4kl+a7Tk4+4ipeisydAPe1ayRywA33tdVZxO4LK14AEgNg=
=hkmL
-----END PGP SIGNATURE-----

--------------InMMJidkohCwKdwx6IY6tGdQ--
