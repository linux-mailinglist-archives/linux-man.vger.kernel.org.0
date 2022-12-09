Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03D8B6489A2
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 21:43:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbiLIUnW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 15:43:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiLIUnV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 15:43:21 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C40218B23
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 12:43:20 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id h8-20020a1c2108000000b003d1efd60b65so701776wmh.0
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 12:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwmaCr2buTmhh7zqk5Do2sPQCm3kYqGybzfc21QeqYQ=;
        b=cIk9DDrlJCc4eVEm3zJEHB2u+qj9LKDhSfyFPafJvYJQ4ukP3BzAvqTKQkbZi8Aeul
         8WaBWfpEj2oqNSFonEO8DhsEfikvkPDVGekVuq9TlwqN07ZTUocg0ZUXVyXysYV/VNYK
         MUn55840oZEPvisY8mHaQpg5tbOp9eghMkhS+YXL/DSttMt0Hra7mtZyB84Kw2Dyi8vf
         QRVFJZEpGi8PyquWVwruU4HWEwLTff5ncLqOT6BVewEH/A8wATRm2Qr4R9+/Xa8oze+l
         DQ3K4EzOFsGn9xUF0Gl/VUeeFyFxKlwvfLPMij5zzE8qqlT7MfZ7APDhZNceGK/hsQHp
         aCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QwmaCr2buTmhh7zqk5Do2sPQCm3kYqGybzfc21QeqYQ=;
        b=cubdTqq5nwCIjX//WoCvIdk48F5fXa7aySZJEX33ILG43IoYTeELgwCjEWHqq6V8N8
         f9Qzr1WwTw34b1KwOA8u8IWZX/LpLS+kImdGQqN34PdMqMcZOpFpwXUQOpEYF+dJkfOu
         76V4co3PKMRAnwGWSv1gqqOf/lORab7Yhzl0mEhZ0ItKX0PQvjf/T49lyRBEfOQjbI0z
         ZjPp5mPPt5lA3+7TF/AGhbIWSxQKI68tFr212i9PIH7PKLsJxxXdXgrT94J8PGKp24b3
         id19BzSxtB7JxCR2mLBWvTHjqgobMnGVyncmxD2ee3us073gPr2IFPHoB4tFukjdloJQ
         j3mQ==
X-Gm-Message-State: ANoB5plGChv8wNLuXkvfsF+T8gwgKYByfXTMzhJLR5FyU1EdDHsM+kZD
        3TvbZOUvoSXZ8lTaUy4YIyrBJhGiDz8=
X-Google-Smtp-Source: AA0mqf4tE5N47kmGGFKyCmFMUFsiod0U3aivL4S2jQOvL6nPVWVrntPX/Vcr/PmSIq6VuscrLMAI2Q==
X-Received: by 2002:a05:600c:500a:b0:3d0:7fdf:3026 with SMTP id n10-20020a05600c500a00b003d07fdf3026mr6402105wmr.10.1670618598702;
        Fri, 09 Dec 2022 12:43:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id fc18-20020a05600c525200b003cfd64b6be1sm1021794wmb.27.2022.12.09.12.43.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 12:43:18 -0800 (PST)
Message-ID: <266ffba3-4831-f740-5354-3f00f9cc8dc6@gmail.com>
Date:   Fri, 9 Dec 2022 21:43:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: str{n,}casecmp(3) and <strings.h> (was: Conflicting alias for some
 man pages)
Content-Language: en-US
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
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221209203719.yh5eosxv6ckgfuhz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BgWSoUOBhO8yxJGcH2r2xbIE"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BgWSoUOBhO8yxJGcH2r2xbIE
Content-Type: multipart/mixed; boundary="------------wP2nlMOmwOV6VBWaxAnRXmSh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 linux-man@vger.kernel.org, =?UTF-8?Q?Mario_Bl=c3=a4ttermann?=
 <mario.blaettermann@gmail.com>, Marcos Fouces <marcos@debian.org>,
 "Dr. Tobias Quathamer" <toddy@debian.org>
Message-ID: <266ffba3-4831-f740-5354-3f00f9cc8dc6@gmail.com>
Subject: str{n,}casecmp(3) and <strings.h> (was: Conflicting alias for some
 man pages)
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
In-Reply-To: <20221209203719.yh5eosxv6ckgfuhz@illithid>

