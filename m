Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD881691638
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:29:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjBJB3b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:29:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBJB3b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:29:31 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B3495D3D5
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:29:28 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id o36so2783978wms.1
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wmoNuXUFWyh9BcAkEX3jfkLOkMOWuzzahirHMPMdhCk=;
        b=UnR/fU7olqvZWUSm07cnBX+W9hKJrPh1sKfUMiGa94bWqB+1+agNpg3eWU678qujyG
         vyqcXLJwF2dV8eNrZPKhdUjkKkyCYgUlMNnZoRkFTKTxqXI6kewBkwBXfrH/hcekBDmY
         lnXsFdFalkPdoBuBlBAURIylRGxCeOmXnDGsn3osZo3Efbro8KE9UCclNKtAchK9M4Ft
         d/rXdPudaXHNLGR3bz0jtSmqc2J/qvC5CleAg2L7kIH+s4qNV1pqOOeCbaioqWu2RluM
         aM6KxMThX+9gOYN/cEHPjqlL00J/Q8lQ3rfbbl4PS1Zx/EH687RDeDl6uc+fuldi5+cp
         2Elg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wmoNuXUFWyh9BcAkEX3jfkLOkMOWuzzahirHMPMdhCk=;
        b=jBkDujPihRsTzwm+S3OoYaNU55RcW22BKFa3m/cDGxa6qDQpJrJSWmlW83V9cr0RS+
         j5dWi2CqXzuzsRvKQsLnI/FosQXuIObVNB4Y456IQMME1zFfIq1b7m9TUNfSWTacLDsl
         E8/gCua+V1hl4OugBkYgyuMfhpG1gZLiWJnG8TMEvJGBSTrG0ejJ/QfjevbSXawX4yje
         9+VGrelfaI7yKkJXCbavGmh2PvYukjxcZFdt9QV/1DP5jhtqGDu1pukETewB7tac/Wjn
         YRHIsP/hqiPZwWH5nY3J8BNdv1f1BLsMSeio21AtLGf8NAF5254vSoe/hS62q8m/7/iS
         l6Yw==
X-Gm-Message-State: AO0yUKVjBU8w3Cs5y3QXvzQ1CX6LGNLZFkqguVNiWv+AzMEENCHujFOI
        oymoyODSTuBcH53+mLWPKQU=
X-Google-Smtp-Source: AK7set80XQBBRfBQO28xn1sB0YJOYp0LLlA438NaEvV8aZahmum5kGo7gQbix+hYIvdKsSyzeJRw1Q==
X-Received: by 2002:a05:600c:4488:b0:3dc:572f:edb7 with SMTP id e8-20020a05600c448800b003dc572fedb7mr956488wmo.1.1675992567076;
        Thu, 09 Feb 2023 17:29:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p5-20020a1c5445000000b003dc492e4430sm3418283wmi.28.2023.02.09.17.29.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:29:26 -0800 (PST)
Message-ID: <11280e97-eafc-6295-915f-b24962072a10@gmail.com>
Date:   Fri, 10 Feb 2023 02:29:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 05/20] many pages: srcfix (^ -> \[ha])
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209180950.gj5ckk6tg2ohn5fg@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209180950.gj5ckk6tg2ohn5fg@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1CSsnfoZJswbuYskez1egWYg"
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
--------------1CSsnfoZJswbuYskez1egWYg
Content-Type: multipart/mixed; boundary="------------WbHC7hZ4bO00kUdtRV4NHXGe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <11280e97-eafc-6295-915f-b24962072a10@gmail.com>
Subject: Re: [PATCH 05/20] many pages: srcfix (^ -> \[ha])
References: <20230209180950.gj5ckk6tg2ohn5fg@illithid>
In-Reply-To: <20230209180950.gj5ckk6tg2ohn5fg@illithid>

--------------WbHC7hZ4bO00kUdtRV4NHXGe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

I decided many pages is too ambiguous, and we can improve the information=
 by using the directory.  I changed the commit messages where you used "m=
any pages: ...", and wrote "man2/: ..." for 01, and "man*/: ..." for 05 (=
this one).

Cheers,

Alex

