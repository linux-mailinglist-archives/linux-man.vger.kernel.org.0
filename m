Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B08D643573
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 21:18:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbiLEUSQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 15:18:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbiLEUSP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 15:18:15 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC9A24F06
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 12:18:13 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id q7so20542730wrr.8
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 12:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzp+9jLJ9XyxLozuJTCe/U7dMjhv/tsAqIMG8jeN7vQ=;
        b=A8IdKJ/5A+GU7qvKGEZoToz7A4riUNavdQdLGxbFqxbwLxpJIAvp0GFZmUtiK0G4e6
         AqyIM/das+Woex4/xUsOlwcZpic+ZUIDZ6ZtzygYvVzzqMhgBjs2A1EZzn7BGgLVmcdc
         g1YMo88AHqyTx6AIxQ1XK6nuJ6RLOWGsgrqgP/EuTu6+Mxyuraw6Ukin+QPfbV/NaJt2
         s6RyPOviQ37pGR43309YMg22CplXW4HKyJ+rzoSiJ593n+b08tGTRnwkMt7qVlOHZcpS
         hGQXbXdlnCbNEtcpXuz+L7IzB7X2086ybC6Dl8GW1UXQFkVoBbZaeW2KJ+oKGTGPx4o6
         CNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fzp+9jLJ9XyxLozuJTCe/U7dMjhv/tsAqIMG8jeN7vQ=;
        b=2O0EiTWvzweu+NL5F6NBUMSxJkoGyYLWI4mCwKxEZaA0bI45BUDvNmbmlUVWxqEU8K
         VXbUUmsYrdCPxEnFw0LYLcMPheABr16nM5Y2JWD2RZf93/GO5n7oIr+V78K1CFCp0kBe
         V1RTp50CCRjcztgH4fngrRloAnPbTc42nX+A4bQqtnovceia0MS9EaO+PPy1D4juNTLe
         +ZNISWUX0jGtXvRE2RKU015AwsrHQqXe2+Ry/XFhRHoi7eFNNQHUjVx7A9p/AqLrfnWB
         rYf3BK48qcvbMm4SFTj97EYSp0xoQUvgNDy9rFGAa/zOdMKWpnN8ZKNXRUvabhP9KoYw
         nWhA==
X-Gm-Message-State: ANoB5pkD0+q5a+BXPr+9Wv6AxG7oQ61FIJ8fB7p+M32dobj7xCFA3WvO
        Ijm0tk5dTbkw307Wj9SuwCs=
X-Google-Smtp-Source: AA0mqf4Z1xJl6QjxS9jrJLuV2aN1lE4rFb5XIOIW2m0phfeNDxlXD+djs7K0K/0/b/+dRBdz8pkF4A==
X-Received: by 2002:a05:6000:1101:b0:242:6fa0:d5bc with SMTP id z1-20020a056000110100b002426fa0d5bcmr2240852wrw.351.1670271492013;
        Mon, 05 Dec 2022 12:18:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a3-20020adffac3000000b0024245e543absm9738002wrs.88.2022.12.05.12.18.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 12:18:11 -0800 (PST)
Message-ID: <ee1c220c-d253-7d50-363c-281b9e9368a8@gmail.com>
Date:   Mon, 5 Dec 2022 21:18:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page uri.7
To:     Jakub Wilk <jwilk@jwilk.net>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
 <20221205170925.meppalvtfqsoe4vj@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205170925.meppalvtfqsoe4vj@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------prFInIKa7MeslT0rySLIfCBO"
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
--------------prFInIKa7MeslT0rySLIfCBO
Content-Type: multipart/mixed; boundary="------------5sBRfGxV0SV7nY9IY02Skig0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Helge Kreutzmann <debian@helgefjell.de>
Cc: =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <ee1c220c-d253-7d50-363c-281b9e9368a8@gmail.com>
Subject: Re: Issue in man page uri.7
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
 <20221205170925.meppalvtfqsoe4vj@jwilk.net>
In-Reply-To: <20221205170925.meppalvtfqsoe4vj@jwilk.net>

--------------5sBRfGxV0SV7nY9IY02Skig0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDEyLzUvMjIgMTg6MDksIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
SGVsZ2UgS3JldXR6bWFubiA8ZGViaWFuQGhlbGdlZmplbGwuZGU+LCAyMDIyLTEyLTA0IDEw
OjA3Og0KPj4gSXNzdWU6wqDCoMKgIEdvcGhlciBzZWxlY3RvciBzdHJpbmcg4oaSIEdvcGhl
ciB0eXBlIHNlbGVjdG9yIHN0cmluZz8NCj4gDQo+IE5vLCBpdCdzIGp1c3QgInNlbGVjdG9y
Iiwgbm90ICJ0eXBlIHNlbGVjdG9yIi4NCj4gU2VlIFJGQyA0MjY2LCBzZWN0aW9uIDIuMS4N
Cj4gDQo+IChDYW4gd2UgYWRkIHRoYXQgUkZDIHJlZmVyZW5jZSB0byB0aGUgbWFuIHBhZ2Us
IHNvIHRoYXQncyBpdCdzIGVhc2llciB0byBmaW5kPykNCg0KU3VyZSwgcGxlYXNlIHNlbmQg
YSBwYXRjaC4NClRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMhDQoNCkNoZWVycywNCg0K
QWxleA0KDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------5sBRfGxV0SV7nY9IY02Skig0--

--------------prFInIKa7MeslT0rySLIfCBO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOOUfsACgkQnowa+77/
2zLIqw/9EzbG85b4lUtAyBhGm5Mw9JaJ9ronvsiUll/3MUwYZBzxO1jYNfOVjiaN
u4F7pXwwKRDFl/TjX93ZT31fND/gRDOBu8kZf6sn6g69fBsMM9mOltPBj2G/AIVn
RL8frTgsadTjVz1JcmMDMOWBOqWNmFjdJehnI/yV5ZF5ZgPTxiRSOFFs9gww0QnK
sQxSGEKtaU2uAOhjIQzvRWcxdgoUUPQRjfTgM6VWAo3mQiimW5EaA4N5/UhVj+Il
XdZNTGpY0dDigjxiLqtzG0bSRjUF6a4Wlg9+hIpQPKQbofW7Xz2BC0FYpFRn1Syl
vxRuOe6MGTKPmxYPFAG0WN0tcB1u1wosBPh++7IDgYNz937zCRG4CCOuzuAcHGPP
0kF3dxblIwhr0nlDraHxBWbwUc+geF2T0QPhE/R7vs31q5g3DMcy5eFnWNFn0hw6
NM+GWv4suM4YRX9Q5BDr61udyqv0qRvi/7ue9xW/CoTJHviN+/dqKT2s6r4Z0oc3
Ag6DVesRuDz4FjoK0KHfWhDpRHI9Dz5SR9CVL7k11e+pyS7GlCQe3vzL2MVtu1A0
mdfQvLXA46HLW8X67ZX0m4s+D3l6ydIUu7IBJsRp3vAUzL4SwkgkGa6ytM4O6M59
8YIUOcf9H4ld9t54rzoAwPU2lTS+13c9AIZxb4/XGxSCdxj/mCE=
=UFkO
-----END PGP SIGNATURE-----

--------------prFInIKa7MeslT0rySLIfCBO--
