Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68C5357A282
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 16:58:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235856AbiGSO6S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 10:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238281AbiGSO6B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 10:58:01 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD184AD62
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:58:00 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id bk26so21977466wrb.11
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:cc:in-reply-to;
        bh=nVKd1sPw5DxGvShxShZnDz0nKUg1U1LLdIy0WgTZrsk=;
        b=qDUzLPssDInTBGANJWOf6bf3V4LUDuqaaJESbS3mjfi+T97R9rBFLJZdkFfjcRp5uj
         FpBMPBMnPivcoAreDpL5pMKprrqNvkSrSAj5uKadcU67pGKKZuyuGl5gjLct1aW3BVuq
         cVWLDVL+WdEFKWXvnuH8BPi1ExOZE77Jhapa1RawZOk4AznGdmlp0ww0O3t1tpb5UHzN
         SoaiWUbjkHWe3fRcHC9Zaa86CNbYkB0JAKRVw3J6CYan/ip7dkBGNxTaIL9V4elmAvvk
         5V5wrlWbbAPgbOJ4KS3fBQ9lHU6vF8B460sjRNRWz5T7yr8uUBZH3vGLojLWnBVPR1/8
         HJzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:cc:in-reply-to;
        bh=nVKd1sPw5DxGvShxShZnDz0nKUg1U1LLdIy0WgTZrsk=;
        b=2wttBeNRSo40m6fnf8hGfwuZq9rCz/pBbCzPH2sEQv1i7Di6cCwUhASGgkSRBa331w
         NuPr5WYirL4DZla/jTwXmzoX3Qn2vdnHJAH3bOmeN4C7AnAd/j0U3vq5oxw5yp44NzM7
         wPwvWZTBhdbE6hOa9uDaYeypp9RmPiOG1hUzP80z6vbmtRNMgqWsgbh/me94XDtF4sXP
         XdnXeHgCVYdUJEGgI//Wt4D0G0xq9naIpKvyTvWmAvgW/uVwtNTG5paunZ9XPOyEco94
         /NDFfOciZ2Vlbk9OyZJEIZZyFFiIb7qr3HUhrif367qu35VJm3BQvd9wTLkfAsajM5nR
         /fGw==
X-Gm-Message-State: AJIora9OxvQKqCV6yLgnY3nwY+NNSGcMRhA2dF3+FDNvw4K6Fir8iCTX
        DqoO2aEYPoX3uYQmQEVnRhmh1xnqcSo=
X-Google-Smtp-Source: AGRyM1toq/iv2y2q2/ZghHbm7w/v0VKuwIHJp/+lJ9G1y9MOb+gBMrvdGfMMY1THsc5aGTAobtRLXA==
X-Received: by 2002:a5d:4583:0:b0:21e:3b0e:2bc9 with SMTP id p3-20020a5d4583000000b0021e3b0e2bc9mr2747214wrq.649.1658242679182;
        Tue, 19 Jul 2022 07:57:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d6405000000b0021b966abc19sm13474507wru.19.2022.07.19.07.57.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 07:57:58 -0700 (PDT)
Message-ID: <ff476100-d800-2673-5b76-2c50070d4c86@gmail.com>
Date:   Tue, 19 Jul 2022 16:57:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [patch] for the printf.3 man page
Content-Language: en-US
To:     =?UTF-8?Q?Dr=2e_J=c3=bcrgen_Sauermann?= 
        <mail@xn--jrgen-sauermann-zvb.de>
References: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>
 <bb07d533-2d93-200a-b43c-8ca67c18ef8b@gmail.com>
 <30e334f2-8134-40f4-f956-ae6f7c0b3fb9@xn--jrgen-sauermann-zvb.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
In-Reply-To: <30e334f2-8134-40f4-f956-ae6f7c0b3fb9@xn--jrgen-sauermann-zvb.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gbdgMh3WwYU1TQ7gQ8mfpDyE"
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
--------------gbdgMh3WwYU1TQ7gQ8mfpDyE
Content-Type: multipart/mixed; boundary="------------UDAMipEi528r5IpNHYN00qZi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Dr=2e_J=c3=bcrgen_Sauermann?= <mail@xn--jrgen-sauermann-zvb.de>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <ff476100-d800-2673-5b76-2c50070d4c86@gmail.com>
Subject: Re: [patch] for the printf.3 man page
References: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>
 <bb07d533-2d93-200a-b43c-8ca67c18ef8b@gmail.com>
 <30e334f2-8134-40f4-f956-ae6f7c0b3fb9@xn--jrgen-sauermann-zvb.de>
In-Reply-To: <30e334f2-8134-40f4-f956-ae6f7c0b3fb9@xn--jrgen-sauermann-zvb.de>

