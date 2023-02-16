Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5245369A215
	for <lists+linux-man@lfdr.de>; Fri, 17 Feb 2023 00:04:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbjBPXEj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Feb 2023 18:04:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjBPXEi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Feb 2023 18:04:38 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 805ED4CC96
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:04:37 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id s13-20020a05600c45cd00b003ddca7a2bcbso2979270wmo.3
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WYdX8gnsxLLe3gm00bhzUgogdNwdzsRzKT62YWpkTUo=;
        b=Go0K7LZhrb9RvqWcKskM2YeIHfABhdVFgPUPWyRKmgCk9wLJBVZ+vFYfVqgm1T7FWq
         3g4/SJM6HgTVEoqZj/svkY4QR3WiXYtmLr+npO/WzYA5PQ+5F9qb+gM1vyA/HXsf1jdB
         Qn1rdv1a22IwwFg0MlXujJD45dQkvOwCourav1tpql90BiS1TY7k0CP5I/R9t5hwHmtB
         Rbg388RDkmnvSNxDlx3feEYS1rEYeLY59yIpnlWxJGmeY2frwV4xWxAhjT8BO14VW5Q5
         12c9nnzse/2ZGnKzicNk+JYsdiOe6dHiP2INgR+Sn60PAhz7qIOZHKUU3iZAk+Pz7t+5
         vwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WYdX8gnsxLLe3gm00bhzUgogdNwdzsRzKT62YWpkTUo=;
        b=K7m4jnpwy1SlWKJh86qSok4I1haz3YAttVl7zvmohlhS7k+JX+ZXhBKptYt+GEO69C
         dpXaDJtEACpP21JyI1iPizpmAAdXxAXfc/zSFniz2WCCS8TrQtSaPVcOaihMmqQVJJcE
         OQptRMCVNnJN8dGFwGY+YL1Og0usOz8iYty1rUpo7ZAwnlMiNoKYPhVXAknUtYnja2uO
         JDyC6o1lz5JaKoRt/IShFndD2kcbIWLeVaxT64L+1Xsgdqig+bPE9XbLElVor0UjHXU9
         FjPfAQMEXJ1sDyoBTf1vH5l/mFVQCI+xv2UBB2vdWxStj5A5PUD03+Kt1b1pA5yQoqB0
         HoPw==
X-Gm-Message-State: AO0yUKV1IalADEFCq8e4+hRnbfYoiBdGQqPBVYXLf9t2ivDM46aZ+Tft
        PjeSgrEfrWV10SuOu+YKTfg=
X-Google-Smtp-Source: AK7set/gCYJyXAJAuz9bToL1yZJSMmXcFKqFrRcK7DCbQufWLqcpBTnjWTBbMcU/xK7H986KApBdwQ==
X-Received: by 2002:a05:600c:4486:b0:3dc:5a7c:f8ad with SMTP id e6-20020a05600c448600b003dc5a7cf8admr6715515wmo.21.1676588675889;
        Thu, 16 Feb 2023 15:04:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o3-20020a1c7503000000b003e20fa01a86sm3176344wmc.13.2023.02.16.15.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 15:04:35 -0800 (PST)
Message-ID: <94b4e2b2-1286-59e4-07b4-d5b8e25d4136@gmail.com>
Date:   Fri, 17 Feb 2023 00:04:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 3/6] man2/: add C digit separators to clarify POSIX
 feature release dates
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Brian Inglis <Brian.Inglis@shaw.ca>
Cc:     Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VCNztr2c8zeN2WcMv2ryBVFwwRFscZ6DEQAAHwMiGA4Vw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VCNztr2c8zeN2WcMv2ryBVFwwRFscZ6DEQAAHwMiGA4Vw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ChubNwhO0LJixWBLXxZNbesC"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ChubNwhO0LJixWBLXxZNbesC
Content-Type: multipart/mixed; boundary="------------PXF2rFqmGKSczZ0GzGo7apjD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>, Brian Inglis <Brian.Inglis@shaw.ca>
Cc: Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <94b4e2b2-1286-59e4-07b4-d5b8e25d4136@gmail.com>
Subject: Re: [PATCH v3 3/6] man2/: add C digit separators to clarify POSIX
 feature release dates
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VCNztr2c8zeN2WcMv2ryBVFwwRFscZ6DEQAAHwMiGA4Vw@mail.gmail.com>
In-Reply-To: <CACKs7VCNztr2c8zeN2WcMv2ryBVFwwRFscZ6DEQAAHwMiGA4Vw@mail.gmail.com>

