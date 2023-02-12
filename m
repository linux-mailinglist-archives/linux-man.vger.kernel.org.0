Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3456B6939A3
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 20:22:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbjBLTWp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 14:22:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjBLTWn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 14:22:43 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BA7AD538
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:22:40 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so7534790wmb.5
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dIB4JyKmTIx3oKLbOO1neKoPXllrn7rKC9lamMcYMwE=;
        b=VWINxfF7oJyjoCv3PpuKiSppjbgcXELZZSF6bllzk/Vxe9hcq3uWUnz7HV8dRCDmaV
         RpgpJQ2+5E0ROJyENIHULgbg3J/rv+zq4TCrJ/Z59GZmqX7+8VGKQnzRbSQUoTmVT+N1
         xqJJxU6+0C/Mch2ucX3HSrkUB6AkNeP7UXmOGNBZOsTDx7Juooh1TZ2A1gdDtV3js6JC
         97uWvbt0z8rJRWpq+B7uy/n0qrsZ6CPHxSZfwdsw9xMExLds92WI+JVef+UXN0WgpZ/m
         jZFpzuMaol2bnJEdWhlh1ohSbNUIei8hVhsivaPlIwG+V9mt9qkjsIMQniCBP9vBd0hJ
         qeTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dIB4JyKmTIx3oKLbOO1neKoPXllrn7rKC9lamMcYMwE=;
        b=Ye13l+yFPg0EwcPzAZLPFrxaImfBrG9X115QWNViH3ROfIUgBGluEbceOeDf3c4kOS
         SQAEMkHhxSBPFLJkOljQ36CaT1ecQW7VIctLLp7Smggxi7L1CsvatqghJAATa35WtawO
         kX43E8CWP/WYZpIzz/Q4vZOCaoYTweVbhIeLhPMIqfm/Sor7LkGFbBWg6n6Lq7jwQwx1
         I55aHaIRn6wY7fWdoafw7M+K7OgSXLf8nPmCrY42a3LmElkYXAP9YF5Kn0SbcVHH+xNP
         JYK7wxR+N/eH1UfhMv4YxDRH4FoFcfH7YW9QQfQKJUMEL5eWoF+ZM6MWndFqUx51y6Du
         m4mQ==
X-Gm-Message-State: AO0yUKXlsWNn4mGHYBI3vZreIRdg7uysQGfjjz39/ellAE+x8uOGzqpQ
        hpItMtOGTGeY9GBbCW2rqPM=
X-Google-Smtp-Source: AK7set+0sWtAcVUjMkXYGW7yQ3a73I1sMjIV2n422hRMDSgYFurnbd7lh3AQGyEte97/t/ouRu37rA==
X-Received: by 2002:a05:600c:4a9a:b0:3dc:5b48:ee5 with SMTP id b26-20020a05600c4a9a00b003dc5b480ee5mr17291721wmp.2.1676229759194;
        Sun, 12 Feb 2023 11:22:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az10-20020a05600c600a00b003dc3f07c876sm15310952wmb.46.2023.02.12.11.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 11:22:38 -0800 (PST)
Message-ID: <96403174-53d6-8bd7-d209-161ed85f13d4@gmail.com>
Date:   Sun, 12 Feb 2023 20:22:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lrpHNJpHNMFNoyEExZJKzE8F"
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
--------------lrpHNJpHNMFNoyEExZJKzE8F
Content-Type: multipart/mixed; boundary="------------AAJVubRVz4v6wFCQOaPL7gEv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <96403174-53d6-8bd7-d209-161ed85f13d4@gmail.com>
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>

