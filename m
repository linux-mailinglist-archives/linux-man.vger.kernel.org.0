Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE3D75AB8B6
	for <lists+linux-man@lfdr.de>; Fri,  2 Sep 2022 21:08:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230228AbiIBTIU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Sep 2022 15:08:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230207AbiIBTIT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Sep 2022 15:08:19 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38DEF4C8F
        for <linux-man@vger.kernel.org>; Fri,  2 Sep 2022 12:08:17 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id s23so1751200wmj.4
        for <linux-man@vger.kernel.org>; Fri, 02 Sep 2022 12:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=FpIE8F1zgH1F59nxsZC3mkFD01lAXtGPCAGqFseU/mE=;
        b=VDG70fkqxaZxrxVo5bJ9YGMCaxzvYpyNSXHLCaUT+AKCnaoGcakXdqoRIhOlPO1zST
         NkAYKPW5yTg2ExtCb/aq+nwaU2AusMwKlpbJk1g8tcGQbHrJr2YxnG/5UDTxdwzOkbSC
         w5vnpndSRyAghMwx+Yaigv9t7hpiTOstzdxgZ5cehNGBfiy5tgzYGw0Npn3iHepyCyU5
         vHMhq6irV8nokknG8434WkPOpAYh32tHHDngGRC+GrNEnKP4CKc78IKg9Y8oGWu85s/C
         XJWhYJyc48uY0WNb7BLgytm6qzHXnW2eb68jtnZ/K68R+E9MnOuQE91dXJsc7hPxJ9ZJ
         3RlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=FpIE8F1zgH1F59nxsZC3mkFD01lAXtGPCAGqFseU/mE=;
        b=Wa7x5MrxgZfCf3ER5mKuDRL+i4gZ52JUoNwH1PgzeIXfvZg8jRwabIu2cvOPaYtkze
         nqUXfHA1Be6E0hbE1nG4bN6JNXLvZJxyFGyFUa+eSHGjFf68SLveM8ki9zNHEVIIPEOS
         +WwtRNGA6gpezBEcYuRJdu7Yx4g3TlH8ySH8UO+PxmKWOQ/WS7G91kZYt1ym1pg+fkcz
         m4/DRfQhdpmGb9NXQo3+zkMVtUI38It6fWb0s716+7QRTuSW8SkRQzYBz9vaqsphgtZy
         yn2c3C7Ew86xa0TjN5Rn/A6oP2TZCjHx5euzcCdGOMGL2UuOcdG7UDpY2QKiFOT5eKV9
         QB/A==
X-Gm-Message-State: ACgBeo3m+KRGm+un6Qt+xcOgCc0mA1Uwy5aAZCiVM1072a2TgbNVNPKl
        3Q8z3gJcmr5NgDQbk+sHmeadHEGnmtA=
X-Google-Smtp-Source: AA6agR5VVzWH3EF+fIgQjfV3bLIJ8DV9lrVspPjTz0dXEVwA0JwHvFuo7Zr9NQLvV+oo2ZdSVfu1fQ==
X-Received: by 2002:a05:600c:3ba0:b0:3a5:b73a:8773 with SMTP id n32-20020a05600c3ba000b003a5b73a8773mr3778405wms.64.1662145696308;
        Fri, 02 Sep 2022 12:08:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bg15-20020a05600c3c8f00b003a4f08495b7sm10489079wmb.34.2022.09.02.12.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 12:08:15 -0700 (PDT)
Message-ID: <35511bab-860a-4652-e5e2-05b1b82cfc33@gmail.com>
Date:   Fri, 2 Sep 2022 21:07:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v2 4/4] ioctl_console.2: document all extant TIOCLINUX
 subcodes as of 6.0 (2.6.17)
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
 <2c202ac5ba2df3cd94bcbb9b11f1476924d44b83.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2c202ac5ba2df3cd94bcbb9b11f1476924d44b83.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4C8OctCOqXAs0H2bmJCpPYAP"
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
--------------4C8OctCOqXAs0H2bmJCpPYAP
Content-Type: multipart/mixed; boundary="------------EsNftkuqvchX4RSVRhhPerFK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <35511bab-860a-4652-e5e2-05b1b82cfc33@gmail.com>
Subject: Re: [PATCH v2 4/4] ioctl_console.2: document all extant TIOCLINUX
 subcodes as of 6.0 (2.6.17)
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
 <2c202ac5ba2df3cd94bcbb9b11f1476924d44b83.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <2c202ac5ba2df3cd94bcbb9b11f1476924d44b83.1662123938.git.nabijaczleweli@nabijaczleweli.xyz>

