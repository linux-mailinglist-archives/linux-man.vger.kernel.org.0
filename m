Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E58556A75BD
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 22:00:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbjCAVAR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Mar 2023 16:00:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjCAVAQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Mar 2023 16:00:16 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C848E4E5C2
        for <linux-man@vger.kernel.org>; Wed,  1 Mar 2023 13:00:13 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t15so14608808wrz.7
        for <linux-man@vger.kernel.org>; Wed, 01 Mar 2023 13:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFtJz9RVp457IWDINHeujMGMxTfe7m0UuqKuNpc/14U=;
        b=dPyLlYyHygFte6MEZRbZTO5kNWAht6aWcU+ATFw2/F1AHMUo2GnKF9AZ5IEACPfTVz
         ssJ7PWGp8pNwNE+K9KulxcqpEkm9hoc71b31riU+iG+k2PaS6XPyHIHsb8C+hLWVwQCi
         59T6Ba5eYHIAXbO7Yj++1S/fPRW4Ok612Z1+gHjdBRA5yBwOmd1+ETmw2FW0nyfarqB0
         aSNzBGN+4zEJkfOQHcnh+PFVQ8gxze0y343E24xB/cMmNU0agXmBdoORTprC44iRohPI
         k4l/hDjJrNBZubFm98qM0mquA6jZG/nA5mt1d6jXjZbnz7rbdfckNoGDxP4Fhv52WyGt
         8ZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KFtJz9RVp457IWDINHeujMGMxTfe7m0UuqKuNpc/14U=;
        b=gqTHIT0qMk91ltZyG+nExRNIYHTI3pb/PpdNRQt/OHG6KFC3AKm1v3COAMDfilfVEG
         I2d82ZlQ4HdeNATuRwkklQczl7yYyZI6KEdw0JVVwpIk70ix1B71UpWHU/tztGBGG4GH
         JGaIDjqs31hwgUWwVENrDERbPwHwz9UMjJL7wt8Jf8Qjra4+SsNM/UsH3yQOKZjecwyM
         LNbP3CZMJqIYSKyT14KTybwmHUl40FrF7mJ3luOPLsHGV0jvud7kOFH/h4ofJFdPomkN
         NeLnDgXhC4Nxlb3m17lsdSDUvecBg6XKOOxPhWe+uELNOmKRQm545RbuPigDo3+0Jfuu
         SdPA==
X-Gm-Message-State: AO0yUKXk/nK3NJFh6aov6SDDNbz/rs/EWWV+vnlGp+5irg6Ud5tYCXl9
        1Cmv/Iso/wJljyZ5S4kbtag=
X-Google-Smtp-Source: AK7set+vHXCSmlUunAyKeq/L43fyD3a19EAJ73ECVCwQLjgj9YXFgDERT9QUNrMVMpdSzvfSDd7Yyg==
X-Received: by 2002:a05:6000:1e07:b0:2c7:d7c:7d7 with SMTP id bj7-20020a0560001e0700b002c70d7c07d7mr5733844wrb.22.1677704412169;
        Wed, 01 Mar 2023 13:00:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l3-20020a05600012c300b002c5694aef92sm13427310wrx.21.2023.03.01.13.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 13:00:11 -0800 (PST)
Message-ID: <472f9e40-7259-e7a5-ce5b-c462037cda68@gmail.com>
Date:   Wed, 1 Mar 2023 22:00:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
To:     Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org
Cc:     ldv@strace.io, mtk.manpages@gmail.com, lineprinter0@gmail.com,
        Nate Eldredge <nate@thatsmathematics.com>,
        Alejandro Colomar <alx@kernel.org>
References: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
 <20230227191731.15069-1-fvalasiad@gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230227191731.15069-1-fvalasiad@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yr6CU79FmknA4EqaDzXRduW5"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Yr6CU79FmknA4EqaDzXRduW5
Content-Type: multipart/mixed; boundary="------------pKMIvYxukWAKwKHnGQqYuAGr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org
Cc: ldv@strace.io, mtk.manpages@gmail.com, lineprinter0@gmail.com,
 Nate Eldredge <nate@thatsmathematics.com>, Alejandro Colomar <alx@kernel.org>
Message-ID: <472f9e40-7259-e7a5-ce5b-c462037cda68@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
 <20230227191731.15069-1-fvalasiad@gmail.com>