On 2/9/23 19:09, G. Branden Robinson wrote:
> Use correct *roff special character for hat/caret/circumflex accent.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man2/adjtimex.2         |  2 +-
>  man2/eventfd.2          |  2 +-
>  man2/mmap2.2            |  2 +-
>  man2/perf_event_open.2  |  2 +-
>  man2/quotactl.2         |  4 +--
>  man2/shmget.2           |  4 +--
>  man2/times.2            |  2 +-
>  man3/drand48.3          |  6 ++--
>  man3/ldexp.3            |  2 +-
>  man3/random.3           |  6 ++--
>  man3/tgamma.3           |  2 +-
>  man5/proc.5             |  4 +--
>  man7/mount_namespaces.7 |  2 +-
>  man7/random.7           |  2 +-
>  man7/sched.7            |  2 +-
>  man7/tcp.7              |  6 ++--
>  man7/udplite.7          |  6 ++--
>  man7/units.7            | 64 ++++++++++++++++++++---------------------=

>  man7/unix.7             |  4 +--
>  man7/utf-8.7            |  2 +-
>  20 files changed, 63 insertions(+), 63 deletions(-)
>=20
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index 9f278674a..d76ec04a9 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -571,7 +571,7 @@ and
>  .I stabil
>  are ppm (parts per million) with a 16-bit fractional part,
>  which means that a value of 1 in one of those fields
> -actually means 2^-16 ppm, and 2^16=3D65536 is 1 ppm.
> +actually means 2\[ha]-16 ppm, and 2\[ha]16=3D65536 is 1 ppm.
>  This is the case for both input values (in the case of
>  .IR freq )
>  and output values.
> diff --git a/man2/eventfd.2 b/man2/eventfd.2
> index c1cb40894..5f25ca82b 100644
> --- a/man2/eventfd.2
> +++ b/man2/eventfd.2
> @@ -183,7 +183,7 @@ event.
>  As noted above,
>  .BR write (2)
>  can never overflow the counter.
> -However an overflow can occur if 2^64
> +However an overflow can occur if 2\[ha]64
>  eventfd "signal posts" were performed by the KAIO
>  subsystem (theoretically possible, but practically unlikely).
>  If an overflow has occurred, then
> diff --git a/man2/mmap2.2 b/man2/mmap2.2
> index 1c541d55b..1fd5732ad 100644
> --- a/man2/mmap2.2
> +++ b/man2/mmap2.2
> @@ -36,7 +36,7 @@ file in 4096-byte units (instead of bytes, as is done=
 by
>  .BR mmap (2)).
>  This enables applications that use a 32-bit
>  .I off_t
> -to map large files (up to 2^44 bytes).
> +to map large files (up to 2\[ha]44 bytes).
>  .SH RETURN VALUE
>  On success,
>  .BR mmap2 ()
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index dd90ab007..68f68fe31 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -1681,7 +1681,7 @@ are logged into a ring-buffer.
>  This ring-buffer is created and accessed through
>  .BR mmap (2).
>  .PP
> -The mmap size should be 1+2^n pages, where the first page is a
> +The mmap size should be 1+2\[ha]n pages, where the first page is a
>  metadata page
>  .RI ( "struct perf_event_mmap_page" )
>  that contains various
> diff --git a/man2/quotactl.2 b/man2/quotactl.2
> index 47655d516..30e93966f 100644
> --- a/man2/quotactl.2
> +++ b/man2/quotactl.2
> @@ -88,11 +88,11 @@ The original quota format.
>  .TP
>  .B QFMT_VFS_V0
>  The standard VFS v0 quota format, which can handle 32-bit UIDs and GID=
s
> -and quota limits up to 2^42 bytes and 2^32 inodes.
> +and quota limits up to 2\[ha]42 bytes and 2\[ha]32 inodes.
>  .TP
>  .B QFMT_VFS_V1
>  A quota format that can handle 32-bit UIDs and GIDs
> -and quota limits of 2^63 - 1 bytes and 2^63 - 1 inodes.
> +and quota limits of 2\[ha]63 - 1 bytes and 2\[ha]63 - 1 inodes.
>  .RE
>  .IP
>  The
> diff --git a/man2/shmget.2 b/man2/shmget.2
> index e12915dd8..484dd317f 100644
> --- a/man2/shmget.2
> +++ b/man2/shmget.2
> @@ -297,7 +297,7 @@ the default value for this limit is:
>  .IP
>  .in +4n
>  .EX
> -ULONG_MAX - 2^24
> +ULONG_MAX - 2\[ha]24
>  .EE
>  .in
>  .IP
> @@ -340,7 +340,7 @@ the default value for this limit is:
>  .IP
>  .in +4n
>  .EX
> -ULONG_MAX - 2^24
> +ULONG_MAX - 2\[ha]24
>  .EE
>  .in
>  .IP
> diff --git a/man2/times.2 b/man2/times.2
> index 4f6aac578..745867e8e 100644
> --- a/man2/times.2
> +++ b/man2/times.2
> @@ -155,7 +155,7 @@ On Linux, the "arbitrary point in the past" from wh=
ich the return value of
>  .BR times ()
>  is measured has varied across kernel versions.
>  On Linux 2.4 and earlier, this point is the moment the system was boot=
ed.
> -Since Linux 2.6, this point is \fI(2^32/HZ) \- 300\fP
> +Since Linux 2.6, this point is \fI(2\[ha]32/HZ) \- 300\fP
>  seconds before system boot time.
>  This variability across kernel versions (and across UNIX implementatio=
ns),
>  combined with the fact that the returned value may overflow the range =
of
> diff --git a/man3/drand48.3 b/man3/drand48.3
> index f9425a91e..a93b8655e 100644
> --- a/man3/drand48.3
> +++ b/man3/drand48.3
> @@ -70,14 +70,14 @@ The
>  and
>  .BR nrand48 ()
>  functions return nonnegative
> -long integers uniformly distributed over the interval [0,\ 2^31).
> +long integers uniformly distributed over the interval [0,\ 2\[ha]31).
>  .PP
>  The
>  .BR mrand48 ()
>  and
>  .BR jrand48 ()
>  functions return signed long
> -integers uniformly distributed over the interval [\-2^31,\ 2^31).
> +integers uniformly distributed over the interval [\-2\[ha]31,\ 2\[ha]3=
1).
>  .PP
>  The
>  .BR srand48 (),
> @@ -110,7 +110,7 @@ according to the linear congruential formula:
>  .PP
>  The parameter
>  .I m
> -=3D 2^48, hence 48-bit integer arithmetic is performed.
> +=3D 2\[ha]48, hence 48-bit integer arithmetic is performed.
>  Unless
>  .BR lcong48 ()
>  is called,
> diff --git a/man3/ldexp.3 b/man3/ldexp.3
> index 6ee0f5495..fc944b729 100644
> --- a/man3/ldexp.3
> +++ b/man3/ldexp.3
> @@ -46,7 +46,7 @@ by 2 raised to the power
>  .IR exp .
>  .SH RETURN VALUE
>  On success, these functions return
> -.IR "x * (2^exp)" .
> +.IR "x * (2\[ha]exp)" .
>  .PP
>  If
>  .I exp
> diff --git a/man3/random.3 b/man3/random.3
> index 5ad72d878..7bc300d7b 100644
> --- a/man3/random.3
> +++ b/man3/random.3
> @@ -49,9 +49,9 @@ The
>  function uses a nonlinear additive feedback random
>  number generator employing a default table of size 31 long integers to=

