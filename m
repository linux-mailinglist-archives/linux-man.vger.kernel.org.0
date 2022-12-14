Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A3564D191
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 22:02:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbiLNVCh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 16:02:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiLNVCg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 16:02:36 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B152C112
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 13:02:35 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id o5-20020a05600c510500b003d21f02fbaaso335556wms.4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 13:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TeFofAYCSjOsbSQkOQDaSYgoOMct+POTOEIWYt71jN0=;
        b=j10/9Gf+qW75puh/9G2JbR8c7/EnnkHDYIxm6UyhVB5rWBoOrI44cLEhMax2P+9NaX
         mOD0cnp53oRnvt9q/7OOnzKprLYuUHWASJ/NKP1gnkF3UrSAGff64qq2QuUAoH0n0B0u
         6UjVEP1cevfMnb1Z6W4VeGU/bAOqlK4ZbFil8Oi/L5tc4L2ML3RXTfNDrgns0hJO9oCu
         MCU5acCKy/Y1AtzHrZcuVRIb4i1k3xYXnmlB9EFkqGO9D5/nPvD3c6/yVQfPYKQgckE6
         8QS8bbQ8L+Xqw8CGnxYwmpWRcKeQl2LosTv28VteQ8yn32LJhrhnRBQqx+qppT/bf4u6
         9dfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TeFofAYCSjOsbSQkOQDaSYgoOMct+POTOEIWYt71jN0=;
        b=sLVM0JoBxuh6gDqmD+/PpJeDQFe9koheR6cX+r9VeuXAM15wctfrl3b484+46bVqEZ
         PpjSrmlU3uqiamcj2nJ3jBNd+0yzrN0nXCe8akp5Uje0qHO64jmJL77OoN0QoZpzSAug
         iLB4hbi09nsyznZQ875IbpS0JQyKtMId0cF5CKzdyP/wYHO8X9oMM/zpJ/CGNQ2fOq8N
         h0KtQ4U8sZrM5QVI8uNqw3MK6P09k9FJqxgj1WMaOGtqM74xFulVj+u/bIxQeBJAboYn
         zm/ul7mkXMLhI2KSFJ8pPKuInsL6T1iHsBW3X5oqtKLZfo3R4UX10+76qT9ZKnjlWceh
         yIGg==
X-Gm-Message-State: ANoB5pmUyHRgBDr0odRcOmcVk0+FeM5viBmazHhIyZ+rM4qyI/ciWpMy
        pO4Wc/0aeadwWWA57HygoWA=
X-Google-Smtp-Source: AA0mqf4tMqwOCBo+ckyXcILzAinGY4b83CavzTNen1MhICAJ9LWo5DCIwhl9AAiprLLuP6Uzaxmsyw==
X-Received: by 2002:a05:600c:1c89:b0:3d2:e28:647f with SMTP id k9-20020a05600c1c8900b003d20e28647fmr21757452wms.15.1671051753688;
        Wed, 14 Dec 2022 13:02:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y2-20020a1c4b02000000b003c5571c27a1sm4312797wma.32.2022.12.14.13.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 13:02:33 -0800 (PST)
Message-ID: <244682bc-3636-1305-da8f-5a635a82c896@gmail.com>
Date:   Wed, 14 Dec 2022 22:02:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
To:     Jack Pearson <jack@pearson.onl>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
References: <20221202224419.231717-1-jack@pearson.onl>
 <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
 <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
 <6223bdf7-bbb4-890f-ad41-3ee75ecb0fb4@pearson.onl>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6223bdf7-bbb4-890f-ad41-3ee75ecb0fb4@pearson.onl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------shMxItAVtX6MuESu0WPNqXH5"
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
--------------shMxItAVtX6MuESu0WPNqXH5
Content-Type: multipart/mixed; boundary="------------4C7NUUTvChG1Niia1Ta4RhyV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jack Pearson <jack@pearson.onl>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>,
 Carlos O'Donell <carlos@redhat.com>
Message-ID: <244682bc-3636-1305-da8f-5a635a82c896@gmail.com>
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
References: <20221202224419.231717-1-jack@pearson.onl>
 <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
 <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
 <6223bdf7-bbb4-890f-ad41-3ee75ecb0fb4@pearson.onl>
In-Reply-To: <6223bdf7-bbb4-890f-ad41-3ee75ecb0fb4@pearson.onl>

