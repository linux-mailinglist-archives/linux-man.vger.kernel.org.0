Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5BC365B3AF
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 16:02:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbjABPC1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 10:02:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235937AbjABPCZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 10:02:25 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A3265C4
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 07:02:24 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso20712003wmp.3
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 07:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:cc:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/F9gD1OOCZqbt3s2THyh5J16/lmZnBA67y04r75nCYo=;
        b=kivQtDU30MMP9yyGbYPxQyp3PHoMl+uebZ+dhMDOiDuyk3g8vim1j6weQfhNTLS4iQ
         HlOPTFc1JtKFjPfBt/t3SVeDDuMsxK7jqC+CIAONbfxgkqKN6wElJH8/7ck3jbyKmTsd
         5WxQFWxcsl8va5nZhcO8ozH0XuTnoLfziBWSw1LN+4KUQ4l+usS3HVfRf8wZnT+mMkDB
         GZcDVmIvoLvfCCLjuCpDyiNsSxN/QoeT+B6s+g634Pug9pOEm97XUCRh5YbAMHKLDj5V
         +FRZZbtUv58+b/YYsB66gv4i1uNjHY/XQUq5PbZhnvsWD/GqTOaOgPjRz15weHCHjl9n
         F0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:cc:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/F9gD1OOCZqbt3s2THyh5J16/lmZnBA67y04r75nCYo=;
        b=BnMz5CG/fvKS4dY3w7NFxRofB+aHC3cL9EynzKv2v2d4i4o7uvsO3yaUqbSJV4i72e
         oNQSG18/qAFYTCh7tSuRYA+4QLu4PbJ6GwwNwscx+YLD79TlWu1hihyA2XGGzvTaMprU
         MuHzc5aLBdTvutgILAF8qpe36Cevts5to+X3trwwdOWqglifP23WuzQVdoPCQuM4A7fr
         /Us1svSIuuL1vdit1ht8jp9AaCb4gMcElAuZlITqPdfhvhs38IR/F12hfxWlFvJVvISL
         J3jJbjbwvLCMUoahpI76gPrant6iduxftZOO7lWAer/mFaBC/d2WA1c1dw4cMR4PeePe
         epcg==
X-Gm-Message-State: AFqh2kopLC5xvsfOOF6cy/sHAN1RVNADNPMyDdLIJAWgJVu56ng5QAJt
        NrzL68Pej7S221BeU8AgffI=
X-Google-Smtp-Source: AMrXdXtjMtohSOW5P89X73qv4QSWD30Lp5SyfPAPbGqLSv+XyiLDaEFyTwmWQlanCxJ86a4X+dmkGA==
X-Received: by 2002:a05:600c:3c8c:b0:3d9:719b:bd1b with SMTP id bg12-20020a05600c3c8c00b003d9719bbd1bmr28063952wmb.33.1672671743431;
        Mon, 02 Jan 2023 07:02:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n64-20020a1ca443000000b003d21759db42sm43653113wme.5.2023.01.02.07.02.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 07:02:22 -0800 (PST)
Message-ID: <1fed37b4-0bf6-0e20-56ff-2e006928989c@gmail.com>
Date:   Mon, 2 Jan 2023 16:02:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [Bug 216876] New: prototype for execveat() in the documentation
 appears wrong
Content-Language: en-US
To:     bugzilla-daemon@kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        markgaleck@gmail.com, linux-man <linux-man@vger.kernel.org>
References: <bug-216876-216477@https.bugzilla.kernel.org/>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Konstantin Ryabitsev <konstantin@linuxfoundation.org>
In-Reply-To: <bug-216876-216477@https.bugzilla.kernel.org/>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mGrdMR1Iyb3pMj0iDXt5lsbd"
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mGrdMR1Iyb3pMj0iDXt5lsbd
Content-Type: multipart/mixed; boundary="------------QsiWdDqdpq6SyD4ftKlD00Ro";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: bugzilla-daemon@kernel.org, GNU C Library <libc-alpha@sourceware.org>,
 markgaleck@gmail.com, linux-man <linux-man@vger.kernel.org>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <1fed37b4-0bf6-0e20-56ff-2e006928989c@gmail.com>
Subject: Re: [Bug 216876] New: prototype for execveat() in the documentation
 appears wrong
