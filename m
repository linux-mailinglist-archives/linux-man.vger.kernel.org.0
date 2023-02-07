Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0693F68E489
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 00:44:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbjBGXok (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 18:44:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjBGXoj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 18:44:39 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D502D162
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 15:44:38 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id y1so15170171wru.2
        for <linux-man@vger.kernel.org>; Tue, 07 Feb 2023 15:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yk3E+Pvok4Fd824GhfpRfqVHtPFtyMFcN67ohgxfr+Y=;
        b=D0dxoklsia0AbNBF//Vvnk6ftPHdNp4XjS3UmmCrCrTxllt7GT5epqOUllq6f9oe8H
         JuuWqQdNDeW2Vle+29tDpgCp7Z+w2CNDV9Me4W6DVh4HDp8ZA8InjvEfKOjk73tbV7Me
         a5HpCG4hQOfv1nGI0BaSN5d00TD973mWg9XVL0zgFsXhW6D/gmKdrnJ+ex91lsEs4gx0
         iVLf03wrXy+LY0atsLFbugoBEXDaOc6XENTC40qLlRYc+vjtmF9LRPG9qFtO9dchZkkP
         tCGXCgvVjf8t0rFbskEC+a0kY/SqzYpLXi5xl22OQJGXo/FlS57Q/dVa5gV1pmdS6rqo
         x7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Yk3E+Pvok4Fd824GhfpRfqVHtPFtyMFcN67ohgxfr+Y=;
        b=KxTQJGJw5W1y8m1Z8YzNvBa9PHUmvE21q9fbs4bL4B7wcUmTG0UWF8brYnvBInjU+e
         gu/P93RRjYfxGfFfIDLuLaxf9am5ggN0wkoF85gdlho76aMasKqBgOVc/yAz8w1iubbH
         lD2s/ISB3Bu4Pb4Zcfh3e30KojjnnecKQ1yp/NzN5qv6egFtT3+4yf9rQ5yT5q6CaL1T
         fJWNPvWcOY1S4I7rEBG8WSptyI0N8ahk0e50QUJ0UPdzv9ydSDmL5qoHjUFcK1MF76TK
         t7IYPK2WcW51JZJSRRaZdF5Vy/ji1CzZzuVeBv5b1quUqDS+ccJoe81tkFSazY5TFRsD
         eXUA==
X-Gm-Message-State: AO0yUKXR8fTe77DXytT51gnCF0awHi0hZee++Ozk/5NzjljozACVQTUi
        YCye1ZMTYLrT/HZyJmRTN/KVzeuD6xg=
X-Google-Smtp-Source: AK7set8rUjje/JczAJUcSBcXLoR7r2HBFzKgFQ6VLZrw3HkMRojjb+OyV+axtifR4DhqPWNNvrXSqQ==
X-Received: by 2002:adf:ec46:0:b0:2bf:af86:ea05 with SMTP id w6-20020adfec46000000b002bfaf86ea05mr4353652wrn.39.1675813477073;
        Tue, 07 Feb 2023 15:44:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t1-20020a5d4601000000b002bdfe3aca17sm12238610wrq.51.2023.02.07.15.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 15:44:36 -0800 (PST)
Message-ID: <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
Date:   Wed, 8 Feb 2023 00:44:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ir1tHcM6WWXEZPh1l0d8Jf0N"
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
--------------Ir1tHcM6WWXEZPh1l0d8Jf0N
Content-Type: multipart/mixed; boundary="------------mWwQkJ9yDsOUp2elJ5PzLaQU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>

--------------mWwQkJ9yDsOUp2elJ5PzLaQU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

The subject is not correct, IMO.  The SI also defines the Ki, Mi, ... pre=
fixes for binary multipliers.
Also, they are prefixes, not suffixes.

Cheers,

Alex

On 2/7/23 21:11, Brian Inglis wrote:
> ---
>  man2/shmget.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/shmget.2 b/man2/shmget.2
> index cdb2d3bee4b5..4bc18bedf3a9 100644
> --- a/man2/shmget.2
> +++ b/man2/shmget.2
> @@ -354,7 +354,7 @@ for a discussion of why this default value (rather =
than
>  is used.
>  .IP
>  From Linux 2.2 up to Linux 3.15, the default value of
> -this limit was 0x2000000 (32\ MB).
> +this limit was 0x2000000 (32\ MiB).
>  .IP
>  Because it is not possible to map just part of a shared memory segment=
,
>  the amount of virtual memory places another limit on the maximum size =
of a

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------mWwQkJ9yDsOUp2elJ5PzLaQU--

--------------Ir1tHcM6WWXEZPh1l0d8Jf0N
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPi4mMACgkQnowa+77/
2zIk3RAAnmxhjdSg3Xfxxii6zhihMS2Lu145yHDLSibumMLHboU/Y4uRTTdEv11X
E0WVpQFaanNN2zpH6JD4UNQgjOP5scWOXdsA/Uutiz1utTRNR8jiALiCfcUfqrsT
U3ZjCYb264tLZONzhcuJVFS/N0pPyND/P/cr1zIQr4zTPO96DvSROe2xofc7Mz5A
ZcceaamH9LLDpoD9nk3kvfgmPYeg2iGGS44iLsELHvYwQM58ZMj23/3Uvrb3veyb
KO9gtyu+37EsesaEit97fgQ2M/vcMr/+yP2y4RDcGHyKokNlPsyo0zgKa4e9h7Cc
OEFKFqBZnEU7LZ3+31bvpGMihQwZluXhz0Ebt34JheUpKzHLqXARjEn9uRTaoIqH
RPphQb3R/BRVT8D5oazFYBOaUrbO+mnf7Aszz5FrBfU037cTj39YwcJpxdHIIdPT
+1yKYMOap9mCodgNhMqA4QOUG86Dooa8MBJlQgGMlaquig3kpAoDpjz3bLOBcj1L
WL2KtMaqLQCwKnQxgRhBR2gxuIt8FEQDRvg/LhQcWFXJU23y7GNgGvJTzq+Qbiwi
NDkADcw32TPBVRPVFWKnFvFaR+vJtRSiCOlmPtTNB2B6me16lnyLwgwljNUEaHu3
aFhBumwFceogzGI0m54Qm9ilOBre6oNqT3Fi016tcwyZuKtZRtk=
=bNye
-----END PGP SIGNATURE-----

--------------Ir1tHcM6WWXEZPh1l0d8Jf0N--
