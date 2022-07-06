Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0642B5695DA
	for <lists+linux-man@lfdr.de>; Thu,  7 Jul 2022 01:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232212AbiGFX1v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jul 2022 19:27:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232006AbiGFX1u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jul 2022 19:27:50 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C00562BB3A
        for <linux-man@vger.kernel.org>; Wed,  6 Jul 2022 16:27:49 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id bi22-20020a05600c3d9600b003a04de22ab6so9785221wmb.1
        for <linux-man@vger.kernel.org>; Wed, 06 Jul 2022 16:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=d+q0Jl3Q9Rihfyrq2t1CdASBs8RW8W0Q++nFTbC90m0=;
        b=jw71MiLDQ4K3xTy0XDwV9v708Hslv1/ZYDYPqzpQ3yhAZ7f6rcQm4kgJTBKfZGiW1z
         Pp5lOQnMCO5TaEbdQcAmcVywRvizkud8ERnyLlg0FzoLg3l6Wnds5IGhaW09hPZt6T49
         U19/R1s3YcofSxDAUcuaJqw6iP9BKCDkQolJ+LC2UOcys5Ho06e1DAu1qPcIN4XRDDtn
         7+IGd70YVBmKqvyTdyHk4FPWKlITQY7eD5CtHjO7rPruD3BrR4/21108FSV5qhKmYAUD
         A7lzLqdsUb1VObRiCiIP8cDLgbaNrZOohsR4R2e0VlOKC0rl6lByFAsZQh0mW7Viy7qv
         9A2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=d+q0Jl3Q9Rihfyrq2t1CdASBs8RW8W0Q++nFTbC90m0=;
        b=6vQokiHQNsNYjekhwdqJV20xVNY2A4w3ubG0vlSZD/TCM4DGCX+jOT6QHJN+xgI3qN
         ZY3vuaQUuciG40aeAByludRCkivAzmdtCLC0HL5C3+Uhn3L87ApLW7S4LyrkT8aPWmDI
         baRHWQnUMsfOvG5vXtQ0/DL64KtZEORPXot+tLJCCg9rFC9WMO6l6drgfFBGSb8VZF1q
         D+Hhwfi9StO9ixYXPo2gk+4E8rtStyfqzBJFWttmMEneTdjebnHHE5oq0482Dc3DLeuH
         2g17Y5yFzGda/zQKRK/SppbkzT0LpPTGPX+yv+5Bfihiao5OhEWinos/IMtCd73X7nFB
         JluQ==
X-Gm-Message-State: AJIora/LSIbTKTEvXbIIFEt1kIIi8658JYr4PvRv1VSUFamTWnPTnhdj
        5U+8tt/JdJ3BXGOXxt5kPQkglb47mk4=
X-Google-Smtp-Source: AGRyM1v8JlHTN9LSw9MPfNkUVEVCMnA46JhnD6JoKi8hMbN68+I9RB0HCI5WypNekh8YCHpg1NDrXQ==
X-Received: by 2002:a05:600c:198c:b0:3a2:b440:ed46 with SMTP id t12-20020a05600c198c00b003a2b440ed46mr1110164wmq.110.1657150068107;
        Wed, 06 Jul 2022 16:27:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y22-20020a1c4b16000000b003a04a47d9c2sm26687136wma.47.2022.07.06.16.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 16:27:47 -0700 (PDT)
Message-ID: <c25f0bf5-7030-3ae3-d8d1-0fca3cc557a8@gmail.com>
Date:   Thu, 7 Jul 2022 01:27:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] madvise.2: Add exception for pages locked by other
 processes/mappings
Content-Language: en-US
To:     Alexandre Marciano Gimenez <raging@google.com>,
        linux-man@vger.kernel.org
