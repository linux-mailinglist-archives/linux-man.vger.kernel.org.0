Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE882641CE0
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:23:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbiLDMX3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:23:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDMX2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:23:28 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05ABE1402D
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:23:27 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 125-20020a1c0283000000b003d076ee89d6so7186652wmc.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Z4jChwYgcG0vMbLTi5h6ti6MUivnowJ6K0efzrcCZI=;
        b=MPVQL9VPUhuTfNw0kmrO90anQ/6pbO66xtpOLgS00BpQ1JX9Fk8IkaEh5IBVMEPCKW
         LdCs85mZzDRRTOcHnb/33Bec3WkDink+jpePEuVkQmvXfU0kC85ndNAUgWjhEzBC6l82
         hZcxVo76CVOIjiUrbND/8K73pwSHWwIZkvx3XZ/OKOqZMZUrL5ZwgFTWRUdyH6gRJ+CS
         LpdhKBT0CpWmUJWtifspWF+Pyg8QzdkiVHTfPM9tpFKiIz3NLkxoDdNpbApECJh3/Rj2
         NRfiguFPfbIw9cweiA97njuKyi92CHJl63038F6ks4OAiYf3eVlhMjCz5uv/og8HqvSF
         o6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5Z4jChwYgcG0vMbLTi5h6ti6MUivnowJ6K0efzrcCZI=;
        b=l799T9Jd3TZSuvI79rqUO/vU+1ELegWFOdRQbXJ4zMXA0jBMNpZrXJ8G4S1KY0mXrt
         TQIziWbUUT6tqwI3HykRSZoinmqsV/0QP0P3ZNtFjUbG8TjzlvKufUTy8nCXqNp8LC0y
         tTDcq3iPWWPmgZXveijsRdo7G+0iLV9tfssk8oW7RZDDm8bcTL56iqPqyLx+5CM8QQk9
         AxnOQcti0SfvMHJrsDFhRnKtdVd9u8i/yhTJDblA7mbEufCJsgmJXmrhB9rAb6h6Bn1Y
         g2kI6yv1HFXTCc3WYlnBlB19hYOQV/JCbERaBbBI4GKnHbDR40Ps5cGTHfGVMox5VxUF
         /U7g==
X-Gm-Message-State: ANoB5pnizajd6QGf0Xo004XidjjChJg+6JQdUJ71f7oJpwReh9wUU19A
        St05mHcZD5tMXZmUHUQHhuSOTStF+/E=
X-Google-Smtp-Source: AA0mqf7RVUcJ+KVgeAX8wEfA46STKRqGv7rJyFnrnm6R95AuuEQK6DmPQEhQPP8VvgOqRKsKZ1X4NQ==
X-Received: by 2002:a05:600c:1554:b0:3d0:e725:8ab8 with SMTP id f20-20020a05600c155400b003d0e7258ab8mr2568146wmg.122.1670156605517;
        Sun, 04 Dec 2022 04:23:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q17-20020a05600000d100b0024207ed4ce0sm11760436wrx.58.2022.12.04.04.23.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:23:24 -0800 (PST)
Message-ID: <3aa271a7-b566-7ffd-1dd8-c11f347bfa08@gmail.com>
Date:   Sun, 4 Dec 2022 13:23:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page malloc.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090710.GA301@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090710.GA301@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qR12qCnDQwWEyj67phGmi7f8"
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
--------------qR12qCnDQwWEyj67phGmi7f8
Content-Type: multipart/mixed; boundary="------------kgZmL70ZVdem3vbCVxbjakx3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <3aa271a7-b566-7ffd-1dd8-c11f347bfa08@gmail.com>
Subject: Re: Issue in man page malloc.3
References: <20221204090710.GA301@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090710.GA301@Debian-50-lenny-64-minimal>

