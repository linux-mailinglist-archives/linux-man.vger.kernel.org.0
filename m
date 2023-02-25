Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C49F86A267B
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbjBYBWM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:22:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbjBYBWA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:22:00 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCBD7149A0
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:21:54 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k37so940950wms.0
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5xVP0E+E77r4mlFLDEROgCyfWiAXxqPlDpKACbsi5cc=;
        b=FtFgSON7MaZAdL9FzoxRNwsGuFJJpeI6pakwy1WVJ9JCu7vd9X6Rq0WZ6+b2wAcwTV
         6E6Zm7SktojEi4LNwx7S7xgI7OGkExqzf943564EnLVl1PFL24MPp+6M/kt8V0O8TXt8
         Ju7cxaomfZ4OvCLxBtydpmfX6Cj0MrJdc0lY0YDMaFlXTQGM17mExmGHzxKDtlPrim8L
         G5qgaOqtWBznxF1KIhDrPBb9drcXIKM78ouPZVeJZLtjTqjaaiavRv4K3NIHKQPT9CT1
         gtSWDYWmye4Xvlik3Srzd75Q1g7UbPxmIY27hbGDs2m0Pgbthd6xGv9LMFJANenPSsXy
         vx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5xVP0E+E77r4mlFLDEROgCyfWiAXxqPlDpKACbsi5cc=;
        b=PXU7jZGxOJtR9T+a50AtzRqK4cjOfAT8QvkEejEHIVaI5KZmBO79p3ylNKNgtDHJtZ
         oHbOVy5XSH0uhJeezGJQxDBC1jmWFni4DBsCh/RIiiLmYXpfcVcShJwCMdCicKYtGMRn
         UL5rpFTj4OxszqkpTvG4sPcy2tDJDsvOUwuYF+csBFzzQ8ZsoptmVHQed+lyDv2iejqz
         cJIOQvbFk1WflUkeJdOQKvlfAeGiLBHDUF1QYBSzGCPiH8lHDWyEOCDAe+JExDb+Zi+t
         J76/DuZcvmvqxkzHmRLZEUm8fAv1hHhNBSFO8nGhq/ldAHur/aIOqrPZtIL2kjGW4whB
         Iebg==
X-Gm-Message-State: AO0yUKU0NDa/naDHl4JqTvdcYb7ZbQfUVGVWrCIOShhFdqJAUbFh5s9F
        b/TPo/4eLgsVkr7RJ8ziejI=
X-Google-Smtp-Source: AK7set9AAnBlERN7KafqiKfbzqvjzXrI+pOsaYt2+P2wJ+CQD7izfgWuzCDoDvJCt8VnZuLMEpurdg==
X-Received: by 2002:a05:600c:998:b0:3dc:5b88:e6dd with SMTP id w24-20020a05600c099800b003dc5b88e6ddmr14076419wmp.10.1677288113249;
        Fri, 24 Feb 2023 17:21:53 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id d24-20020a1c7318000000b003dc522dd25esm816266wmb.30.2023.02.24.17.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:21:52 -0800 (PST)
Message-ID: <fece7cb1-a4d7-d19f-16af-d82c95f558be@gmail.com>
Date:   Sat, 25 Feb 2023 02:21:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V. Levin" <ldv@strace.io>,
        =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrs=?=
         =?UTF-8?B?zrHPg865zqzOtM63z4I=?= <fvalasiad@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        Nate Eldredge <nate@thatsmathematics.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <20230224185347.GB7758@altlinux.org>
 <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
 <20230224220502.GA9955@altlinux.org>
 <23a102ec-e146-0e82-c5d2-434e9ae56b28@gmail.com>
 <20230224233148.GB9955@altlinux.org>
 <c8931c0d-afa2-e43f-cc53-4c29114f322f@gmail.com>
 <20230225000832.GA10444@altlinux.org>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230225000832.GA10444@altlinux.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jPmUUDApdD1sYzGvM535v3am"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jPmUUDApdD1sYzGvM535v3am
Content-Type: multipart/mixed; boundary="------------oBhNDAS3bVJCRZQusQQkv9Pk";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: "Dmitry V. Levin" <ldv@strace.io>, =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrs=?=
 =?UTF-8?B?zrHPg865zqzOtM63z4I=?= <fvalasiad@gmail.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com,
 Nate Eldredge <nate@thatsmathematics.com>,
 Elvira Khabirova <lineprinter0@gmail.com>
Message-ID: <fece7cb1-a4d7-d19f-16af-d82c95f558be@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <20230224185347.GB7758@altlinux.org>
 <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
 <20230224220502.GA9955@altlinux.org>
 <23a102ec-e146-0e82-c5d2-434e9ae56b28@gmail.com>
 <20230224233148.GB9955@altlinux.org>
 <c8931c0d-afa2-e43f-cc53-4c29114f322f@gmail.com>
 <20230225000832.GA10444@altlinux.org>
In-Reply-To: <20230225000832.GA10444@altlinux.org>

