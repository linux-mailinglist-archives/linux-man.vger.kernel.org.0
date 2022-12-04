Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A056641FCA
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:19:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbiLDVTb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:19:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDVTa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:19:30 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B868312AD9
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:19:29 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id q7so15955756wrr.8
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QSMv42WwEqtcb75UOHDHu3lz9E6/GD182KBLB0ygS0E=;
        b=O/1R7r6mFGyF2NXLAAJAloK5KnehckIOSOmDrrsVTIq6iBsdLlzsvQH6cVHn9MISH1
         GTkrdS1QjO6OtLgidFyzGu+ROJGcgJBJlcZ/vu31n8Y+IO/LUZ2r3TJH3mC+K1Ke/Q8L
         FTXcikksH88k0p7rFJBoRj4LPLyJav6X1dPNQK/SLobyXWCMCZ8z9bSPN1dwYlVFK6Xh
         U4XPYF3z/Nnk6HA/U+40Q6JCwik0hL8SpLASsDVN5gVQhG5jlen7qRA1xQpJgxkZ6Nh5
         TpQIMTOfpzmOYEfRqRt4siU+3fNP0tLXy+K68VVoFwNCEjIZoDjH4TEvocIu9WJd+Kb5
         qf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QSMv42WwEqtcb75UOHDHu3lz9E6/GD182KBLB0ygS0E=;
        b=QYBcoZ7LV1R+OhJyjv5R4OeQPmVpbFuWppB/4bSKPhR41bEQSTq44L+ezOHkfRqhk2
         POOHHuPTqZq30Ql6Zv15J7Eh1GjBv8jPf+LgELz3gMItn0ARXusH+S3iok2G84tla5kD
         HIGdZNDarayjxofLX1aG4zlU4WAlMYoTfzzIH5j7oUB/yu1j/iZ7VonVdCcI7yd+Qaa6
         UsqAxvu9MtV8jfwaiO4/dSKiktR6L5b4o9PmyE8C86MuLA2kGnLhk6bsGWu03WUF9HWY
         Pyw8V2wMqNeH6Snie6HTbUTrMel23qTS+uJ/1tG7p64Myf4pdaa45wzvqgU5bkwkNktM
         gLng==
X-Gm-Message-State: ANoB5plC+rq2xWDEBCJ7XKNkqgTyMH5Y3wPGMvBkTzmsLw+eOsdC+hK5
        PuZy1ckAKsT9q98dCYU1vJI=
X-Google-Smtp-Source: AA0mqf7DzGmKCFEbAl5utoewoXF8Db6FKgEhT1amQz5M9LCC0uHizM4A9zP/ALZ0wSuvrshcIieRBQ==
X-Received: by 2002:adf:ebce:0:b0:22e:4acd:cc89 with SMTP id v14-20020adfebce000000b0022e4acdcc89mr52428767wrn.76.1670188768285;
        Sun, 04 Dec 2022 13:19:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c458a00b003cfd4a50d5asm21691558wmo.34.2022.12.04.13.19.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:19:27 -0800 (PST)
Message-ID: <1477d7a1-662a-8e49-1e8d-68b9f9ad6b32@gmail.com>
Date:   Sun, 4 Dec 2022 22:19:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page passwd.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090714.GA587@Debian-50-lenny-64-minimal>
 <4c00b870-212e-9546-24fb-b700e800fce3@gmail.com>
 <20221204140608.GE441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204140608.GE441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BOUkHPPq40XBM7OSR7NcRnJa"
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
--------------BOUkHPPq40XBM7OSR7NcRnJa
Content-Type: multipart/mixed; boundary="------------XkmGysRa5tiZmrZQeQ71vUcO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <1477d7a1-662a-8e49-1e8d-68b9f9ad6b32@gmail.com>
Subject: Re: Issue in man page passwd.5
References: <20221204090714.GA587@Debian-50-lenny-64-minimal>
 <4c00b870-212e-9546-24fb-b700e800fce3@gmail.com>
 <20221204140608.GE441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204140608.GE441@Debian-50-lenny-64-minimal>