--------------kgZmL70ZVdem3vbCVxbjakx3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHByZXNlcnZlIGVycm5vIOKGkiBwcmVzZXJ2ZSBJPGVycm5vPg0KPiANCj4gIklmIHlv
dXIgcHJvZ3JhbSB1c2VzIGEgcHJpdmF0ZSBtZW1vcnkgYWxsb2NhdG9yLCBpdCBzaG91bGQg
ZG8gc28gYnkiDQo+ICJyZXBsYWNpbmcgQjxtYWxsb2M+KCksIEI8ZnJlZT4oKSwgQjxjYWxs
b2M+KCksIGFuZCBCPHJlYWxsb2M+KCkuICBUaGUiDQo+ICJyZXBsYWNlbWVudCBmdW5jdGlv
bnMgbXVzdCBpbXBsZW1lbnQgdGhlIGRvY3VtZW50ZWQgZ2xpYmMgYmVoYXZpb3JzLCINCj4g
ImluY2x1ZGluZyBJPGVycm5vPiBoYW5kbGluZywgc2l6ZS16ZXJvIGFsbG9jYXRpb25zLCBh
bmQgb3ZlcmZsb3cgY2hlY2tpbmc7Ig0KPiAib3RoZXJ3aXNlLCBvdGhlciBsaWJyYXJ5IHJv
dXRpbmVzIG1heSBjcmFzaCBvciBvcGVyYXRlIGluY29ycmVjdGx5LiAgRm9yIg0KPiAiZXhh
bXBsZSwgaWYgdGhlIHJlcGxhY2VtZW50IEk8ZnJlZT4oKSAgZG9lcyBub3QgcHJlc2VydmUg
ZXJybm8sIHRoZW4iDQo+ICJzZWVtaW5nbHkgdW5yZWxhdGVkIGxpYnJhcnkgcm91dGluZXMg
bWF5IGZhaWwgd2l0aG91dCBoYXZpbmcgYSB2YWxpZCByZWFzb24iDQo+ICJpbiBJPGVycm5v
Pi4gIFByaXZhdGUgbWVtb3J5IGFsbG9jYXRvcnMgbWF5IGFsc28gbmVlZCB0byByZXBsYWNl
IG90aGVyIGdsaWJjIg0KPiAiZnVuY3Rpb25zOyBzZWUgXCJSZXBsYWNpbmcgbWFsbG9jXCIg
aW4gdGhlIGdsaWJjIG1hbnVhbCBmb3IgZGV0YWlscy4iDQoNCkZpeGVkLiAgVGhhbmtzLg0K
DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------kgZmL70ZVdem3vbCVxbjakx3--

--------------qR12qCnDQwWEyj67phGmi7f8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMkTsACgkQnowa+77/
2zKOkBAAq7QitG7FxGtrj2OhZTzptpVSHY4NISI/qL3y8P5FxX3yKqF3ihTTjv0X
L2wDQW/3l3rB9sKEV38V/c+J1kJCGirXgv6YZh8+KSjOEOck/CGddjc6uMVUxkPX
EDrzv2dGG4ksZL3WbPTM+UhZ2nc9UmUp2KJIC6n9g4Ew4JDKZiHG//kKU5je514N
LkUylVW0kJ+0QUQ9X7c1xoG22/NZOcY9lykeWSm/V7NLoOjkAjkVkgwZMBrX/i5C
CC9Im+lNhSlktPkagx6MlVlJQ5n+zND6f5e2/CcMvIYSRRXs1Fu6hzL4mBFRoddn
iWhOpxgKKe45jnkhGUiaVqUJPR8YqjTs8DtHLrlfKw+oqvCnAZ32z0Yq7iq2pwz4
VlZR5wdRe664k/Lc2xCCi529g8XiUBKmWsM5sRx918xoBb9jHx2KYqOkoo1YX7pN
KQmZLudWVuGTu1JNkyPLGFTHbh371mOwv+y+YsrLA7x3cGS1QjoA4CS4m5O1GV4j
BIDtfVJMVJO9INWflpqYIJ+gUprxlpQepCRHGeZjgMtJpn/bzJDRwWLJ2klGS+C9
9EP4JPW3p8TNHPSxNej2kstYcd0gWDXLQpbgV83POZBvOMuFleQd6PvEzZIs0ERE
zKuZ2u4FA0hAM1GHnIQKxY+tRTtg0kowDlYUnkdZbGc0Z2tlAYs=
=ST1o
-----END PGP SIGNATURE-----

--------------qR12qCnDQwWEyj67phGmi7f8--
