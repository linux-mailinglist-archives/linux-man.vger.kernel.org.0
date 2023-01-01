Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C365B65AA91
	for <lists+linux-man@lfdr.de>; Sun,  1 Jan 2023 17:27:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbjAAQ1c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Jan 2023 11:27:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjAAQ1c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Jan 2023 11:27:32 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D40BA21B7
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 08:27:30 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id z8-20020a05600c220800b003d33b0bda11so14348117wml.0
        for <linux-man@vger.kernel.org>; Sun, 01 Jan 2023 08:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ipwj6fGL4BoESP8IYwPVtY3UWMxywq+66b2CxSrRXZ8=;
        b=nARugxbaVI57FKVknSfblqEAzWSgMvLJ6A4VuAxyojnIepvQH5Ye6SVY72Vu9QVf19
         wh3NeHaPViD8jVgX6L3XTIWSQt3195viCMyzE674RJOSv3iWXszvXQNGK/jKAibGpzx2
         Qbt94tpgmWQOwtOlHmByGRmrUGdGte0yXfW/KRSUufRaFIqkVlOiuGyrRF1yf0Ti+bE/
         6zHhbMY5zEKoQg5UI9hwtWbQ26UBfDEQ8eiJLsBeuKyoVbob/inGp4cyw0lDYJwbxflb
         OBQ0OzIuhw4q/gZALEFeAqSR0VBIYgFVppGibJrt88EL9r6fq29AY4cxNgk5fFCBylqL
         T/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ipwj6fGL4BoESP8IYwPVtY3UWMxywq+66b2CxSrRXZ8=;
        b=IkUXI77XtZ7+mVg8qMtu5JzOGpKQ75S0TgMsd1AyECoVir5sabrxF1vKN35iIJtTvR
         t+aGedwaIuxGZZLPJZpGRhjeUcv9V+B/AJjIkx1RjU6EkSiYg3R9Ha1xzbdykgzBq2dU
         Z1io5uqAvbR93B+lfCoLenC6z8c/QfML7SeLv2zMnyzymucWZMnhTexHmkdas7S9vzYU
         frGiwQtmKPyYs340UmcKtpxDOlhSb+/b9oxram5OLz3TF7plIXfWCY4f8CBS4D2swCdo
         FYE1VEO3tuqzOgEdMr1B36euadqG5s/5+wVYBjsPZysk8C/0roCrYk7Y/ZmjzwzgdeaB
         ZZ+Q==
X-Gm-Message-State: AFqh2koGiJ9lfgmp6/j/pbgzz1O0xAcz6x6sEsLtPHurwIPtLw3bhDgj
        7td6IucwnFWdiOUxug3PHLMqDcGd3PQ=
X-Google-Smtp-Source: AMrXdXuRdegaz5musiGiAE4c6GM8yx5GKNN178KmrDPdeSW5DT+tazCEzNltUDoaRYUpPRTuFHEPJw==
X-Received: by 2002:a05:600c:1c81:b0:3d1:e907:17cb with SMTP id k1-20020a05600c1c8100b003d1e90717cbmr27207861wms.1.1672590449295;
        Sun, 01 Jan 2023 08:27:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q2-20020a1cf302000000b003d1cc0464a2sm35361442wmq.8.2023.01.01.08.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jan 2023 08:27:28 -0800 (PST)
Message-ID: <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
Date:   Sun, 1 Jan 2023 17:27:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <20230101162627.28031-1-alx@kernel.org>
In-Reply-To: <20230101162627.28031-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------INGoh1JcdxNZIrkQqCO4DhHa"
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------INGoh1JcdxNZIrkQqCO4DhHa
Content-Type: multipart/mixed; boundary="------------h9tO6D2sPeGSBypzxJKWlN8U";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
 "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <fd5ee7bd-f4a6-52a6-2f69-7c3547e549c6@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101162627.28031-1-alx@kernel.org>
In-Reply-To: <20230101162627.28031-1-alx@kernel.org>

--------------h9tO6D2sPeGSBypzxJKWlN8U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

