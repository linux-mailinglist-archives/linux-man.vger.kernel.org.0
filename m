Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0123B626FBE
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 14:34:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234073AbiKMNeC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 08:34:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235270AbiKMNeB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 08:34:01 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D93C1DE99
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 05:33:59 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bs21so12712329wrb.4
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 05:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qg62mkHm/Vhv6uLYM7mBLHCG/W0U6Y42cjcPOTIXe24=;
        b=R3lXJcEuIaN6ZuzdIumrsC2NTewVaJ0MpspljLnlXOXbpLCQN47pNV6rgapx8Ih9in
         L5ceDlO4unu/qCdZUqWZy7+MthzMmO7G+QfqyewdDM1hmPusl+/JWi2RgKg7JNa+jdQm
         fG8qIuG4fCexi66R0uWxLsaNFZvb6A6vjEPnTbeCg0sD3xT3uPHmRGWuPSAntn1Cn1kp
         kXXJKlpAfcJkjUYtND4M9G58CKtp6vP3j7maVe+s64celdhSweQUrO7Z7L+GrCVdsP72
         Nm1KyGityaw+YG7+INNVgQDAvhkHPobdaenEnPV3hWTLiXt3y6U+qch5yoqp4GFJJdnL
         1vJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qg62mkHm/Vhv6uLYM7mBLHCG/W0U6Y42cjcPOTIXe24=;
        b=v/Z2+jkJOLOcpuAc9OXy78ge5XBzzfwCzX0distB2guyeJfC9ezNb1eZe0NrHvYjBF
         S4sddMNt05WuU5bCP5Em5edztAiyCh3iQdjbCSk1GeBZCl+6OAZwVER8rI8DYAM5mttS
         9SAfO1ao0e5e6nFicHHDUAA233cQe+EznULJ9id3LWBq0SPeYq/jy8uv01uYrCQ5yGCR
         wb0yzXl7JwxE4QjcN4c+vtjNHsL6ndvuCISKl8gvS2bnpoRSzSH8iTNGVquO8XvJtxD+
         euZaMfBJ3YZX4yak+YKitXYveyWpIHQGlJIWbfElsfNmz0shq6xLCkQChgbyyFOQwddm
         5dLQ==
X-Gm-Message-State: ANoB5plcDV8SGLbrypVLQX16GRS+8gs7TnZHmwAxsfNp1JFsjfvfrIKm
        K3qTmyLvv0qfqKtl1QLPcCT8Bwz+D0A=
X-Google-Smtp-Source: AA0mqf7OSCf3jlG9FvldCE/uAW8qlJEoJCbzUMDu2Aglo5PVqHwQMheAzlXtZBMT8tokcUmaym8I1Q==
X-Received: by 2002:adf:e584:0:b0:22e:41e:29fe with SMTP id l4-20020adfe584000000b0022e041e29femr5150044wrm.83.1668346438323;
        Sun, 13 Nov 2022 05:33:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w11-20020a5d404b000000b0022ae0965a8asm6905482wrp.24.2022.11.13.05.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 05:33:57 -0800 (PST)
Message-ID: <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
Date:   Sun, 13 Nov 2022 14:33:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
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
In-Reply-To: <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JEU60ZmRt5xdWgECJA4jt9fI"
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
--------------JEU60ZmRt5xdWgECJA4jt9fI
Content-Type: multipart/mixed; boundary="------------gFLW0UtdcEEaAwVC4bjGYS0s";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
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
In-Reply-To: <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>

