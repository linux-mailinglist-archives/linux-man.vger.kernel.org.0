Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF71164CEED
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 18:39:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbiLNRjT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 12:39:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbiLNRjR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 12:39:17 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D98215828
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:39:16 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id h10so518047wrx.3
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+HEP2vrIarxWn3MYwpelJ+uomSvSeZXzv2nXhR4a0s=;
        b=TeO1KMscHLdi6AH8qT0Wer0hcJumGRRC0qVveVoN+clJhtieoYMUZLIZVqT6TQ4qJh
         LGe2djOvkcrTHITEVSA+Y0xJEjcYAhmTCpcphq2URG1bI1nMzr0Gay1YcsbLmhqI/fUI
         3LGQmeQ2822X5D78GGcKzUqbBXiKXy8BijvWdtYT+CSf1jBRQFarJ5CGpr33DXNKbyH3
         W1yDOp0UosdRJa2k1Ge9ZCfOrNR/bmq+/aw70vwSq69uolXhCmOwSopAhPx2iOimWF+3
         jUo7Fi0JaNf7tCIDiyO+5VHgkKOGJ1a30Z9gZhrUX/rfW9cdAcgYAgzgDbw0FHSGToLj
         91Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/+HEP2vrIarxWn3MYwpelJ+uomSvSeZXzv2nXhR4a0s=;
        b=5RNp9jf3BIkfpxZ6cbeJxESJae0Mu/VqcWXbn6U358Eov7r1t5lzWd6/7b0tmYBKEM
         aTqOVRANA6asKwrRatBEfFYq3zbQtzGfnIjdVVUOgHY38fbsapArormsex4wvN6cUGLq
         jYS/XJ4IiylWyXxqv1GygtWNuJZJl8CjhwCCB43rC1/o9x+ECSyJuhH9VAP5iduJSNpd
         BXDg9NtywA31Dl3YFwnfPB7vKC0nrcsBCzpSsy8AAyUoY18rvKZc3RksZOFky5nbR5P5
         SgBgBbqutlRHC3NAa57BygF46i7xaFvvZvdpSJRFYmDhToRqoF1AtR8ZVNd8GuJaRiP9
         bOdQ==
X-Gm-Message-State: ANoB5pmDHAcT5DXmgMEr73nY9Qj4aXJVT+UWJjsNwzChyqjd1uK2qtux
        TzV7t2idXDEpu6jukEwDzaE=
X-Google-Smtp-Source: AA0mqf5PbpzTUmM1GmnbzvkoXHsHNrswB5rBok1gOulcKwogkU7I6ouHA1utwLhmO0jS8eeFCpKvrQ==
X-Received: by 2002:adf:a4d0:0:b0:242:3be9:71c5 with SMTP id h16-20020adfa4d0000000b002423be971c5mr15026900wrb.54.1671039555102;
        Wed, 14 Dec 2022 09:39:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s16-20020adfecd0000000b00225307f43fbsm3724048wro.44.2022.12.14.09.39.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 09:39:14 -0800 (PST)
Message-ID: <ba4b1a12-c202-c726-c9db-c62d2597b1c0@gmail.com>
Date:   Wed, 14 Dec 2022 18:39:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [patch] nice.2: wfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        i+linux@1a-insec.net
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
 <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
 <20221214152840.lxramhvf3d5kl3wb@jwilk.net>
 <7fa540c5-5a2c-a6d5-bb83-15916ad50944@gmail.com>
In-Reply-To: <7fa540c5-5a2c-a6d5-bb83-15916ad50944@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------20qjKkZB10W1L0QdZ3fEMP7O"
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
--------------20qjKkZB10W1L0QdZ3fEMP7O
Content-Type: multipart/mixed; boundary="------------bMRVN0PU8OAZ9BqDVxItJGdY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org, i+linux@1a-insec.net
Message-ID: <ba4b1a12-c202-c726-c9db-c62d2597b1c0@gmail.com>
Subject: Re: [patch] nice.2: wfix
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
 <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
 <20221214152840.lxramhvf3d5kl3wb@jwilk.net>
 <7fa540c5-5a2c-a6d5-bb83-15916ad50944@gmail.com>
In-Reply-To: <7fa540c5-5a2c-a6d5-bb83-15916ad50944@gmail.com>

