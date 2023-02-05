Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 658EC68B09B
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 16:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjBEPbo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 10:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBEPbo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 10:31:44 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D0E4C19
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 07:31:40 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id k16so7052026wms.2
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 07:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGMrwu2YkgIV4B1YfltCCrI8SO3BTRG+AaDX7hB0aZA=;
        b=Xu6IEQD/LyqAvcPU4AF4F+Flm4+Glg3lRxkygqhS9yrbM87zaqmCt7xTzVxHlucRra
         dH4Q3byO5HHmNLGl5LnftRXtP5in/4me96qegMws/4XydKJKAtsybaL6LU8tj9n/Asf1
         zeVpEYSFZO4/XYSqKYOMLdIGE8CLYDkf+xWiQIRDwQgW6tvhAPFojSzY++Te70gulqfc
         bMeIXv/6qCznDX/algQioeoQk9lUEpSEAEz2uO8z4SYy19aotHJU8aL0WwqQL7+ueWqN
         Gf0cej4kKRtfutWs92eQMewsCrs7eUe8sw/aWGeLkwfx9jHOawPTPjFpfZxeLb49JlfF
         MUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IGMrwu2YkgIV4B1YfltCCrI8SO3BTRG+AaDX7hB0aZA=;
        b=uep+SHor0D/HjkQ0QpRrc07CdVhvtHJJDFKtUQ35g/ymZrpLtZ9YhGMc63fqdiWqnN
         uG/BRiic9GmEdz96mpn09kuwQXnibpHz/IK9U297cF0NA9oekD6fo6fuRJuwNPFKHnLv
         9jWyuc4EfuLLIvv1oeR5I4rOrQpGeD7iK0OlxxOvSy5Zitlgaj3bkM/5dfFAmmPGxnud
         zhK5ZxQKRECT+gNLmRULOPXOkwRwLOdFjZjRS0Rzf3uF5wqCYHTINzV8T9AY7b5TBOd2
         oZFh9e581Jt9Uni9LL7+ldyOtbUrTtXcuc5KNvq8E3JpW13I21FftXpHE2WY8IQLG6cv
         ocoQ==
X-Gm-Message-State: AO0yUKVfme6p0axnlepd75oklLxZkBKOGZTQ5A85VYZa4fJkvRHKg57R
        8CPNjbpvQUC/F6SBgKKo24+KTUsnFt0=
X-Google-Smtp-Source: AK7set+fzY13cy1pz+whDh/65vlbUQy9LZBpIDVs55LuvSYarjRDMwYvNxypzh0QDWeF3r59/oVhaw==
X-Received: by 2002:a05:600c:3ca7:b0:3e0:114:62ee with SMTP id bg39-20020a05600c3ca700b003e0011462eemr654612wmb.8.1675611099256;
        Sun, 05 Feb 2023 07:31:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m40-20020a05600c3b2800b003dcc82ce53fsm8959306wms.38.2023.02.05.07.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 07:31:38 -0800 (PST)
Message-ID: <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
Date:   Sun, 5 Feb 2023 16:31:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
        glibc <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>
References: <20230205152835.17413-1-alx@kernel.org>
In-Reply-To: <20230205152835.17413-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7cjGLfIwcQMEnufDU3qA6Tvt"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7cjGLfIwcQMEnufDU3qA6Tvt
Content-Type: multipart/mixed; boundary="------------OSDbGCgnRQCHRTiAb0YVSEOx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
 glibc <libc-alpha@sourceware.org>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Stefan Puiu <stefan.puiu@gmail.com>,
 Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
 Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>,
 Eric Blake <eblake@redhat.com>
Message-ID: <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
References: <20230205152835.17413-1-alx@kernel.org>
In-Reply-To: <20230205152835.17413-1-alx@kernel.org>