--------------PXF2rFqmGKSczZ0GzGo7apjD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On 2/16/23 22:11, Stefan Puiu wrote:
> Hi Brian,

[...]

>> diff --git a/man2/access.2 b/man2/access.2
>> index d3deeecba0c7..4c93a132b209 100644
>> --- a/man2/access.2
>> +++ b/man2/access.2
>> @@ -56,7 +56,7 @@ Feature Test Macro Requirements for glibc (see
>>  .BR faccessat ():
>>  .nf
>>      Since glibc 2.10:
>> -        _POSIX_C_SOURCE >=3D 200809L
>> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>=20
> Not sure how \[aq] renders,

\[aq] is equivalent to \(aq, which renders as ', the single quote charact=
er.

> but if people want to copy / paste some of
> these snippets (for use in their code, or for searching), wouldn't
> they need to then remove the separator?

It depends on your compiler version and language version.
ISO C23 will add support for this.  What we could do is prepare the patch=
es,
and leave them in a branch until C23 is made official.

Right now, you can already get recent enough versions of GCC to
accept that code, if you use -std=3Dc2x.

> I think that can cause
> confusion, which you probably don't want documentation to do.>=20
> Again, just my 2 cents,
> Stefan.
>=20

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------PXF2rFqmGKSczZ0GzGo7apjD--

--------------ChubNwhO0LJixWBLXxZNbesC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPutoIACgkQnowa+77/
2zKwIBAAqdh4yoc7m+AeTWF9sDHmxx/FQZ+l+lDN/3ZoKsIYHuiOqq8RvJX3e64p
LIw+DpNwyhzf8oNn92UefCDAnZXzpcPCGvperddM+iSPgzzDjhfBFUkw6KesLFlS
WvPS+wtsX7T5RU6B/4BLMNEeu2EV31remmTa4SW+4PNW0yUO2ZvxG8AnFB30k0xE
5jYLSIT/6HRG/nURqt66OmiN+N3j3fyF4bIbz8uQ7tTdyj2FReqyDOVLrKbUcCXk
lhhnVhV4ThiIFffg0d0H7WsSMNhw9r+uRPK+wvH9cBDVsGnYlKbBcrDJ3yV1Gq3A
fE3kOTrPgRO0Aeegl3pZPrApWl2sKMjP4t9Mf/U1D1Mhyqtth2cu9aTjYL+UaNrN
5ADER0cnT0qjL9Tbnjn4ZWV7bDykiXlBgs++/eczV46rakiVCVnXFLKxsWqLbSPU
VJIEGEvHjoLLPZFsSXf/gQ7mX68OZNj6KST6NpPr+5aUzEgzHNzoViojBJ4lHnpp
P+p4TkiWhQCm2bgKRKoP61JvGEyTodo78FA0bhAZ8tVSMUwFeusgHLMaqLnJkd1z
7Y6WqyhvYoYT99cd88ejfSzOvFkX7A4O5tWVXG/2qi2IZR+GsKPeXRpont1fnXY4
GEF/oGMpbZVeXk1ajWkQb9HXMUt3egVPDsh+RtAuGHWJ4ldWD40=
=ySGB
-----END PGP SIGNATURE-----

--------------ChubNwhO0LJixWBLXxZNbesC--
