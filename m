Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E747564A97
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 01:32:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232717AbiGCXcb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 19:32:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232707AbiGCXcb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 19:32:31 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90DE660CD
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 16:32:30 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e28so11111557wra.0
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 16:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=PwkaQlJrmHwgDCk0Ay7kjLIEfHpTLO71JHvmTaELaqw=;
        b=DznN9Jh+bSKU/AqHZs0fE8FwATd8DVawAc7E31Pt/hk/9UUAv4uQzLo7HJvMuBZPE2
         ohG5Xvj4Do6JQRk58p7vxRFIFisLq9LFxwam0OGuneoXTsfYVXnfEX35h15jtH0qdi4M
         l6GmMrZs3WyhxrPEL/eaAp3qV15rR2LvkCtaryryVlDLTlAiuQrFl8ybuBwqCXV1txPo
         Vvn+jQ7z1FCXORfKGdX23luqW655+RJEBMFI50ixvaXwDW8uM2crbcGeyScyZWlF2dp+
         2p0eYMl4nlyXc+bWNWLWcMCDJPoEsIqJYZAF3MLfdT46z/Mgv5DgOeU7Ruh+f7o7M7qu
         2U9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=PwkaQlJrmHwgDCk0Ay7kjLIEfHpTLO71JHvmTaELaqw=;
        b=sjteEozgYutmx8ayso3HFsmpnQSFMb+qpbPNwnu3UUN6Zqnuw0s4DcsyyPJy6DdFZS
         ibo1QKmHXqSmlSfECezWxT9jb+ZyaNd/je7dj8TzxskrB0mIa+ytP7zNkOeUUfbH9EsE
         n95A3LXZgMQz00OIC8Kmu1nu/7rGPHHLda5BcSFuU9hvKOfDFwvcNofQgGMxt3GN0SUr
         Amom19euXJJbuLeD2UA3OMS36mwB7afSV/PUxI+FL7R4coVAlEHVC9qUeh0Amy3MGxKm
         cAugnyGTgkis/dKs7A2PbQ5zEKx0jdZDxCU51mm8Zs/eq9UPilG8/LFn57bEaUvyDK6K
         fHug==
X-Gm-Message-State: AJIora+Nmxr3bgoz9qrtQdRfKX26RUh4zxhIJiaosqxnk/z1mob/SeF+
        C+c1wgEVwX4JCyqBHO1Gol4=
X-Google-Smtp-Source: AGRyM1tpmaNjPPncZ9AxJL5R/AuApdeux82CW4nFBPvc8unFFap6yjO8VYTd3fuA39IDo08+D3fGFQ==
X-Received: by 2002:adf:d1ed:0:b0:21d:339f:dd5 with SMTP id g13-20020adfd1ed000000b0021d339f0dd5mr20818894wrd.1.1656891149060;
        Sun, 03 Jul 2022 16:32:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u18-20020adfdd52000000b002185d79dc7fsm4889071wrm.75.2022.07.03.16.32.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 16:32:28 -0700 (PDT)
Message-ID: <a3e0c8fc-7761-dacd-c7c5-c927bb106f7d@gmail.com>
Date:   Mon, 4 Jul 2022 01:32:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <9e1cb4dc-921b-8a37-df1f-72b18dff5083@gmail.com>
 <20220703231259.5xtp5zzp52pvz5wd@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220703231259.5xtp5zzp52pvz5wd@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KMcOOlOS1nYXgn0G25gqzhq7"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KMcOOlOS1nYXgn0G25gqzhq7
Content-Type: multipart/mixed; boundary="------------oJwnZwcwIYxwcwPIfsGT3gyr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a3e0c8fc-7761-dacd-c7c5-c927bb106f7d@gmail.com>
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <9e1cb4dc-921b-8a37-df1f-72b18dff5083@gmail.com>
 <20220703231259.5xtp5zzp52pvz5wd@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220703231259.5xtp5zzp52pvz5wd@tarta.nabijaczleweli.xyz>