>  return successive pseudo-random numbers in
> -the range from 0 to 2^31\ \-\ 1.
> +the range from 0 to 2\[ha]31\ \-\ 1.
>  The period of this random number generator is very large, approximatel=
y
> -.IR "16\ *\ ((2^31)\ \-\ 1)" .
> +.IR "16\ *\ ((2\[ha]31)\ \-\ 1)" .
>  .PP
>  The
>  .BR srandom ()
> @@ -105,7 +105,7 @@ or be the result of a previous call of
>  The
>  .BR random ()
>  function returns a value between 0 and
> -.IR "(2^31)\ \-\ 1" .
> +.IR "(2\[ha]31)\ \-\ 1" .
>  The
>  .BR srandom ()
>  function returns no value.
> diff --git a/man3/tgamma.3 b/man3/tgamma.3
> index d7318c2cb..1ed27bf66 100644
> --- a/man3/tgamma.3
> +++ b/man3/tgamma.3
> @@ -42,7 +42,7 @@ These functions calculate the Gamma function of
>  The Gamma function is defined by
>  .PP
>  .RS
> -Gamma(x) =3D integral from 0 to infinity of t^(x\-1) e^\-t dt
> +Gamma(x) =3D integral from 0 to infinity of t\[ha](x\-1) e\[ha]\-t dt
>  .RE
>  .PP
>  It is defined for every real number except for nonpositive integers.
> diff --git a/man5/proc.5 b/man5/proc.5
> index 7d09da6bb..b253e42f5 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -3073,7 +3073,7 @@ The size in bytes of a certain order is given by =
the formula:
>  .IP
>  .in +4n
>  .EX
> -(2^order)\ *\ PAGE_SIZE
> +(2\[ha]order)\ *\ PAGE_SIZE
>  .EE
>  .in
>  .IP
> @@ -5195,7 +5195,7 @@ On 32-bit platforms, 32768 is the maximum value f=
or
>  .IR pid_max .
>  On 64-bit systems,
>  .I pid_max
> -can be set to any value up to 2^22
> +can be set to any value up to 2\[ha]22
>  .RB ( PID_MAX_LIMIT ,
>  approximately 4 million).
>  .\" Prior to Linux 2.6.10, pid_max could also be raised above 32768 on=
 32-bit
> diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
> index cfd639c52..c40aae96b 100644
> --- a/man7/mount_namespaces.7
> +++ b/man7/mount_namespaces.7
> @@ -1129,7 +1129,7 @@ in the following step:
>                 \fBstrace \-o /tmp/log \e\fP
>                 \fBumount /mnt/dir\fP
>  umount: /etc/shadow: not mounted.
> -# \fBgrep \[aq]^umount\[aq] /tmp/log\fP
> +# \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
>  umount2("/etc/shadow", 0)     =3D \-1 EINVAL (Invalid argument)
>  .EE
>  .in
> diff --git a/man7/random.7 b/man7/random.7
> index 280e798c6..69e6c2403 100644
> --- a/man7/random.7
> +++ b/man7/random.7
> @@ -191,7 +191,7 @@ The amount of seed material required to generate a =
cryptographic key
>  equals the effective key size of the key.
>  For example, a 3072-bit RSA
>  or Diffie-Hellman private key has an effective key size of 128 bits
> -(it requires about 2^128 operations to break) so a key generator
> +(it requires about 2\[ha]128 operations to break) so a key generator
>  needs only 128 bits (16 bytes) of seed material from
>  .IR /dev/random .
>  .PP
> diff --git a/man7/sched.7 b/man7/sched.7
> index ba9196ac8..4da3ea331 100644
> --- a/man7/sched.7
> +++ b/man7/sched.7
> @@ -318,7 +318,7 @@ sched_runtime <=3D sched_deadline <=3D sched_period=

>  In addition, under the current implementation,
>  all of the parameter values must be at least 1024
>  (i.e., just over one microsecond,
> -which is the resolution of the implementation), and less than 2^63.
> +which is the resolution of the implementation), and less than 2\[ha]63=
=2E
>  If any of these checks fails,
>  .BR sched_setattr (2)
>  fails with the error
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index 2daea58af..c0c4a838b 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -300,11 +300,11 @@ Enabling this option can harm the clients of your=
 server.
>  .IR tcp_adv_win_scale " (integer; default: 2; since Linux 2.4)"
>  .\" Since Linux 2.4.0-test7
>  Count buffering overhead as
> -.IR "bytes/2^tcp_adv_win_scale" ,
> +.IR "bytes/2\[ha]tcp_adv_win_scale" ,
>  if
>  .I tcp_adv_win_scale
>  is greater than 0; or
> -.IR "bytes\-bytes/2^(\-tcp_adv_win_scale)" ,
> +.IR "bytes\-bytes/2\[ha](\-tcp_adv_win_scale)" ,
>  if
>  .I tcp_adv_win_scale
>  is less than or equal to zero.
> @@ -368,7 +368,7 @@ but not loaded.
>  This variable defines how many
>  bytes of the TCP window are reserved for buffering overhead.
>  .IP
> -A maximum of (\fIwindow/2^tcp_app_win\fP, mss) bytes in the window
> +A maximum of (\fIwindow/2\[ha]tcp_app_win\fP, mss) bytes in the window=

>  are reserved for the application buffer.
>  A value of 0 implies that no amount is reserved.
>  .\"
> diff --git a/man7/udplite.7 b/man7/udplite.7
> index 6e2330340..509b3060c 100644
> --- a/man7/udplite.7
> +++ b/man7/udplite.7
> @@ -64,15 +64,15 @@ The following two options are specific to UDP-Lite.=

>  .B UDPLITE_SEND_CSCOV
>  This option sets the sender checksum coverage and takes an
>  .I int
> -as argument, with a checksum coverage value in the range 0..2^16-1.
> +as argument, with a checksum coverage value in the range 0..2\[ha]16-1=
=2E
>  .IP
>  A value of 0 means that the entire datagram is always covered.
>  Values from 1\-7 are illegal (RFC\ 3828, 3.1) and are rounded up to
>  the minimum coverage of 8.
>  .IP
>  With regard to IPv6 jumbograms (RFC\ 2675), the UDP-Litev6 checksum
> -coverage is limited to the first 2^16-1 octets, as per RFC\ 3828, 3.5.=

