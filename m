Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEAA062D022
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:48:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238854AbiKQAsQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:48:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239002AbiKQAre (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:47:34 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 976A2701AC
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:46:03 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so447747wmi.3
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TFSQusoUQN+Ti8a7UzHOp+NFuv4qEnNIOBVoxoQv6UE=;
        b=DsTb12Bb3MYKNFac7yto2p6nWPmQ8uHk5knq+xPwyfa9RPedeOuWqtAoyqjXbFDe5a
         jS+eaDe/HWeyM0ACFSubmqRp4rfjgxre29Tg8CEY52Z5eIBElPobWx5+GG+tRDlI1p+D
         ZcyKzDvhD4kRKyjVAYAefXLiRer9QBA46TytAQqu/zXSBvSioc9EYmwjCy9loToVQMM3
         lKyEHOtXUHGYN41JJpWq9siptS5D4/sQo6JPG+xuAM65Lnc9g5ZA9HildXSVE7kXEc2d
         p1SWxuVDbMEriU54PlsKUYFHnyo6XlkOFGcOzBmBLgSV7ivgBcULC/8hfPQYHnqOI3+q
         SLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TFSQusoUQN+Ti8a7UzHOp+NFuv4qEnNIOBVoxoQv6UE=;
        b=S12sl1zsw5PMyErZxujDug4rqrmniLqnLMO0Ah25JWiRaQKyPdrdPGqRhQ2eB4sAuK
         YiqKcv/s+dfahhk+Gxuf/wmEo2hf4xgUdNGPAeHL/iseEJcXfz6vLQELKXLGbgT0mF3R
         JljqrQjhSKFATbXThwAf2I2EPR5kIjgyWoHzED9gFXnVtPQ7Kh4MRFO9gV6qxnMqQl8c
         3Cxdw66MA10BdX1H5th/77bfAz0G4qK3aoWxC2ns8sMqWWd+ejpy+zbnPHPpA46bGtym
         E/GS1/tAMuxGGy79j5k9QFw+hcNQWM8D2WozcxPdhg1RpoqJRBfIEO5wtJwusdqZPze/
         GuOQ==
X-Gm-Message-State: ANoB5pk2fQcUwRmg8gz718IgCy6DQ5TUkUiKr1n0BQcuO+AtLVaC+G2Q
        7P5+TJ0A8ia3U2rRFIYxjznPoYIt8h0=
X-Google-Smtp-Source: AA0mqf4Kh6RxTfKKxoqqk633/EMsDAYLxsZdQXvYXhjZ9i6tkFhnPPbXKop7q0AuGRHY8wfRj+q8hA==
X-Received: by 2002:a1c:7303:0:b0:3cf:e7bd:3035 with SMTP id d3-20020a1c7303000000b003cfe7bd3035mr136209wmb.60.1668645962074;
        Wed, 16 Nov 2022 16:46:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e12-20020adffd0c000000b00236576c8eddsm16497827wrr.12.2022.11.16.16.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 16:46:01 -0800 (PST)
Message-ID: <89372a6f-3339-f81d-28c3-1ca07b3c46d4@gmail.com>
Date:   Thu, 17 Nov 2022 01:45:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Content-Language: en-US
To:     Thomas Voss <mail@thomasvoss.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <6da4b1d7-238c-c670-400e-a0ef2831d3ce@gmail.com>
 <20221117003605.19595-1-mail@thomasvoss.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221117003605.19595-1-mail@thomasvoss.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vcLNLU1CJmpxycrejI1eHVmh"
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
--------------vcLNLU1CJmpxycrejI1eHVmh
Content-Type: multipart/mixed; boundary="------------7WS0JxOvbXLpdPaRFC6KsAX4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com
Message-ID: <89372a6f-3339-f81d-28c3-1ca07b3c46d4@gmail.com>
Subject: Re: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
References: <6da4b1d7-238c-c670-400e-a0ef2831d3ce@gmail.com>
 <20221117003605.19595-1-mail@thomasvoss.com>
In-Reply-To: <20221117003605.19595-1-mail@thomasvoss.com>

--------------7WS0JxOvbXLpdPaRFC6KsAX4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzE3LzIyIDAxOjM2LCBUaG9tYXMgVm9zcyB3cm90ZToNCj4gU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFZvc3MgPG1haWxAdGhvbWFzdm9zcy5jb20+DQo+IC0tLQ0KPiBBbHJp
Z2h0LCBob3BlZnVsbHkgdGhpcyBpcyBpdC4gIEZlZWxzIGEgYml0IHdlaXJkIG5vdCB1c2lu
ZyBtZG9jKDcpIGZvciBvbmNlIDpQLg0KDQpIZWguICBPbmUgbGFzdCBtaW5vciBuaXRwaWNr
Lg0KDQo+IA0KPiAgIG1hbjNjb25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0IHwgIDEgKw0KPiAg
IG1hbjNjb25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0IHwgNjAgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysNCj4gICAyIGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMo
KykNCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgbWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29u
c3QNCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29u
c3QNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25zdCBi
L21hbjNjb25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+IGluZGV4IDAwMDAwMDAwMC4uYmEwZDYyZGY5DQo+IC0tLSAvZGV2L251bGwNCj4gKysr
IGIvbWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29uc3QNCj4gQEAgLTAsMCArMSBAQA0KPiAr
LnNvIG1hbjNjb25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0DQo+IGRpZmYgLS1naXQgYS9tYW4z
Y29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdCBiL21hbjNjb25zdC9FWElUX1NVQ0NFU1MuM2Nv
bnN0DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMC4uYzBiNDc4
ZTg5DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4z
Y29uc3QNCj4gQEAgLTAsMCArMSw2MCBAQA0KPiArLlwiIENvcHlyaWdodCAoYykgMjAyMiBi
eSBUaG9tYXMgVm9zcyA8bWFpbEB0aG9tYXN2b3NzLmNvbT4NCj4gKy5cIg0KPiArLlwiIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQNCj4gKy5c
Ig0KPiArLlwiDQo+ICsuVEggRVhJVF9TVUNDRVNTIDNjb25zdCAoZGF0ZSkgIkxpbnV4IG1h
bi1wYWdlcyAodW5yZWxlYXNlZCkiDQo+ICsuU0ggTkFNRQ0KPiArRVhJVF9TVUNDRVNTLCBF
WElUX0ZBSUxVUkUgXC0gdGVybWluYXRpb24gc3RhdHVzIGNvbnN0YW50cw0KPiArLlNIIExJ
QlJBUlkNCj4gK1N0YW5kYXJkIEMgbGlicmFyeQ0KPiArLlJJICggbGliYyApDQo+ICsuU0gg
U1lOT1BTSVMNCj4gKy5uZg0KPiArLkIgI2luY2x1ZGUgPHN0ZGxpYi5oPg0KPiArLlBQDQo+
ICsuQlIgIiNkZWZpbmUgRVhJVF9TVUNDRVNTICAiICAwDQo+ICsuQlIgIiNkZWZpbmUgRVhJ
VF9GQUlMVVJFICAiICAiLyogbm9uemVybyAqLyINCj4gKy5maQ0KPiArLlNIIERFU0NSSVBU
SU9ODQo+ICsuQiBFWElUX1NVQ0NFU1MNCj4gK2FuZA0KPiArLkIgRVhJVF9GQUlMVVJFDQo+
ICtyZXByZXNlbnQgYSBzdWNjZXNzZnVsIGFuZCB1bnN1Y2Nlc3NmdWwgZXhpdCBzdGF0dXMg
cmVzcGVjdGl2ZWx5IGFuZCBjYW4gYmUgdXNlZA0KPiArYXMgYXJndW1lbnRzIHRvIHRoZQ0K
DQpJJ2QgYWRkIGEgY29tbWE6IHMvcmVzcGVjdGl2ZWx5IGFuZC9yZXNwZWN0aXZlbHksIGFu
ZC8NCg0KQWZ0ZXIgdGhhdCwgSSdkIGJyZWFrIHRoZSBsaW5lIGFmdGVyIHRoZSBjb21tYSAo
YW5kIHVuLWJyZWFrIGl0IGFmdGVyICJ1c2VkIikuDQoNClNlZSBtYW4tcGFnZXMoNyk6DQog
ICAgVXNlIHNlbWFudGljIG5ld2xpbmVzDQogICAgICAgIEluICB0aGUgIHNvdXJjZSBvZiBh
IG1hbnVhbCBwYWdlLCBuZXcgc2VudGVuY2VzIHNob3VsZCBiZQ0KICAgICAgICBzdGFydGVk
IG9uIG5ldyBsaW5lcywgbG9uZyBzZW50ZW5jZXMgc2hvdWxkIGJlIHNwbGl0IGludG8NCiAg
ICAgICAgbGluZXMgYXQgY2xhdXNlIGJyZWFrcyAoY29tbWFzLCBzZW1pY29sb25zLCAgY29s
b25zLCAgYW5kDQogICAgICAgIHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNlcyBzaG91bGQgYmUg
c3BsaXQgYXQgcGhyYXNlIGJvdW5k4oCQDQogICAgICAgIGFyaWVzLiAgIFRoaXMgIGNvbnZl
bnRpb24sICBzb21ldGltZXMgIGtub3duIGFzICJzZW1hbnRpYw0KICAgICAgICBuZXdsaW5l
cyIsIG1ha2VzIGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiAgcGF0Y2hlcywNCiAg
ICAgICAgd2hpY2ggb2Z0ZW4gb3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5kaXZpZHVhbCBz
ZW50ZW5jZXMsDQogICAgICAgIGNsYXVzZXMsIG9yIHBocmFzZXMuDQoNCkNoZWVycywNCg0K
QWxleA0KDQo+ICsuQlIgZXhpdCAoMykNCj4gK2Z1bmN0aW9uLg0KPiArLlNIIENPTkZPUk1J
TkcgVE8NCj4gK0M5OSBhbmQgbGF0ZXI7DQo+ICtQT1NJWC4xLTIwMDEgYW5kIGxhdGVyLg0K
PiArLlNIIEVYQU1QTEVTDQo+ICsuXCIgU1JDIEJFR0lOIChFWElUX1NVQ0NFU1MuYykNCj4g
Ky5FWA0KPiArI2luY2x1ZGUgPHN0ZGlvLmg+DQo+ICsjaW5jbHVkZSA8c3RkbGliLmg+DQo+
ICsNCj4gK2ludA0KPiArbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQ0KPiArew0KPiAr
ICAgIEZJTEUgKmZwOw0KPiArDQo+ICsgICAgaWYgKGFyZ2MgIT0gMikgew0KPiArICAgICAg
ICBmcHJpbnRmKHN0ZGVyciwgIlVzYWdlOiAlcyA8ZmlsZT5cZW4iLCBhcmd2WzBdKTsNCj4g
KyAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOw0KPiArICAgIH0NCj4gKw0KPiArICAgIGlm
ICgoZnAgPSBmb3Blbihhcmd2WzFdLCAiciIpKSA9PSBOVUxMKSB7DQo+ICsgICAgICAgIHBl
cnJvcihhcmd2WzFdKTsNCj4gKyAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOw0KPiArICAg
IH0NCj4gKw0KPiArICAgIC8qIE90aGVyIGNvZGUgb21pdHRlZCAqLw0KPiArDQo+ICsgICAg
ZmNsb3NlKGZwKTsNCj4gKyAgICBleGl0KEVYSVRfU1VDQ0VTUyk7DQo+ICt9DQo+ICsuRUUN
Cj4gKy5cIiBTUkMgRU5EDQo+ICsuU0ggU0VFIEFMU08NCj4gKy5CUiBleGl0ICgzKSwNCj4g
Ky5CUiBzeXNleGl0cy5oICgzaGVhZCkNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8t
Y29sb21hci5lcy8+DQo=

--------------7WS0JxOvbXLpdPaRFC6KsAX4--

--------------vcLNLU1CJmpxycrejI1eHVmh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1hEIACgkQnowa+77/
2zLZXw/+IIV0n9H/mtJ7PZ4cLRBdcIJtZK/4AUhvabmzWzTLFCdN0CnMARX6aiyt
WdHhrA46VJkEcGcP3CFco6HpebuG5dy0YW0XYpizAaLZsJlDacGffuMP2SPmCA+N
++IjrbCv8YB41JCoIa+JHJtXKNIInqkpusparyGceVzr982nc/mWkcEqqZe1rR+o
a/bLimEAitE71gDh7uhUZ96BsdqxmN1YGtNWgZNkA3b+CLA1MKiMtQIHqyfGxU6U
lskFc0D04TkMhBehO+XpmFuFhaE1kCPvPKeXD5+Jk60o4p42jmO2F0xD2UHl6ku4
QSifDUekMtZq5NJ05H+W1MqKVtpppTdJL1n8vgYFXOTGwIrPsyv3r9/1aPjyinSU
EdtUIrdXyR774W/HDt+AHYKJ4ct4c/BScM6l/dxeJR40lMwCZdJOqunXSNForiDX
J6Dn0Z1TAv+KMMfNtrImd5MXKR4nw3Rozx7Eq9I76abMMQ6fHN6T+qxjIbpN0PzG
XYpu3E6gwek+y31LXwAWX+gVody8mlFUgU9Stn0+cKQurkx7pSm+g5UYgBj/i/ai
7cd/61AMn90CHfJVJuK+WlmTaym6RM2LXzq5TxVYAAbCkhh+eM03kVewTt9oGH7u
5LmIyARIextnBdB6Y6r0XtVCngpmYb8wh7JlUcr1X3xdda/QlGY=
=jYHI
-----END PGP SIGNATURE-----

--------------vcLNLU1CJmpxycrejI1eHVmh--