--------------gFLW0UtdcEEaAwVC4bjGYS0s
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiAxMS8xMy8yMiAxNDoxOSwgQWxlamFuZHJvIENvbG9tYXIgd3Jv
dGU6DQo+PiBCdXQgdGhlcmUgYXJlIG5vdCBvbmx5IHN5bnRhY3RpY2FsIHByb2JsZW1zLCBi
ZWNhdXNlDQo+PiBhbHNvIHRoZSB0eXBlIG9mIHRoZSBwYXJhbWV0ZXIgbWlnaHQgYmVjb21l
IHJlbGV2YW50DQo+PiBhbmQgdGhlbiB5b3UgY2FuIGdldCBjaXJjdWxhciBkZXBlbmRlbmNp
ZXM6DQo+Pg0KPj4gdm9pZCBmb28oY2hhciAoKmEpW3NpemVvZiAqLmJdLCBjaGFyICgqYilb
c2l6ZW9mICouYV0pOw0KPiANCj4gVGhpcyBzZWVtcyB0byBiZSBhIGRpZmZpY3VsdCBzdG9u
ZSBpbiB0aGUgcm9hZC4NCj4gDQo+Pg0KPj4gSSBhbSBub3Qgc3VyZSB3aGF0IHdvdWxkIHRo
ZSBiZXN0IHdheSB0byBmaXggaXQuIE9uZQ0KPj4gY291bGQgc3BlY2lmaXkgdGhhdCBwYXJh
bWV0ZXJzIHJlZmVycmVkIHRvIGJ5DQo+PiB0aGUgLmlkZW50aWZlciBzeW50YXggbXVzdCBv
ZiBzb21lIGludGVnZXIgdHlwZSBhbmQNCj4+IHRoYXQgdGhlIHN1Yi1leHByZXNzaW9uIC5p
ZGVudGlmZXIgaXMgYWx3YXlzDQo+PiBjb252ZXJ0ZWQgdG8gYSAnc2l6ZV90Jy4NCj4gDQo+
IFRoYXQgbWFrZXMgc2Vuc2UsIGJ1dCB0aGVuIG92ZXJuaWdodCBzb21lIHF1aXRlIHVzZWZ1
bCB0aGluZyBjYW1lIHRvIG15IG1pbmQgDQo+IHRoYXQgd291bGQgbm90IGJlIHBvc3NpYmxl
IHdpdGggdGhpcyBsaW1pdGF0aW9uOg0KPiANCj4gDQo+IDxodHRwczovL3NvZnR3YXJlLmNv
ZGlkYWN0LmNvbS9wb3N0cy8yODU5NDY+DQo+IA0KPiBjaGFyICoNCj4gc3RwZWNweShjaGFy
IGRzdFsuZW5kIC0gLmRzdF0sIGNoYXIgKnNyYywgY2hhciBlbmRbMV0pDQo+IHsNCj4gIMKg
wqDCoMKgZm9yICgvKiB2b2lkICovOyBkc3QgPD0gZW5kOyBkc3QrKykgew0KPiAgwqDCoMKg
wqDCoMKgwqAgKmRzdCA9ICpzcmMrKzsNCj4gIMKgwqDCoMKgwqDCoMKgIGlmICgqZHN0ID09
ICdcMCcpDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkc3Q7DQo+ICDCoMKg
wqDCoH0NCj4gIMKgwqDCoMKgLyogVHJ1bmNhdGlvbiBkZXRlY3RlZCAqLw0KPiAgwqDCoMKg
wqAqZW5kID0gJ1wwJzsNCj4gDQo+ICNpZiAhZGVmaW5lZChOREVCVUcpDQo+ICDCoMKgwqDC
oC8qIENvbnN1bWUgdGhlIHJlc3Qgb2YgdGhlIGlucHV0IHN0cmluZy4gKi8NCj4gIMKgwqDC
oMKgd2hpbGUgKCpzcmMrKykge307DQo+ICNlbmRpZg0KPiANCj4gIMKgwqDCoMKgcmV0dXJu
IGVuZCArIDE7DQo+IH0NCg0KQW5kIEkgZm9yZ290IHRvIHNheSBpdDogIERlZmF1bHQgcHJv
bW90aW9ucyByYW5rIGhpZ2ggKHByb2JhYmx5IHRoZSBoaWdoZXN0KSBpbiANCm15IGxpc3Qg
b2YgbW9zdCBoYXRlZCBmZWF0dXJlc15XYnVncyBpbiBDLiAgSSB3b3VsZG4ndCBjb252ZXJ0
IGl0IHRvIHNpemVfdCwgYnV0IA0KcmF0aGVyIGZvbGxvdyBub3JtYWwgcHJvbW90aW9uIHJ1
bGVzLg0KDQpTaW5jZSB5b3UgY2FuIHVzZSBhbnl0aGluZyBiZXR3ZWVuIElOVE1BWF9NSU4g
YW5kIFVJTlRNQVhfTUFYIGZvciBhY2Nlc3NpbmcgYW4gDQphcnJheSAod2hpY2ggdG9vayBt
ZSBzb21lIHRpbWUgdG8gdW5kZXJzdGFuZCksIEknZCBhbHNvIGFsbG93IHRoZSBzYW1lIGhl
cmUuIA0KU28sIHRoZSB0eXBlIG9mIHRoZSBleHByZXNzaW9uIGJldHdlZW4gW10gY291bGQg
cGVyZmVjdGx5IGJlIHNpZ25lZCBvciB1bnNpZ25lZC4NCg0KU28sIHlvdSBjb3VsZCB1c2Ug
c2l6ZV90IGZvciB2ZXJ5IGhpZ2ggaW5kaWNlcywgb3IgZS5nLiBwdHJkaWZmX3QgaWYgeW91
IHdhbnQgdG8gDQphbGxvdyBuZWdhdGl2ZSBudW1iZXJzLiAgSW4gdGhlIGZ1bmN0aW9uIGFi
b3ZlLCBzaW5jZSBkc3QgY2FuIGJlIGEgcG9pbnRlciB0byANCm9uZS1wYXN0LXRoZS1lbmQg
KGl0IHJlcHJlc2VudHMgYSBwcmV2aW91cyB0cnVuY2F0aW9uOyB0aGF0J3Mgd2h5IHRoZSB0
ZXN0IA0KZHN0PD1lbmQpLCBmb3JjaW5nIGEgc2l6ZV90IGNvbnZlcnNpb24gd291bGQgZGlz
YWxsb3cgdGhhdCBzeW50YXguDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------gFLW0UtdcEEaAwVC4bjGYS0s--