--------------XkmGysRa5tiZmrZQeQ71vUcO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTU6MDYsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IEhlbGxv
IEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMDE6NDY6MjlQTSArMDEw
MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEwOjA3LCBIZWxn
ZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xs
b3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgXCJtb3VudCBkZXYgcGF0aFwi
IOKGkiBCPG1vdW50PiBJPGRldiBwYXRoPg0KPj4+DQo+Pj4gIkFmdGVyIGEgXCJtb3VudCBk
ZXYgcGF0aFwiIGNvbW1hbmQsIHRoZSBwYXRobmFtZSBcInBhdGhcIiByZWZlcnMgdG8gdGhl
IHJvb3QiDQo+Pj4gIm9mIHRoZSBmaWxlc3lzdGVtIGhpZXJhcmNoeSBvbiB0aGUgZGV2aWNl
IFwiZGV2XCIsIGFuZCBubyBsb25nZXIgdG8gd2hhdGV2ZXIiDQo+Pj4gIml0IHJlZmVycmVk
IHRvIGVhcmxpZXIuIg0KPj4NCj4+IEkgY2FuJ3QgZmluZCB0aGlzIHRleHQgaW4gdGhlIGN1
cnJlbnQgdmVyc2lvbiBvZiBwYXNzd2QoNSkuICBQbGVhc2UgbWFrZQ0KPj4gc3VyZSB0aGF0
IHRoZSByZXBvcnQgaXMgYWJvdXQgdGhlIGNvcnJlY3QgcGFnZSwgYW5kIGlzIG5vdCBvdXRk
YXRlZC4NCj4gDQo+IFNvcnJ5LCB0aGlzIGlzIGluIHBhdGhfcmVzb2x1dGlvbig3KS4NCg0K
Rml4ZWQuICBUaGFua3MuLw0KPiANCj4gR3JlZXRpbmdzDQo+IA0KPiAgICAgICAgICAgIEhl
bGdlDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------XkmGysRa5tiZmrZQeQ71vUcO--

--------------BOUkHPPq40XBM7OSR7NcRnJa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONDt4ACgkQnowa+77/
2zJv9Q/+IPu9+4v0JCSMzlrMmT+5elxvvSUK1RVmKN6XiJ89RdRVaMeTI47HZkZk
FBtuN7vsmCc8A8KXF1Pn5grijMSPqGwBj7pWnBESedCJewqwD+qcO5+0Nof/HBo3
Ixhm9/+yUrmrWy5hPiRHxGp+hEbgQ/wUyaDNkRRIQYWvHqyrygB96cokxq0P4mbv
G+JAx8Xda0tUa7jDuJO0V+Nyuqq/SwOXGHxdnR1xkCLBjlw90+gyaY6SFt7/qqZP
JlYnzp8GeGAia1Rm+2kFScClvSxALINZF60ED7l6XP88+AGqO0I0l+AOzTC/2tR+
QoO/sztjfyk9csNUMI4nU5dPztgnySxtCtQEFUqvpSF89k2AXBDjuwkJVAtlExKA
VJe2w7247tkI4CJUJZN5NvtyzbEiOIYfkGCLy+Jm/Jp9Yhz0MWb+uSGYWaSLuyaa
5JHRqy7gaey0mZDHlmQ9DgiGjfLYTZKhVNPoZwKCBiMv5zzgsJ51dwB07ShdWY8W
mQqiBn+6hWVlLUvWoNY8xa1is+pIUEHda0qCiJztGumrQN6ikzi468WTNEks5f/n
16LCuw2BdnXqgWYR2dt3m0eP+/hQ1bbCvO0+Jxo5Cps5jeBhVSObigM2mrtVEcIc
58P+3cP8UpH+Z+Z0otJ/fRdHGSiblPX+4BTOqMoZQgnQ8IRt4zU=
=wcxA
-----END PGP SIGNATURE-----

--------------BOUkHPPq40XBM7OSR7NcRnJa--
