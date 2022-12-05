Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D821642C53
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 16:56:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbiLEP4f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 10:56:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbiLEP4e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 10:56:34 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ABE813D44
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 07:56:33 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id m14so19255200wrh.7
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 07:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hzvd0SOAnLM0DL8rtNLu9pIm8UKAMg9PHwgytSJszRA=;
        b=nFDdTmzuMDW7PmBYWCLpGJ3qP5DHSiLmeDXsmF8KPeV7udgyQ0adpLS9RxvvG5Px3X
         CX9N+YmezH25Vtn9MykEZl7TK1JhldcgWWCrva8jKFQKhruRFygiRIXoormmI+FBp7h/
         On1/JThP+xtNTSdFBxDjLBaw3nOHOthjK4SnTrMOs4zPXMRffKRDCW2N4UJDdTq8AG+x
         qmVYqw1kr672uxbuje6BI1pjYl23mf4mrfYcsRdYRBKd2qY1Y/lHfaToQmdPB0Tty0ek
         ChA5TLUKIthJQataRxtOhaDUFSRxDtg8Lu73fWpHtKXEeqbQClslkUTBKyeX+pfF+iQx
         7qKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hzvd0SOAnLM0DL8rtNLu9pIm8UKAMg9PHwgytSJszRA=;
        b=NvvgYY4peMEzpJDis4WJ9uzsea1MOp3ABGNyjN4A62FDXiMYUcvyxbv3buJ+bhhHcr
         hVD4muTYOVFKVcnzWlHXOihHqgeQn+4eePeUyOo21DZOHFlTfRfFac4FzO2sAwynjXd/
         tx+GLqv5Jt7a3Jva1TUBcywSSo/UcSnIbfptYxYjhdvQicXAkNxgWI40g+QIzuMjs1Vl
         h/rpD+ip+oj1NttA8C1/gTSmffDJUmcwemztOf/qRSeB1hMct5QCSufLK+cz3V5pCU42
         ahBgi+UFnWGnRHDFz87VOGuQZwQfmQS7YoYywy/ZGwySsFn1Ed7HSqSE2uocjoqbKIRd
         7Nrw==
X-Gm-Message-State: ANoB5pmYOmffqqAq+HlzwIPWuonnXGyi9n1GGixbkw2gcDZiQsq+32L8
        7lgQZGQg5DCMYcbQeCfR3fkHCglC88Q=
X-Google-Smtp-Source: AA0mqf4gxr3JEYcHAktPHWU6zwTMbdZzH2BK+m4zCWawukbaTjALbvXSRGLPE5gygCQJO9NyC9sN2w==
X-Received: by 2002:adf:ebcf:0:b0:22e:3275:983e with SMTP id v15-20020adfebcf000000b0022e3275983emr52090256wrn.71.1670255792060;
        Mon, 05 Dec 2022 07:56:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j13-20020a056000124d00b002421db5f279sm14351521wrx.78.2022.12.05.07.56.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 07:56:31 -0800 (PST)
Message-ID: <73f64795-b4fe-956c-c20b-8e2a1fa05929@gmail.com>
Date:   Mon, 5 Dec 2022 16:56:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] strcat.3, strncat.3: RIP strncat(3)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        pkg-shadow-devel@alioth-lists.debian.net, libc-alpha@sourceware.org
References: <20221205154904.15321-1-alx@kernel.org>
In-Reply-To: <20221205154904.15321-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GGQRe43PotBjjMoH0Y9FRSop"
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
--------------GGQRe43PotBjjMoH0Y9FRSop
Content-Type: multipart/mixed; boundary="------------8EZigGDHOBjIKEUIkKcb0ZeA";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
 pkg-shadow-devel@alioth-lists.debian.net, libc-alpha@sourceware.org
Message-ID: <73f64795-b4fe-956c-c20b-8e2a1fa05929@gmail.com>
Subject: Re: [PATCH] strcat.3, strncat.3: RIP strncat(3)
References: <20221205154904.15321-1-alx@kernel.org>
In-Reply-To: <20221205154904.15321-1-alx@kernel.org>

