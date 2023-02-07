Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8002368E498
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 00:49:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbjBGXtV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 18:49:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbjBGXtV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 18:49:21 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DCC420696
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 15:49:18 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id o18so15167488wrj.3
        for <linux-man@vger.kernel.org>; Tue, 07 Feb 2023 15:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BWMWj/7bj1G2Az0nhR0uwB6VFcpNsxlACKvERi0t6Po=;
        b=V0xfmC1pMAnFfCcYuuJIyp5pgqUZgiJ8235Bs0RmNGKcCwajrVNve1gnjFc5jMyhUZ
         +kxQU1yOXhr4/LdbPC26D89UQsmUaAQ0HIH2K+kU1twTuLgAqtPtdGM7X4ZHpxlUyr1N
         YnuR+d9OVh6q4Ex2e4W9PweoCLOEKYwjix251YcYk4zJ4f7uiChA/IlpgrIabfq5YTny
         7wJ8/RQDj7j7cmLJMcTtCB9AMIE/MRpz9/g49ODOz+feWgiMb5gxNKJNhpba+iaj9tbg
         IUXhBbSBUxS8ep5MkS9lAr74jxVmjLMNxgF9sE+PbBm15kDiiTf14BsF59btqRqooGWz
         YYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BWMWj/7bj1G2Az0nhR0uwB6VFcpNsxlACKvERi0t6Po=;
        b=KhSmmV5tHskuwFHq9mqvnnXinN5xBvnFOBg3zhPZY6X0BFvY7H3DMI9oqu44HWZHD2
         kPZrO82sQYkQ53EcnxoIjkjjdXIaRPfn4WpLWnDEl4b7LjzgWmC/4MdXoXLstVjdFltM
         hZl43PExJFd+A5T54ADOhaThRNgw1BqHDtmzt/qbx+viWsJv0pD9go0mMjmThFDrCXME
         MMXs/6O66nD87NTirIn6fjadDv6aO9S7SCVLemfdgxdsloZO7ze0F3QL1v7Z/CHPyCIl
         wURQBfDW51k61Xz1s6NpfTtOPykvUtm3KGviRG6jvAUDpY1sKhIXGeRUUB3SReg015Sv
         apbw==
X-Gm-Message-State: AO0yUKV6nbIRQtWJHOQwCI8a+aEcfeOdfR673EjAlyaS29tsVJ26uump
        xcRICNMN3OvN7/0PmLj/ma+h5FzA8o0=
X-Google-Smtp-Source: AK7set/fjaH19P3bo0hpTFPctfTQNkmziHB03Lr9Blu5GSn4/w+7lPgCx352KCUpCqlX5Snv39ZMrw==
X-Received: by 2002:a5d:5967:0:b0:2c3:f971:c417 with SMTP id e39-20020a5d5967000000b002c3f971c417mr1466937wri.21.1675813757112;
        Tue, 07 Feb 2023 15:49:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f7-20020a056000128700b002c3df9279f5sm9153871wrx.48.2023.02.07.15.49.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 15:49:16 -0800 (PST)
Message-ID: <fc3c60b1-ca32-7eb1-60e1-99308bce51cd@gmail.com>
Date:   Wed, 8 Feb 2023 00:49:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 00/11] man2/: punctuate long numeric strings with digit
 separators
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xlLuy9ThmGRUSg8U6Y3TsPf9"
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
--------------xlLuy9ThmGRUSg8U6Y3TsPf9
Content-Type: multipart/mixed; boundary="------------zl3szTughWjDZ6zVsqKa0nZh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <fc3c60b1-ca32-7eb1-60e1-99308bce51cd@gmail.com>
Subject: Re: [PATCH 00/11] man2/: punctuate long numeric strings with digit
 separators
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>

--------------zl3szTughWjDZ6zVsqKa0nZh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/7/23 21:32, Brian Inglis wrote:
> man2/: use C digit separators with \\[aq] to show "'" or ISO/IEC
> suffixes to clarify long binary, octal, hex, decimal numeric strings;
> use consistent interval notation for value ranges;
> fix minor discrepancies.
>=20
> [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
> [PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed
> [PATCH 03/11] man2/: use consistent interval notation for value
> [PATCH 04/11] man2/open.2: punctuate octal perms with digit
> [PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
> [PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit
> [PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit
> [PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit
> [PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
> [PATCH 10/11] man2/futex.2: change limit to use ISO suffix
> [PATCH 11/11] man2/: punctuate long numeric strings with digit

I received patches [1, 4] in inline format, and then received again the e=
ntire patch set as emails with attachments.  I'm a bit confused about whi=
ch are the correct ones.  Are they the same?  Please resend all inline if=
 possible, and put a patch version number (v3 already?).

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
>   man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges
>     and example docs
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

--------------zl3szTughWjDZ6zVsqKa0nZh--

--------------xlLuy9ThmGRUSg8U6Y3TsPf9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPi43sACgkQnowa+77/
2zKvWA/+MGV8Zbol8N6w/4sDWsjaNbWRKfD/PeBIWq8AZFWDx3s+BM4OUHmRrKE9
hlHQSHDdU7KUpXJaHHyY7WTIqKd2K8SphlPb9RiZI2TFssYZ0cNt0KrfMzXfWg5m
wm563RrfKuZAMSdhk8KxvT3DhpiUF6xqUlKUQ68qXVYO1enbqHr5y+7h56y5kpRs
fDROiMc9kaIUYHJhSQpFvIJENFP8rvVsL4YfFxLP1tljJY/G11vU1D9aSXDFg8ZG
Vk+4R6mZIh4xdkJKky64h02+VUYSjKxoKzJ4+hQ9h1BCgczOUIKcDmPSyykoPiHa
nk4hMbGklhOCtViKs7ooQyKv3MWnKCZBEElLNTkMpgLYiJNBKmvDjL0v+LP2RRnw
193bHjm9eip+ypqScBLjJAmthKPw5fSsONVxPBG5HIo0cuA5oYFmxTJeJs5Q9oXA
TiRiwCczPr+ebEfGnawLWUptd0dou9K/2+H71SzKO0gIp47OJTMkAwS65eIwJLh9
9RoR/Nky+Zj44gbOWHjm+brXmnWvB75oJTagYP50aEW6KdVVbcbfMWvR8YZFTmD4
F9C1tyvqHjPrcExfXuAITtC6xRqG09Tk9CzqXFm9grjc+mOxV0Xc94uqCt7NfBOv
/N7f0cB/p56oOs7FF/DlLgpQXlILsIT3C86DL8/rb/ommD4RJyQ=
=VyuE
-----END PGP SIGNATURE-----

--------------xlLuy9ThmGRUSg8U6Y3TsPf9--
