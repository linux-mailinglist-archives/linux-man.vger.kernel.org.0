Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D16D1641F5F
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:04:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbiLDUEr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:04:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUEq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:04:46 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAD7511C10
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:04:45 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id f13-20020a1cc90d000000b003d08c4cf679so4680587wmb.5
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZy7sUY2yDTSAb0kRdZvW0W+84xiGemIrryz0y2m/QI=;
        b=PebgzSeYtYQKU2An1LHWj/8gDaqW5MRqkplnzhB6Y2tnsYC8V+gpR/kb/YyqCdoo0/
         m4itMrKlL6z7fOE41hCFsqJXFsZwIdczVyFKqegvMlqPW31cQoaYIOcHeSsTd0uVVRbM
         gVF+4by9YNW/8MX8ygdhGcj6tWKAfI9aMy2mfjGx5gtKJSi8DYK4FYsmWjTocOQQ4Kvg
         VT4vnyPHiglNUe0L1tKsPes7FR1G8ISGYigbseuRbXBp/7wIVzCxEJzp3wMtfR28c1OU
         1NNl0KNsHOoFn0h+5rD19OXnubVeZoblbh1FXlIh6WwzwwhyFaEfSSBuFUQN+ZzXVy4g
         nmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZy7sUY2yDTSAb0kRdZvW0W+84xiGemIrryz0y2m/QI=;
        b=nzGjVozjWonRBk4MjdrRy/woHvyJgfUH/GCPsy80YmoYaDybhlvwZ4wXu6l9d2rO1V
         rKFsV7o5J4wLVtsCDgG9Zvb1O1pdzNrX57OLRI8lnx82/4OYWbrri3jGKV9CBG6/sXT5
         yBSQo8BTvAOrxKOGr9dSD+yIX0xlRsAIzK4G1z4VzrxtroNMAgsKgj8/Mfk/4kmIvHlk
         LZNdMbKbktb664EDl9+6sykO8sRBZICLV8YycHbyd0fIjY0wnXUX+JpSfbB9L+Ydh9xb
         8zEOr6oSVcuJvTsaXfc7ECzvgIFi6OkAPTzYx0yHie1hL++unj4zYNStdc+PH6QzW5yQ
         Y4hQ==
X-Gm-Message-State: ANoB5pnTooPMWKCKMUw1le7M4gxDef7nRQ7LYyBU7k+TFlJOF82Sv5G0
        H+Z936lbdMM5mBMHgIKrmg4=
X-Google-Smtp-Source: AA0mqf4/JW9lBA7irCpIFi4RJa1I0VzctRShJmPEn97k2YQPVGAlLhB3oxffLSvH4C2343Sgp5/d6g==
X-Received: by 2002:a05:600c:3d8b:b0:3d0:545:a0 with SMTP id bi11-20020a05600c3d8b00b003d0054500a0mr46054398wmb.123.1670184284366;
        Sun, 04 Dec 2022 12:04:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w12-20020a05600c474c00b003b435c41103sm24847914wmo.0.2022.12.04.12.04.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:04:43 -0800 (PST)
Message-ID: <3436a928-0962-a526-71de-3f710a8962a7@gmail.com>
Date:   Sun, 4 Dec 2022 21:04:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page time_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090717.GA804@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090717.GA804@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9MjDo0S8SSVtUpEZRcik9wyA"
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
--------------9MjDo0S8SSVtUpEZRcik9wyA
Content-Type: multipart/mixed; boundary="------------JsYR5dn3uG7uLofxrPgf5P2r";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <3436a928-0962-a526-71de-3f710a8962a7@gmail.com>
Subject: Re: Issue in man page time_namespaces.7
References: <20221204090717.GA804@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090717.GA804@Debian-50-lenny-64-minimal>

--------------JsYR5dn3uG7uLofxrPgf5P2r
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIG9wdGlvbnMg4oaSIG9wdGlvbg0KPiANCj4gIkFib3ZlLCB3ZSBzdGFydGVkIHRoZSBC
PGJhc2g+KDEpICBzaGVsbCB3aXRoIHRoZSBCPC0tbm9yYz4gb3B0aW9ucyBzbyB0aGF0Ig0K
PiAibm8gc3RhcnQtdXAgc2NyaXB0cyB3ZXJlIGV4ZWN1dGVkLiAgVGhpcyBlbnN1cmVzIHRo
YXQgbm8gY2hpbGQgcHJvY2Vzc2VzIGFyZSINCj4gImNyZWF0ZWQgZnJvbSB0aGUgc2hlbGwg
YmVmb3JlIHdlIGhhdmUgYSBjaGFuY2UgdG8gdXBkYXRlIHRoZSINCj4gIkk8dGltZW5zX29m
ZnNldHM+IGZpbGUuIg0KDQpGaXhlZC4gIFRoYW5rcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------JsYR5dn3uG7uLofxrPgf5P2r--

--------------9MjDo0S8SSVtUpEZRcik9wyA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/VoACgkQnowa+77/
2zIqbA//cDQZtfjcYKxYbuArpvkvdh131Tm83HayjyV/b1AI1yBQO7SssiDkTuyT
UjWOUxLR+CftEUh5SyN+zNO2kzMVIpsKwUOOBo06vqZLZ4CdsuTUUMnLPnQGiGwx
tLboJ/ynMzb1NFQmjNpxXfcaWKM0ReTJ7IOClxYkyRtEQWJk0gDjWS4c6Yp8CDDX
TWIIu3YuNjWRvBiOZ7UGGTHIugHnY8hNrjm08WKAlVkBJ99P8hd2S8v3lNZl9S0X
rMnrToHoQDkBSWCqd5Xa9IJkDkhjSSmnyAZU/ZoGxFNKZzrfFaW27TU0IiYTF3Cd
dcWFdPSEU4ckkyohY1v5zGRu6HYW7JWyKFRjaVr82TspX6DC2D0Lip3AGESzdmzE
j/ucYfVRLTE7OKhmEBqus6NgJQIFR9mjfKXTSuN339hzZ6TTwnRKF5GffZ7XGk5X
us1Fypji5swjzhoKYc0fyKpyfiZO+FuvCiwfbcUWLHUO+5ynR20G4qzwg/fywSOQ
5QGD/WbbEdDyHFphESlYB5tdvuRK1ZDJ4MSyH+1hpajhTlw+5UY7rIOK1V6uK7Zc
+HOXDFh4/P0OU4/DBi8a8eKCkpydOSn8KxEQu7MhDZfvnveWlusCyp5mgLJ8X3jO
YfBD+yDLFcuYm+wIwx2X3GXYuvaoicjQ1HYb9ArQwNqqaalTZ2o=
=dHYJ
-----END PGP SIGNATURE-----

--------------9MjDo0S8SSVtUpEZRcik9wyA--