--------------8EZigGDHOBjIKEUIkKcb0ZeA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzUvMjIgMTY6NDksIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBOZXZl
ciB1c2UgdGhpcyBmdW5jdGlvbi4gIFJlYWxseS4NCj4gDQo+IENjOiA8cGtnLXNoYWRvdy1k
ZXZlbEBhbGlvdGgtbGlzdHMuZGViaWFuLm5ldD4NCj4gQ2M6IDxsaWJjLWFscGhhQHNvdXJj
ZXdhcmUub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtl
cm5lbC5vcmc+DQo+IC0tLQ0KPiANCj4gSGkhDQo+IA0KPiBUbyBzaGFkb3ctdXRpbHMgcmVh
ZGVycywgSSd2ZSBzZWVuIHRoZXJlIGFyZSBhIGZldyB1c2VzIG9mIHN0cm5jYXQoMykgaW4N
Cj4gc2hhZG93LXV0aWxzLiAgSSdsbCByZXZpZXcgbXkgY3VycmVudCBQUiBhYm91dCBzdHJp
bmcgaGFuZGxpbmcgdG8gYWxzbw0KPiBhZGRyZXNzIHRoaXMgaXNzdWUuDQo+IA0KPiBUbyBn
bGliYyByZWFkZXJzLCBwbGVhc2UgYnVyeSB0aGlzIGZ1bmN0aW9uIGRlZXAgZG93biBhcyBp
ZiBpdCB3ZXJlDQo+IHJhZGlvYWN0aXZlIHdhc3RlLg0KPiANCj4gQ2hlZXJzLA0KPiANCj4g
QWxleA0KPiANCg0KVGhlIHJlbmRlcmVkIHZlcnNpb24gb2YgdGhlIG5ldyBtYW51YWwgcGFn
ZSBmb3Igc3RybmNweSgzKSBpczoNCg0KDQpzdHJuY2F0KDMpICAgICAgICAgICAgICBMaWJy
YXJ5IEZ1bmN0aW9ucyBNYW51YWwgICAgICAgICAgICAgc3RybmNhdCgzKQ0KDQpOQU1FDQog
ICAgICAgIHN0cm5jYXQgLSBjb25jYXRlbmF0ZSB0d28gc3RyaW5ncw0KDQpMSUJSQVJZDQog
ICAgICAgIFN0YW5kYXJkIEMgbGlicmFyeSAobGliYywgLWxjKQ0KDQpTWU5PUFNJUw0KICAg
ICAgICAjaW5jbHVkZSA8c3RyaW5nLmg+DQoNCiAgICAgICAgW1tkZXByZWNhdGVkXV0NCiAg
ICAgICAgY2hhciAqc3RybmNhdChjaGFyIGRlc3RbcmVzdHJpY3Qgc3RybGVuKC5kZXN0KSAr
IHN0cm5sZW4oLm4pICsgMV0sDQogICAgICAgICAgICAgICAgICAgICAgY29uc3QgY2hhciBz
cmNbcmVzdHJpY3QgLm5dLA0KICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBuKTsNCg0K
REVTQ1JJUFRJT04NCiAgICAgICAgTm90ZTogTmV2ZXIgdXNlIHRoaXMgZnVuY3Rpb24uDQoN
CiAgICAgICAgRm9yICBzYWZlICBzdHJpbmcgY29uY2F0ZW5hdGlvbiwgc2VlIHN0cmxjYXQo
M2JzZCkuICBGb3IgY29weWluZw0KICAgICAgICBvciBjb25jYXRlbmF0aW5nIGEgc3RyaW5n
IGludG8gYSBmaXhlZOKAkGxlbmd0aCBidWZmZXIgd2l0aCAgemVyb+KAkA0KICAgICAgICBp
bmcgb2YgdGhlIHJlc3QsIHNlZSBzdHBuY3B5KDMpLg0KDQogICAgICAgIHN0cm5jYXQoKSBh
cHBlbmRzIGF0IG1vc3QgbiBjaGFyYWN0ZXJzIG9mIHNyYyB0byB0aGUgZW5kIG9mIGRzdC4N
CiAgICAgICAgSXQgIGFsd2F5cyB0ZXJtaW5hdGVzIHdpdGggYSBudWxsIGNoYXJhY3RlciB0
aGUgc3RyaW5nIHBsYWNlZCBpbg0KICAgICAgICBkZXN0Lg0KDQogICAgICAgIEEgc2ltcGxl
IGltcGxlbWVudGF0aW9uIG9mIHN0cm5jYXQoKSBtaWdodCBiZToNCg0KICAgICAgICAgICAg
Y2hhciAqDQogICAgICAgICAgICBzdHJuY2F0KGNoYXIgKmRlc3QsIGNvbnN0IGNoYXIgKnNy
Yywgc2l6ZV90IG4pDQogICAgICAgICAgICB7DQogICAgICAgICAgICAgICAgcmV0dXJuIG1l
bWNweShkZXN0ICsgc3RybGVuKGRlc3QpLCBzcmMsIHN0cm5sZW4oc3JjLCBuKSk7DQogICAg
ICAgICAgICB9DQoNClJFVFVSTiBWQUxVRQ0KICAgICAgICBzdHJuY2F0KCkgcmV0dXJucyBh
IHBvaW50ZXIgdG8gdGhlIHJlc3VsdGluZyBzdHJpbmcgZGVzdC4NCg0KQVRUUklCVVRFUw0K
ICAgICAgICBGb3IgYW4gZXhwbGFuYXRpb24gb2YgdGhlIHRlcm1zIHVzZWQgaW4gdGhpcyAg
c2VjdGlvbiwgIHNlZSAgYXTigJANCiAgICAgICAgdHJpYnV0ZXMoNykuDQogICAgICAgIOKU
jOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUrOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
rOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkA0KICAgICAgICDilIJJbnRlcmZhY2Ug
ICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSCIEF0dHJpYnV0ZSAgICAg4pSCIFZhbHVl
ICAg4pSCDQogICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KICAg
ICAgICDilIJzdHJuY2F0KCkgICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSCIFRocmVh
ZCBzYWZldHkg4pSCIE1U4oCQU2FmZSDilIINCiAgICAgICAg4pSU4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSYDQoNClNUQU5EQVJEUw0KICAgICAgICBQT1NJWC4x4oCQMjAwMSwg
UE9TSVguMeKAkDIwMDgsIEM4OSwgQzk5LCBTVnI0LCA0LjNCU0QuDQoNCkJVR1MNCiAgICAg
ICAgQWxsLiAgU2VyaW91c2x5LCB0aGVyZeKAmXMgbm8gdXNlIGNhc2UgZm9yIHRoaXMgZnVu
Y3Rpb24uDQoNCiAgICAgICAgSXQgIGhhcyAgYSB2ZXJ5IG1pc2xlYWRpbmcgbmFtZS4gIFRo
aXMgZnVuY3Rpb24gaGFzIG5vIHJlbGF0aW9u4oCQDQogICAgICAgIHNoaXAgd2l0aCBzdHJu
Y3B5KDMpLg0KDQogICAgICAgIFNpbmNlIGl0IGRvZXNu4oCZdCBrbm93IHRoZSBzaXplIG9m
IHRoZSBkZXN0aW5hdGlvbiAgYnVmZmVyLCAgdGhpcw0KICAgICAgICBmdW5jdGlvbiAgY2Fu
ICBlYXNpbHkgIHdyaXRlIHBhc3QgdGhlIGVuZCBvZiB0aGUgYXJyYXksIGJlaW5nIGFuDQog
ICAgICAgIG9wZW4gZG9vciB0byBhbGwga2luZHMgb2YgY3JhY2tlcnMuDQoNClNFRSBBTFNP
DQogICAgICAgIHN0cmNweSgzKSwgc3RyaW5nKDMpDQoNCkxpbnV4IG1hbuKAkHBhZ2VzICh1
bnJlbGVhc2VkKSAgICAgKGRhdGUpICAgICAgICAgICAgICAgICAgICAgIHN0cm5jYXQoMykN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------8EZigGDHOBjIKEUIkKcb0ZeA--

