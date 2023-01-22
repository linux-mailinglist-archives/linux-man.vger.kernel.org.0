Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89F9A6772A7
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjAVV0y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:26:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229971AbjAVV0x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:26:53 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1A661350B
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:26:52 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id j17so7714669wms.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WvYrOJiJjix58V3ZVDnlLqLn0Pysw1Y97CRaX2MzOYg=;
        b=D762rgwE7rlZzv3hGcOFOXlstkxdGxXb5mGbeLoemQlACd135avJyDJA2nl9JPm+TG
         o2g3DQNbqsgGXeE9elO15hacf6HqLxixAbSag5AuXL4C02T/zPQ76YYoyOHqb3cTqewu
         ImzOrHQCrCQlKQ4jSCngvhvqJ7RSjYNLD7SCFdw/QSPz4J2zHL9aPqa0O3HWXR+WjpDj
         I3Aks0BwAaR+hq/nzHFU6TdVllU/kkCQ/HpW+QtRveq+f95+MKSTfLpE2gvcq20PrUnT
         vbpYns4R93h2q7b+pPAcKBhWJsJrAZjh3Jb0ik4G9ThPQhSytZZFZoYlFzG+gomOl7FC
         o5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WvYrOJiJjix58V3ZVDnlLqLn0Pysw1Y97CRaX2MzOYg=;
        b=h0hO/KMimgrdBBadugUEXy1VjCJInMAduOaRZjNZY3/zuXClnhkUunfo6n+dX5DuDn
         2O7QnfgpbF9+NXTm/X8tv0ydlCUAsgvJnSc46gd+eOeJ3CnqZNC7eNbOJcSbXREJoZ9s
         cYV7EPgscOiVANUQJzvLlMu1g4KerGM0j0IfVOC+LLwshHFncD7ymlkfFC3Xig49GvVf
         1ASpMHOOtT0gnpns/2fAGqFcIyJjVjcOLx7O4JXkzhUYijJ5sykPgEw+GnXeZgppsVOK
         LsCq9YLJ0CnVi3Cymfl8JijVA1QIdMdTlcIJof5L5EObv7pTefx42P0/2jLToJgCqDK1
         V3pw==
X-Gm-Message-State: AFqh2kooBj2V0990/xctkoNLwbiYcZeUTbEj3dIDXdRw3/JC7doL/Bg+
        RyjewmZwwWUecVzXLcAnV+g=
X-Google-Smtp-Source: AMrXdXs/MypD7Grxlqcwng1aLVUdDzf7f3F/pqXPM0UIlQdgQ79TIVLvjqISKAUpZn6T1ECaS5AhZA==
X-Received: by 2002:a05:600c:2d08:b0:3cf:7dc1:f424 with SMTP id x8-20020a05600c2d0800b003cf7dc1f424mr21230094wmf.3.1674422811280;
        Sun, 22 Jan 2023 13:26:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 21-20020a05600c26d500b003d9b87296a9sm8432479wmv.25.2023.01.22.13.26.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:26:50 -0800 (PST)
Message-ID: <94c5a37a-ad26-ee2f-f5af-1d34a1e90f04@gmail.com>
Date:   Sun, 22 Jan 2023 22:26:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page getpid.2.po
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193134.GA29411@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193134.GA29411@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TfFrsEWwLKoLuoAGIj0RUdBh"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------TfFrsEWwLKoLuoAGIj0RUdBh
Content-Type: multipart/mixed; boundary="------------Zz031UJStEzPvZzhQrraUqT0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <94c5a37a-ad26-ee2f-f5af-1d34a1e90f04@gmail.com>
Subject: Re: Issue in man page getpid.2.po
References: <20230122193134.GA29411@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193134.GA29411@Debian-50-lenny-64-minimal>