--------------AAJVubRVz4v6wFCQOaPL7gEv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 21:27, Brian Inglis wrote:
> man2/: use C digit separators with \\[aq] to show "'" or ISO/IEC
> suffixes to clarify long binary, octal, hex, decimal numeric strings;
> use consistent interval notation for value ranges;
> fix minor discrepancies.
>=20
> [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
> [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed val=
ue
> [PATCH 03/11] man2/: use consistent interval notation for value ranges
> [PATCH 04/11] man2/open.2: punctuate octal perms with digit separators
> [PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
> [PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit separator=
s
> [PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit separator=
s
> [PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit separator=
s in ranges and example docs
> [PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
> [PATCH 10/11] man2/futex.2: change limit to use ISO suffix
> [PATCH 11/11] man2/: punctuate long numeric strings with digit separato=
rs

I've applied some of these patches.  Please rebase the rest, fix some min=
or comments that I made about them (in those that I did), and send v3 whe=
n you can :)

Cheers,

Alex

>=20
> Brian Inglis (11):
>   man2/shmget.2: fix limit units suffix from SI to IEC
>   man2/spu_run.2: fix example comment status code or-ed value
>   man2/: use consistent interval notation for value ranges
>   man2/open.2: punctuate octal perms with digit separators
>   man2/reboot.2: show BCD dates in hex not decimal
>   man2/reboot.2: punctuate hex in docs with digit separators
>   man2/statfs.2: punctuate hex in docs with digit separators
>   man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges =
and example docs
>   man2/getrandom.2: change limit to use IEC suffix
>   man2/futex.2: change limit to use ISO suffix
>   man2/: punctuate long numeric strings with digit separators
>=20
>  man2/add_key.2         |   2 +-
>  man2/adjtimex.2        |  12 ++---
>  man2/clock_getres.2    |   2 +-
>  man2/clock_nanosleep.2 |   2 +-
>  man2/eventfd.2         |   6 +--
>  man2/execve.2          |   2 +-
>  man2/fcntl.2           |   4 +-
>  man2/futex.2           |   2 +-
>  man2/getitimer.2       |   4 +-
>  man2/getrandom.2       |   2 +-
>  man2/gettimeofday.2    |   2 +-
>  man2/ioctl.2           |   4 +-
>  man2/ioctl_console.2   |   2 +-
>  man2/ioctl_getfsmap.2  |   4 +-
>  man2/ioperm.2          |   2 +-
>  man2/kexec_load.2      |   2 +-
>  man2/link.2            |   4 +-
>  man2/msgget.2          |   2 +-
>  man2/nanosleep.2       |   4 +-
>  man2/open.2            |  32 ++++++------
>  man2/pciconfig_read.2  |   2 +-
>  man2/perf_event_open.2 |   2 +-
>  man2/personality.2     |   8 +--
>  man2/prctl.2           |   2 +-
>  man2/read.2            |   2 +-
>  man2/reboot.2          |  24 ++++-----
>  man2/semget.2          |   4 +-
>  man2/sendfile.2        |   2 +-
>  man2/shmget.2          |   2 +-
>  man2/sigaction.2       |   4 +-
>  man2/spu_run.2         |   8 +--
>  man2/statfs.2          | 110 ++++++++++++++++++++---------------------=

>  man2/statx.2           |   2 +-
>  man2/syscall.2         |   2 +-
>  man2/timer_settime.2   |   4 +-
>  man2/timerfd_create.2  |   2 +-
>  man2/truncate.2        |   4 +-
>  man2/utimensat.2       |   6 +--
>  man2/write.2           |   2 +-
>  39 files changed, 144 insertions(+), 144 deletions(-)
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------AAJVubRVz4v6wFCQOaPL7gEv--

--------------lrpHNJpHNMFNoyEExZJKzE8F
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPpPH0ACgkQnowa+77/
2zJMgw/8DyiHrWvYPSYObSwsLcNtSZ6SEOfB9aRZQTM/UiFBjX1CYNJtDMyjNOZ5
gha3zz3wUwq3D6zLYv1BZvVyzTij4qyinolBVxpHIeDyKyM4VnAGA73e6KAi00uf
0/vGrgyYdkdOlwiMoXijXbMu36sZOM+9ClQUoeuJDf8pUpeCgGm+H8PgA+43B8ss
IsYUiUJBoHg2rNabG5GhyfVzWmQTzIudWkx2CJAEqsWrAj6LQh1/DwAfYecK7X0M
Kb19LeLoHOhuR1T8TZbntkQzBhkPVR2dsrLAZLCl58sH0EXPW1wQ8kDDA4mAda/Z
qlEopfK/DIsl1FDpLTcG0cJJQUwAtGf/IbiyTAN0Hp9ICw0BLYTdeUq30WmROrP9
5qR2zrSoTfPWAAlz4of/gM9EZxJnCRp7AhCYHg+Kg1CVROhK3JcB4FMDH6Nco1M/
pXZt/GQCKsrAgLjHp96ZLq3x6hS/4dfFew/PEjKF9UdhqwGpk+lewAlXZWcHVNYe
HxuapHkhl7maHNYbanZ9qWAN+9Z2EKdLf+fQAu3km0UJh6cIvEJjW+VMGgyWzlaL
DPCSPcbTRjjVkSJ4GmlMHoPQ07SbnutmOLF/8dMsoDiIFuX3h7b9N1dNKN2wlNqB
c4mdmM2JrO+DRH1QyyEktJZ4kVCl/35wC2SB4a/q2yWc46f7Ww4=
=fC5n
-----END PGP SIGNATURE-----

--------------lrpHNJpHNMFNoyEExZJKzE8F--