YXJjNHJhbmRvbSgzKSAgICAgICAgICAgICAgTGlicmFyeSBGdW5jdGlvbnMgTWFudWFsICAg
ICAgICAgICAgICBhcmM0cmFuZG9tKDMpDQoNCk5BTUUNCiAgICAgICAgYXJjNHJhbmRvbSwg
IGFyYzRyYW5kb21fdW5pZm9ybSwgYXJjNHJhbmRvbV9idWYgLSBjcnlwdG9ncmFwaGljYWxs
eeKAkHNl4oCQDQogICAgICAgIGN1cmUgcHNldWRvcmFuZG9tIG51bWJlciBnZW5lcmF0b3IN
Cg0KTElCUkFSWQ0KICAgICAgICBTdGFuZGFyZCBDIGxpYnJhcnkgKGxpYmMsIOKAkGxjKQ0K
DQpTWU5PUFNJUw0KICAgICAgICAjaW5jbHVkZSA8c3RkbGliLmg+DQoNCiAgICAgICAgdWlu
dDMyX3QgYXJjNHJhbmRvbSh2b2lkKTsNCiAgICAgICAgdWludDMyX3QgYXJjNHJhbmRvbV91
bmlmb3JtKHVpbnQzMl90IHVwcGVyX2JvdW5kKTsNCiAgICAgICAgdm9pZCBhcmM0cmFuZG9t
X2J1Zih2b2lkIGJ1Zlsubl0sIHNpemVfdCBuKTsNCg0KREVTQ1JJUFRJT04NCiAgICAgICAg
VGhlc2UgZnVuY3Rpb25zIGdpdmUgY3J5cHRvZ3JhcGhpY2FsbHnigJBzZWN1cmUgcmFuZG9t
IG51bWJlcnMuDQoNCiAgICAgICAgYXJjNHJhbmRvbSgpIHJldHVybnMgYSB1bmlmb3JtbHni
gJBkaXN0cmlidXRlZCB2YWx1ZS4NCg0KICAgICAgICBhcmM0cmFuZG9tX3VuaWZvcm0oKSBy
ZXR1cm5zIGEgdW5pZm9ybWx54oCQZGlzdHJpYnV0ZWQgIHZhbHVlICBsZXNzICB0aGFuDQog
ICAgICAgIHVwcGVyX2JvdW5kIChzZWUgQ0FWRUFUUykuDQoNCiAgICAgICAgYXJjNHJhbmRv
bV9idWYoKSAgZmlsbHMgIHRoZSAgbWVtb3J5IHBvaW50ZWQgdG8gYnkgYnVmLCB3aXRoIG4g
Ynl0ZXMgb2YNCiAgICAgICAgcmFuZG9tIGRhdGEuDQoNCiAgICAgICAgVGhlIHJhbmQoMykg
YW5kIHJhbmQ0OCgzKSBmYW1pbGllcyBvZiBmdW5jdGlvbnMgIHNob3VsZCAgb25seSAgYmUg
IHVzZWQNCiAgICAgICAgd2hlcmUgIHRoZSBxdWFsaXR5IG9mIHRoZSByYW5kb20gbnVtYmVy
cyBpcyBub3QgYSBjb25jZXJuIGFuZCB0aGVyZeKAmXMgYQ0KICAgICAgICBuZWVkIGZvciBy
ZXBlYXRhYmlsaXR5IG9mIHRoZSByZXN1bHRzLiAgVW5sZXNzIHlvdSBtZWV0IGJvdGggIG9m
ICB0aG9zZQ0KICAgICAgICBjb25kaXRpb25zLCB1c2UgdGhlIGFyYzRyYW5kb20oKSBmdW5j
dGlvbnMuDQoNClJFVFVSTiBWQUxVRQ0KICAgICAgICBhcmM0cmFuZG9tKCkgcmV0dXJucyBh
IHJhbmRvbSBudW1iZXIuDQoNCiAgICAgICAgYXJjNHJhbmRvbV91bmlmb3JtKCkgIHJldHVy
bnMgYSByYW5kb20gbnVtYmVyIGxlc3MgdGhhbiB1cHBlcl9ib3VuZCBmb3INCiAgICAgICAg
dmFsaWQgaW5wdXQsIG9yIDAgd2hlbiB1cHBlcl9ib3VuZCBpcyBpbnZhbGlkLg0KDQpBVFRS
SUJVVEVTDQogICAgICAgIEZvciBhbiBleHBsYW5hdGlvbiBvZiB0aGUgdGVybXMgIHVzZWQg
IGluICB0aGlzICBzZWN0aW9uLCAgc2VlICBhdHRyaWLigJANCiAgICAgICAgdXRlcyg3KS4N
CiAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSs4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSs4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSQDQogICAgICAgIOKUgkludGVyZmFjZSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAg4pSCIEF0dHJpYnV0ZSAgICAg4pSCIFZhbHVlICAg4pSCDQogICAgICAg
IOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUvOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
pA0KICAgICAgICDilIJhcmM0cmFuZG9tKCksIGFyYzRyYW5kb21fdW5pZm9ybSgpLCAgICAg
ICAgIOKUgiBUaHJlYWQgc2FmZXR5IOKUgiBNVOKAkFNhZmUg4pSCDQogICAgICAgIOKUgmFy
YzRyYW5kb21fYnVmKCkgICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAgICAg
ICAgICAg4pSCICAgICAgICAg4pSCDQogICAgICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
tOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KDQpTVEFOREFSRFMNCiAgICAgICAg
VGhlc2Ugbm9uc3RhbmRhcmQgZnVuY3Rpb25zIGFyZSBwcmVzZW50IGluIHNldmVyYWwgVW5p
eCBzeXN0ZW1zLg0KDQpDQVZFQVRTDQogICAgICAgIEFuICB1cHBlcl9ib3VuZCAgb2YgIDAg
IGRvZXNu4oCZdCBtYWtlIHNlbnNlIGluIGEgY2FsbCB0byBhcmM0cmFuZG9tX3VuaeKAkA0K
ICAgICAgICBmb3JtKCkuICBTdWNoIGEgY2FsbCB3aWxsIGZhaWwsIGFuZCByZXR1cm4gMC4g
IEJlIGNhcmVmdWwsICBzaW5jZSAgdGhhdA0KICAgICAgICB2YWx1ZSAgaXMgIG5vdCBsZXNz
IHRoYW4gdXBwZXJfYm91bmQuICBJbiBzb21lIGNhc2VzLCBzdWNoIGFzIGFjY2Vzc2luZw0K
ICAgICAgICBhbiBhcnJheSwgdXNpbmcgdGhhdCB2YWx1ZSBjb3VsZCByZXN1bHQgaW4gVW5k
ZWZpbmVkIEJlaGF2aW9yLg0KDQpTRUUgQUxTTw0KICAgICAgICBnZXRyYW5kb20oMyksIHJh
bmQoMyksIHJhbmQ0OCgzKSwgcmFuZG9tKDcpDQoNCkxpbnV4IG1hbuKAkHBhZ2VzICh1bnJl
bGVhc2VkKSAgICAgICAgKGRhdGUpICAgICAgICAgICAgICAgICAgICAgICBhcmM0cmFuZG9t
KDMpDQo=