--------------Zz031UJStEzPvZzhQrraUqT0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIExpbnV4IDIuMjQg4oaSIEdsaWJjIDIuMjQNCg0KRml4ZWQuDQoNClRo
YW5rcywNCg0KQWxleA0KDQo+IA0KPiAiRnJvbSBnbGliYyAyLjMuNCB1cCB0byBhbmQgaW5j
bHVkaW5nIExpbnV4IDIuMjQsIHRoZSBnbGliYyB3cmFwcGVyIGZ1bmN0aW9uIg0KPiAiZm9y
IEI8Z2V0cGlkPigpICBjYWNoZWQgUElEcywgd2l0aCB0aGUgZ29hbCBvZiBhdm9pZGluZyBh
ZGRpdGlvbmFsIHN5c3RlbSINCj4gImNhbGxzIHdoZW4gYSBwcm9jZXNzIGNhbGxzIEI8Z2V0
cGlkPigpICByZXBlYXRlZGx5LiAgTm9ybWFsbHkgdGhpcyBjYWNoaW5nIg0KPiAid2FzIGlu
dmlzaWJsZSwgYnV0IGl0cyBjb3JyZWN0IG9wZXJhdGlvbiByZWxpZWQgb24gc3VwcG9ydCBp
biB0aGUgd3JhcHBlciINCj4gImZ1bmN0aW9ucyBmb3IgQjxmb3JrPigyKSwgQjx2Zm9yaz4o
MiksIGFuZCBCPGNsb25lPigyKTogaWYgYW4gYXBwbGljYXRpb24iDQo+ICJieXBhc3NlZCB0
aGUgZ2xpYmMgd3JhcHBlcnMgZm9yIHRoZXNlIHN5c3RlbSBjYWxscyBieSB1c2luZyBCPHN5
c2NhbGw+KDIpLCINCj4gInRoZW4gYSBjYWxsIHRvIEI8Z2V0cGlkPigpICBpbiB0aGUgY2hp
bGQgd291bGQgcmV0dXJuIHRoZSB3cm9uZyB2YWx1ZSAodG8gYmUiDQo+ICJwcmVjaXNlOiBp
dCB3b3VsZCByZXR1cm4gdGhlIFBJRCBvZiB0aGUgcGFyZW50IHByb2Nlc3MpLiAgSW4gYWRk
aXRpb24sIHRoZXJlIg0KPiAid2VyZSBjYXNlcyB3aGVyZSBCPGdldHBpZD4oKSAgY291bGQg
cmV0dXJuIHRoZSB3cm9uZyB2YWx1ZSBldmVuIHdoZW4iDQo+ICJpbnZva2luZyBCPGNsb25l
PigyKSAgdmlhIHRoZSBnbGliYyB3cmFwcGVyIGZ1bmN0aW9uLiAgKEZvciBhIGRpc2N1c3Np
b24gb2YiDQo+ICJvbmUgc3VjaCBjYXNlLCBzZWUgQlVHUyBpbiBCPGNsb25lPigyKS4pICBG
dXJ0aGVybW9yZSwgdGhlIGNvbXBsZXhpdHkgb2YgdGhlIg0KPiAiY2FjaGluZyBjb2RlIGhh
ZCBiZWVuIHRoZSBzb3VyY2Ugb2YgYSBmZXcgYnVncyB3aXRoaW4gZ2xpYmMgb3ZlciB0aGUg
eWVhcnMuIg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------Zz031UJStEzPvZzhQrraUqT0--

--------------TfFrsEWwLKoLuoAGIj0RUdBh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNqhkACgkQnowa+77/
2zLwExAAm3c3wKxmkIQUHh9pxK8Sv+POAW3NzB9i0NMEBhJ3a3xyXz9kqhDqePFG
+RFxxkT1Xmu0E7cbEdhT0oW7USXUJOasdubj0eR3eNGOslg+N2bDxMt9Y5MywyV+
YC2OiDhLBdSupnauWuAlbMlyPwrucXP79/HPu3AH+kBx90BnFM+Bo+KjjEe+mJDN
XCSG00lqzxPdxx4ghgTNx9w7I4PoeDeZy4icAtTt58Q7Hqh8OH3VUNZ8xnFRHR5/
czLV+AGNUl6XuqWGr5I9LObhLO4a//Ti+PB/j8Tb0QKEvZ9mHw9achUY9LMM5qAW
L55awRDrMMftUro4HHOEMxTIhmtcco2ZTs4JvkbfIebdNwcXYYuSUoKEBMBPUjL9
OaK6lqvrt1+oOAhQ8OwO7AFustCxrp1iaurNb5qyqX5771nAZHi0v9PYMZyVfu9u
/qqgGrSelEdpV6D2/+BDGt/5aBlITvMwJ0qvZ8vSxniPGob9WOkbAFLSi1Zz28PY
xM2SBfaGExmCBFYBVlYR+BLKP02NC67Ani4cQEp0RAkPiYs7ReSyErru5K5MGl9m
hc8Z6VVPP8Hd3THySQvAXu2YXb1+bcUwzKSM/fzCmqy1ZP1FHPVMqn2C67S5JSWY
MB4hWt++8tKLSNTE37W054W9vuCHI1ZAp6atoDJ8poHlY+jEczs=
=jOA6
-----END PGP SIGNATURE-----

--------------TfFrsEWwLKoLuoAGIj0RUdBh--