> -Higher values are therefore silently truncated to 2^16-1.
> +coverage is limited to the first 2\[ha]16-1 octets, as per RFC\ 3828, =
3.5.
> +Higher values are therefore silently truncated to 2\[ha]16-1.
>  If in doubt, the current coverage value can always be queried using
>  .BR getsockopt (2).
>  .TP
> diff --git a/man7/units.7 b/man7/units.7
> index e089c2359..4618727ae 100644
> --- a/man7/units.7
> +++ b/man7/units.7
> @@ -15,30 +15,30 @@ Below the standard prefixes.
>  .TS
>  l l l.
>  Prefix	Name	Value
> -q	quecto	10^\-30 =3D 0.000000000000000000000000000001
> -r	ronto	10^\-27 =3D 0.000000000000000000000000001
> -y	yocto	10^\-24 =3D 0.000000000000000000000001
> -z	zepto	10^\-21 =3D 0.000000000000000000001
> -a	atto	10^\-18 =3D 0.000000000000000001
> -f	femto	10^\-15 =3D 0.000000000000001
> -p	pico	10^\-12 =3D 0.000000000001
> -n	nano	10^\-9  =3D 0.000000001
> -\[mc]	micro	10^\-6  =3D 0.000001
> -m	milli	10^\-3  =3D 0.001
> -c	centi	10^\-2  =3D 0.01
> -d	deci	10^\-1  =3D 0.1
> -da	deka	10^ 1  =3D 10
> -h	hecto	10^ 2  =3D 100
> -k	kilo	10^ 3  =3D 1000
> -M	mega	10^ 6  =3D 1000000
> -G	giga	10^ 9  =3D 1000000000
> -T	tera	10^12  =3D 1000000000000
> -P	peta	10^15  =3D 1000000000000000
> -E	exa	10^18  =3D 1000000000000000000
> -Z	zetta	10^21  =3D 1000000000000000000000
> -Y	yotta	10^24  =3D 1000000000000000000000000
> -R	ronna	10^27  =3D 1000000000000000000000000000
> -Q	quetta	10^30  =3D 1000000000000000000000000000000
> +q	quecto	10\[ha]\-30 =3D 0.000000000000000000000000000001
> +r	ronto	10\[ha]\-27 =3D 0.000000000000000000000000001
> +y	yocto	10\[ha]\-24 =3D 0.000000000000000000000001
> +z	zepto	10\[ha]\-21 =3D 0.000000000000000000001
> +a	atto	10\[ha]\-18 =3D 0.000000000000000001
> +f	femto	10\[ha]\-15 =3D 0.000000000000001
> +p	pico	10\[ha]\-12 =3D 0.000000000001
> +n	nano	10\[ha]\-9  =3D 0.000000001
> +\(mc	micro	10\[ha]\-6  =3D 0.000001
> +m	milli	10\[ha]\-3  =3D 0.001
> +c	centi	10\[ha]\-2  =3D 0.01
> +d	deci	10\[ha]\-1  =3D 0.1
> +da	deka	10\[ha] 1  =3D 10
> +h	hecto	10\[ha] 2  =3D 100
> +k	kilo	10\[ha] 3  =3D 1000
> +M	mega	10\[ha] 6  =3D 1000000
> +G	giga	10\[ha] 9  =3D 1000000000
> +T	tera	10\[ha]12  =3D 1000000000000
> +P	peta	10\[ha]15  =3D 1000000000000000
> +E	exa	10\[ha]18  =3D 1000000000000000000
> +Z	zetta	10\[ha]21  =3D 1000000000000000000000
> +Y	yotta	10\[ha]24  =3D 1000000000000000000000000
> +R	ronna	10\[ha]27  =3D 1000000000000000000000000000
> +Q	quetta	10\[ha]30  =3D 1000000000000000000000000000000
>  .TE
>  .RE
>  .PP
> @@ -55,14 +55,14 @@ size, followed by "bi" for "binary".
>  .TS
>  l l l.
>  Prefix	Name	Value
> -Ki	kibi	2^10 =3D 1024
> -Mi	mebi	2^20 =3D 1048576
> -Gi	gibi	2^30 =3D 1073741824
> -Ti	tebi	2^40 =3D 1099511627776
> -Pi	pebi	2^50 =3D 1125899906842624
> -Ei	exbi	2^60 =3D 1152921504606846976
> -Zi	zebi	2^70 =3D 1180591620717411303424
> -Yi	yobi	2^80 =3D 1208925819614629174706176
> +Ki	kibi	2\[ha]10 =3D 1024
> +Mi	mebi	2\[ha]20 =3D 1048576
> +Gi	gibi	2\[ha]30 =3D 1073741824
> +Ti	tebi	2\[ha]40 =3D 1099511627776
> +Pi	pebi	2\[ha]50 =3D 1125899906842624
> +Ei	exbi	2\[ha]60 =3D 1152921504606846976
> +Zi	zebi	2\[ha]70 =3D 1180591620717411303424
> +Yi	yobi	2\[ha]80 =3D 1208925819614629174706176
>  .TE
>  .RE
>  .SS Discussion
> diff --git a/man7/unix.7 b/man7/unix.7
> index 7c987fbd0..e9fe40c9b 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -416,9 +416,9 @@ then the socket is autobound to an abstract address=
=2E
>  The address consists of a null byte
>  followed by 5 bytes in the character set
>  .IR [0\-9a\-f] .
> -Thus, there is a limit of 2^20 autobind addresses.
> +Thus, there is a limit of 2\[ha]20 autobind addresses.
>  (From Linux 2.1.15, when the autobind feature was added,
> -8 bytes were used, and the limit was thus 2^32 autobind addresses.
> +8 bytes were used, and the limit was thus 2\[ha]32 autobind addresses.=

>  The change to 5 bytes came in Linux 2.3.15.)
>  .SS Sockets API
>  The following paragraphs describe domain-specific details and
> diff --git a/man7/utf-8.7 b/man7/utf-8.7
> index abdf6244c..5ff634306 100644
> --- a/man7/utf-8.7
> +++ b/man7/utf-8.7
> @@ -55,7 +55,7 @@ problems with, for example,  \[aq]\e0\[aq] or \[aq]/\=
[aq].
>  The lexicographic sorting order of UCS-4 strings is preserved.
>  .TP
>  *
> -All possible 2^31 UCS codes can be encoded using UTF-8.
> +All possible 2\[ha]31 UCS codes can be encoded using UTF-8.
>  .TP
>  *
>  The bytes 0xc0, 0xc1, 0xfe, and 0xff are never used in the UTF-8 encod=
ing.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------WbHC7hZ4bO00kUdtRV4NHXGe--

--------------1CSsnfoZJswbuYskez1egWYg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPlnfUACgkQnowa+77/
2zLPsA//dnhnNWqQFLrUDyWMKay13gBMBk6BPv+VtQHB3iVimkiGWsrVxW9zLHB3
F6Z09MT+2qXUBYhoAJnO0MxvXF8OjJvGi+XdyA3usYg5NDl8V86H9t8z5A6WHPO8
bE6QytAAEo9A1WzuQDlAoi3hn4I8UOuPPrLe2NLD5tnJn0EWpMPqVc1rQg5kzt98
piEYCBl1E6oW4xrMC1LA52aTTU45qbElHpOLk3t6KFg5DOCVME6I43xlZeeA2tL1
knSf088/r2UUInEuTRXdlAyyEGhpgsHku0/htWZXt7Pt2Ryh8R7uMbtqBXccoi2s
7R/AX97kTzmLueX0yxkosLN81b+ntvyhbJp6lEtp6HvOagShGEkB+sxynB5RJ7Ss
BVt1NaDnGyqSJszgq2STn9sODNniyAerCol0Un2t8SKvgxQO40JX1y69PPx9Rcd2
ghFXAD1ssauELJC2/8EBLZWNB89UdeOcQx69cGRIAk9auBnn/hL/929FYxyTJqX1
a8frpaOMpLAVuS1JwzQfYobmE7q0q349VJObuCLPOPvNYFqhX0LeaoxfMNIDXLZo
c/Ww0rtHMqehCS9BrK2S/BaqEAl+HDldSiXmTUIQb/XGt7qHnkRyXNF5F08aY3Af
eEqp9EdwAQiWhehFSiL3xuSMwpIMSzIj52Zv/LdqW5YF9+yilzA=
=+5IM
-----END PGP SIGNATURE-----

--------------1CSsnfoZJswbuYskez1egWYg--
