Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BA116B620D
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjCKXbK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:31:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKXbJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:31:09 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D3E55059
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:31:08 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id ay8so402847wmb.1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577467;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bwSshjIPgKCjSR5ia+pxIQxk2sxL0c+TbDQlo3wN0qA=;
        b=ceR9vvXy5Od/QF1CC/z7N7mfDjMyFMC+qKd2XvlczT3BYqZFQnzmz5ABPf7tLl3bRk
         B528G1wixD79FMKQgwww+2Hxja0HCw6uwShCE3gr2GJwobLM96h6W27XtXESXhQiO3Me
         mYNpWKCUPK2CmFtp/aC/bSi4Asm3DQa0SXyxlQBMbCYus/rgEVCbxDTm8Ol24eWIUzBV
         UPbprN5UQd/FmGv8GbYQL11ImHsFQm8zLRBOrch8mCS7HTskCIG0QkJQcHMi7QnAaE2E
         x/HO2tdRwwNXRBqhMFUoy9fONgy8lSf1osWbM0ZAzb+I8nsnz1+RGMHKi5VH1/iyvkQP
         DukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577467;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bwSshjIPgKCjSR5ia+pxIQxk2sxL0c+TbDQlo3wN0qA=;
        b=LxyXC2WXWbTna/eqV7gy2aNPRM3p6CuiLlTHVTONq8x2YJrji/uB5bKlgz15kLSc7h
         cu8SaSMv7ru0nMR3Od3Vm300SBjMGrHUdQQHzpcq74zw5T4mF1uAkKd+p99I+fjnW87U
         ZDoQ64NKYuRwqgaA8oTg+rhPNj69ybYvvmOSag2xrbYDrBJSBTWue+QDBH1FeuNR29Bv
         SKVsGi+k5h7DCZxpfesArvqXoWaPLnOuUAC+5263X8lSEYBRuk9LWi76aTj59j/SxcgT
         mbmwpoMcRYGN6szCxtWURYYk0WmqpXMSO3M/sdNE5utZQ1ADCU5pIbolfAbpZHr9yXOI
         RjRg==
X-Gm-Message-State: AO0yUKVELMHLh6ytIuC/Zjf3CiSy2u547mCR2wBQRyd+SIIVkrmJUPak
        H55rkFGsnq4wH4VStyxh3xs=
X-Google-Smtp-Source: AK7set+O0b92Peb946mQGcqWnbVx8Gd1jhpeFJvQDS/SNGemMYNfpwk4MOF83/hJYd2BbAbuLJkGSw==
X-Received: by 2002:a05:600c:1e14:b0:3df:f124:f997 with SMTP id ay20-20020a05600c1e1400b003dff124f997mr4672591wmb.19.1678577466912;
        Sat, 11 Mar 2023 15:31:06 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id h18-20020a1ccc12000000b003ea57808179sm3986892wmb.38.2023.03.11.15.31.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:31:06 -0800 (PST)
Message-ID: <730751cc-f526-2378-98ba-36834f4c5d8e@gmail.com>
Date:   Sun, 12 Mar 2023 00:31:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page nfsservctl.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171355.GA4755@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171355.GA4755@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MRzATRwQHDACa2Bpl65t3fSm"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------MRzATRwQHDACa2Bpl65t3fSm
Content-Type: multipart/mixed; boundary="------------1Nrt4CL1jCW77FsWU3CIUKVR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <730751cc-f526-2378-98ba-36834f4c5d8e@gmail.com>
Subject: Re: Issue in man page nfsservctl.2
References: <20230311171355.GA4755@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171355.GA4755@Debian-50-lenny-64-minimal>

--------------1Nrt4CL1jCW77FsWU3CIUKVR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    mountd(8) =E2=86=92 B<mountd>(8)

We don't use that formatting in example code.

Cheers,

Alex

>=20
> "/*\n"
> " * These are the commands understood by nfsctl().\n"
> " */\n"
> "#define NFSCTL_SVC        0  /* This is a server process. */\n"
> "#define NFSCTL_ADDCLIENT  1  /* Add an NFS client. */\n"
> "#define NFSCTL_DELCLIENT  2  /* Remove an NFS client. */\n"
> "#define NFSCTL_EXPORT     3  /* Export a filesystem. */\n"
> "#define NFSCTL_UNEXPORT   4  /* Unexport a filesystem. */\n"
> "#define NFSCTL_UGIDUPDATE 5  /* Update a client\\[aq]s UID/GID map\n"
> "                                (only in Linux 2.4.x and earlier). */\=
n"
> "#define NFSCTL_GETFH      6  /* Get a file handle (used by mountd(8))\=
n"
> "                                (only in Linux 2.4.x and earlier). */\=
n"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------1Nrt4CL1jCW77FsWU3CIUKVR--

--------------MRzATRwQHDACa2Bpl65t3fSm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDzkACgkQnowa+77/
2zI1IBAAmp1ubRrz2/I8277bqpUesrC0Dy5DFf2aPib5kqAfQzOozTZddcHz7apf
4UZxI+VEwv3yxEyDgZyMJ+vvsViUohYptXM5/R2hXFyb7BD52dFBoENaadXWzRMS
33IJJyAN0d4kh/KrkeCAJy/fLVZu/Jszfx8622D6Ob4ve7LoDWAlYemdIuDRYcnN
LoGQYPDGedfSz9aNPa9pkKZw9RyOclZ4GokDR5YhPg21L2gfeq358M0pficTzB0s
0wimIxl8SDpTzBrrwNqs0jqbLzTfM08QFTQoVoyEBn/Chu6m/TdmxJMsAdM+UzwQ
zzuWdMJPXhpQAGqQfwcW5fFysqp7ydsjhcvyndWMf41751AaQeiosoVC693hYiv2
ax81ARW0Fu/Vjn3UsPDwOnf/pfkUDVhoLr7OAxNKWarGA1wk+VAxfSA17eKBa/VN
Lb2Od401yCyfniPvT9JITdF9lDjvX/hehfe3JYIeQs9Dy4l9xkGe2WwFz+5Izikn
oLg7I+f1f6epQ1Xu2jjbpaML19oYDh+ban/Oxum2kJwOUPnNoAyhKAvN4J7aedb9
pv08EfvUa66VExqxxPhoF7xWofCtvCwKkTrr4TknEvGDGkpzjr1raEMHSAHdtE1r
HfoGPJv+AOyaK/cUpyGoDFjXxcSZ3xzA+VXh6SDrYV8KEYXJmLw=
=Ji37
-----END PGP SIGNATURE-----

--------------MRzATRwQHDACa2Bpl65t3fSm--
