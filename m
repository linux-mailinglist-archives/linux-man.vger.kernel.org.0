Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 160D664BFD8
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 00:00:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236509AbiLMXAD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 18:00:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236793AbiLMXAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 18:00:02 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9579EFD4
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 15:00:00 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id f13-20020a1cc90d000000b003d08c4cf679so9329665wmb.5
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 15:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jqjOP75PviZyPdVcus8GOwRX8DPAu/fE2mboOyPwSB8=;
        b=l6hyNwumsFvZC8ekL8xOAUarf019eNfvRe419tBswHpM29bJOl3WLm+Wjuz7sCQM6e
         Kzw2IPK0l+3q9scIBXBCUNYgzz8vHxYPE3cdMoJ1DEzx2oLWTZpPWbf9qA9fNlarUViJ
         L5xIcx+8OPI9u9Zs28tFYRPL2FMk48cKINXaRPTmHlUIKduTiiRckRq2u3Uuvex7ZSiq
         YBTk2m9VztHN5Q4VQLVaQOF4XG2Cwkx3vnrW8S+48OYSuok4Jo/OisCWJLt1rpPr59mr
         E2967YUrmavmVAhu+ecp7fXyElMPXskuEF/tW0qpuNPP/KtWI1LTybbMV/yf02OjJyXl
         muJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jqjOP75PviZyPdVcus8GOwRX8DPAu/fE2mboOyPwSB8=;
        b=lJlRsWJqZ5HdhKlgj2W+inznSj9AdOr23ZTNVF4uRL31gWreYxaVPferFbulWBPRlH
         1ThU2/HzzdNzzDpGoGw+7pZ5lr+rPjS+2gnAtpi/2u5y58mF9rrQc9sq4QJ1UKwSkxrx
         I/euBJX4K2Gv3p7C8i17nlYvnS+qOCq0l8tWsSkD1IplBfb5PhHA/23YCUhQMMnItSIB
         D5RB+zIvRzPwj1A+h5Htp8+wHgodsxnJecAh1kgu6BBiCSOar6bj4/NIYr3gy/JzUAni
         duZChUWFqkgjDBaCyxNyeaVbL7FfOfVihHwzUoUy2u/kBGuY5/0VuKnqd3UwYgxsjHK/
         CRWw==
X-Gm-Message-State: ANoB5plkGRG8fUsVdF5qFpPgSdpyLvux4Ho2E9b6bRf4z+Izy/v1JflG
        8N0PhZs4nMnHxri1fep2rBQ=
X-Google-Smtp-Source: AA0mqf7Vv6ipctGQJZkIMsP5ZmDXRTAp6O137x36Dxw9elIh7d82dkDHmiQIpea1rTuccAR2E9ge2Q==
X-Received: by 2002:a05:600c:1c90:b0:3d2:274d:be7c with SMTP id k16-20020a05600c1c9000b003d2274dbe7cmr6793624wms.19.1670972399053;
        Tue, 13 Dec 2022 14:59:59 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i9-20020a05600c4b0900b003cf6a55d8e8sm201841wmp.7.2022.12.13.14.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 14:59:58 -0800 (PST)
Message-ID: <89125284-2710-74ac-9995-89c64619748e@gmail.com>
Date:   Tue, 13 Dec 2022 23:59:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Carlos O'Donell <carlos@redhat.com>,
        Jack Pearson <jack@pearson.onl>,
        "H.J. Lu" <hjl.tools@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221202224419.231717-1-jack@pearson.onl>
 <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
 <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------atLx9I2U0kYJ1iFspx8lsAwP"
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
--------------atLx9I2U0kYJ1iFspx8lsAwP
Content-Type: multipart/mixed; boundary="------------aWjvFyfm91xtOuJcsOKhH4hS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Carlos O'Donell <carlos@redhat.com>, Jack Pearson <jack@pearson.onl>,
 "H.J. Lu" <hjl.tools@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <89125284-2710-74ac-9995-89c64619748e@gmail.com>
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
References: <20221202224419.231717-1-jack@pearson.onl>
 <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
 <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
In-Reply-To: <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>

