Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35D7653CDC1
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 19:07:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344231AbiFCRHW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 13:07:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236759AbiFCRHV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 13:07:21 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2F86BC8D
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 10:07:20 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 67-20020a1c1946000000b00397382b44f4so4657193wmz.2
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 10:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=FzaSxSVJJ9pTvUhDlEWIUO7N66AhyGy5aY4ThwcGPIg=;
        b=Abj+kwoERz8Z9IklKJCJuSMqC1lR60Bf4UotJmBtyu6Lz2KR16uf6uIzRi+1aYwGu0
         mz23gf9rh1r/e7VKuaRlU6kr9PTGFSvsgt+2gZ5JUfN9wz5lJCHPHd7t1lcy1N4udLt6
         9oHINz+sYUKK3yTH1etn8YDoL+qlP8mVrXsLcTX3Akvg8tKwm+3sfrehuvYQkXaVqLxj
         yvb3IVtup5w7PyK2nMuElbNaj2qrt2XwN9J2mvaPG/O6vnh9KMR6ibBlneUoKGUcbhJG
         PyYAcv1jQmG7U5xxrmWiewq6LYbweROnWxBTjNFxm5FSdKIzi12eHB3s4CD762k/t7D3
         9JCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=FzaSxSVJJ9pTvUhDlEWIUO7N66AhyGy5aY4ThwcGPIg=;
        b=Rsv9WijBYGXLH68GZxAvo2bzD0wqJrAKE0Li+69X/90DR9QXuGxxBMhT22a/pP/6v0
         ZEPgW+0RS2MerefQMg7o3tgeKsfl83IJyzL1KZKky8BJ1qWWvhBvk1tNoL+MRPa7oxky
         mIxz5DP8Mt4VzAxNZwxM9oCGl9tGNoaFvxWNIUeK16uFcrv7k/BTGeU9u1BbyxBjEphv
         alzKFzSTjy1pw72Vnj0y7iKJ0AemPTqUbcLxK1teACtspS75rU2dMG//2um1YZzqAGV1
         4Fy7QdV3YzxOijGehvro+LutZmcnG0EsLciFIU4MC27sykLF/tFZXvfvd7Jh+rQglbLY
         UWzg==
X-Gm-Message-State: AOAM533+3k9G90wssSwCnjDXeP+C3MTsA9cLCNUl6OCWuWUh3hsZ8kWW
        zL1jEwbwZlfxX+tuLl958mA=
X-Google-Smtp-Source: ABdhPJzTpv0qF39vjgEU98kaAtSdjkpQzT5wpYlEul1sqZt0dF7or8pCtj+qjci03BItx9rM3X8HBw==
X-Received: by 2002:a05:600c:198f:b0:394:952d:9a72 with SMTP id t15-20020a05600c198f00b00394952d9a72mr37867352wmq.72.1654276039508;
        Fri, 03 Jun 2022 10:07:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n8-20020a05600c4f8800b0039c325eaff2sm5902688wmq.26.2022.06.03.10.07.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 10:07:18 -0700 (PDT)
Message-ID: <2c60fda4-c29d-5221-05c2-7e12bac926c3@gmail.com>
Date:   Fri, 3 Jun 2022 19:07:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH RESEND] poll.2: Set fd to its bitwise complement to ignore
Content-Language: en-US
To:     David Ward <david.ward@gatech.edu>
Cc:     Michael Welsh Duggan <mwd@cert.org>,
        Nadav Har'El <nyh@math.technion.ac.il>,
        linux-man@vger.kernel.org
References: <20220516023344.803-1-david.ward@gatech.edu>
 <20220529203737.290-1-david.ward@gatech.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220529203737.290-1-david.ward@gatech.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U0WvMVEJobUFNOUykPbTMBM8"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------U0WvMVEJobUFNOUykPbTMBM8
Content-Type: multipart/mixed; boundary="------------3nIaoVZ3m43nqDjxS0O10C0Q";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: David Ward <david.ward@gatech.edu>
Cc: Michael Welsh Duggan <mwd@cert.org>,
 Nadav Har'El <nyh@math.technion.ac.il>, linux-man@vger.kernel.org
Message-ID: <2c60fda4-c29d-5221-05c2-7e12bac926c3@gmail.com>
Subject: Re: [PATCH RESEND] poll.2: Set fd to its bitwise complement to ignore
References: <20220516023344.803-1-david.ward@gatech.edu>
 <20220529203737.290-1-david.ward@gatech.edu>
In-Reply-To: <20220529203737.290-1-david.ward@gatech.edu>