References: <bug-216876-216477@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216876-216477@https.bugzilla.kernel.org/>

--------------QsiWdDqdpq6SyD4ftKlD00Ro
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDEvMi8yMyAwNDo0NywgYnVnemlsbGEtZGFlbW9uQGtlcm5lbC5vcmcgd3Jv
dGU6DQo+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE2
ODc2DQo+IA0KPiAgICAgICAgICAgICAgQnVnIElEOiAyMTY4NzYNCj4gICAgICAgICAgICAg
U3VtbWFyeTogcHJvdG90eXBlIGZvciBleGVjdmVhdCgpIGluIHRoZSBkb2N1bWVudGF0aW9u
IGFwcGVhcnMNCj4gICAgICAgICAgICAgICAgICAgICAgd3JvbmcNCj4gICAgICAgICAgICAg
UHJvZHVjdDogRG9jdW1lbnRhdGlvbg0KPiAgICAgICAgICAgICBWZXJzaW9uOiB1bnNwZWNp
ZmllZA0KPiAgICAgICAgICAgIEhhcmR3YXJlOiBBbGwNCj4gICAgICAgICAgICAgICAgICBP
UzogTGludXgNCj4gICAgICAgICAgICAgIFN0YXR1czogTkVXDQo+ICAgICAgICAgICAgU2V2
ZXJpdHk6IGxvdw0KPiAgICAgICAgICAgIFByaW9yaXR5OiBQMQ0KPiAgICAgICAgICAgQ29t
cG9uZW50OiBtYW4tcGFnZXMNCj4gICAgICAgICAgICBBc3NpZ25lZTogZG9jdW1lbnRhdGlv
bl9tYW4tcGFnZXNAa2VybmVsLWJ1Z3Mub3NkbC5vcmcNCj4gICAgICAgICAgICBSZXBvcnRl
cjogbWFya2dhbGVja0BnbWFpbC5jb20NCj4gICAgICAgICAgUmVncmVzc2lvbjogTm8NCj4g
DQo+IHByb3RvdHlwZSBmb3IgZXhlY3ZlYXQoKSBpbiB0aGUgZG9jdW1lbnRhdGlvbiBpczoN
Cj4gDQo+IGludCBleGVjdmVhdChpbnQgZGlyZmQsIGNvbnN0IGNoYXIgKnBhdGhuYW1lLA0K
PiAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICpjb25zdCBhcmd2W10sIGNvbnN0
IGNoYXIgKmNvbnN0IGVudnBbXSwNCj4gICAgICAgICAgICAgICAgICAgICAgaW50IGZsYWdz
KTsNCj4gDQo+IA0KPiBUaGlzIGFwcGVhcnMgdG8gYmUgaW5jb25zaXN0ZW50IHdpdGggc2lt
aWxhciBmdW5jdGlvbnMsIG90aGVyIGRvY3VtZW50YXRpb24sDQo+IGFuZCBteSBzb3VyY2Vz
IChsYXRlc3QgVWJ1bnR1IGRpc3RyaWJ1dGlvbikuDQo+IA0KPiANCj4gSSB0aGluayB0d28g
b2YgdGhlICJjb25zdCIgc2hvdWxkIGJlIGRyb3BwZWQgc28gdGhhdCB3ZSBzaG91bGQgaGF2
ZToNCj4gDQo+IGludCBleGVjdmVhdChpbnQgZGlyZmQsIGNvbnN0IGNoYXIgKnBhdGhuYW1l
LA0KPiAgICAgICAgICAgICAgICAgICAgICBjaGFyICpjb25zdCBhcmd2W10sIGNoYXIgKmNv
bnN0IGVudnBbXSwNCj4gICAgICAgICAgICAgICAgICAgICAgaW50IGZsYWdzKTsNCg0KVGhh
bmtzIGZvciB0aGUgcmVwb3J0IQ0KDQpUaGlzIHdhcyBpbnRyb2R1Y2VkIGluIGNvbW1pdCA3
MWEyNWQ0Yzc5YjFjY2Y1MzhmNmI4MTNjODM0YmJjNDE5N2Y2MzcwDQoiZXhlY3ZlYXQuMjog
Rml4IHByb3RvdHlwZSIuDQoNClRoZSByZWFzb24gaXMgdGhhdCB0aGUga2VybmVsIHVzZXMg
dGhlIGNvbnN0Og0KDQphbHhAYXN1czU3NzU6fi9zcmMvbGludXgvbGludXgkIGdyZXBjIGV4
ZWN2ZWF0DQouL2luY2x1ZGUvbGludXgvY29tcGF0Lmg6ODUxOg0KYXNtbGlua2FnZSBsb25n
IGNvbXBhdF9zeXNfZXhlY3ZlYXQoaW50IGRmZCwgY29uc3QgY2hhciBfX3VzZXIgKmZpbGVu
YW1lLA0KCQkgICAgIGNvbnN0IGNvbXBhdF91cHRyX3QgX191c2VyICphcmd2LA0KCQkgICAg
IGNvbnN0IGNvbXBhdF91cHRyX3QgX191c2VyICplbnZwLCBpbnQgZmxhZ3MpOw0KDQoNCi4v
aW5jbHVkZS9saW51eC9zeXNjYWxscy5oOjEwMTE6DQphc21saW5rYWdlIGxvbmcgc3lzX2V4
ZWN2ZWF0KGludCBkZmQsIGNvbnN0IGNoYXIgX191c2VyICpmaWxlbmFtZSwNCgkJCWNvbnN0
IGNoYXIgX191c2VyICpjb25zdCBfX3VzZXIgKmFyZ3YsDQoJCQljb25zdCBjaGFyIF9fdXNl
ciAqY29uc3QgX191c2VyICplbnZwLCBpbnQgZmxhZ3MpOw0KDQoNCi4vZnMvZXhlYy5jOjIw
OTY6DQpTWVNDQUxMX0RFRklORTUoZXhlY3ZlYXQsDQoJCWludCwgZmQsIGNvbnN0IGNoYXIg
X191c2VyICosIGZpbGVuYW1lLA0KCQljb25zdCBjaGFyIF9fdXNlciAqY29uc3QgX191c2Vy
ICosIGFyZ3YsDQoJCWNvbnN0IGNoYXIgX191c2VyICpjb25zdCBfX3VzZXIgKiwgZW52cCwN
CgkJaW50LCBmbGFncykNCnsNCglyZXR1cm4gZG9fZXhlY3ZlYXQoZmQsDQoJCQkgICBnZXRu
YW1lX3VmbGFncyhmaWxlbmFtZSwgZmxhZ3MpLA0KCQkJICAgYXJndiwgZW52cCwgZmxhZ3Mp
Ow0KfQ0KDQoNCi4vZnMvZXhlYy5jOjIxMTU6DQpDT01QQVRfU1lTQ0FMTF9ERUZJTkU1KGV4
ZWN2ZWF0LCBpbnQsIGZkLA0KCQkgICAgICAgY29uc3QgY2hhciBfX3VzZXIgKiwgZmlsZW5h
bWUsDQoJCSAgICAgICBjb25zdCBjb21wYXRfdXB0cl90IF9fdXNlciAqLCBhcmd2LA0KCQkg
ICAgICAgY29uc3QgY29tcGF0X3VwdHJfdCBfX3VzZXIgKiwgZW52cCwNCgkJICAgICAgIGlu
dCwgIGZsYWdzKQ0Kew0KCXJldHVybiBjb21wYXRfZG9fZXhlY3ZlYXQoZmQsDQoJCQkJICBn
ZXRuYW1lX3VmbGFncyhmaWxlbmFtZSwgZmxhZ3MpLA0KCQkJCSAgYXJndiwgZW52cCwgZmxh
Z3MpOw0KfQ0KDQoNCkl0IHNlZW1zIHRoYXQgZ2xpYmMgYWRkZWQgYSB3cmFwcGVyIHJlY2Vu
dGx5LCBhbmQgSSBkaWRuJ3QgY2hlY2sgdGhhdCB0aGUgDQpwcm90b3R5cGUgY2hhbmdlZDoN
Cg0KYWx4QGFzdXM1Nzc1On4vc3JjL2dudS9nbGliYyQgZ3JlcGMgZXhlY3ZlYXQNCi4vcG9z
aXgvdW5pc3RkLmg6MzAwOg0KZXh0ZXJuIGludCBleGVjdmVhdCAoaW50IF9fZmQsIGNvbnN0
IGNoYXIgKl9fcGF0aCwgY2hhciAqY29uc3QgX19hcmd2W10sDQogICAgICAgICAgICAgICAg
ICAgICAgY2hhciAqY29uc3QgX19lbnZwW10sIGludCBfX2ZsYWdzKQ0KICAgICBfX1RIUk9X
IF9fbm9ubnVsbCAoKDIsIDMpKTsNCg0KDQouL3N5c2RlcHMvdW5peC9zeXN2L2xpbnV4L2V4
ZWN2ZWF0LmM6MjU6DQppbnQNCmV4ZWN2ZWF0IChpbnQgZGlyZmQsIGNvbnN0IGNoYXIgKnBh
dGgsIGNoYXIgKmNvbnN0IGFyZ3ZbXSwgY2hhciAqY29uc3QgZW52cFtdLA0KICAgICAgICAg
ICBpbnQgZmxhZ3MpDQp7DQogICAvKiBBdm9pZCBpbXBsaWNpdCBhcnJheSBjb2VyY2lvbiBp
biBzeXNjYWxsIG1hY3Jvcy4gICovDQogICByZXR1cm4gSU5MSU5FX1NZU0NBTExfQ0FMTCAo
ZXhlY3ZlYXQsIGRpcmZkLCBwYXRoLCAmYXJndlswXSwgJmVudnBbMF0sDQoJCQkgICAgICBm
bGFncyk7DQp9DQoNCg0KSSBDQ2QgZ2xpYmMgc28gdGhhdCB0aGV5IGNhbiBjb21tZW50Lg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KUC5TLjogIFRoZXJlJ3Mgc29tZSBwcm9ibGVtIGluIGJ1
Z3ppbGxhIHRoYXQgaXQncyBub3QgcmVjZWl2aW5nIG15IHJlcGxpZXMsIHNvIEkgDQpDQ2Vk
IGV2ZXJ5b25lIGludm9sdmVkIHNvIHdlIGNhbiBrZWVwIHRoZSBkaXNjdXNzaW9uIGluIHRo
ZSBtYWlsaW5nIGxpc3QuDQoNClAuUy4yOiAgUGluZywgS29uc3RhbnRpbiwgcGxlYXNlIGNo
ZWNrIHRoYXQuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------QsiWdDqdpq6SyD4ftKlD00Ro--

