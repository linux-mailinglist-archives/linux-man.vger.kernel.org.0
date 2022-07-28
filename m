Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5232584881
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 01:01:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230357AbiG1XBF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jul 2022 19:01:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230029AbiG1XBE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jul 2022 19:01:04 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD00A3137C
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 16:01:01 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id h8so4032823wrw.1
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 16:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=aH2xQqfLZzPREverUuQC+A94ursVhyDJoI+X2UDcuuc=;
        b=RZJ40YbJvKwAzoBXE+jI8p2uFpMVGcYzxQ44538QhOP1BxS2k4bw+hG6QWrCu0vz2+
         uPbhzOd+6KsoHyqPi3QBVz092vgKBZSbBmGfttLWI8kXNGZKrm/tItX7mNfzBusuOweh
         RKuvoXFmX9kGxAnwLyjSqRQKXduRJ7C7sAprZJu0z85LCrZnOjnuElCVu5e0nPu8GR7/
         yxeg9iak7SoDK6mnuJ2da8BwVasIPTqui0QPQuBjsF+8hpFLkn94OrxFcIRlxYcPpVXJ
         9F4rBpqeunf4gA088ryyzh50IfI+eumpXELbHLasTq4E1dBmbWTMxgMf0LUIXruJlwgp
         sf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=aH2xQqfLZzPREverUuQC+A94ursVhyDJoI+X2UDcuuc=;
        b=p3UEnpyR4utXbNoy3hK1d0M188V0Pa6lSB4A5cwv42IVn0BIq7WRmr4Dz7bjOKwnqR
         SAhPb7opAvNaIbragwQzFpobQwuLIiHl4wASU692DUVOx2P8ZBeRGoi/MLI0TKbQMaJd
         9XzTvj91YAit4+QkvQP0ISknJ7Ez0bXwgs65trLMEUZwrWY2V6v1r1578UdT76sTil7X
         p0/UFh4IJGf3dQP1L7UIw92WD3OGSadbf+QuMVS9uAkPmiciWZupF32MHLJMu+XAnXPs
         9XdfT3SNZBsQ8sloXg7dWJwrG5Z3ufw4RBJ1fTIWBIktrhDrUkv0gkCIlObKLDp2j991
         kVDg==
X-Gm-Message-State: ACgBeo2A2b00fmP+xn/szcMcMnnOPEfmR3uJWJXkIJknZ3d9piQc7/B2
        gCDrTgtPaoCZe6mIv6R/N4ukgkwmYMA=
X-Google-Smtp-Source: AA6agR4EqIaEtkXOjd1i8lGcQWX+9zZRqrZNtCq918ae6IycA7B4d7+nOhC0DJJibGxNLIjzcynyEw==
X-Received: by 2002:adf:ed41:0:b0:210:20a5:26c2 with SMTP id u1-20020adfed41000000b0021020a526c2mr591909wro.603.1659049260193;
        Thu, 28 Jul 2022 16:01:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f13-20020adfe90d000000b0021f0c0c62d1sm1383252wrm.13.2022.07.28.16.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 16:00:59 -0700 (PDT)
Message-ID: <2588df2a-ff7c-7fe6-716e-7bbb4a736849@gmail.com>
Date:   Fri, 29 Jul 2022 01:00:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] getsid.2: deduplicate getsid(0) case
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220728175751.3as2p7zj3sevrq6u@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220728175751.3as2p7zj3sevrq6u@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GRhZdrEDlaxAwo3rbpvYgcCc"
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
--------------GRhZdrEDlaxAwo3rbpvYgcCc
Content-Type: multipart/mixed; boundary="------------AkBTM183Xv3MiCqe3rE1nHo0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <2588df2a-ff7c-7fe6-716e-7bbb4a736849@gmail.com>
Subject: Re: [PATCH] getsid.2: deduplicate getsid(0) case
References: <20220728175751.3as2p7zj3sevrq6u@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220728175751.3as2p7zj3sevrq6u@tarta.nabijaczleweli.xyz>

