Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F9126489A4
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 21:45:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbiLIUoy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 15:44:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiLIUox (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 15:44:53 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D964AABA29
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 12:44:51 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id h10so6341012wrx.3
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 12:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWTNCnypm+SdycRcwk3FWNvWbrLNWP+JxXYhpjY+8FQ=;
        b=hlS/3AaY0iqKYO9lPtNl9UQc1jJkjrKy75FXgAdiQwqHX6mrPJGunxpFLv5Ge0oabl
         k7CymM51IJ5AfwY63E3ElIu8MzXdeJPekM4GFOrlP6PyJ+ncfeG0j/Q57F7fpNig0WdD
         JlbL2Vn0cKIjIVeuEyvvwwkQFkXb2QNSn73KnxyhbuyHjcFJi+ResWCoMp4Tz1LFUBgw
         fHg2hHz0jqWHYBes05aOEQ+gqZ/Gk8SPBhjukRdYuQhKnW+UkTDBxkigDPT8nWf18/sH
         /OJh9C1JgO7BRWrkUEXCni8a++j1cegZYJdcy+dLnh3cGos6NslZRSy8YsE7qaoRrdq+
         VXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DWTNCnypm+SdycRcwk3FWNvWbrLNWP+JxXYhpjY+8FQ=;
        b=sXNmX8k4c+mxhX8j9Mh0/pjhNOvB/OWH9xwsv0d/MHNF9nnzup1e6CO+jGiVSD42nQ
         AqGSChbPXaXcadD3ihjudIzsKvugqRiV3yCTOhoR5x8On8IvsBNliBq48r4tkTsx4/mw
         +neZ9rO6OOT6sf0X+etXLraLcCEsNitZdDI2JbNHOcK9My2xpTez52S5V71mt32D8WCJ
         GInBl98TWgg2ipwjyLq4Jr8g4+sX/+VPIUa9+Y3bn8Eq32CiwINYhAZ1ramfMywbhSia
         oUmDcpIfV7U0BsrhMHJjdvJH85LuhCr7k9sz+CHWCgdJNULU6qcjxJqZgLtWovv0qDUi
         xTag==
X-Gm-Message-State: ANoB5pnpdyCxxvPGzYow+mWO4aMhmba6uT3dpeV9yBYXs7fLctBfWJmr
        ZKMsvIoTuvkE8gUShqfmGi0=
X-Google-Smtp-Source: AA0mqf74sNTdm/y4gYC66EdrE7jOJuiphIv43u1QrKPwMdGfUYp7d+sCQ21C9a4o6+QW0SGwhBs1jA==
X-Received: by 2002:adf:f88c:0:b0:242:5563:c3b with SMTP id u12-20020adff88c000000b0024255630c3bmr4713827wrp.59.1670618690439;
        Fri, 09 Dec 2022 12:44:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id ba17-20020a0560001c1100b0024245e543absm2281860wrb.88.2022.12.09.12.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 12:44:50 -0800 (PST)
Message-ID: <4c4fbb77-85cc-52d8-55ee-c6ecab64cf55@gmail.com>
Date:   Fri, 9 Dec 2022 21:44:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: str{n,}casecmp(3) and <strings.h> (was: Conflicting alias for
 some man pages)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
 <266ffba3-4831-f740-5354-3f00f9cc8dc6@gmail.com>
In-Reply-To: <266ffba3-4831-f740-5354-3f00f9cc8dc6@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E39bvacgeIkU9zJelABC9gp3"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------E39bvacgeIkU9zJelABC9gp3
Content-Type: multipart/mixed; boundary="------------o2ovFyiqJgR6kGNiw2gGIICi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 linux-man@vger.kernel.org, =?UTF-8?Q?Mario_Bl=c3=a4ttermann?=
 <mario.blaettermann@gmail.com>, Marcos Fouces <marcos@debian.org>,
 "Dr. Tobias Quathamer" <toddy@debian.org>
Message-ID: <4c4fbb77-85cc-52d8-55ee-c6ecab64cf55@gmail.com>
Subject: Re: str{n,}casecmp(3) and <strings.h> (was: Conflicting alias for
 some man pages)
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
 <266ffba3-4831-f740-5354-3f00f9cc8dc6@gmail.com>
In-Reply-To: <266ffba3-4831-f740-5354-3f00f9cc8dc6@gmail.com>

--------------o2ovFyiqJgR6kGNiw2gGIICi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzkvMjIgMjE6NDMsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSBC
cmFuZGVuLA0KPiANCj4gT24gMTIvOS8yMiAyMTozNywgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4+IE9uIGFub3RoZXIgdG9waWMsIEkgd2lsbCBzdHVtcCBhZ2FpbiBmb3IgdGhl
IGlkZWEgb2YgaGF2aW5nIHNlcGFyYXRlDQo+PiBzdHJpbmdzLmgoMykgYW5kIHN0cmluZy5o
KDMpIHBhZ2VzIGluc3RlYWQgb2YgdGhlIHNpbmdsZSBzdHJpbmcoMykgcGFnZQ0KPj4gd2Ug
c2VlIGhlcmUuwqAgOikNCj4+DQo+PiBPbiB5ZXQgYW5vdGhlciB0b3BpYywgdGhlIGhpc3Rv
cnkgb2Ygc3RyY2FzZWNtcCgpIHNlZW1zIGluY29tcGxldGUsIGFuZA0KPj4gZmFpbHMgdG8g
bW90aXZhdGUgd2h5ICJzdHJpbmdzLmgiIChub3RlIHRoZSBhZGRpdGlvbmFsICJzIikgZXZl
biBleGlzdHMuDQo+Pg0KPj4gTk9URVMNCj4+IMKgwqDCoMKgwqDCoMKgIFRoZSBzdHJjYXNl
Y21wKCkgYW5kIHN0cm5jYXNlY21wKCkgZnVuY3Rpb25zIGZpcnN0IGFwcGVhcmVkwqAgaW4N
Cj4+IMKgwqDCoMKgwqDCoMKgIDQuNEJTRCwgd2hlcmUgdGhleSB3ZXJlIGRlY2xhcmVkIGlu
IDxzdHJpbmcuaD4uwqAgVGh1cywgZm9yIHJlYeKAkA0KPj4gwqDCoMKgwqDCoMKgwqAgc29u
cyBvZiBoaXN0b3JpY2FsIGNvbXBhdGliaWxpdHksIHRoZSBnbGliY8KgIDxzdHJpbmcuaD7C
oCBoZWFkZXINCj4+IMKgwqDCoMKgwqDCoMKgIGZpbGUgYWxzbyBkZWNsYXJlcyB0aGVzZSBm
dW5jdGlvbnMsIGlmIHRoZSBfREVGQVVMVF9TT1VSQ0UgKG9yLA0KPj4gwqDCoMKgwqDCoMKg
wqAgaW4gZ2xpYmMgMi4xOSBhbmQgZWFybGllciwgX0JTRF9TT1VSQ0UpIGZlYXR1cmUgdGVz
dMKgIG1hY3JvwqAgaXMNCj4+IMKgwqDCoMKgwqDCoMKgIGRlZmluZWQuDQo+Pg0KPj4gVGhl
eSdyZSBvbGRlciB0aGFuIHRoZSBhYm92ZSBpbmRpY2F0ZXMuwqAgc3RyaW5ncy5oIGFzIGEg
X2ZpbGVfIGlzIGF0DQo+PiBsZWFzdCBhcyBvbGQgYXMgNC4yQlNEICgxOTgzKSxbMV0gYSBk
ZWNhZGUgYmVmb3JlIDQuNEJTRC4NCj4+IHN0cntuLH1jYXNlY21wKCkgY2FtZSBpbiB3aXRo
IDQuM0JTRC1UYWhvZSAoSnVuZSAxOTg4KS5bMl3CoCBJbg0KPj4gNC4zQlNELVJlbm8gKEp1
bmUgMTk4OSksIHN0cmluZ3MuaCBiZWNhbWUgYSBzdHVtcCB0aGF0IGxvYWRlZA0KPj4gPHN0
cmluZy5oPixbM10gd2hlcmUgaXQgcmVtYWluZWQgYW5kIGFmdGVyIHdoaWNoIHRoZSBtYW4t
cGFnZXMgaGlzdG9yeQ0KPj4gYWJvdmUgcGlja3MgdXAgdGhlIHN0b3J5Lg0KPj4NCj4+IFdh
bnQgYSBwYXRjaD8NCj4gDQo+IFN1cmUsIHBhdGNoZXMgYXJlIGFsd2F5cyB3ZWxjb21lIcKg
ID0pDQo+IA0KPiBNYXliZSB0aGF0IGluZm8gd291bGQgYmUgYmV0dGVyIGluIHN0cmluZygz
KS4NCg0KT2gsIEkgbWlzc2VkIHlvdXIgc3VnZ2VzdGlvbiBhYm91dCBoYXZpbmcgdHdvIHNl
cGFyYXRlIHBhZ2VzIGZvciBzdHJpbmcuaCBhbmQgDQpzdHJpbmdzLmguICBQbGVhc2UgZ28g
YWhlYWQuICBJIGxpa2UgaXQuDQoNCj4gDQo+Pg0KPj4gWzFdIGh0dHBzOi8vbWlubmllLnR1
aHMub3JnL2NnaS1iaW4vdXRyZWUucGw/ZmlsZT00LjJCU0QvdXNyL2luY2x1ZGUvc3RyaW5n
cy5oDQo+PiBbMl0gDQo+PiBodHRwczovL21pbm5pZS50dWhzLm9yZy9jZ2ktYmluL3V0cmVl
LnBsP2ZpbGU9NC4zQlNELVRhaG9lL3Vzci9pbmNsdWRlL3N0cmluZ3MuaA0KPj4gWzNdIGh0
dHBzOi8vbWlubmllLnR1aHMub3JnL2NnaS1iaW4vdXRyZWUucGw/ZmlsZT00LjNCU0QtUmVu
by9pbmNsdWRlL3N0cmluZ3MuaA0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------o2ovFyiqJgR6kGNiw2gGIICi--

--------------E39bvacgeIkU9zJelABC9gp3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTnkAACgkQnowa+77/
2zLvNg/8D8E9ZTzHSaj85qXmdGXIK7TAmHu0FCvcepiVpZcJC72IIweVv0wxqmRs
iSbDA6njjnLEpF4BC/bNOlRMPowrY6T2/0RUC+BIkdgkzrwDTnhtMz9M6xVRNjpL
0LeatxuH2XLoFQUboRkm5p3fNqTyp/x9rNVaU9a9sjWP+/GNLDEqRoiH4o2fh5/G
Ss4BakbDo9cezKVDFDFAEdxqDwSOSky15CISy5J/k/mq5URTw+HemfBeIXWxlbmT
Yr9ypNgJxwvfhgeJdZd8v9deI2T0MASc5mbncqO35Dj6NIfeUtRJNYYPaWh61Hhl
W1HoD0Uy/0a8tlwZtT/2dHOSeYHPWHspYH+2WH3FYjanQKr2rcuUr8pyNWInA2YV
wbAXR3/KQRjIOA31wlkOsi+baI7FCsrf5lWIhIKoJkb8LvJikthnUrfLJ9c67zpu
euVB4hAXfPApZ8O7QxlNgoRmVKQqtXBkAoJOCj5Xq6LQ02SBi+Uoo19tLB9WwH4n
cUxfkcpDt14IneFvrC7xmnChjljW10Lrjm5fwAhcsIFda0aZodOYk4Sg4GSVSedG
yHTo+RxCnHhHaCXkNBoMyo4ZbcEK7ixd/WTBvo/2K31+xKcqLDfC7jDLrmUF8VKF
FaKfYGvMzunDSfxoam9GIqhL0Yg5HzyzGI4BJfcLhfrP3ut6FIo=
=lNbY
-----END PGP SIGNATURE-----

--------------E39bvacgeIkU9zJelABC9gp3--