--------------bMRVN0PU8OAZ9BqDVxItJGdY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE0LzIyIDE4OjM4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
SmFrdWIhDQo+IA0KPiBPbiAxMi8xNC8yMiAxNjoyOCwgSmFrdWIgV2lsayB3cm90ZToNCj4+
ICogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTEy
LTExIDE4OjMzOg0KPj4+PiAtdG8gdGhlIG5pY2UgdmFsdWUgZm9yIHRoZSBjYWxsaW5nIHRo
cmVhZC4NCj4+Pj4gK3RvIHRoZSBuaWNlIHZhbHVlIGZvciB0aGUgY2FsbGluZyBwcm9jZXNz
Lg0KPj4NCj4+IG5pY2UoKSBhZmZlY3RpbmcgdGhlIHdob2xlIHByb2Nlc3MsIG5vdCBqdXN0
IHRoZSBjYWxsaW5nIHRocmVhZCwgaXMgd2hhdCBQT1NJWCANCj4+IHJlcXVpcmVzLCBhbmQg
d2hhdCBnbGliYyBkb2N1bWVudHMsIGJ1dCBpdCdzIG5vdCBhY3R1YWxseSBob3cgaXQgd29y
a3Mgb24gDQo+PiBMaW51eCBhdCB0aGUgbW9tZW50WypdLg0KPj4NCj4+IFRoaXMgaXMgZG9j
dW1lbnRlZCBpbiB0aGUgc2V0cHJpb3JpdHkoMikgbWFuIHBhZ2U6DQo+Pg0KPj4gIkFjY29y
ZGluZyB0byBQT1NJWCwgdGhlIG5pY2UgdmFsdWUgaXMgYSBwZXItcHJvY2VzcyBzZXR0aW5n
LiBIb3dldmVyLCB1bmRlciANCj4+IHRoZSBjdXJyZW50IExpbnV4L05QVEwgaW1wbGVtZW50
YXRpb24gb2YgUE9TSVggdGhyZWFkcywgdGhlIG5pY2UgdmFsdWUgaXMgYSANCj4+IHBlci10
aHJlYWQgYXR0cmlidXRlOiBkaWZmZXJlbnQgdGhyZWFkcyBpbiB0aGUgc2FtZSBwcm9jZXNz
IGNhbiBoYXZlIGRpZmZlcmVudCANCj4+IG5pY2UgdmFsdWVzLiBQb3J0YWJsZSBhcHBsaWNh
dGlvbnMgc2hvdWxkIGF2b2lkIHJlbHlpbmcgb24gdGhlIExpbnV4IGJlaGF2aW9yLCANCj4+
IHdoaWNoIG1heSBiZSBtYWRlIHN0YW5kYXJkcyBjb25mb3JtYW50IGluIHRoZSBmdXR1cmUu
Ig0KPj4NCj4+IEl0IHdvdWxkIGJlIHBydWRlbnQgdG8gZG9jdW1lbnQgdGhpcyBidWcgaW4g
dGhlIG5pY2UoMikgbWFuIHBhZ2UgdG9vLg0KPj4NCj4+DQo+PiBbKl0gSSd2ZSB0ZXN0ZWQg
dGhpcyB3aXRoIExpbnV4IDYuMCArIGdsaWJjIDIuMzYuDQo+PiBTZWUgdGhlIGF0dGFjaGVk
IHRlc3QgcHJvZ3JhbS4NCj4gDQo+IEkgdGhpbmsgdGhhdCBwYXRjaCB3b3VsZCBiZSBhIGdy
ZWF0IGV4YW1wbGUgZm9yIHRoZSBwYWdlLsKgIFdvdWxkIHlvdSBtaW5kIA0KDQpzL3BhdGNo
L3Byb2dyYW0vDQoNCj4gc2VuZGluZyBpdCBhcyBhIHBhdGNoPw0KPiANCj4gVGhhbmtzLA0K
PiANCj4gQWxleA0KPiANCj4+DQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------bMRVN0PU8OAZ9BqDVxItJGdY--

--------------20qjKkZB10W1L0QdZ3fEMP7O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaCkEACgkQnowa+77/
2zKViA//dgk/YVS8aomdveHIhsLS/fGdSVCN9BhxwdoH88f70gz0edbbQTggNUxO
ujboa0EQda5HnpQ/wtfgWn6lGEAZyin73uHwnfdiUCUPl8OH6lTms8wIDfNSdjbo
VQYQaSa20gHELfCZpdr77npjkYlwkR9sC0qdFLljQekoBCQ4sAKKGyLx/6ZgW7xX
dvjdT12snkq8Lu3WHVcYKx2e337Z9tA4YHriHfJna2h7X7USvUqUnUDfndOLW3ww
03If6skeNI80b+KHO5FGYgapmvBznZGHhh96rL8x/a5wGzg+PX/hEJFfVBUj7HFo
cNZWVDLsuxSf0PZgXGcObZAUDsnmQkWtnk9/GM26+ZAPsDN8QOVi4pyVydA/nVwJ
9bUgYpApkwfFJvSfjzI6+qU2WR2hPaqT/FzX6Nq7SQWW24cuUpdKkxmdU0/swA4A
n3KIsEZd2XFVF0moJpZMMV0znQ3Hgr0Mn2WY1zfzV3Ia41brlTKYdbpyCcMqOwgy
4sPhGxCZbCu/Ax5hWpnUhSsRjlxJxggMURTRiZk3LyxUzc2ELC04GzufBiD3u4jm
j/6mpqHdCGtopSVzdAuhYgLV8oOgGC0DXGD5Pm9IWCkS5ag7vGW2k9MnCl0dHnv5
O4tABjRIBXUzzA/NGMCjzHkcMhjGxrTdbjztHnrrZMQ2SaBDiFA=
=XNiH
-----END PGP SIGNATURE-----

--------------20qjKkZB10W1L0QdZ3fEMP7O--