--------------EsNftkuqvchX4RSVRhhPerFK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDkvMi8yMiAxNTowNywg0L3QsNCxIHdyb3RlOg0KPiBTaWduZWQtb2ZmLWJ5
OiBBaGVsZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGku
eHl6Pg0KDQpQYXRjaCBzZXQgYXBwbGllZC4gIEFuZCBhZGRlZCBDYzogSmFrdWIgLi4uIHRv
IHRoZSBsb2cuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiB2Mjogd2l0aCBjb3Jy
ZWN0aW9ucyBmcm9tIEpha3ViDQo+IA0KPiAgIG1hbjIvaW9jdGxfY29uc29sZS4yIHwgNDMg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvbWFuMi9pb2N0bF9jb25zb2xlLjIgYi9tYW4yL2lvY3RsX2NvbnNvbGUuMg0K
PiBpbmRleCAwYzI1ZWRmNjcuLjE0NWU5ODA4MSAxMDA2NDQNCj4gLS0tIGEvbWFuMi9pb2N0
bF9jb25zb2xlLjINCj4gKysrIGIvbWFuMi9pb2N0bF9jb25zb2xlLjINCj4gQEAgLTc4Nyw4
ICs3ODcsNDkgQEAgYmxhbmtfdGltZXIgdGltZXMgb3V0LCB0aGVuIHlvdSBjaG9vc2UgdGhp
cyBvcHRpb24uDQo+ICAgUG93ZXJpbmcgZG93biBmcmVxdWVudGx5IHdpbGwgZGFtYWdlIHRo
ZSBtb25pdG9yLikNCj4gICAoU2luY2UgTGludXggMS4xLjc2LikNCj4gICAuUkUNCj4gKy5U
UA0KPiArLkJSIFRJT0NMSU5VWCAiLCAiIHN1YmNvZGUgPSBUSU9DTF9TRVRLTVNHUkVESVJF
Q1QNCj4gK0NoYW5nZSB0YXJnZXQgb2Yga2VybmVsIG1lc3NhZ2VzICgiY29uc29sZSIpOg0K
PiArYnkgZGVmYXVsdCwgYW5kIGlmIHRoaXMgaXMgc2V0IHRvDQo+ICsuQlIgMCAsDQo+ICtt
ZXNzYWdlcyBhcmUgd3JpdHRlbiB0byB0aGUgY3VycmVudGx5IGFjdGl2ZSBWVC4NCj4gK1Ro
ZSBWVCB0byB3cml0ZSB0byBpcyBhIHNpbmdsZSBieXRlIGZvbGxvd2luZw0KPiArLkJSIHN1
YmNvZGUgLg0KPiArKFNpbmNlIExpbnV4IDIuNS4zNi4pDQo+ICsuVFANCj4gKy5CUiBUSU9D
TElOVVggIiwgIiBzdWJjb2RlID0gVElPQ0xfR0VURkdDT05TT0xFDQo+ICtSZXR1cm5zIHRo
ZSBudW1iZXIgb2YgVlQgY3VycmVudGx5IGluIGZvcmVncm91bmQuDQo+ICsoU2luY2UgTGlu
dXggMi41LjM2LikNCj4gKy5UUA0KPiArLkJSIFRJT0NMSU5VWCAiLCAiIHN1YmNvZGUgPSBU
SU9DTF9TQ1JPTExDT05TT0xFDQo+ICtTY3JvbGwgdGhlIGZvcmVncm91bmQgVlQgYnkgdGhl
IHNwZWNpZmllZCBhbW91bnQgb2YNCj4gKy5JIGxpbmVzDQo+ICtkb3duLA0KPiArb3IgaGFs
ZiB0aGUgc2NyZWVuIGlmDQo+ICsuQlIgMCAuDQo+ICsuSSBsaW5lcw0KPiAraXMgKigoKGlu
dDMyX3QgKikmc3ViY29kZSkgKyAxKS4NCj4gKyhTaW5jZSBMaW51eCAyLjUuNjcuKQ0KPiAr
LlRQDQo+ICsuQlIgVElPQ0xJTlVYICIsICIgc3ViY29kZSA9IFRJT0NMX0JMQU5LU0NSRUVO
DQo+ICtCbGFuayB0aGUgZm9yZWdyb3VuZCBWVCwgaWdub3JpbmcgInBva2VzIiAodHlwaW5n
KToNCj4gK2NhbiBvbmx5IGJlIHVuYmxhbmtlZCBleHBsaWNpdGx5IChieSBzd2l0Y2hpbmcg
VlRzLCB0byB0ZXh0IG1vZGUsIGV0Yy4pLg0KPiArKFNpbmNlIExpbnV4IDIuNS43MS4pDQo+
ICsuVFANCj4gKy5CUiBUSU9DTElOVVggIiwgIiBzdWJjb2RlID0gVElPQ0xfQkxBTktFRFND
UkVFTg0KPiArUmV0dXJucyB0aGUgbnVtYmVyIG9mIFZUIGN1cnJlbnRseSBibGFua2VkLA0K
PiArLkIgMA0KPiAraWYgbm9uZS4NCj4gKyhTaW5jZSBMaW51eCAyLjUuNzEuKQ0KPiArLlRQ
DQo+ICsuQlIgVElPQ0xJTlVYICIsICIgc3ViY29kZSA9IDE2DQo+ICtOZXZlciB1c2VkLg0K
PiArLlRQDQo+ICsuQlIgVElPQ0xJTlVYICIsICIgc3ViY29kZSA9IFRJT0NMX0dFVEtNU0dS
RURJUkVDVA0KPiArUmV0dXJucyB0YXJnZXQgb2Yga2VybmVsIG1lc3NhZ2VzLg0KPiArKFNp
bmNlIExpbnV4IDIuNi4xNy4pDQo+ICAgLlNIIFJFVFVSTiBWQUxVRQ0KPiAtT24gc3VjY2Vz
cywgMCBpcyByZXR1cm5lZC4NCj4gK09uIHN1Y2Nlc3MsIDAgaXMgcmV0dXJuZWQgKGV4Y2Vw
dCB3aGVyZSBpbmRpY2F0ZWQpLg0KPiAgIE9uIGZhaWx1cmUsIFwtMSBpcyByZXR1cm5lZCwg
YW5kDQo+ICAgLkkgZXJybm8NCj4gICBpcyBzZXQgdG8gaW5kaWNhdGUgdGhlIGVycm9yLg0K
DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------EsNftkuqvchX4RSVRhhPerFK--