--------------oJwnZwcwIYxwcwPIfsGT3gyr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDcvNC8yMiAwMToxMiwg0L3QsNCxIHdyb3RlOg0KPiBIaSENCj4gDQo+IE9u
IE1vbiwgSnVsIDA0LCAyMDIyIGF0IDAxOjA0OjUzQU0gKzAyMDAsIEFsZWphbmRybyBDb2xv
bWFyIHdyb3RlOg0KPj4gSXQgc2VlbXMgeW91J3ZlIGJlZW4gaW52ZXN0aWdhdGluZyBhYm91
dCB0aGVzZSBzdHJ1Y3R1cmVzLiAgV291bGQgeW91IG1pbmQNCj4+IGFkZGluZyBhIG5ldyAu
M3R5cGUgcGFnZSBhYm91dCB0aGVtLCBtYXliZT8NCj4gDQo+IFRoZXNlIGFyZSBsYXJnZWx5
IGVkaXRvcmlhbCBjaGFuZ2VzIHdob3NlIGxhY2sgYW5ub3llZCBtZSwgSSBoYXZlbid0DQo+
IGludmVzdGlnYXRlZCBtdWNoIG9mIGFueXRoaW5nIGhlcmUg4oCSIEknbSBiYXJlbHkgYW4g
ZnRzIHVzZXIsIG11Y2ggbGVzcw0KPiBhbiBleHBlcnQsIHNvIEknbSBub3QgcXVhbGlmaWVk
IHRvIHdyaXRlIGEgbWFudWFsIGZyb20gd2hvbGUgY2xvdGguDQoNCkFoaCwgb2theSB0aGVu
LiAgVGhhbmtzIGFueXdheS4gIEknbGwgcmV2aWV3IHRoZSBwYXRjaCBzZXQgdG9tb3Jyb3cu
DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBCZXN0LA0KPiDQvdCw0LENCg0KLS0gDQpB
bGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------oJwnZwcwIYxwcwPIfsGT3gyr--

--------------KMcOOlOS1nYXgn0G25gqzhq7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLCJwIACgkQnowa+77/
2zLPpg//Z2U+UpkVSJ5SLZO30cyZTlisuIAaY5CcRM3HCgViMSkXC4v827GYVgoK
BsRhVN7W52oTBiE6eTx+uiCe2AIWQQGFE7xMP0/3swdcHTtjIhcy/2VGhAvSL+KH
VOyEQm3Sk+o096LVq+zQLW8ThsncgeYWL4iMRhnXzTGL6zWOwuTcjTn6P9yulNwY
GQf33BRsowlsfi+8Ir9i+y7Qzp9fRngEQyaM02O7F+dEpC29Jat4edKwMS9arYgc
myAlkxUArKB4K7bSoD0qIqKWVjMvFxet7Mihdtgzzll+YD/UzeNFJYB3vrGAsPkk
UH3W7G1zdjOMTLuqcjIzbC2vc1VQDGxMxbo7PGFmxN+WQQf26f1fYM9YcP38r7q9
N/hG+H+d8lq0Xlw7ftAoZmYyC1wv9uoEkD8MJ2Sy5mjzo5T39m0hAFIsfh3Jw5le
5V2/ZiUqhZkeQt9d3DKepfrOilXQPPNdbqjB7vPEEn40MgA8NmS+4aV/MVpbBvIf
ROi+BtkPgxld5bX+iikyFZ+FJnH46k2anK07WelHUqBhb+5ZYcH51WNamKZd3N6x
R4RlLMF9xegIri7n9vXhOcU4GFS8OQnsorINB/RaDI3GbVWEpPIaK6WmpLRCG+BR
RyPx2G+FAuWQMTq8EXK0poYCrQ9nqD0KBWY7q1/Enn2f3U3eu1E=
=3ows
-----END PGP SIGNATURE-----

--------------KMcOOlOS1nYXgn0G25gqzhq7--
