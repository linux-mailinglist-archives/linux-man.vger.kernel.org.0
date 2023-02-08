Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50C9F68F91A
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:55:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbjBHUzj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:55:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjBHUzi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:55:38 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79DBA233EF
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:55:29 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so33519wmb.5
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 12:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cpvda2HuV4Ju+ZtGRmPY71fkM3LHtmksrl1qKoSiog8=;
        b=h6WYoLJrNcRhmIXwAjJfYp9RAA5CBvgmt2AiTLtnPTGuUsuRC63NV7Yd5lOBHbuvbW
         CDCXyLQP3CinY8l6sLino2AKEKO9yK4q8oKs2HsAYNN+fNuIwkfBbZtjWIoZr99YVzlo
         PCgGtiSbtd+UMaEmOuOmTa6Fu/XjgEOFDbpBvnlJQFk+SgafHH08qISCOXU9Jz2j4BMY
         bTu8mssE89ZlgO1lgPT7XiD4dYZlUEhGFhaHztVr3gVhB01znLsfzQ8P3Wm0TU9rjUY0
         WeLfOGC17+bj9ysdQ4ixaOdlzJC567cw3VjUQfmUwOIDmAhol4mZICm1FezZ+ZlHaFz6
         WIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cpvda2HuV4Ju+ZtGRmPY71fkM3LHtmksrl1qKoSiog8=;
        b=JmNlbkyKJyY5outEvR+5pWW3Vy4nUgiV22w/YpS3zVbJN0cA7geii7g4lUagDu9O9f
         Ol6d7ZtHMffpvb0TL0+ZVVAdf+KBeoqffBDb/2Cv6esQvz/yvu/7hdPlWchBaBkaxNd3
         o3oeOxSe9rMpQt7qUz35Xbnps4SD3ou1wRlSwDqlswU4cr6NTWg1T0Z7n3qvvREeBi/U
         lJ6BdnklyctTPQOhY06DmmihCo8nkUP+Xfx96V3P/uYTpyLqM/Q+hRMZqalFlpPY/zvC
         pCj0koI66mOvXUJrwPz4RciqrSBn5J+HLHxrcXpzE1V8xgjnlYEyS0LcPysHdmDVEOWe
         Kxeg==
X-Gm-Message-State: AO0yUKUkqJhBzAG6Z1DGzBHdCU2jflkrlBj8Cr9askA8mhBPmgYBw0bT
        V1mA4MGajQkOgo3zL0xDsQ7UOVVH1c8=
X-Google-Smtp-Source: AK7set+VoI89q4n4uOh1vugjQzVfzXowwUQsr8BmsS2IxXQg2DE0DEdk/oCjWNagz9y7m2VWX0Mg7Q==
X-Received: by 2002:a05:600c:2ac8:b0:3e0:117:b627 with SMTP id t8-20020a05600c2ac800b003e00117b627mr7831314wme.20.1675889727866;
        Wed, 08 Feb 2023 12:55:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d5-20020a1c7305000000b003dc4baaedd3sm2762779wmb.37.2023.02.08.12.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 12:55:27 -0800 (PST)
Message-ID: <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
Date:   Wed, 8 Feb 2023 21:55:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XDpG7JcnzICftvTw7CRl84Lh"
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
--------------XDpG7JcnzICftvTw7CRl84Lh
Content-Type: multipart/mixed; boundary="------------tUrLYYGsXxPZ8IARW3pY59Tf";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <e497bd3e-0216-4af2-3848-fa9b3ccf5b89@gmail.com>
Subject: Re: [PATCH v2 00/11] punctuate long numeric strings with digit
 separators
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>

--------------tUrLYYGsXxPZ8IARW3pY59Tf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

It seems using --inline is not what we're looking for.  Could you please =
try with --no-attach?

Thanks,

Alex

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

--------------tUrLYYGsXxPZ8IARW3pY59Tf--

--------------XDpG7JcnzICftvTw7CRl84Lh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkDD4ACgkQnowa+77/
2zJ9rxAAqpoQGm/oDUqZJL1ao/ziLM5c+79IpIJbUkvApyJUxac4OffC26kxKpEv
1HQoCPmI3bcbI7U3Xf0cchVZZ93Nm6bYNl0igrIUanA9exG7wQdbROGqP1K+rlil
ny1fe+kyb1fjP9z5dIqWGJtjKaW6kkiRWCjv42N2jw4qcsADtm/lhUo2Vy3B8aBd
CtnF/FvehNTi+nYEcaPhzPgSinpgE9U4wUWtQlAbN2CgIVZqrKx2/oMue1LPnnBh
yS9ItmyPySX5CH7ZrcTwEZmDNBZLQ+OVHX2MD4TZsfd1LerODto4HPqS6I0g2D9m
vCE74DEWvMrA1YTXix5UKknI9RW3ac3RAjrHq7Nt1zDOY2uS3ktOxTdAc0nyXHON
WVbjKbvJkpVe+JK3sABGBBA3A48S1xx3l9qQCHIQWKRgbrAlYVualNt3utjO4K/k
y6kXn/nvnRZCkQKXBAEhtMmWxPqsSfIm5MbQIFwXTi0luwzN8YG5LIlEncxqExuI
j3jJouhuTLFS49lunKALXaVWmguxuEj97//B3sgn3e0gzfGIUdZn/LNZ0Fjh/wXj
tMUy9jvNCYRgBiuxImcOZnn9JcAZ4IaccMafYdRKXM2P6PgFkvrr2uYnBgPsgaol
ltnH1ipaJ8Pz/tItzoYxGStFfVjIn3U1Sse01JR2e/kqu1UfS3I=
=KXg6
-----END PGP SIGNATURE-----

--------------XDpG7JcnzICftvTw7CRl84Lh--