--------------h9tO6D2sPeGSBypzxJKWlN8U--

--------------INGoh1JcdxNZIrkQqCO4DhHa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOxtGQACgkQnowa+77/
2zKDsBAAqB5kpGDav7ttWjBebDvcXR1wT8yNVFLW64+BppO0e33WUEmMkwTjYuj7
19UctJ8u9/6qDcS7NSheTCdh5Fx0xSyUhA4FG6lnAQI2eeJuvNx9c0LJ2hS0U9FI
Vynqh9xdcuK8iN/TDEYbwAP9rqWjFBqK+2TWrZ0iOVfDG8bYdsG9Gbj7h/Se+1on
MbOoRANXzs9YuJxtIfLCyUFVom7JpNIwKY6FKU9vh8pAuAWRQt6CvYJJMSnA3M7f
xcYyATMG4fKcpKOpcBxroPyKUrtjYCoucZiMoXKDmx9G2iE9YGogCHz3vgpNgMt/
LxHGrROqmicb0thM3VZQMW+7HXuic941++/2RgB+j8hVRTxKax1HZmH1k4zkqXUf
mtOclra1Bu+0irSF6UxnGtSxSdhYzYoHZ6NMhJSDxq8Ef04tcmTM6NlQQ85iUxa3
Ztap58kHWKeW4ge7YW0IFF/Q4SiegP+Fogsf77f+7ymmXqt6iFx7YlbUUgf2t39J
vJPVrOnaXhQiUGdskZzQ2xB14fcsUiJLJCMHvjZjAEPpUi/06kgjZ8VkdgSqM/dH
XKstNJC4RmX78PSHFr9eo0z6DX5oYiMvMxzGYReLo5MeTIIoKeleUjFeBarFuyUo
sn/Yv9weLgH2iwMx/Q3KIsdGi3mMBOOvw+KwKG2yXDzO6X7gfjI=
=jcnE
-----END PGP SIGNATURE-----

--------------INGoh1JcdxNZIrkQqCO4DhHa--
