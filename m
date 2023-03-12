Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B9036B6574
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 12:29:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbjCLL3y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 07:29:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230350AbjCLL3V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 07:29:21 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7279366A0
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 04:28:46 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id r18so8879295wrx.1
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 04:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678620506;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kL7ytlOt4OClfiUBvwr3qJFdZpF3iQ5IGQadu3NOT6A=;
        b=D3mpP8mUyjPNO2XP66exk0UIsFwPmdSQoW1+NlDyD0Xo6DBsqJJ1gbPFP0aCx2EACZ
         w1kLGb7tNk6/B3y80tQWBPxYnDMIwJ66HHPumJlHA0UV+7xTXdzdVYAVLdVZSpQQlJf5
         zBzcAMS8igBEjti+BUrGVwFg3+Bfa4ns3v+KFCXxWus4L8Rhb55xZzooWkdPO3g718eA
         n9qWY3Lv0J95siIFvpkFrTjovcltRvGVU/ss+dXV9LcsKC4Ro5hVF4cuMyT3ftVgftXM
         EKHgpF2P7qX0jHpol64fPZNHt6OX/6myzJGfhD60AEwsf0wsmXPXSZi0AjwF6pL6ascv
         ndUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678620506;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kL7ytlOt4OClfiUBvwr3qJFdZpF3iQ5IGQadu3NOT6A=;
        b=XHnp/Hwakgf2F18F5IZyi2zY12rbDyjc++n7tEObQ0+NeLjIlT7E++vdwbSeIWsy7X
         coG4qQwgzFsVEIS4F9WnL6nB0fV0B6gXWpc7ljClScSOMfHDd8Li/nouXW9MxOjSgD20
         9vZ2sxSvvf1m0+eSBY9IaRJzuF2KW0WcCKnGX7FptJjF9GhH2ZmJuF7nG/vHV2vqwdKH
         jKd/pKRa7IrB5OfQY453EKwlMkoxE78gQA0akbagVtfBKjk7dK0TIB5abDHtMbRxYliN
         5Efxbv4r40UAUgA+04oyu27Pl2zr60tiGlUGxAvy3rT057Tcb2GEPRmqyJLPQ92qOmJf
         mpBQ==
X-Gm-Message-State: AO0yUKUfXv1QuYcMoerJWoLIlw4kujLg6M3sXPmBjBWWKhPW6Upn0YRw
        HaVz34EAD268QFnS4P+58/A=
X-Google-Smtp-Source: AK7set+v/aafOUrLU/hPkTz+HOHGqBtqt9nVEC0kKHt1eDew50y9swIkyufI3ObrBFywqOb3gKuCWw==
X-Received: by 2002:adf:ffcf:0:b0:2c7:103f:7122 with SMTP id x15-20020adfffcf000000b002c7103f7122mr22864662wrs.28.1678620506452;
        Sun, 12 Mar 2023 04:28:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z1-20020a5d4c81000000b002c59f18674asm4931386wrs.22.2023.03.12.04.28.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 04:28:25 -0700 (PDT)
Message-ID: <5fa7853e-5973-9c40-ac19-cdf7be6be591@gmail.com>
Date:   Sun, 12 Mar 2023 12:28:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page charsets.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171358.GA5005@Debian-50-lenny-64-minimal>
 <f4fd4e46-7129-0f0b-519b-54ae39e2aba8@gmail.com>
 <20230312051444.GE7927@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230312051444.GE7927@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iGNLZoZsPlb4M4nLcLNtA9b4"
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
--------------iGNLZoZsPlb4M4nLcLNtA9b4
Content-Type: multipart/mixed; boundary="------------JIuQqgfBgHC3K0gvbo6rdzNx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <5fa7853e-5973-9c40-ac19-cdf7be6be591@gmail.com>
Subject: Re: Issue in man page charsets.7
References: <20230311171358.GA5005@Debian-50-lenny-64-minimal>
 <f4fd4e46-7129-0f0b-519b-54ae39e2aba8@gmail.com>
 <20230312051444.GE7927@Debian-50-lenny-64-minimal>
In-Reply-To: <20230312051444.GE7927@Debian-50-lenny-64-minimal>