--------------UDAMipEi528r5IpNHYN00qZi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSsO8cmdlbiwNCg0KT24gNy83LzIyIDExOjMzLCBEci4gSsO8cmdlbiBTYXVlcm1hbm4g
d3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiB5ZXMsIHNvcnJ5LiBIZXJlIGl0IGlzIChhdHRh
Y2hlZCBhbmQgaW5saW5lKToNCg0KUGF0Y2ggYXBwbGllZC4NCg0KVGhhbmtzLA0KDQpBbGV4
DQoNCj4gDQo+IA0KPiAtLS0gcHJpbnRmLjPCoMKgwqAgMjAyMi0wNy0wNiAxNDo1OTozOS40
NDMyMzQ0MzcgKzAyMDANCj4gKysrIHByaW50Zi4zLm5ld8KgwqDCoCAyMDIyLTA3LTA2IDE1
OjE2OjA4Ljk4Njk0NjM2MyArMDIwMA0KPiBAQCAtMzc4LDYgKzM3OCwxMCBAQA0KPiAgwqBj
YW5ub3QgcGFyc2UgdGhpcyBvcHRpb24gYW5kIHdpbGwgaXNzdWUgYSB3YXJuaW5nLg0KPiAg
wqAoU1VTdjIgZGlkIG5vdA0KPiAgwqBpbmNsdWRlIFxmSSVcKGFxRlxmUCwgYnV0IFNVU3Yz
IGFkZGVkIGl0LikNCj4gK05vdGUgYWxzbyB0aGF0IHRoZSBkZWZhdWx0IGxvY2FsZSBvZiBh
IEMgcHJvZ3JhbSBpcyAiQyIgd2hvc2UgbG9jYWxlIA0KPiBpbmZvcm1hdGlvbg0KPiAraW5k
aWNhdGVzIG5vIHRob3VzYW5kcycgZ3JvdXBpbmcgY2hhcmFjdGVyLiBUaGVyZWZvcmUsIHdp
dGhvdXQgYSBwcmlvcg0KPiArLkJSIHNldGxvY2FsZSAoMykNCj4gK25vIHRob3VzYW5kcycg
Z3JvdXBpbmcgY2hhcmFjdGVycyB3aWxsIGJlIHByaW50ZWQuDQo+ICDCoC5QUA0KPiAgwqBn
bGliYyAyLjIgYWRkcyBvbmUgZnVydGhlciBmbGFnIGNoYXJhY3Rlci4NCj4gIMKgLlRQDQo+
IA0KPiANCj4gSsO8cmdlbg0KPiANCj4gDQo+IE9uIDcvNy8yMiAxOjE0IEFNLCBBbGVqYW5k
cm8gQ29sb21hciB3cm90ZToNCj4+IEhpIErDvHJnZW4sDQo+Pg0KPj4NCj4+IFBsZWFzZSBz
ZW5kIHlvdXIgcGF0Y2ggaW4gZGlmZiAtdSBmb3JtYXQuwqAgU2VlDQo+PiA8aHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvbWFuLXBhZ2VzL3BhdGNoZXMuaHRtbD4NCj4+DQo+PiBUaGFu
a3MsDQo+Pg0KPj4gQWxleA0KPj4NCj4gDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------UDAMipEi528r5IpNHYN00qZi--

--------------gbdgMh3WwYU1TQ7gQ8mfpDyE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWxm4ACgkQnowa+77/
2zLU/Q/+PIhmF6UEQfZr7mTkzddniMaeFRRCT7UWELehj7q17EokNWKOrju8dkjz
yAM0Nf4gkL4RerN0ZbOK7CIA4J3nlM7JUIFTuZfoFA83A2wb6AZMlbdwozc64eSp
wtLv7LrRMwOZq/86P5AvHWJonqL0ekBXASHRBk8nQtMpZXx0wyAAj2lAh/dwgU6e
lHhv6GMrkA398Lw3bHjybQ9sL2kSPm12jpBWET1zqFMWZeXhMFWpRysk754k6UJd
cImg/ReEQQKfS061/qHP1f3gWOuM4PF9sWB4yfoMkzTmxDDhfHXU/0Og1eV/AIHa
5XCf4zsL6VekSX7LGPX93sfBt4Ay9L5/LjG0VxKPWXLHrOHiy077Ie2iaT1wxfLS
8EILG4sS4qLok3hYf8KEOID0eFAhOyovdm+AyJadE6hzBxAb+aZCIE/1BEz0Wggk
6Vtq1W8QNzYN9rtgNcyDlPSeg3YQhB/KYAHl7kaWpKUlmMlOgxesg14RkUVh0JTq
zpG/DkwtuVy+Q2gHEEzORW4xUc1fwKG55WbGoIDUb6mGgY3T9R3MHWqVXc0Cg62j
Ed3ZbpChiDlP0sKb9AOI7Z9K27PUKG21bdQIqzo0awIhTXysupgrKCeqMKQnKqaX
gnSEnI5mzxhEzZKV1HhPHp6fjaNB+1aBlMaB0XfU8/C2KHAVekg=
=s6SQ
-----END PGP SIGNATURE-----

--------------gbdgMh3WwYU1TQ7gQ8mfpDyE--