--------------3nIaoVZ3m43nqDjxS0O10C0Q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGF2aWQsDQoNCk9uIDUvMjkvMjIgMjI6MzcsIERhdmlkIFdhcmQgd3JvdGU6DQo+IFVu
bGlrZSBuZWdhdGluZyB0aGUgZmQsIHRoaXMgd29ya3MgZXZlbiBmb3IgZmQgMC4gSXQgaXMg
YSBiZXR0ZXIgZml4IGZvcg0KPiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19i
dWcuY2dpP2lkPTc5NDExLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgV2FyZCA8ZGF2
aWQud2FyZEBnYXRlY2guZWR1Pg0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaC4NCkNvdWxkIHlv
dSBwbGVhc2UgYWRkIHNvbWUgbW9yZSBkZXRhaWxlZCBleHBsYW5hdGlvbiBvZiBob3cgdGhp
cyB3b3JrcyANCmJldHRlciBpbiB0aGUgY29tbWl0IG1lc3NhZ2U/DQoNCkkga2luZCBvZiBp
bWFnaW5lIHdoeSwgYnV0IEknbSBub3QgdmVyeSBpbnNwaXJlZCBhdCB0aGUgbW9tZW50IHRv
IGRvIA0Kc29tZSBjYWxjdWxhdGlvbnMsIGFuZCB3b3VsZCBsaWtlIHRvIHNlZSBzb21lIGV4
YW1wbGUgbnVtYmVycyB0byANCnZpc3VhbGl6ZSBpdCBhbmQgbWFrZSBzdXJlIEknbSBnZXR0
aW5nIGl0IHJpZ2h0Lg0KDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjIv
cG9sbC4yIHwgNSArKy0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9wb2xsLjIgYi9tYW4y
L3BvbGwuMg0KPiBpbmRleCAyMDU0NjhmM2UuLmNkNjViYzZlOCAxMDA2NDQNCj4gLS0tIGEv
bWFuMi9wb2xsLjINCj4gKysrIGIvbWFuMi9wb2xsLjINCj4gQEAgLTgzLDEwICs4Myw5IEBA
IGZpZWxkIHJldHVybnMgemVyby4NCj4gICAoVGhpcyBwcm92aWRlcyBhbiBlYXN5IHdheSBv
ZiBpZ25vcmluZyBhDQo+ICAgZmlsZSBkZXNjcmlwdG9yIGZvciBhIHNpbmdsZQ0KPiAgIC5C
UiBwb2xsICgpDQo+IC1jYWxsOiBzaW1wbHkgbmVnYXRlIHRoZQ0KPiArY2FsbDogc2ltcGx5
IHNldCB0aGUNCj4gICAuSSBmZA0KPiAtZmllbGQuDQo+IC1Ob3RlLCBob3dldmVyLCB0aGF0
IHRoaXMgdGVjaG5pcXVlIGNhbid0IGJlIHVzZWQgdG8gaWdub3JlIGZpbGUgZGVzY3JpcHRv
ciAwLikNCj4gK2ZpZWxkIHRvIGl0cyBiaXR3aXNlIGNvbXBsZW1lbnQuKQ0KPiAgIC5QUA0K
PiAgIFRoZSBmaWVsZA0KPiAgIC5JIGV2ZW50cw0KDQotLSANCkFsZWphbmRybyBDb2xvbWFy
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------3nIaoVZ3m43nqDjxS0O10C0Q--

--------------U0WvMVEJobUFNOUykPbTMBM8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKaP8UACgkQnowa+77/
2zIEtw/9EUWOgCFmFOXmOzBx3iyGA6+saMcf0SpSwbnsDskDKAjSK2Lb3nSXeOJ5
MNcoS57Ah4Kx23UUorAHvgJEQZl8LaPJ5HyoqvDlONav0r3lWHiHdfy/9NNHeuBG
h6J97BMmR9julAuYq0jefpSYX4htpgvyezwOsXttTjJhCLY5GfsOSAh8ntSsG+tX
wZ/HUqZ+1Wvoym/bLszChbTjaCOG/Gqq7XLP1mA7qmXio37idprQbQp6eJdWIafE
YqUREA905Vfy9utEK0WA13ImE4cHLfbIyEyBbn+LPZ2ULJmt3gmk4uQX4E9pPk/1
2gf0ZDKymnj4zjScCiovCiq9pZ0WGa6jhPW4uUDBJjgvu7r1ekDlgz9w+VexqZ6E
3x+D1+mqtWDieIRjVVs2dNhtu6rIkr58JOX2HBrU5aGy+C/kku+1pJ2U4S1cFOhR
JgRdW1scvVGHAL4Kn73nC4toYoqGic9K2V/51t0ON0LLmA3gtsxWopM8AocgLPSx
HTIBe32kuJk27SziJRPT4bFeXDdfwVGwOqQM8pS2lBz0UXlQyrO4B0sPJs1uMV9d
B7gaLMPMI9BavfKh12e9Nt2oZibdk6Ll2Kn7/vXOTEnBbnMX/1SVvMyBfxa7ywIw
2thVnTjGqsYW6Cx8/uZGOvqKapL4g5MZNGqwAbyfNMigNtTrECQ=
=asdv
-----END PGP SIGNATURE-----

--------------U0WvMVEJobUFNOUykPbTMBM8--
