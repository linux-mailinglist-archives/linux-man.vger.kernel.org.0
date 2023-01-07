Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A622660E98
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:14:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjAGMOG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:14:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbjAGMOF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:14:05 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0876C5C914
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:14:04 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id bi26-20020a05600c3d9a00b003d3404a89faso4753318wmb.1
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFB50x5dLEUvdfChh1uLtpWxu6nNqSnm+1i6pp0FlsY=;
        b=G9hpFXA+35PmuqNW+7DH6oWOTgCBOLVdAGXQMN9+0326qW8uD5QXLNstqXTxeff8ma
         ael7aTYn38ilHYiFgAhmpKHQvdxPKBnB6S0NfCnWAbTiS2YchKGWRGO0CMH5XH5tjxrl
         0h9o73t5CEEbskSfx+gTKzQ6ml2ynyIrZOd/bW7VCa83W2v6Ya9LUOqkdXZG839Nuthh
         I4XHDZ0M2uRA1/R73fAs7KAd2UksUgbkGIVuBHrlW+UaLO7Hp+D7x3B1UXk+HkaAIuQl
         tptq461wa3XVIoqhirwWeng5pNFyciUwsttDUuO/wRUdojN2jtRuDMe+OAWTNegxq6MW
         RMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OFB50x5dLEUvdfChh1uLtpWxu6nNqSnm+1i6pp0FlsY=;
        b=0Y+E8rd5Q7mzP48kQS8xKmnhYPrtCK9lYToXuOPYK7KK96mqSJaSYduxfLOgO0517S
         XeST+YyRzWdOXTAS4Y0C+KsOY8jj9Ud6+IL4ZpSPBNw/0R/bLxKsKT0mtGTmW0kID+fg
         ynVXhIuqXrqln9nepWS/NrwKu6zPtMDeX2Ru5Ij9S3Q2fCrhC2svpcVGxU8nXt7APnlZ
         WKL7eEpaVdRBn0C2Sd+BnMMKoTjkeE73xxHgl6X94VKzBphcaw2g1DY3rFwLq9tdfHRt
         YFqRF5bUwIIlCev8sCLS/hMbHx7RoBGZT37a9gwZmzHS/YR+BPiFawQ8xbjQ3/43/IoA
         Y8kw==
X-Gm-Message-State: AFqh2kpn4D9iCJ9oDyI3FKXKgcpm6SE4s2ApHzB5cLyjclT87UtaUGh6
        iq4k0KXZcVQo5CMD2vGtzBc=
X-Google-Smtp-Source: AMrXdXvS6DpOU5IPr8ClNCOrFBOsljjdNI2Snv0WkXh4kuGNSUFwxqD8vhf2LKU4QxrV1GqL3JFeZw==
X-Received: by 2002:a05:600c:a10:b0:3d2:2904:dfe9 with SMTP id z16-20020a05600c0a1000b003d22904dfe9mr46129144wmp.21.1673093642478;
        Sat, 07 Jan 2023 04:14:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q1-20020a1ce901000000b003b3307fb98fsm4913960wmc.24.2023.01.07.04.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:14:02 -0800 (PST)
Message-ID: <d8065ecf-572a-5413-ed0c-318489c4e613@gmail.com>
Date:   Sat, 7 Jan 2023 13:14:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
In-Reply-To: <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BRvac7vMiGiB8wdnYHl0DOPC"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BRvac7vMiGiB8wdnYHl0DOPC
Content-Type: multipart/mixed; boundary="------------P1EW10YKcYvuwmCaw0WBgtwu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>
Message-ID: <d8065ecf-572a-5413-ed0c-318489c4e613@gmail.com>
Subject: Re: [PATCH v4 04/10] libc.7: wfix
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
In-Reply-To: <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>