--------------aWjvFyfm91xtOuJcsOKhH4hS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ2FybG9zLA0KDQpPbiAxMi8xMy8yMiAwMzo1MywgQ2FybG9zIE8nRG9uZWxsIHdyb3Rl
Og0KPiBPbiAxMi85LzIyIDE0OjQ5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IEhp
IEphY2ssDQo+Pg0KPj4gT24gMTIvMi8yMiAyMzo0NCwgSmFjayBQZWFyc29uIHdyb3RlOg0K
Pj4+IERvY3VtZW50IHRoYXQgTGludXggd2lsbCByZXBvcnQgRUlOVkFMIHdoZW4gZXhpdF9z
aWduYWwgaXMgc3BlY2lmaWVkIGFuZA0KPj4+IGVpdGhlciBDTE9ORV9USFJFQUQgb3IgQ0xP
TkVfUEFSRU5UIGlzIHNwZWNpZmllZC4NCj4+Pg0KPj4+ICDCoEZyb20gY2xvbmUzX2FyZ3Nf
dmFsaWQgaW4gTGludXg6DQo+Pj4gYGBgDQo+Pj4gIMKgwqDCoMKgaWYgKChrYXJncy0+Zmxh
Z3MgJiAoQ0xPTkVfVEhSRUFEIHwgQ0xPTkVfUEFSRU5UKSkgJiYNCj4+PiAgwqDCoMKgwqDC
oMKgwqAga2FyZ3MtPmV4aXRfc2lnbmFsKQ0KPj4+ICDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
ZmFsc2U7DQo+Pj4gYGBgDQo+Pj4NCj4+PiBJIGhhdmUgdmVyaWZpZWQgdGhhdCB0aGlzIGhh
cHBlbnMgb24gbXkga2VybmVsIHdpdGggYSBzbWFsbCBwcm9ncmFtLCBhbmQNCj4+PiB0aGF0
IHRoaXMgZG9lc24ndCBoYXBwZW4gd2l0aCBub3JtYWwgYGNsb25lYCB0aHJvdWdoIHRoZSBn
bGliYyBoZWxwZXIuDQo+Pg0KPj4gQ291bGQgeW91IHBsZWFzZSBhbHNvIHNlbmQgYSB0ZXN0
IHByb2dyYW0gd2l0aCB0aGUgZ2xpYmMgd3JhcHBlcj8NCj4+DQo+PiBCVFcsIGdsaWJjIGhh
cyBhIGNsb25lMygyKSB3cmFwcGVyIHNpbmNlIGxhc3QgeWVhci7CoCBJdCB3b3VsZCBiZSBp
bnRlcmVzdGluZyB0byBkb2N1bWVudCBpdCBpbnN0ZWFkIG9mIHRoZSByYXcgc3lzY2FsbC4N
Cj4gDQo+IGdsaWJjIGRvZXMgbm90IGhhdmUgYSBjbG9uZTMgd3JhcHBlci4NCj4gDQo+IGds
aWJjIGhhcyBhbiBpbnRlcm5hbCBub24tZXhwb3J0ZWQgX19jbG9uZTMgaW50ZXJmYWNlIHRo
YXQgd2UgdXNlIGZvciBwdGhyZWFkcywNCj4gYW5kIGxpa2VseSBzb29uIGZvciBwb3NpeF9z
cGF3bi4NCj4gDQo+IFdlIGhhdmUgbm90IHlldCBjaG9zZW4gdG8gZXhwb3J0IGNsb25lMyBh
cyBhIHB1YmxpYyBnbG9iYWwgc3ltYm9sIHRoYXQgZGV2ZWxvcGVycw0KPiBjYW4gdXNlLg0K
DQpBaGgsIHRoYW5rcywgSSBzYXcgdGhlIGZvbGxvd2luZyBhbmQgdGhvdWdodCB0aGF0IHlv
dSBoYWQgYWRkZWQgaXQgYXMgYSBwdWJsaWMgDQp3cmFwcGVyLg0KDQpjb21taXQgNWFkYjBl
MTRhNWNjOWUwMTFlNThhN2FhZjE5M2I1OThlY2JkN2IwNw0KQXV0aG9yOiBILkouIEx1IDxo
amwudG9vbHNAZ21haWwuY29tPg0KRGF0ZTogICBXZWQgTWF5IDEyIDExOjAyOjQ3IDIwMjEg
LTA3MDANCg0KICAgICBpMzg2OiBBZGQgdGhlIGNsb25lMyB3cmFwcGVyDQoNCiAgICAgZXh0
ZXJuIGludCBjbG9uZTMgKHN0cnVjdCBjbG9uZV9hcmdzICpfX2NsX2FyZ3MsIHNpemVfdCBf
X3NpemUsDQogICAgICAgICAgICAgICAgICAgICAgICBpbnQgKCpfX2Z1bmMpICh2b2lkICpf
X2FyZyksIHZvaWQgKl9fYXJnKTsNCg0KICAgICBSZXZpZXdlZC1ieTogQ2FybG9zIE8nRG9u
ZWxsIDxjYXJsb3NAcmVkaGF0LmNvbT4NCg0KVGhhbmtzIQ0KDQpBbGV4DQoNCg0KPiANCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------aWjvFyfm91xtOuJcsOKhH4hS--

--------------atLx9I2U0kYJ1iFspx8lsAwP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZA98ACgkQnowa+77/
2zJZ2w/8C8RA/NsfI2eOElQ/GiN9lMfTg/npXDY3qVy+fK9GmgLt7eFcOI5A55GL
EdyEQwsivQA1X6f2LGYfpabRZAYm87n2Nt9SFlDYzBo2HUAv9ITu4+/dy3PY4zBu
wDln6dfSWT0vnnRNZmeK2iNhTFE1j1tgbwKuUcqOV80X4k248inmrYk4Ptg12JzS
vtLGg0L3Qvi813qWbradExSfDMdtb8JYVVaY6teCsqeReHiLTT1UAopZzx9+GgZK
6m8oJ+xl9Dm2G6mL0yLs/f+wfYCY36khRTYqC9C+U5maGFP7qmIjtJexp2BaWs6D
Sgcd5+lqGhjfLMa31jY2TPIZVl2KE6k/lgJnCPJIaXyYavhwIZa/OqU+6U9PRPYA
QQDe052ZkBh8Er2Fjuf5Ee8BcEOTiHzxsx1wSgEC7kQkA85czyvvjfBU4S9yWc2r
GgzuW9PMWHabo1wwDenhiVvWvEbw3M9K5QxfsfqxitlRgukJJ10OfsiSIropM5xb
Bsyn35XvMAr0NSk55+96ppjKgEMt3krWUQnVuGpMtfMIQh8vfTc15ncc5TpzvkSu
ZCj+P1yj1ylw+QcCc0ela+pxAnrz+JmCkRUYgdgwLFugUgq8hcn52PffwLX118+Q
ZkwA0T/7st7wIcDYAg9ltXPkSX58uEDKaUt12IeLHKf0jZe9mGI=
=PN80
-----END PGP SIGNATURE-----

--------------atLx9I2U0kYJ1iFspx8lsAwP--