--------------mGrdMR1Iyb3pMj0iDXt5lsbd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOy8e4ACgkQnowa+77/
2zIVlw//WbxCsgGedW4rlgviBAH1cu9o9VH/NFtuaT6IqvoCMd2GCTNL/BWnxKaP
8RyEa3GEglplK1RmiXB+PSjOmDsohF3+Y0Pr3avmWX+j7KGd/bkwjVbmCUSy0czn
CtxjmXL8PeuX133/CKNRXcOqYzqLxSi9lYEQBcxEsS6Xxpz1ZYg6cKAPxzIqVm3M
K7xp8PRENP+hVhjuhYA14ADrRm8m9iZ9/Z9mwHfu1RfLtYIT5CVziX1ahKVjPEaT
0L4EezNV0WIb0wd8bmAFJKzlgZsD1L+vYedXXCuZ8L7c79ejtTh5oMjujC5d2hRX
VYCcGyC1OokArcxaqL4hLMrVTmYO1BNKjN6oUvHi/zqTkVTOz68h85iI1h5NPkoI
CbFXGFjUfvwMvj8drwm/7gAjxPbnKtPvYw0fVOGXmig8qSoRVgag58Js0vDZzsD4
hDE80MeI0su7sPRDTeeBHPtc5j4Uj8ikv0GtDUVZsPhpRFKHsse3RVlSm1pE1oj3
1LkLyu1yFZGHZ9T47hRllmlPPtxM7kC/uQtQ4nDmU1mSeiusYVBruaH/ACtMCOw6
qNxwItWvUtNz8TXbT6ekXkS9rOYB5axqglibJB+MfYwJavIxRUa15L+H4ovDtzgr
IxwmNAA/YJILSfED+ACjCcwFDb5pBJ1Qgrbn00xH8N0hg9/7Ze8=
=lmOw
-----END PGP SIGNATURE-----

--------------mGrdMR1Iyb3pMj0iDXt5lsbd--