References: <CA+goE-T8YqMVvN0BaWzka8agLAWzitooF=6u9jpSqgwL1LmhoQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CA+goE-T8YqMVvN0BaWzka8agLAWzitooF=6u9jpSqgwL1LmhoQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5ru7BEE6h998l97Rs0a1Zvnd"
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5ru7BEE6h998l97Rs0a1Zvnd
Content-Type: multipart/mixed; boundary="------------7FWBTEiq0kBL0gSiZBYdgo7P";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Alexandre Marciano Gimenez <raging@google.com>, linux-man@vger.kernel.org
Message-ID: <c25f0bf5-7030-3ae3-d8d1-0fca3cc557a8@gmail.com>
Subject: Re: [PATCH] madvise.2: Add exception for pages locked by other
 processes/mappings
References: <CA+goE-T8YqMVvN0BaWzka8agLAWzitooF=6u9jpSqgwL1LmhoQ@mail.gmail.com>
In-Reply-To: <CA+goE-T8YqMVvN0BaWzka8agLAWzitooF=6u9jpSqgwL1LmhoQ@mail.gmail.com>

--------------7FWBTEiq0kBL0gSiZBYdgo7P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQWxleCwNCg0KT24gNy82LzIyIDA2OjExLCBBbGV4YW5kcmUgTWFyY2lhbm8gR2ltZW5l
eiB3cm90ZToNCj4gRGVhciBsaW51eC1tYW4gbWFpbnRhaW5lcnMsDQo+IA0KPiBQbGVhc2Ug
Y29uc2lkZXIgdGhlIGF0dGFjaGVkIHBhdGNoIChhbHNvIHBhc3RlZCBiZWxvdykuDQo+IFRo
YW5rcywNCj4gQWxleCBHaW1lbmV6IC8gcmFnaW5nQGdvb2dsZS5jb20gPG1haWx0bzpyYWdp
bmdAZ29vZ2xlLmNvbT4NCj4gPT09DQo+IA0KPiAgRnJvbSBmMTcyMjNjNGM4OWYyOWE3M2Q5
MmEyMWU2YTg5ODAwNzJhNGNjMDEwIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPiBGcm9t
OiBBbGV4IEdpbWVuZXogPHJhZ2luZ0Bnb29nbGUuY29tIDxtYWlsdG86cmFnaW5nQGdvb2ds
ZS5jb20+Pg0KPiBEYXRlOiBUdWUsIDUgSnVsIDIwMjIgMTQ6MDc6MzggKzA5MDANCj4gU3Vi
amVjdDogW1BBVENIXSBtYWR2aXNlLjI6IEFkZCBleGNlcHRpb24gZm9yIHBhZ2VzIGxvY2tl
ZCBieSBvdGhlciANCj4gcHJvY2Vzc2VzDQo+IA0KPiBBZGQgdGV4dCB0byBleHBsaWNpdGx5
IHN0YXRlIHRoYXQgcGFnZXMgbG9ja2VkIGJ5IGEgZGlmZmVyZW50DQo+IG1hcHBpbmcgYXJl
IGVsaWdpYmxlIGZvciB0aGUgTUFEVl9SRU1PVkUgb3BlcmF0aW9uLg0KPiANCj4gSG93IGZv
dW5kOiBmaXJzdCBleHRyYXBvbGF0ZWQgYmFzZWQgb24gdGhlIHByaW5jaXBsZSB0aGF0IG1s
b2Nrcw0KPiBsb2NhbCB0byBhIFZNQS4NCj4gVGhlbiByYW4gYW4gZXhwZXJpbWVudCB0byBw
cm92ZSBpdCwgd2l0aCB0aGUgY29kZSBiZWxvdzoNCj4gDQo+IFNvdXJjZSBhdCAocHVibGlj
IGxpbmspDQo+IGh0dHBzOi8vY2hyb21pdW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9j
aHJvbWl1bS9zcmMvKy8zNzQyOTAyIA0KPiA8aHR0cHM6Ly9jaHJvbWl1bS1yZXZpZXcuZ29v
Z2xlc291cmNlLmNvbS9jL2Nocm9taXVtL3NyYy8rLzM3NDI5MDI+DQo+IA0KPiBSZXN1bHRz
ICh3aWxsIHNoYXJlIHVwb24gcmVxdWVzdCkNCj4gaHR0cHM6Ly9kb2NzLmdvb2dsZS5jb20v
c3ByZWFkc2hlZXRzL2QvMTlud0tjaXJJN2E0SVdCeGc1WENVUHF2N0pHQnQzWlZDOWZESmg5
V1pfMVEgDQo+IDxodHRwczovL2RvY3MuZ29vZ2xlLmNvbS9zcHJlYWRzaGVldHMvZC8xOW53
S2Npckk3YTRJV0J4ZzVYQ1VQcXY3SkdCdDNaVkM5ZkRKaDlXWl8xUT4NCj4gDQo+IFRvOiBs
aW51eC1tYW5Admdlci5rZXJuZWwub3JnIDxtYWlsdG86bGludXgtbWFuQHZnZXIua2VybmVs
Lm9yZz4sIA0KPiBhbHgubWFucGFnZXNAZ21haWwuY29tIDxtYWlsdG86YWx4Lm1hbnBhZ2Vz
QGdtYWlsLmNvbT4sIA0KPiBtdGsubWFucGFnZXNAZ21haWwuY29tIDxtYWlsdG86bXRrLm1h
bnBhZ2VzQGdtYWlsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQWxleCBHaW1lbmV6IDxyYWdp
bmdAZ29vZ2xlLmNvbSA8bWFpbHRvOnJhZ2luZ0Bnb29nbGUuY29tPj4NCg0KV291bGQgeW91
IG1pbmQgQ0NpbmcgdGhlIHJlbGV2YW50IChsaW51eC1tbT8pIGtlcm5lbCBsaXN0IGFuZC9v
ciBrZXJuZWwgDQpkZXZlbG9wZXJzIHRoYXQgYXJlIGludm9sdmVkIGluIHRoaXMgZmVhdHVy
ZT8NCg0KSSBkb24ndCB1bmRlcnN0YW5kIG1vc3Qgb2YgdGhpcy4gIFNvcnJ5Lg0KDQpUaGFu
a3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gIMKgbWFuMi9tYWR2aXNlLjIgfCA0ICsrKy0NCj4g
IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL21hbjIvbWFkdmlzZS4yIGIvbWFuMi9tYWR2aXNlLjINCj4gaW5k
ZXggMDY2MTk0YmU5Li5iMDFkNjk3MmYgMTAwNjQ0DQo+IC0tLSBhL21hbjIvbWFkdmlzZS4y
DQo+ICsrKyBiL21hbjIvbWFkdmlzZS4yDQo+IEBAIC0xNzYsNyArMTc2LDkgQEAgZGF0YSB3
aXRoIGEgdmFsdWUgb2YgemVyby4NCj4gIMKgLlwiIGhvdC1wbHVnIG1lbW9yeSBvbiBVTUwu
DQo+ICDCoC5JUA0KPiAgwqBUaGUgc3BlY2lmaWVkIGFkZHJlc3MgcmFuZ2UgbXVzdCBiZSBt
YXBwZWQgc2hhcmVkIGFuZCB3cml0YWJsZS4NCj4gLVRoaXMgZmxhZyBjYW5ub3QgYmUgYXBw
bGllZCB0byBsb2NrZWQgcGFnZXMsIG9yDQo+ICtUaGlzIGZsYWcgY2Fubm90IGJlIGFwcGxp
ZWQgdG8gbG9ja2VkIHBhZ2VzLCB0aG91Z2ggaXQgaXMgcG9zc2libGUgdG8gYXBwbHkNCg0K
bWFuLXBhZ2VzKDcpOg0KICAgIFVzZSBzZW1hbnRpYyBuZXdsaW5lcw0KICAgICAgICBJbiB0
aGUgc291cmNlIG9mIGEgbWFudWFsIHBhZ2UsIG5ldyBzZW50ZW5jZXMgIHNob3VsZCAgYmUN
CiAgICAgICAgc3RhcnRlZCBvbiBuZXcgbGluZXMsIGxvbmcgc2VudGVuY2VzIHNob3VsZCBi
ZSBzcGxpdCBpbnRvDQogICAgICAgIGxpbmVzICBhdCAgY2xhdXNlIGJyZWFrcyAoY29tbWFz
LCBzZW1pY29sb25zLCBjb2xvbnMsIGFuZA0KICAgICAgICBzbyBvbiksIGFuZCBsb25nIGNs
YXVzZXMgc2hvdWxkIGJlIHNwbGl0IGF0IHBocmFzZSBib3VuZOKAkA0KICAgICAgICBhcmll
cy4gIFRoaXMgY29udmVudGlvbiwgIHNvbWV0aW1lcyAga25vd24gIGFzICAic2VtYW50aWMN
CiAgICAgICAgbmV3bGluZXMiLCAgbWFrZXMgaXQgZWFzaWVyIHRvIHNlZSB0aGUgZWZmZWN0
IG9mIHBhdGNoZXMsDQogICAgICAgIHdoaWNoIG9mdGVuIG9wZXJhdGUgYXQgdGhlIGxldmVs
IG9mIGluZGl2aWR1YWwgc2VudGVuY2VzLA0KICAgICAgICBjbGF1c2VzLCBvciBwaHJhc2Vz
Lg0KDQo+ICt0aGlzIGZsYWcgdG8gcGFnZXMgc2hhcmVkIHdpdGggbG9ja2VkIHBvcnRpb25z
IG9mIGEgZGlmZmVyZW50IG1hcHBpbmcuDQo+ICtUaGlzIGZsYWcgY2Fubm90IGJlIGFwcGxp
ZWQgdG8NCj4gIMKgLkIgVk1fUEZOTUFQDQo+ICDCoHBhZ2VzLg0KPiAgwqAuSVANCj4gLS0g
DQo+IDIuMzcuMC5yYzAuMTYxLmcxMGYzN2JlZDkwLWdvb2cNCj4gDQoNCi0tIA0KQWxlamFu
ZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------7FWBTEiq0kBL0gSiZBYdgo7P--