--------------P1EW10YKcYvuwmCaw0WBgtwu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMzoxMiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEJy
YW5kZW4sDQo+IA0KPiBPbiAxLzcvMjMgMTA6NTQsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3Jv
dGU6DQo+PiAqIFNheSAiR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMiIGluc3RlYWQgb2YgIkxp
bnV4IGRpc3RyaWJ1dGlvbnMiLg0KPj4gKiBDbGFyaWZ5IGNsYWltIGFib3V0IHBvcHVsYXJp
dHkgb2YgZ2xpYmMuDQo+PiAqIFRpZ2h0ZW4gd29yZGluZy4NCj4+DQo+PiBTaWduZWQtb2Zm
LWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29t
Pg0KPj4gLS0tDQo+PiDCoCBtYW43L2xpYmMuNyB8IDEwMyArKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgNTUgaW5zZXJ0aW9ucygrKSwgNDggZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdp
dCBhL21hbjcvbGliYy43IGIvbWFuNy9saWJjLjcNCj4+IGluZGV4IDQzZWMwMjY5Zi4uYzYx
ODAwNzVjIDEwMDY0NA0KPj4gLS0tIGEvbWFuNy9saWJjLjcNCj4+ICsrKyBiL21hbjcvbGli
Yy43DQo+PiBAQCAtMTYsODAgKzE2LDg4IEBAIEJlY2F1c2Ugb2Ygc29tZSBoaXN0b3J5DQo+
PiDCoCB1c2Ugb2YgdGhlIHRlcm0gXChscWxpYmNcKHJxDQo+PiDCoCB0byByZWZlciB0byB0
aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IGlzIHNvbWV3aGF0IGFtYmlndW91cyBvbiBMaW51eC4N
Cj4+IMKgIC5TUyBnbGliYw0KPj4gLUJ5IGZhciB0aGUgbW9zdCB3aWRlbHkgdXNlZCBDIGxp
YnJhcnkgb24gTGludXggaXMgdGhlDQo+PiArVGhlIHN0YW5kYXJkIGxpYmMgbW9zdCBwb3B1
bGFybHkgdXNlZCB3aXRoIHRoZSBMaW51eCBrZXJuZWwgaXMNCj4+IMKgIC5VUiBodHRwOi8v
d3d3LmdudS5vcmdcOi9zb2Z0d2FyZVw6L2xpYmMvDQo+PiDCoCBHTlUgQyBMaWJyYXJ5DQo+
PiDCoCAuVUUgLA0KPj4gLW9mdGVuIHJlZmVycmVkIHRvIGFzDQo+PiArd2lkZWx5IGNhbGxl
ZA0KPj4gwqAgLklSIGdsaWJjIC4NCj4+IC1UaGlzIGlzIHRoZSBDIGxpYnJhcnkgdGhhdCBp
cyBub3dhZGF5cyB1c2VkIGluIGFsbA0KPj4gLW1ham9yIExpbnV4IGRpc3RyaWJ1dGlvbnMu
DQo+PiAtSXQgaXMgYWxzbyB0aGUgQyBsaWJyYXJ5IHdob3NlIGRldGFpbHMgYXJlIGRvY3Vt
ZW50ZWQNCj4+ICtUaGlzIGltcGxlbWVudGF0aW9uIGlzIG5vd2FkYXlzIHVzZWQNCj4+ICtp
biBhbGwgbWFqb3IgR05VL0xpbnV4IGRpc3RyaWJ1dGlvbnMuDQo+PiArSXRzIGRldGFpbHMg
YXJlIGRvY3VtZW50ZWQNCj4+IMKgIGluIHRoZSByZWxldmFudCBwYWdlcyBvZiB0aGUNCj4+
ICtMaW51eA0KPj4gwqAgLkkgbWFuLXBhZ2VzDQo+PiAtcHJvamVjdA0KPj4gLShwcmltYXJp
bHkgaW4gU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwpLg0KPj4gLURvY3VtZW50YXRpb24gb2Yg
Z2xpYmMgaXMgYWxzbyBhdmFpbGFibGUgaW4gdGhlIGdsaWJjIG1hbnVhbCwNCj4+IC1hdmFp
bGFibGUgdmlhIHRoZSBjb21tYW5kDQo+PiAtLklSICJpbmZvIGxpYmMiIC4NCj4+IC1SZWxl
YXNlIDEuMCBvZiBnbGliYyB3YXMgbWFkZSBpbiBTZXB0ZW1iZXIgMTk5Mi4NCj4+ICtwcm9q
ZWN0LA0KPj4gK3ByaW1hcmlseSBpbiBzZWN0aW9uIDMgb2YgdGhlIG1hbnVhbC4NCj4+ICtn
bGliYyBhbHNvIG9mZmVycyBhIG1hbnVhbCBvZiBpdHMgb3duIGluIFRleGluZm8gZm9ybWF0
LA0KDQpBbHNvLCBpdCBtaWdodCBiZSBhIGdvb2QgaWRlYSB0byB1c2UgdGV4aW5mbyg1KSBo
ZXJlLg0KDQo+PiArYnJvd3NhYmxlIGF0IHRoZSBjb21tYW5kIGxpbmUgd2l0aA0KPj4gKy5S
SSBcKGxxICJpbmZvIGxpYmMiIFwocnEuDQo+IA0KPiBXZSBtaWdodCBkbyBhIGdyZWF0IGZh
dm91ciB0byBvdXIgcmVhZGVycyBpZiB3ZSBzdWdnZXN0IHBpcGluZyBpbmZvKDEpIHRvIA0K
PiBsZXNzKDEpLCBhcyBEYXZlIHN1Z2dlc3RzIGV2ZXJ5IG5vdyBhbmQgdGhlbiA6KQ0KPiAN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------P1EW10YKcYvuwmCaw0WBgtwu--

--------------BRvac7vMiGiB8wdnYHl0DOPC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5YgkACgkQnowa+77/
2zKHyA/9Hzt1CasnyuYj9WAKm3EUtcArRxtcFcny+vwEqd/OnfBQe+iLVyeKdg4j
MAnA3vdjhLeAn2HJIZL631plbwOPgl55SJqWqPcoNWsfb7usnmhj1BQ+nRPghxka
+PxirYabPGmNQhNupqsOew/WT/QthjgayELdy/vD9F0MXXqc36qOHwR8EfDHp9HL
0hHW69HI+gpZmoRtHtgsyxucsqXDuSh38IXoCrmKw/1Ojr+sWI9fzgUvRHriq1nL
oAp5aqmyK/8CeIreeiW64ZoZz/Tndqqob6Yrgb4mTQ+XWfhFjqQgMeG/RTb/2PdY
GuLMzrxgx299rEvDElMFYxlYh8ms1LkUFVZLE1I1T+ybjnGXS9Mz04EaZ4PIqHUm
Ifaw6GoidSzZLx1bJEtRJjLr2mILdPQzunIL5NHMe35Zn+a0yhhew7VydD02RXYn
p4xhAJODYF0AO1Xyf/3VdTi8RO/OVjFAro6NuxBHNsiZ05h4vrEKVlVQUdBbB49Q
wNWrJEjqoOuiYYN2AtXXwW4g9333yfLB3avpWmF8gz5sA2b5r38VbJ280Obwo5CK
6YKjIG/RwmqN9UcsuP0QzUxYANiInVyqVdNYZQpF5XxMf2w7BvZkgYV+nMjNGv7j
A6d2zBRB8a8iXhAlX0DDNnjvy/60ylNXlVKkdF5ssryJM0KU608=
=2qTJ
-----END PGP SIGNATURE-----

--------------BRvac7vMiGiB8wdnYHl0DOPC--
