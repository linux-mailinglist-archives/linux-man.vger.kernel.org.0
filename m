Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00EC9641CBC
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:44:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbiLDLoY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiLDLoY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:44:24 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0194C16590
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:44:22 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so9825417wma.1
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hy7ThnfZq2TXhnx+mIflRP65kJD/IrL0Ht1GX/6Zgs8=;
        b=PyxxuqQbi9Yim8amTw+uPRtn3hLQJbiKbKe7E3yqbQXFQV35U2JO1Ds7gaor3+QanD
         qtqSEbdTZiRXs65zogmhlkGUhg7/yNI/btwEIxgT8cZSF6h1/AZiweRowbgiGM4nes7g
         iEN9nn1PW+pUKK8tTwZRFewbkYdX5HX2YI5AbMblO6eElOE8suJpFYTgScL3tB7NIize
         vHN5sOQ0YKTAZ6gLtSKulzOb9LrDIMti1mezPBWra1TRprCZ//4SEScNgxhspwlQwoRX
         NTunujNTPs8sdkCdSazzIAjpZtGqY7rx5iKWEZoL5WnAF4KlFQOQ2S26a3EHhxnf3sxk
         +maA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hy7ThnfZq2TXhnx+mIflRP65kJD/IrL0Ht1GX/6Zgs8=;
        b=CnADg5nxd2RDspxGLcYf3uQHEker8Hzc9PaNXRCHkusrsUnzjxpY9xvxlQ7TdfTTaq
         4EG7s3fM8yEME0Qp11M0zNjK+fGICxFm9jO+GcgWe+NUJK6kW03l3+CNdxXg8lkLfNEo
         l2+2tj7KAHXsZ6yaVdttf9zGRPYch/eJTTj0sHZQG/PMvwJeY5dq9N26eXb075/t1Tzv
         IhvEdE74dBCtujlnQW48bsEPo5Dfhu0p6SIauETV8IUR7WVoTW6/jI9zj1pldBOVQy2/
         uR6sUK7sTw8OES0WgmgK7pp1xvcRbvyjzmb7DpkRSslbxDbQfPIDzvE5gTzvViOjAHWe
         covw==
X-Gm-Message-State: ANoB5pkFNffSx/+X0fVme4GAuX7HwOm4XNYSy99ts5Z/gpS4aH2xSwA2
        NI5Ntcpb8iHyCO2kvDNMLvI=
X-Google-Smtp-Source: AA0mqf79pnukNEkiL9fFpi85gZ9bzVsNn1axyYhJMxfLVkq0QtZzRfcqvfQ7oz0kuiqIINmf3vMMmg==
X-Received: by 2002:a05:600c:1d23:b0:3d0:8193:c1c with SMTP id l35-20020a05600c1d2300b003d081930c1cmr9019737wms.143.1670154261535;
        Sun, 04 Dec 2022 03:44:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y15-20020a5d4acf000000b00241e5b917d0sm13951648wrs.36.2022.12.04.03.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:44:21 -0800 (PST)
Message-ID: <479fe2d4-a841-1446-dd9b-edc5e4c917c2@gmail.com>
Date:   Sun, 4 Dec 2022 12:44:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page iswctype.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090709.GA32688@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090709.GA32688@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mI409SMbz6RWrLssYPpyWczA"
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
--------------mI409SMbz6RWrLssYPpyWczA
Content-Type: multipart/mixed; boundary="------------xGAfp4ikg9fhZ8i7tLJrgMG0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <479fe2d4-a841-1446-dd9b-edc5e4c917c2@gmail.com>
Subject: Re: Issue in man page iswctype.3
References: <20221204090709.GA32688@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090709.GA32688@Debian-50-lenny-64-minimal>

--------------xGAfp4ikg9fhZ8i7tLJrgMG0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHRoZSBCPGlzd2N0eXBlPigpIOKGkiB0aGVuIHRoZSBCPGlzd2N0eXBlPigpDQo+IA0K
PiAiSWYgSTx3Yz4gaXMgYSB3aWRlIGNoYXJhY3RlciBoYXZpbmcgdGhlIGNoYXJhY3RlciBw
cm9wZXJ0eSBkZXNpZ25hdGVkIGJ5Ig0KPiAiSTxkZXNjPiAob3IgaW4gb3RoZXIgd29yZHM6
IGJlbG9uZ3MgdG8gdGhlIGNoYXJhY3RlciBjbGFzcyBkZXNpZ25hdGVkIGJ5Ig0KPiAiSTxk
ZXNjPiksIHRoZSBCPGlzd2N0eXBlPigpICBmdW5jdGlvbiByZXR1cm5zIG5vbnplcm8uICBP
dGhlcndpc2UsIGl0Ig0KPiAicmV0dXJucyB6ZXJvLiAgSWYgSTx3Yz4gaXMgQjxXRU9GPiwg
emVybyBpcyByZXR1cm5lZC4iDQoNCkZpeGVkLiAgVGhhbmtzLg0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------xGAfp4ikg9fhZ8i7tLJrgMG0--

--------------mI409SMbz6RWrLssYPpyWczA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMiBMACgkQnowa+77/
2zIMvxAAohP2by0NuJhNwe71eVZhcM/FGXFMXzXOdootiICCMkJUY2BvrMgefads
msUcsKSUaAoK2VXSAfOJBmUl9yD+kKj4EX1nqLS8+0Uo6cb/EUUshW6a9iXvV0MC
tYXWo96WLvf+7c5Gnafx2P2BeHjA0slVgofjlbxDfNio8u9bNR/SwIoebqxYqe5l
1bp1DeZM/na38lEKyGfnZ9C6YoJeoGlRq8g6BKAJBhOg8zkSeJgpdEiheOSh+LtT
TueZfm7F6NU3fFTa2/M5NnyH1dZJ9t+2bF7g2lv0OS08fH7jyBbNAaRpUYz0FgCZ
OtnEAB3guqE+UYUcq7nnD8LoKQH1rOLTeD5yAKggJVZOOz5Gf8K1e1otyBsJbuBE
7mp6RhgDEYhQMSz+5HcW2DDLKmnLPhiMs30QzzjmAPHflIB3UuK9KrAdlF4s0Y1t
7UP4tQbrYhHd1Ny+DAP/mvIf77qCvNiTh59eFJ4P0EvKHlCNEafm0jYUwQD6KU6Z
lbeNkmwAx2aDudWAcRjXGNZQGNOClAjM4cZqgesMkIkcxu0/sRingZnUi3P3hR9z
bPVkDhUTkRpvaI4oeCOEg2ZBokxzhatM8L3bOVMmkq9R+vASDXJdu4iA1FMJYEFK
l0X1t4Qxb+YhXNOThYMLYXHADxJq0Q8bhJKwdLOgbsqOcnEGyn4=
=ssDN
-----END PGP SIGNATURE-----

--------------mI409SMbz6RWrLssYPpyWczA--