--------------4C8OctCOqXAs0H2bmJCpPYAP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMSVIsACgkQnowa+77/
2zJVJhAAknc70nbYM44+8R+O2W0O6wXnmpChgwDH8ll3rJzo7rSsU7p5uuyyMC7Z
e1nVODsR3hqqXp1b7xWlYNssBeLlkRFEIlpXSt1sAga38MUMxcCijG8ASRuCPFZf
+W9kgpze+3sBBYNH2hc3w+KO72RfdsFlvxvHzI70nutkH1I2eks+VEbtWgxdWHnL
CyBWRDLxqQXgvUY1E0dvY35bYphyCP2TxmOlpN2t8QZgPpgf0M9s93fP6WZyurDa
2vG2kCg9Rm/eK3VYuxqj8VmHNTkVoof6Dr+pvam4z1hOukY8DD5Xiic6KlgvbNk+
3THYM+C5x7jJAfzeBnvdMMKupDX5RG3d6DY//97FleWUF4eMMegbVoqCjsfikYVo
jIflWy1XigwEEVZnRHHyvNZ5QJlJwPMHElzYOg6MP4mUflsR6bFqsrtB7dfovkh5
JLhCzomMiUPvdycAk3tO2j/yg2BYAplkIVO6Sj2jwdLowybPoApeLby8Q8s1oQ7s
s8daEigIBY/lYf6/NkUfrXqHEyI6F3kwqC7tefHyu6UHaz+QLgh1T3tOvWdHt5La
/31GuVxr/CpL5emv9dbzAgr7gPPR1kKDm0fBp5QcY7IrGecIFLZZHl/WnVa9mfD2
NEjawagePLP4CyxuNxn9SSNGAqZL34JtEa5QAunpdq5kAJZ2pzo=
=zeV6
-----END PGP SIGNATURE-----

--------------4C8OctCOqXAs0H2bmJCpPYAP--