--------------oBhNDAS3bVJCRZQusQQkv9Pk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRG1pdHJ5IQ0KDQpPbiAyLzI1LzIzIDAxOjA4LCBEbWl0cnkgVi4gTGV2aW4gd3JvdGU6
DQo+IE9uIFNhdCwgRmViIDI1LCAyMDIzIGF0IDAxOjQzOjE4QU0gKzAyMDAsIM6mz47PhM63
z4IgzpLOsc67zrHPg865zqzOtM63z4Igd3JvdGU6DQo+PiBCZXR0ZXI/DQo+Pg0KPj4gZGlm
ZiAtLWdpdCBhL21hbjIvcHRyYWNlLjIgYi9tYW4yL3B0cmFjZS4yDQo+PiBpbmRleCA1NWQ5
ZmQzNmQuLmFkMDU0M2IwYiAxMDA2NDQNCj4+IC0tLSBhL21hbjIvcHRyYWNlLjINCj4+ICsr
KyBiL21hbjIvcHRyYWNlLjINCj4+IEBAIC0xMTExLDYgKzExMTEsMTUgQEAgc3RvcC4NCj4+
ICAgwqAuQiBQVFJBQ0VfU1lTQ0FMTF9JTkZPX05PTkUNCj4+ICAgwqBObyBjb21wb25lbnQg
b2YgdGhlIHVuaW9uIGNvbnRhaW5zIHJlbGV2YW50IGluZm9ybWF0aW9uLg0KPj4gICDCoC5S
RQ0KPj4gKy5JUA0KPj4gK05vdGUgdGhhdCBpbiBjYXNlIG9mDQo+PiArc3lzY2FsbCBlbnRy
eSBvciBleGl0IHN0b3BzLCB0aGUgZGF0YSByZXR1cm5lZCBieQ0KPj4gKy5CIFBUUkFDRV9H
RVRfU1lTQ0FMTF9JTkZPDQo+PiAraXMgbGltaXRlZCB0byB0eXBlDQo+PiArLkIgUFRSQUNF
X1NZU0NBTExfSU5GT19OT05FDQo+PiArdW5sZXNzDQo+PiArLkIgUFRSQUNFX09fVFJBQ0VT
WVNHT09EDQo+PiArb3B0aW9uIGlzIHNldCBiZWZvcmUgdGhlIGNvcnJlc3BvbmRpbmcgcHRy
YWNlIHN0b3AgaGFzIG9jY3VycmVkLg0KPj4gICDCoC5cIg0KPj4gICDCoC5TUyBEZWF0aCB1
bmRlciBwdHJhY2UNCj4+ICAgwqBXaGVuIGEgKHBvc3NpYmx5IG11bHRpdGhyZWFkZWQpIHBy
b2Nlc3MgcmVjZWl2ZXMgYSBraWxsaW5nIHNpZ25hbA0KPiANCj4gTEdUTSwgdGhhbmtzLg0K
DQpBaGgsIEkgc2VlIHlvdSBhbHJlYWR5IENDZCBOYXRlLiAgVGhhbmtzIQ0KDQpUaGFua3Mg
Zm9yIHRoZSByZXZpZXchICBJIHNob3VsZCB0YWtlIHRoYXQgYXMgYW4gQWNrZWQtYnk/DQoN
CkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNB
ODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQoNCg==

--------------oBhNDAS3bVJCRZQusQQkv9Pk--

--------------jPmUUDApdD1sYzGvM535v3am
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5Yq8ACgkQnowa+77/
2zK3lg//dY/fy8Oz0+lDheaCtFZw+CbquyGCUEjdiUkWCUKI5Pn1DQKLiyltDAOp
qV1Cu3x9d1QhdqrOncHYMuUxG5K5DHZAF2u9xaSUppFf6+F3E6ZU7yyEz6i+7Uc5
0i3A04z8/DgkOBGqW4BXm7rRf2PnRrla5Qwoj4EfD+cVttZExqTBFSM8uoZyyxDX
klenMU0JVypmNe2t2jA1SB5NpBZiAJsubOFsyuL3kqVrAxUVIFWg+IdhXmB/lBgo
g/fHwapb1EZnWjW9eOehxhNSooca+puhHQp84sZjwqR1sxbLhInsxB4Yus5UIRK8
iSRwazZlTv45lr8m6fuLPxl1Ewk6Es0Zijp3paY4/Dy7TyNh1O1grKIjMhHMNB/j
HIGg07Hdxzu+s2S0iheYQegMKceRfDXn0KUWTY6DHTQRJQ398IEOQpQ2XHsW75N2
WaSJfpW5ZlB/4vFrYSDQqaWyd+pfU8KlsEBqoA+yDWLFt6KTI3sYT5uvSSpcYmiu
8ioMEZznNAYTLPgf95/G1OOmSW9jo5YiINANOuGQkH8dojFLlAQwcb2x7FfmWBZ8
eggC1KBahrFKYIsdNyt/9n81CJq9nqSVx2qw/GDE29NxiqfpdNciZbe6swpaiEKy
5KnvS9fVmG//iJ4ILXZAJO9bFb79mxio4LsBdhacW1ra/HID5Xg=
=cfyI
-----END PGP SIGNATURE-----

--------------jPmUUDApdD1sYzGvM535v3am--