--------------OSDbGCgnRQCHRTiAb0YVSEOx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Rm9ybWF0dGVkIHZlcnNpb246DQoNCkJVR1MNCiAgICAgICAgc29ja2FkZHJfc3RvcmFnZSB3
YXMgZGVzaWduZWQgYmFjayB3aGVuIHN0cmljdCBhbGlhc2luZyB3YXNu4oCZdCBhICBwcm9i
4oCQDQogICAgICAgIGxlbS4gIEJhY2sgdGhlbiwgb25lIHdvdWxkIGRlZmluZSBhIHZhcmlh
YmxlIG9mIHRoYXQgdHlwZSwgYW5kIHRoZW4gYWPigJANCiAgICAgICAgY2VzcyBpdCBhcyBh
bnkgb2YgdGhlIG90aGVyIHNvY2thZGRyXyogdHlwZXMsIGRlcGVuZGluZyBvbiB0aGUgdmFs
dWUgb2YNCiAgICAgICAgdGhlICBmaXJzdCAgbWVtYmVyLiAgIFRoaXMgaXMgVW5kZWZpbmVk
IEJlaGF2aW9yLiAgSG93ZXZlciwgdGhlcmUgaXMgbm8NCiAgICAgICAgd2F5IHRvIHVzZSB0
aGVzZSBBUElzIHdpdGhvdXQgaW52b2tpbmcgVW5lZGZpbmVkICBCZWhhdmlvciwgIGVpdGhl
ciAgaW4NCiAgICAgICAgdGhlICB1c2VyICBwcm9ncmFtICBvciAgaW4gbGliYywgc28gaXQg
aXMgc3RpbGwgcmVjb21tZW5kZWQgdG8gdXNlIHRoaXMNCiAgICAgICAgbWV0aG9kLiAgVGhl
IG9ubHkgY29ycmVjdCB3YXkgdG8gdXNlICBkaWZmZXJlbnQgIHR5cGVzICBpbiAgYW4gIEFQ
SSAgaXMNCiAgICAgICAgdGhyb3VnaCAgYSAgdW5pb24uICAgSG93ZXZlciwgdGhhdCB1bmlv
biBtdXN0IGJlIGltcGxlbWVudGVkIGluIHRoZSBsaeKAkA0KICAgICAgICBicmFyeSwgc2lu
Y2UgdGhlIHR5cGUgbXVzdCBiZSBzaGFyZWQgYmV0d2VlbiB0aGUgbGlicmFyeSBhbmQgdXNl
ciBjb2RlLA0KICAgICAgICBzbyBsaWJjIHNob3VsZCBiZSBmaXhlZCBieSBpbXBsZW1lbnRp
bmcgc29ja2FkZHJfc3RvcmFnZSBhcyBhIHVuaW9uLg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50OiBBOTM0ODU5NENFMzEy
ODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQo=

--------------OSDbGCgnRQCHRTiAb0YVSEOx--

--------------7cjGLfIwcQMEnufDU3qA6Tvt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfy9IACgkQnowa+77/
2zLCUBAAi6GAB0CT/zewfw3TPuzLAmWVJ8stR3yoC8WsvuLDC764nGBX8YbQd//l
y8BmpcDZLE5R4EKkSiD7S9szSUUEPr5Zknyxa/DPH62obvirNazv0D8AxuUFQ497
YYIbsnL5om0Oyku66pgtINejT6DIcUx4JLnOomxEW6mZZ/87F54lBFIY6I37E7Lg
msmMVtAlGNjrvdfy8em8vkzNbWv33ZKXf/N8JwIAaDNh1/eBH+3RPMT9xMb1w2OZ
fojHxf77C62h+TYOV36dsZtewKHzdnxQWmHceNGkBgmRZjRqs1CaW1uFUXQpBX8j
ExgeMO2JAyDyWzn4CTE6sVUiGfMwgN1ALJtmEOMsJ6EwzMXselCMnyD3D+98T7cW
afuhfG9Q/azB8Lqux22cPr2Gus5MizZW735DguDIxmWA3KV4LAxw1ODyNIit8EUa
IYIdTjv17rXgTYHp5U/XyBUNoialRnmFH0CKt4utzb00i+fVbP3R+V5y1RNGOPVr
psOXqNxPVNP1mSoqhbNmF/5TjxNwIL1Gwgt3xvuIaSeXlIlPk0/JMCWZzJcW2sbg
X4FMUoE7+W6wNVpoFb/6wwbY42yqEDQTb8IaCtVPZvLtaDrefuMT5D/YDowORGR1
R3gT4HT0WuiwZQC1NFWh5/dBvA9SVHi+pYA1XVeo+69PpPBeBq4=
=2WcG
-----END PGP SIGNATURE-----

--------------7cjGLfIwcQMEnufDU3qA6Tvt--