--------------5ru7BEE6h998l97Rs0a1Zvnd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLGGmoACgkQnowa+77/
2zLyMQ/+KevH6LfXiDWmlbFSxcY8xOi5n47sS1gYDvOinPOli/fCyiiDCk+2DDSj
0u/nAmCtv8j55nGKqFYy/ODv9sO9OzaV0AEx2rY4vYGcIta5cIanKsfsA8sQztwo
8N+eFK5vR5OAt1/KH5WHD0xuABeIixiEHNwF4xCLYu5nZQAgabv9LCxBzFCBCGv+
8NxFTXWB77b32Rpi9c1toP97Kxv33wL70nTHS+ND1HltTWxDAWYMYZKTu4VQMUu8
Fc5FXdsKGcp2msmKGHgsoeaBVL5QgCoPMLzZOlpweHLhD9495PYhYrmOxcWDs/z0
4UVc9HHR3cqMHobCj0E5NNgli1NR4U5pefZvO3c3oSd6AICONisIG5SH9AllUlMM
JsSaLWL466w4qV/avBcI+LEjG4zw/7JiFfaRkvKsLynyY+dgnbeDnr3echTuVZu0
bM0TzjtlEOw9zNc09vXj6esynTPBwX5hw7f6SUwThdoVWdKv7USOQ2DO26hhZfQt
gRyGk6pejbgklIFewuR4PY0mePC417uE50evnFomt/B/URDajmSAFZx0mZszdiSq
GuJooC0HYS+p3jDRhSpXJ12o4AxWEgA7YsJica/i/35IoIn2KSYAPipwFLoeDWd3
dUMd8+LNnlJtPmFrjIuLh0w0oZlkfIGAf/m/Xn1n+Uis55E6OfQ=
=lYFR
-----END PGP SIGNATURE-----

--------------5ru7BEE6h998l97Rs0a1Zvnd--