--------------4C7NUUTvChG1Niia1Ta4RhyV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFjaywNCg0KUGxlYXNlIGtlZXAgZ2xpYmMgYW5kIENhcmxvcyBpbiB0aGUgbG9vcC4N
Cg0KVGhhbmtzLA0KDQpBbGV4DQoNCk9uIDEyLzE0LzIyIDIyOjAwLCBKYWNrIFBlYXJzb24g
d3JvdGU6DQo+IE9uIDEyLzEyLzIyIDE4OjUzLCBDYXJsb3MgTydEb25lbGwgd3JvdGU6DQo+
PiBPbiAxMi85LzIyIDE0OjQ5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+PiBIaSBK
YWNrLA0KPj4+DQo+Pj4gT24gMTIvMi8yMiAyMzo0NCwgSmFjayBQZWFyc29uIHdyb3RlOg0K
Pj4+PiBEb2N1bWVudCB0aGF0IExpbnV4IHdpbGwgcmVwb3J0IEVJTlZBTCB3aGVuIGV4aXRf
c2lnbmFsIGlzIHNwZWNpZmllZCBhbmQNCj4+Pj4gZWl0aGVyIENMT05FX1RIUkVBRCBvciBD
TE9ORV9QQVJFTlQgaXMgc3BlY2lmaWVkLg0KPj4+Pg0KPj4+PiDCoMKgRnJvbSBjbG9uZTNf
YXJnc192YWxpZCBpbiBMaW51eDoNCj4+Pj4gYGBgDQo+Pj4+IMKgwqDCoMKgwqBpZiAoKGth
cmdzLT5mbGFncyAmIChDTE9ORV9USFJFQUQgfCBDTE9ORV9QQVJFTlQpKSAmJg0KPj4+PiDC
oMKgwqDCoMKgwqDCoMKgIGthcmdzLT5leGl0X3NpZ25hbCkNCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gZmFsc2U7DQo+Pj4+IGBgYA0KPj4+Pg0KPj4+PiBJIGhhdmUgdmVyaWZp
ZWQgdGhhdCB0aGlzIGhhcHBlbnMgb24gbXkga2VybmVsIHdpdGggYSBzbWFsbCBwcm9ncmFt
LCBhbmQNCj4+Pj4gdGhhdCB0aGlzIGRvZXNuJ3QgaGFwcGVuIHdpdGggbm9ybWFsIGBjbG9u
ZWAgdGhyb3VnaCB0aGUgZ2xpYmMgaGVscGVyLg0KPj4+DQo+Pj4gQ291bGQgeW91IHBsZWFz
ZSBhbHNvIHNlbmQgYSB0ZXN0IHByb2dyYW0gd2l0aCB0aGUgZ2xpYmMgd3JhcHBlcj8NCj4+
Pg0KPj4+IEJUVywgZ2xpYmMgaGFzIGEgY2xvbmUzKDIpIHdyYXBwZXIgc2luY2UgbGFzdCB5
ZWFyLsKgIEl0IHdvdWxkIGJlIGludGVyZXN0aW5nIA0KPj4+IHRvIGRvY3VtZW50IGl0IGlu
c3RlYWQgb2YgdGhlIHJhdyBzeXNjYWxsLg0KPj4NCj4+IGdsaWJjIGRvZXMgbm90IGhhdmUg
YSBjbG9uZTMgd3JhcHBlci4NCj4+DQo+PiBnbGliYyBoYXMgYW4gaW50ZXJuYWwgbm9uLWV4
cG9ydGVkIF9fY2xvbmUzIGludGVyZmFjZSB0aGF0IHdlIHVzZSBmb3IgcHRocmVhZHMsDQo+
PiBhbmQgbGlrZWx5IHNvb24gZm9yIHBvc2l4X3NwYXduLg0KPj4NCj4+IFdlIGhhdmUgbm90
IHlldCBjaG9zZW4gdG8gZXhwb3J0IGNsb25lMyBhcyBhIHB1YmxpYyBnbG9iYWwgc3ltYm9s
IHRoYXQgZGV2ZWxvcGVycw0KPj4gY2FuIHVzZS4NCj4+DQo+IA0KPiBBaGhoLCB0aGF0J3Mg
d2h5IEkgY291bGRuJ3QgZmluZCBpdCBpbiB0aGUgaGVhZGVycy4NCj4gDQo+IEluY29taW5n
IHBhdGNoIHdpdGggdGhlIGdsaWJjIGNsb25lIHdyYXBwZXIgdGVzdCBwcm9ncmFtLg0KPiAN
Cj4gDQo+IEphY2sNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------4C7NUUTvChG1Niia1Ta4RhyV--

--------------shMxItAVtX6MuESu0WPNqXH5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaOeIACgkQnowa+77/
2zJDZA//Va22eItgfM1/vr7hhxK6s9U0CMLoG9fSJ7F2nNO75sUVqgVuLb5D7okj
YspDQTDD94uMEgayuN+EZg7ZlQz/O1ln2dPvhNYY8GjBHCPEBh02zNqAobxf9rjJ
DvZynf4cNxGqIzCXx0MKtAJPf/f0e4BJHblCrkFj7ruYdD4ZnPxTCaRxpJ79H/7S
0sNpEBPRskInAiaSlwbSQX35xd+XFhPsMGe02AvSIu+DtL/hJvanNAeyOqNd888f
oIELrW1B2NCo5eaPSVX9aQAYiKIMIG8bq54e//lH7vzwy10OAdIKGnBdJ3sERiYI
BdZkfWd27WgHhFy+tsKLsV0E/ptk2oEPlEWalb/ywHBrN94HeeTr9ZqEOAsv5HQp
uTGc5/QCAsum7UDTrqcDU7clASo6V2wkqzSI2h7PzcB6Fdn0RO7nd9PzvIxkIXSl
nFqUMTxBODZM4xITewvAed1mm0ERnsiroGR1fDloFp/WQvYlWDVnyNSAiZw8IZp9
HpN4XUqsO08E/VwmHsm9nxvGhSrTsizasniKOyTTJKlwzfKhsz89Qr7EZBpwtZYI
u1aunm8tiKNCsBkOAB6FQBx0h/oZm94/wgsRZqK1IcI+zvDuF5lBZGMEELdrD2rs
GEVJDsjLLKVofbCbBv4TT9FNZjjHZ0cuZu+u+YPdaaBwRNBx8TM=
=733V
-----END PGP SIGNATURE-----

--------------shMxItAVtX6MuESu0WPNqXH5--