--------------JIuQqgfBgHC3K0gvbo6rdzNx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/12/23 06:14, Helge Kreutzmann wrote:
> Hello Alex,
> On Sun, Mar 12, 2023 at 12:27:36AM +0100, Alejandro Colomar wrote:
>> On 3/11/23 18:13, Helge Kreutzmann wrote:
>>> Without further ado, the following was found:
>>>
>>> Issue:    ISO =E2=86=92 ISO/IEC
>>
>> I've already seen several reports about ISO -> ISO/IEC in several page=
s
>> from several people.  I'd like someone who knows about these standards=

>> to take a look at all the man pages and suggest a global fix about thi=
s.
>=20
> Well, *most likely* the global fix is to always replace "ISO" by
> "ISO/IEC" in the man pages.
>=20
> Rationale:
> Almost all relevant standards in the IT domain are prepared by the
> joint technical committee 1 from ISO and ITC (ISO/IEC JTC1). Hence
> they always carry an "ISO/IEC".=20
>=20
> But there *may* be exceptions. Thus I always check each individual
> case (and hence made several reports). You can simply do this by going
> to http://www.iso.org and entering the number in the search box.

Okay.

>=20
> If this is too tiresome, then a global fix of ISO =E2=86=92 ISO/IEC is =
most
> likely the correct fix.
>=20
> All I can do is to review each occurence I note and point you to this.

I've listed all ISO numbers that I could find (maybe there remain a few
uncovered, but this should show at least most of them):

$ grep -rho 'ISO[^a-zA-Z()<";:\.,&/[]*' \
  | sed 's/_/ /g' \
  | sed 's/\\\\//g' \
  | sed 's/-/ /g' \
  | sed 's/[ \t]*$//' \
  | sort \
  | uniq \
  | sed 's/ /-/' \
  | sed 's/ .*//' \
  | sort \
  | uniq \
  | sed 's/-/ /' \
  | grep ' ';
ISO 10646
ISO 14652
ISO 2022
ISO 2375
ISO 3166
ISO 4217
ISO 4873
ISO 639
ISO 6429
ISO 646
ISO 6709
ISO 8208
ISO 8601
ISO 8602
ISO 8859
ISO 9660
ISO 9945


And then searching those numbers in the ISO website, I created the
following list:


iso/iec:
	10646
	14652

iso:
	2022
	2375
	3166
	4217
	4873
	639
	6429
	8208
	8601
	8602
	8859-
	9660

iso/iec/ieee:
	9945

I'll apply a global fix with this info.

>=20
> Greetings
>=20
>          Helge

Greetings,

Alex

>=20
> P.S. If I should explain this even more verbosely, I can, please let
>      me know. I work in these committes for ~ 15 years.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------JIuQqgfBgHC3K0gvbo6rdzNx--

--------------iGNLZoZsPlb4M4nLcLNtA9b4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNt1EACgkQnowa+77/
2zI43RAAnc+K1apRoqkB8Efm66FWSpaCAGtkK3EFcyTjSqQjLeM8EdXUgDoTCu0r
7GZJv/f1ftL2QUux0LAGwa207WmNjVWdVhUS4aWgzHH5aMPAaou4kAqRtPc+zuNC
RKufFBY7LKlx3vDG7Vr4TxNghUXQZBjVD/XGzsm4e+JDp0onJ+5OKQgDYV5Bzjxw
+KN9MlkHKVQ0zJ/apdtxEP1r3EPrNSEKq6Mfk4kaXhsVnul2a7GgPSXlsI80uNCT
JsilamDigHVsGw0BpWoDQ4c+OI/KIn1NFUuIdm9M0OlnZ4ToFU723i2fFg12ef6S
MN03b+Y44oh0mxjNEk5lXK+5O1aQZDtBYj1BxwxV7LuU/TgMzWSVYQ8a9nrrcmbj
ubpKaA/MLfaeiS27Kv/8pwMi81lY8ilKK11jjneMB4PNacqw5t6OBfUesforZ7Yk
DkdnIma5eSszYtU4L9+Vkj+yWxuUmMmbLmK7xBwq3ELtBN28CtiWhfHlbSksoJl2
djjLpZpDhRFQENzfUer88MzuGj/gwlG9uCQLxxUsHBNA4gSc2cQ3YzaNNvbUsrsc
qyvGEa1HfYsuzQck7l5reYUbpmTslmxsk64vnLavxxRCMVMrA/FfQwnbAXv2Llla
ScVIHXDS3tfJbCs2sxML5+cSNZNjSWu6gqAuVTh0AiLN2qEoCT8=
=/iQT
-----END PGP SIGNATURE-----

--------------iGNLZoZsPlb4M4nLcLNtA9b4--