--------------wP2nlMOmwOV6VBWaxAnRXmSh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvOS8yMiAyMTozNywgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gT24gYW5vdGhlciB0b3BpYywgSSB3aWxsIHN0dW1wIGFnYWluIGZvciB0aGUg
aWRlYSBvZiBoYXZpbmcgc2VwYXJhdGUNCj4gc3RyaW5ncy5oKDMpIGFuZCBzdHJpbmcuaCgz
KSBwYWdlcyBpbnN0ZWFkIG9mIHRoZSBzaW5nbGUgc3RyaW5nKDMpIHBhZ2UNCj4gd2Ugc2Vl
IGhlcmUuICA6KQ0KPiANCj4gT24geWV0IGFub3RoZXIgdG9waWMsIHRoZSBoaXN0b3J5IG9m
IHN0cmNhc2VjbXAoKSBzZWVtcyBpbmNvbXBsZXRlLCBhbmQNCj4gZmFpbHMgdG8gbW90aXZh
dGUgd2h5ICJzdHJpbmdzLmgiIChub3RlIHRoZSBhZGRpdGlvbmFsICJzIikgZXZlbiBleGlz
dHMuDQo+IA0KPiBOT1RFUw0KPiAgICAgICAgIFRoZSBzdHJjYXNlY21wKCkgYW5kIHN0cm5j
YXNlY21wKCkgZnVuY3Rpb25zIGZpcnN0IGFwcGVhcmVkICBpbg0KPiAgICAgICAgIDQuNEJT
RCwgd2hlcmUgdGhleSB3ZXJlIGRlY2xhcmVkIGluIDxzdHJpbmcuaD4uICBUaHVzLCBmb3Ig
cmVh4oCQDQo+ICAgICAgICAgc29ucyBvZiBoaXN0b3JpY2FsIGNvbXBhdGliaWxpdHksIHRo
ZSBnbGliYyAgPHN0cmluZy5oPiAgaGVhZGVyDQo+ICAgICAgICAgZmlsZSBhbHNvIGRlY2xh
cmVzIHRoZXNlIGZ1bmN0aW9ucywgaWYgdGhlIF9ERUZBVUxUX1NPVVJDRSAob3IsDQo+ICAg
ICAgICAgaW4gZ2xpYmMgMi4xOSBhbmQgZWFybGllciwgX0JTRF9TT1VSQ0UpIGZlYXR1cmUg
dGVzdCAgbWFjcm8gIGlzDQo+ICAgICAgICAgZGVmaW5lZC4NCj4gDQo+IFRoZXkncmUgb2xk
ZXIgdGhhbiB0aGUgYWJvdmUgaW5kaWNhdGVzLiAgc3RyaW5ncy5oIGFzIGEgX2ZpbGVfIGlz
IGF0DQo+IGxlYXN0IGFzIG9sZCBhcyA0LjJCU0QgKDE5ODMpLFsxXSBhIGRlY2FkZSBiZWZv
cmUgNC40QlNELg0KPiBzdHJ7bix9Y2FzZWNtcCgpIGNhbWUgaW4gd2l0aCA0LjNCU0QtVGFo
b2UgKEp1bmUgMTk4OCkuWzJdICBJbg0KPiA0LjNCU0QtUmVubyAoSnVuZSAxOTg5KSwgc3Ry
aW5ncy5oIGJlY2FtZSBhIHN0dW1wIHRoYXQgbG9hZGVkDQo+IDxzdHJpbmcuaD4sWzNdIHdo
ZXJlIGl0IHJlbWFpbmVkIGFuZCBhZnRlciB3aGljaCB0aGUgbWFuLXBhZ2VzIGhpc3RvcnkN
Cj4gYWJvdmUgcGlja3MgdXAgdGhlIHN0b3J5Lg0KPiANCj4gV2FudCBhIHBhdGNoPw0KDQpT
dXJlLCBwYXRjaGVzIGFyZSBhbHdheXMgd2VsY29tZSEgID0pDQoNCk1heWJlIHRoYXQgaW5m
byB3b3VsZCBiZSBiZXR0ZXIgaW4gc3RyaW5nKDMpLg0KDQo+IA0KPiBbMV0gaHR0cHM6Ly9t
aW5uaWUudHVocy5vcmcvY2dpLWJpbi91dHJlZS5wbD9maWxlPTQuMkJTRC91c3IvaW5jbHVk
ZS9zdHJpbmdzLmgNCj4gWzJdIGh0dHBzOi8vbWlubmllLnR1aHMub3JnL2NnaS1iaW4vdXRy
ZWUucGw/ZmlsZT00LjNCU0QtVGFob2UvdXNyL2luY2x1ZGUvc3RyaW5ncy5oDQo+IFszXSBo
dHRwczovL21pbm5pZS50dWhzLm9yZy9jZ2ktYmluL3V0cmVlLnBsP2ZpbGU9NC4zQlNELVJl
bm8vaW5jbHVkZS9zdHJpbmdzLmgNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------wP2nlMOmwOV6VBWaxAnRXmSh--

--------------BgWSoUOBhO8yxJGcH2r2xbIE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTneUACgkQnowa+77/
2zIpUQ//QNQk8IsRaHHqmt5hvjv3KM1Gj8Gu7fzBS62e0lD8SAgcqvS6vY3m3ubb
Osp8H9AH36dOgW0mc9WGr7Bm0Mls2+70PLOUd488VNZJj+2T+ufw6ijOqRFYVnUc
RnCQXFryyTx6jjoHK5SOBkVmfElnJ1XuhL5i4YZJUDG5wLxqAGVw/0iNYWoOaR9Z
llm7r8+hd3AmA+sRLm7aD6r7nWheQGYlSEcgX0BcrfQ5GVtXYJYXsLtbWm0YsfxW
sSbh6NDY4dKZVDXDkQifoFgwoT3s8MEtN61ZK/Ii4ZnwzcLRGN6EwvOnDEcRuVi2
FKgPXd9UoG0WSbX9ovke5nyUXoP9YYBRobZcJNYXMWy0lS5X1+ZqiCIdRKoKeAg4
KUAV2iGnGwSpPjlJ0AsDiFcO75Bp9KjF8NhZQWYOSTzapK2lyV0wabsNEraBPWKe
BfCtGygJF1sj9tZZlTLEtPV16Ffd/cT8wEjraKBrjnG8SuadEhwrJP4/nStFo6RK
z699ma2QuNUjuSptTsl2WjgaS+QzkU+SgKXiEklH0Z9ZLQCfkN7z2WWUCgaRTd3n
9ynwJwUMEGLoLDbWV2t8Af7T3maBaszM19Z+0AREvil9UHhM0+Df8mnXgHEEkeI/
h326dXwbL5c+DIFgY+NA0xIiAFAwpjcEjdXI6P7pBqALaG1/6yc=
=CpIL
-----END PGP SIGNATURE-----

--------------BgWSoUOBhO8yxJGcH2r2xbIE--