--------------GGQRe43PotBjjMoH0Y9FRSop
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOOFJcACgkQnowa+77/
2zLWQA//dme7Ytmj/GsjE061h8R16igs/liXPuNvMmfegBEdmKEQ1+XnxKdCfyTr
V8qs32DycEMu5fLxLq1HOzdP62/e2MX1mq9EsvsjrAqT3+Ya4RBWPaGcxkPRI5qS
GP4kVw7KvS3G+y2j/ouP+ASQ7DQHDHJFfd3lODJ/k4yHgkWk2Xs2hb15CRBxgcEo
Zhj8NqxQkOd3zfx3E91shum3x7ufNJQHNIWZxhXgamFyHg2laUbeAgnyMdvrL4YQ
g/FsUePw4eoa6RjHlRGuCOeKWwhjvT8TaP69wqYMrP+NJ2L4bweMRPSOlMwGrB2o
GYTsqfQBPQd311/VegkXtMPW8cBQfFFYbYE5MZr1GvudIsChDjtX7ue5hN3LLho8
olNl+bGMBoQIS+ZqNLdhEBt7m6HhD6+NKi2LP2oWhw39mVZ5q+9JyCzanxhZ3udQ
j2gSirHxyVZF/N7BTD3WBWmmDelfuuXARfIY3oVSR4WnYYrCtO9P3lpSPOre9MMh
JXBnpRia84yiqYCyzrsANGgLa1eE4MwchKwGKbNBYukoDHCBwlmm8HLD4ed5UB/B
FdgbnYrglan9G21WOTodgdrZoji0n5Gucu+WJjhOVuNUi69ImqJuBpsVne0gLFvi
Hlzj6oU09O9NvOplQOHdWKZKYOHnT/ka6l1AC/Tuallb1pcqUh4=
=jdwX
-----END PGP SIGNATURE-----

--------------GGQRe43PotBjjMoH0Y9FRSop--