--------------AkBTM183Xv3MiCqe3rE1nHo0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA3LzI4LzIyIDE5OjU3LCDQvdCw0LEgd3JvdGU6DQo+IFRoZSBm
aXJzdCBzZW50ZW5jZSBpbg0KPiAgICBnZXRzaWQoMCkgcmV0dXJucyB0aGUgc2Vzc2lvbiBJ
RCBvZiB0aGUgY2FsbGluZyBwcm9jZXNzLg0KPiAgICBnZXRzaWQoKSByZXR1cm5zIHRoZSBz
ZXNzaW9uIElEIG9mIHRoZSBwcm9jZXNzIHdpdGggcHJvY2VzcyBJRCBwaWQuDQo+ICAgIElm
IHBpZCBpcyAwLCBnZXRzaWQoKSByZXR1cm5zIHRoZSBzZXNzaW9uIElEIG9mIHRoZSBjYWxs
aW5nIHByb2Nlc3MuDQo+IGJsYW1lcyB0byBiZWdpbm5pbmcgb2YgZ2l0LCBkdXBsaWNhdGVz
IHRoZSB0aGlyZCBvbmUsDQo+IGFuZCBkb2Vzbid0IHN0eWxpc3RpY2FsbHkgbWF0Y2ggY3Vy
cmVudCBmb3JtYXR0aW5nDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHF
hHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KDQpQYXRjaCBhcHBs
aWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4yL2dldHNpZC4yIHwg
MiAtLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL21hbjIvZ2V0c2lkLjIgYi9tYW4yL2dldHNpZC4yDQo+IGluZGV4IDcwNDZiZmMw
OS4uYTgwYWExMjhlIDEwMDY0NA0KPiAtLS0gYS9tYW4yL2dldHNpZC4yDQo+ICsrKyBiL21h
bjIvZ2V0c2lkLjINCj4gQEAgLTMwLDggKzMwLDYgQEAgRmVhdHVyZSBUZXN0IE1hY3JvIFJl
cXVpcmVtZW50cyBmb3IgZ2xpYmMgKHNlZQ0KPiAgICAgICAgICAgfHwgLyogU2luY2UgZ2xp
YmMgMi4xMjogKi8gX1BPU0lYX0NfU09VUkNFID49IDIwMDgwOUwNCj4gICAuZmkNCj4gICAu
U0ggREVTQ1JJUFRJT04NCj4gLS5JIGdldHNpZCgwKQ0KPiAtcmV0dXJucyB0aGUgc2Vzc2lv
biBJRCBvZiB0aGUgY2FsbGluZyBwcm9jZXNzLg0KPiAgIC5CUiBnZXRzaWQgKCkNCj4gICBy
ZXR1cm5zIHRoZSBzZXNzaW9uIElEIG9mIHRoZSBwcm9jZXNzIHdpdGggcHJvY2VzcyBJRA0K
PiAgIC5JUiBwaWQgLg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------AkBTM183Xv3MiCqe3rE1nHo0--

--------------GRhZdrEDlaxAwo3rbpvYgcCc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLjFSoACgkQnowa+77/
2zIHqBAAjV73ekrNx6x9Uojpx8MV4Ls8FAiMrzlaAkLA7wzae+mr6A7H6uQA3ck9
rsjyv2EVjJ6PKeURC0QOtvxtAvQq8SL66vKytPoABBMiEXCt81jGfb2xGMmDkyIp
1vK3IeM4An5hOB6rPWRCG5UZOKTv4/A+jLdV9yJWiHTRg70LVs+mLB+JVXu1OgmP
I0WY6N67baKVP/j7zln3UmjSYfD7XyCFhqPQPyki5pFqeusOlRzO7WBJJYrg6O3l
+p3vxsMV1TEvOhTxJcEc2WuPisLtwDf9eUzUohDvDsO8l5gXqmtrZFEGTvZHPzHL
zdm395CDr81PqYiVoOYW+AEc6AHCTMfpHyiwNduuw+3yUUnA2RmW6/JJo+F3xgGF
wGhBweGHedCc6OSXGPdG9ZH74sWE3dG1pMcSCwU2aQYq0Em9S1rbDp1FhuwvpbXB
ziZddmNI6ecD7fAgvIwNTLmrj9EzXzpCzi/uuatk55fyxItsQIKdfepU8oR5kl9l
HY2R4ZjE4sXvpOf9BpOMJMUjFhIXyyONn0NxX2vg42QqCfGaNN/pmnfZL7jpqo4p
0MKqHf+f3djvHhhkTrOe8MZsOo+n87g2bI5miEGruDJDmH55nHj2GIIuUVRPv1HL
Ne/k5P893pDV+n+g0TgvGge191cdPMCH78R9xnSXvGeOYQio9z4=
=BQL4
-----END PGP SIGNATURE-----

--------------GRhZdrEDlaxAwo3rbpvYgcCc--