--------------JEU60ZmRt5xdWgECJA4jt9fI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNw8j4ACgkQnowa+77/
2zIQHQ/+K/6qqHZQ7wGn5o5FNymdOigOPgbTtp1IDIHtdoEu9SgxVvb1bIGtG7Xx
Wy/4vA66/NxFTKlRNWktUmjN7xU8qPGgoGyoJjbjvT95YyreDesvewQ9YEtJgFXl
tgYpqaTBrsPjuK3DubmT/WGushzNllcyF1uJGXiTTHnTFC8x1Ei7w9D+h5u0qtjB
vEtP80pwx5zDnf2fS0X29ibM6/Vx5LCMux8AJ1FCJ+dTkdY4+DT3VAYiiWHFvhTu
QuFwxcQ3grUBpkXG+FfEUPFBuFIa2vKpww+//kzj5VykLRrARFAhIYVwNbnSZaBf
nB4gWQNM4uYzUIlbQ8mXZKa72qlpomkElZ8F2XVpHvjM7PybJVTcw+v16Dkeg0Rr
uYAv3yvOaSqDfOIuYEh1YNeizAkiFlO97I1QNLBI2DuP+GlxuLG6r+FvmEr1j7ax
FPln5/jj+h4iwdryNg4u6SwmzbLFYp0YYEjT8Npu78bzWpTvpxSIkpnA77pC9Y5x
VkgSqNAvs/9P+gQMsPm4JGGF2YGxNSdEEWaSYGoYgdBNqL7SeWneF1iFWDdwFaqP
VNKDNTeoTvefW0pGav6DWl5Gs8KX7/vaE+QOkf6CVN982c5/P/+IYJvWRxJFrBdY
OMCe39CjrssA3YqpUJ1IHo3+kdlrVif8neStqEvA2W7Ehd8KOxU=
=xqIL
-----END PGP SIGNATURE-----

--------------JEU60ZmRt5xdWgECJA4jt9fI--