In-Reply-To: <20230227191731.15069-1-fvalasiad@gmail.com>

--------------pKMIvYxukWAKwKHnGQqYuAGr
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Fotios,

On 2/27/23 20:19, =CE=A6=CF=8E=CF=84=CE=B7=CF=82 =CE=92=CE=B1=CE=BB=CE=B1=
=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 wrote:
> Hi Alex!
>=20
> Is that good enough?
>=20

Yep.  Patch applied.  Thanks!

Alex

On 2/27/23 20:17, Fotios Valasiadis wrote:
> Document the role of PTRACE_O_TRACESYSGOOD option in connection with
> PTRACE_GET_SYSCALL_INFO.
>=20
> Came upon this after writing a test program using PTRACE_GET_SYSCALL_IN=
FO.
> After failing to find what's wrong I posted a StackOverflow question
> which you can find right here:
> <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-a=
lways-returns-info-op-as-ptrace-syscall-info-none>
>=20
> Nate Eldredge found out what happens by looking into the kernel's sourc=
e
> code, here is a link to the relevant part
> <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407=
f480e9ecf/kernel/ptrace.c#L1018>
>=20
> In the code it can be seen that in case of system call entry or
> exit stops, the union is filled if and only if the signal matches
> "SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSG=
OOD
> option is set.  You can read about that in the PTRACE_O_TRACESYSGOOD
> section of ptrace(2)'s manual.
>=20
> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
> Cowritten-by: Dmitry V. Levin <ldv@strace.io>
> Signed-off-by: Dmitry V. Levin <ldv@strace.io>
> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
> Acked-by: Nate Eldredge <nate@thatsmathematics.com>
> Cc: Elvira Khabirova <lineprinter0@gmail.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man2/ptrace.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 55d9fd36d..9737b3825 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1111,6 +1111,15 @@ stop.
>  .B PTRACE_SYSCALL_INFO_NONE
>  No component of the union contains relevant information.
>  .RE
> +.IP
> +In case of system call entry or exit stops,
> +the data returned by
> +.B PTRACE_GET_SYSCALL_INFO
> +is limited to type
> +.B PTRACE_SYSCALL_INFO_NONE
> +unless
> +.B PTRACE_O_TRACESYSGOOD
> +option is set before the corresponding system call stop has occurred.
>  .\"
>  .SS Death under ptrace
>  When a (possibly multithreaded) process receives a killing signal

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------pKMIvYxukWAKwKHnGQqYuAGr--

--------------Yr6CU79FmknA4EqaDzXRduW5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP/vNIACgkQnowa+77/
2zLp0RAAoARRxBjHjxVliYmFoi4JHpBwh4XCanH5/rWEcbc8buFWC2RHV1RbVRCm
kBk1e7g1qcUYB6vwxhu1cWO9Oo/5A2GwfuIKt9S/V0XVT18/VEOMAiGfTVA/xShN
Y1up4Y6VHsvIjbmlRLTM96cfO3Z93Jw050Ag2ZwdxkoV3gt02Rfo2TqiMef44F4z
5JYK9vroVPbu+aid48gT46YOjwVbtUiTEww3SMMlXYRpzwddsmsm/605PJxvU5YU
shaepIbqNW5koDBv0f7gPQhzFGQR5CpwDYFS9Xk1EOMztiqdgAAQbsQoHoETj3ix
SeQ3ueqz2NY0/HYY3Wmh0MLc/4K5SjrEFciih7+tjI2HS8BmCq1XHJCmqbHfma0T
ZEpdGJgLds0QDhFD+gK4Gm0RQGKOMqS7YsbxIT86kXXd6Luj6mKHGVLh/gTbsH4B
vCzaDGlxwUwCGaX6GoX0XvYj8zoNO1OKXs0jOIDj1Dak+eMSten023EQa/rmgCf2
3buPYFkDZSfrIc+LY9uT3GbDFmMR18tYO5wN/16S0AdEvHYgg43W65LLFnAT2HE3
87/quDz8lLqel+BKrniAAk2xR/vbbT5mS8M7E63IdQIffHxpoktnRLMXfjHk1zr/
O8ieQatJnXTd9iZx33TeGnCgU+vtMyjBwKwrS+2Mlk5dWUAU1uI=
=UAk1
-----END PGP SIGNATURE-----

--------------Yr6CU79FmknA4EqaDzXRduW5--
