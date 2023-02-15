Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4974698712
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:10:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbjBOVKs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:10:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbjBOVJp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:09:45 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4C8E2885C
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:08:59 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id r18so57874wmq.5
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mLusFxV0OVeNGQbYZkyQJZIdOgIORNtUNGc9Qj7oUd8=;
        b=p7/vKFzlPU+r/Efvj3Nc+OlzpWr78vLFwE3yEXyx2UfP0s6/gaWikXiz2HxIqKPSd+
         7a1uuOpddpT+Vg7lVfr4X4mH3znSfm6J61JVm/xhKhN1J/YjfkEBWOEDLGwAp6EVzbje
         P2AOurATABHtm5JzrYlrbXlgVYd+998hMFcL9tFon0VFayVoAgd4xjU/89oXYbsGzAcs
         SFCzDb3QSMmd4aBVJRjR8tr7LyAHj81GbD6JBwDNZfy+YmWDLXaDjUfAlkvrBL6DHGx0
         pZo4VMO89c+Zx7pQNTLbPl+Ge2+DCXPyv5apnJIJapbDkZb6FS3f5F6NS1yZfLnrqLc/
         Xang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mLusFxV0OVeNGQbYZkyQJZIdOgIORNtUNGc9Qj7oUd8=;
        b=Ws2qS+ZeDQu31ZKBIbP0+xgrVRY98aIdjykVESZgrBlzyy7wf12gNZM9RcRQgOBdFz
         f1VB+op5hL8oB3/x8M88cSNfBzmsSFsh22fTUXpSgEfthocSLVLU3kO9D2KyoC3Aa96f
         fmpB2NcHJc+4J2FuSXLePtCI0odCO1XpbwTBw+JW47NpzsxAhUZcmsXaygTF7i8GBGQP
         hasoHnWM+3usIFRSHapkNBf9VQx7ah00nCc2OvS5MMZaNlnZ1NuM8iG+Gp4aRDTaFIoQ
         1AK/jNoQOrmg5A4Ax+STbd+LlJLQFFM42YQDmllPBq/Agy39wrkhIpBSk0CtoPne/YLH
         8ymQ==
X-Gm-Message-State: AO0yUKXlvQTbFhx4Yonv64L+7vr4phq7CKV3M2jmLYABW7k3kZTDmzF3
        Nb8vmBpPolbMjjwo31K5rKD9MpUjiOA=
X-Google-Smtp-Source: AK7set+6NglJ0SeyKy9GPCgEIcb5rz24g4J0O5ieIugNXv53RIPcNp2SRqiFXnZEUHAxRJV2SuvEZg==
X-Received: by 2002:a05:600c:1694:b0:3da:270b:ba6b with SMTP id k20-20020a05600c169400b003da270bba6bmr3012575wmn.41.1676495334547;
        Wed, 15 Feb 2023 13:08:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l19-20020a1ced13000000b003e1f6e18c95sm3206117wmh.21.2023.02.15.13.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 13:08:54 -0800 (PST)
Message-ID: <e46c1a6a-e4d0-5019-f977-ad01e0694e3c@gmail.com>
Date:   Wed, 15 Feb 2023 22:08:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 3/6] man2/: add C digit separators to clarify POSIX
 feature release dates
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hCXpYTD0jWK3qoQ7t5wByc8I"
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
--------------hCXpYTD0jWK3qoQ7t5wByc8I
Content-Type: multipart/mixed; boundary="------------J0cBXTDV7x9VYRbajP3WdjVa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <e46c1a6a-e4d0-5019-f977-ad01e0694e3c@gmail.com>
Subject: Re: [PATCH v3 3/6] man2/: add C digit separators to clarify POSIX
 feature release dates
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>

--------------J0cBXTDV7x9VYRbajP3WdjVa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/15/23 21:17, Brian Inglis wrote:
> ---
>  man2/access.2           | 2 +-
>  man2/brk.2              | 4 ++--
>  man2/chdir.2            | 2 +-
>  man2/chown.2            | 4 ++--
>  man2/clock_getres.2     | 2 +-
>  man2/clock_nanosleep.2  | 2 +-
>  man2/fsync.2            | 4 ++--
>  man2/gethostname.2      | 2 +-
>  man2/getpagesize.2      | 4 ++--
>  man2/getsid.2           | 2 +-
>  man2/link.2             | 2 +-
>  man2/mkdir.2            | 4 ++--
>  man2/nanosleep.2        | 2 +-
>  man2/open.2             | 4 ++--
>  man2/posix_fadvise.2    | 2 +-
>  man2/pread.2            | 2 +-
>  man2/readlink.2         | 4 ++--
>  man2/rename.2           | 2 +-
>  man2/seteuid.2          | 2 +-
>  man2/setpgid.2          | 2 +-
>  man2/sigaltstack.2      | 2 +-
>  man2/sigwaitinfo.2      | 2 +-
>  man2/stat.2             | 4 ++--
>  man2/symlink.2          | 4 ++--
>  man2/timer_create.2     | 2 +-
>  man2/timer_delete.2     | 2 +-
>  man2/timer_getoverrun.2 | 2 +-
>  man2/truncate.2         | 4 ++--
>  man2/unlink.2           | 2 +-
>  man2/vfork.2            | 2 +-
>  man2/wait.2             | 4 ++--
>  man2/wait4.2            | 2 +-
>  32 files changed, 43 insertions(+), 43 deletions(-)
>=20
> diff --git a/man2/access.2 b/man2/access.2
> index d3deeecba0c7..4c93a132b209 100644
> --- a/man2/access.2
> +++ b/man2/access.2
> @@ -56,7 +56,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR faccessat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/brk.2 b/man2/brk.2
> index 31c167c56955..298fd006d742 100644
> --- a/man2/brk.2
> +++ b/man2/brk.2
> @@ -32,13 +32,13 @@ Feature Test Macro Requirements for glibc (see
>      Since glibc 2.19:
>          _DEFAULT_SOURCE
>              || ((_XOPEN_SOURCE >=3D 500) &&
> -                ! (_POSIX_C_SOURCE >=3D 200112L))
> +                ! (_POSIX_C_SOURCE >=3D 2001\[aq]12L))
>  .\"    (_XOPEN_SOURCE >=3D 500 ||
>  .\"        _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED) &&
>      From glibc 2.12 to glibc 2.19:
>          _BSD_SOURCE || _SVID_SOURCE
>              || ((_XOPEN_SOURCE >=3D 500) &&
> -                ! (_POSIX_C_SOURCE >=3D 200112L))
> +                ! (_POSIX_C_SOURCE >=3D 2001\[aq]12L))
>  .\"    (_XOPEN_SOURCE >=3D 500 ||
>  .\"        _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED) &&
>      Before glibc 2.12:
> diff --git a/man2/chdir.2 b/man2/chdir.2
> index 0bbff4e87842..cca6a568871c 100644
> --- a/man2/chdir.2
> +++ b/man2/chdir.2
> @@ -33,7 +33,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>          || /* glibc up to and including 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/chown.2 b/man2/chown.2
> index d66b66f544cb..5c87dfa6aa9b 100644
> --- a/man2/chown.2
> +++ b/man2/chown.2
> @@ -44,7 +44,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR fchown (),
>  .BR lchown ():
>  .nf
> -    /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +    /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>          || _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
> @@ -53,7 +53,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR fchownat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 8d90baaaabd6..b6a3bedbd944 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -39,7 +39,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR clock_gettime (),
>  .BR clock_settime ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  The function
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index 5da8d15699c2..fe78d6bedb11 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -30,7 +30,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR clock_nanosleep ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 200112L
> +    _POSIX_C_SOURCE >=3D 2001\[aq]12L
>  .fi
>  .SH DESCRIPTION
>  Like
> diff --git a/man2/fsync.2 b/man2/fsync.2
> index 9dc99a15a20e..78fc6013b773 100644
> --- a/man2/fsync.2
> +++ b/man2/fsync.2
> @@ -41,12 +41,12 @@ Feature Test Macro Requirements for glibc (see
>          No feature test macros need be defined
>      glibc up to and including 2.15:
>          _BSD_SOURCE || _XOPEN_SOURCE
> -            || /* Since glibc 2.8: */ _POSIX_C_SOURCE >=3D 200112L
> +            || /* Since glibc 2.8: */ _POSIX_C_SOURCE >=3D 2001\[aq]12=
L
>  .fi
>  .PP
>  .BR fdatasync ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L || _XOPEN_SOURCE >=3D 500
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L || _XOPEN_SOURCE >=3D 500
>  .fi
>  .SH DESCRIPTION
>  .BR fsync ()
> diff --git a/man2/gethostname.2 b/man2/gethostname.2
> index bc74610c9c5d..e6d3b5837c2c 100644
> --- a/man2/gethostname.2
> +++ b/man2/gethostname.2
> @@ -30,7 +30,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR gethostname ():
>  .nf
> -    _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 200112L
> +    _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 2001\[aq]12L
>          || /* glibc 2.19 and earlier */ _BSD_SOURCE
>  .\" The above is something of a simplification
>  .\" also before glibc 2.3 there was a bit churn
> diff --git a/man2/getpagesize.2 b/man2/getpagesize.2
> index 39af55619be4..356bb42f08f1 100644
> --- a/man2/getpagesize.2
> +++ b/man2/getpagesize.2
> @@ -23,9 +23,9 @@ Feature Test Macro Requirements for glibc (see
>  .BR getpagesize ():
>  .nf
>      Since glibc 2.20:
> -        _DEFAULT_SOURCE || ! (_POSIX_C_SOURCE >=3D 200112L)
> +        _DEFAULT_SOURCE || ! (_POSIX_C_SOURCE >=3D 2001\[aq]12L)
>      glibc 2.12 to glibc 2.19:
> -        _BSD_SOURCE || ! (_POSIX_C_SOURCE >=3D 200112L)
> +        _BSD_SOURCE || ! (_POSIX_C_SOURCE >=3D 2001\[aq]12L)
>      Before glibc 2.12:
>          _BSD_SOURCE || _XOPEN_SOURCE >=3D 500
>  .\"        || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> diff --git a/man2/getsid.2 b/man2/getsid.2
> index 3afccbd9d6bf..355c4df2601a 100644
> --- a/man2/getsid.2
> +++ b/man2/getsid.2
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR getsid ()
> diff --git a/man2/link.2 b/man2/link.2
> index 60b739eba152..49526bfe36d4 100644
> --- a/man2/link.2
> +++ b/man2/link.2
> @@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR linkat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/mkdir.2 b/man2/mkdir.2
> index b1339a49a513..68539ab7e1ab 100644
> --- a/man2/mkdir.2
> +++ b/man2/mkdir.2
> @@ -32,7 +32,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR mkdirat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> @@ -49,7 +49,7 @@ It is modified by the process's
>  .I umask
>  in the usual way: in the absence of a default ACL, the mode of the
>  created directory is
> -.RI ( mode " & \[ti]" umask " & 0777)."
> +.RI ( mode " & \[ti]" umask " & 0\[aq]777)."

This seems an accident in the patch :)

>  Whether other
>  .I mode
>  bits are honored for the created directory depends on the operating sy=
stem.
> diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
> index 12e0cee84b85..4732ef705fe0 100644
> --- a/man2/nanosleep.2
> +++ b/man2/nanosleep.2
> @@ -33,7 +33,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR nanosleep ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR nanosleep ()
> diff --git a/man2/open.2 b/man2/open.2
> index aefcae1e601e..1bb3640014e6 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -60,7 +60,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR openat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> @@ -1772,7 +1772,7 @@ In Linux 2.4,
>  most filesystems based on block devices require that
>  the file offset and the length and memory address of all I/O segments
>  be multiples of the filesystem block size
> -(typically 4096 bytes).
> +(typically 4Ki bytes).
>  In Linux 2.6.0,
>  this was relaxed to the logical block size of the block device
>  (typically 512 bytes).
> diff --git a/man2/posix_fadvise.2 b/man2/posix_fadvise.2
> index 57c65c810791..cb9b6ea24dd8 100644
> --- a/man2/posix_fadvise.2
> +++ b/man2/posix_fadvise.2
> @@ -28,7 +28,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR posix_fadvise ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 200112L
> +    _POSIX_C_SOURCE >=3D 2001\[aq]12L
>  .fi
>  .SH DESCRIPTION
>  Programs can use
> diff --git a/man2/pread.2 b/man2/pread.2
> index 9a9763323518..7a8fce5764d5 100644
> --- a/man2/pread.2
> +++ b/man2/pread.2
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR pwrite ():
>  .nf
>      _XOPEN_SOURCE >=3D 500
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR pread ()
> diff --git a/man2/readlink.2 b/man2/readlink.2
> index de158da7e355..e23564450af2 100644
> --- a/man2/readlink.2
> +++ b/man2/readlink.2
> @@ -40,7 +40,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR readlink ():
>  .nf
> -    _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 200112L
> +    _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 2001\[aq]12L
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
> @@ -48,7 +48,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR readlinkat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/rename.2 b/man2/rename.2
> index 08e7958f3220..7e4b33cdb9d8 100644
> --- a/man2/rename.2
> +++ b/man2/rename.2
> @@ -40,7 +40,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>  .BR renameat ():
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .PP
> diff --git a/man2/seteuid.2 b/man2/seteuid.2
> index 14b23b3f40b0..4dd30ecfc012 100644
> --- a/man2/seteuid.2
> +++ b/man2/seteuid.2
> @@ -28,7 +28,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR seteuid (),
>  .BR setegid ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 200112L
> +    _POSIX_C_SOURCE >=3D 2001\[aq]12L
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/setpgid.2 b/man2/setpgid.2
> index 52c5bd5fcc10..4cf35c3a0c03 100644
> --- a/man2/setpgid.2
> +++ b/man2/setpgid.2
> @@ -46,7 +46,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>  .fi
>  .PP
>  .BR setpgrp "() (POSIX.1):"
> diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
> index cdc8a8e39f70..45d6db43a0c8 100644
> --- a/man2/sigaltstack.2
> +++ b/man2/sigaltstack.2
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
> index 42209c1806e9..791dc418d6c4 100644
> --- a/man2/sigwaitinfo.2
> +++ b/man2/sigwaitinfo.2
> @@ -28,7 +28,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR sigwaitinfo (),
>  .BR sigtimedwait ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR sigwaitinfo ()
> diff --git a/man2/stat.2 b/man2/stat.2
> index 8479befccd8d..4bd67667b5c2 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -49,14 +49,14 @@ Feature Test Macro Requirements for glibc (see
>      /* Since glibc 2.20 */ _DEFAULT_SOURCE
>          || _XOPEN_SOURCE >=3D 500
>  .\"   _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.10: */ _POSIX_C_SOURCE >=3D 200112L
> +        || /* Since glibc 2.10: */ _POSIX_C_SOURCE >=3D 2001\[aq]12L
>          || /* glibc 2.19 and earlier */ _BSD_SOURCE
>  .fi
>  .PP
>  .BR fstatat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/symlink.2 b/man2/symlink.2
> index 13b2ed1ccd5b..34078fabfe01 100644
> --- a/man2/symlink.2
> +++ b/man2/symlink.2
> @@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR symlink ():
>  .nf
> -    _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 200112L
> +    _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 2001\[aq]12L
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
> @@ -44,7 +44,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR symlinkat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/timer_create.2 b/man2/timer_create.2
> index 6d49da17f89a..0f26075e457c 100644
> --- a/man2/timer_create.2
> +++ b/man2/timer_create.2
> @@ -26,7 +26,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR timer_create ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR timer_create ()
> diff --git a/man2/timer_delete.2 b/man2/timer_delete.2
> index c489d9ec0dff..e0397af5bf4f 100644
> --- a/man2/timer_delete.2
> +++ b/man2/timer_delete.2
> @@ -23,7 +23,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR timer_delete ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR timer_delete ()
> diff --git a/man2/timer_getoverrun.2 b/man2/timer_getoverrun.2
> index 3591e5de5df5..690c19937799 100644
> --- a/man2/timer_getoverrun.2
> +++ b/man2/timer_getoverrun.2
> @@ -23,7 +23,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR timer_getoverrun ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 199309L
> +    _POSIX_C_SOURCE >=3D 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR timer_getoverrun ()
> diff --git a/man2/truncate.2 b/man2/truncate.2
> index 8a00ec3ffba2..bb57666e64b1 100644
> --- a/man2/truncate.2
> +++ b/man2/truncate.2
> @@ -35,7 +35,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]09L
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
>  .PP
> @@ -43,7 +43,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >=3D 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.3.5: */ _POSIX_C_SOURCE >=3D 200112L
> +        || /* Since glibc 2.3.5: */ _POSIX_C_SOURCE >=3D 2001\[aq]12L
>          || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/unlink.2 b/man2/unlink.2
> index 954a19f1534a..4c296e73086b 100644
> --- a/man2/unlink.2
> +++ b/man2/unlink.2
> @@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR unlinkat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >=3D 200809L
> +        _POSIX_C_SOURCE >=3D 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> diff --git a/man2/vfork.2 b/man2/vfork.2
> index 5e6b8226c301..e3c82f1d6bc4 100644
> --- a/man2/vfork.2
> +++ b/man2/vfork.2
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR vfork ():
>  .nf
>      Since glibc 2.12:
> -        (_XOPEN_SOURCE >=3D 500) && ! (_POSIX_C_SOURCE >=3D 200809L)
> +        (_XOPEN_SOURCE >=3D 500)         (_XOPEN_SOURCE >=3D 500) && !=
 (_POSIX_C_SOURCE >=3D 200809L)        (_XOPEN_SOURCE >=3D 500) && ! (_PO=
SIX_C_SOURCE >=3D 200809L) ! (_POSIX_C_SOURCE >=3D 2008\[aq]09L)

Something is weird in this change.

Cheers,
Alex

>              || /* Since glibc 2.19: */ _DEFAULT_SOURCE
>              || /* glibc <=3D 2.19: */ _BSD_SOURCE
>      Before glibc 2.12:
> diff --git a/man2/wait.2 b/man2/wait.2
> index e2dcd59bda09..ad031d40ca07 100644
> --- a/man2/wait.2
> +++ b/man2/wait.2
> @@ -53,11 +53,11 @@ Feature Test Macro Requirements for glibc (see
>  .BR waitid ():
>  .nf
>      Since glibc 2.26:
> -        _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 200809L
> +        _XOPEN_SOURCE >=3D 500 || _POSIX_C_SOURCE >=3D 2008\[aq]09L
>  .\"    (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
>      glibc 2.25 and earlier:
>          _XOPEN_SOURCE
> -            || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 200809L
> +            || /* Since glibc 2.12: */ _POSIX_C_SOURCE >=3D 2008\[aq]0=
9L
>              || /* glibc <=3D 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/wait4.2 b/man2/wait4.2
> index a5b38108d318..703df0797f80 100644
> --- a/man2/wait4.2
> +++ b/man2/wait4.2
> @@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
>      Since glibc 2.26:
>          _DEFAULT_SOURCE
>              || (_XOPEN_SOURCE >=3D 500 &&
> -                ! (_POSIX_C_SOURCE >=3D 200112L
> +                ! (_POSIX_C_SOURCE >=3D 2001\[aq]12L
>                     || _XOPEN_SOURCE >=3D 600))
>      From glibc 2.19 to glibc 2.25:
>          _DEFAULT_SOURCE || _XOPEN_SOURCE >=3D 500

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------J0cBXTDV7x9VYRbajP3WdjVa--

--------------hCXpYTD0jWK3qoQ7t5wByc8I
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtSeUACgkQnowa+77/
2zIYmA//REONgRmSDjQz9Vs/EjGAdk89j0egopeovCTCwnMC87OM056ryp09LKAO
EPQ7jtVuRWFkeTqfKpWGjg15+ld3VeZy+GHCXAWZ74k2U3eLWVJEjIaOpVBCv9e9
513qCbz6RUCnvmKlUNOIq8qauSFUpXB7KtW9SAgcm1HcZhjU7WtmoZEGeqj/F2T4
mt3zBL4as35WwEUtWLL79NRhmkk/KXOqyGjFQ9aSYSo15FVYbJRkMPCrpA1B323y
17wBpAY8P8B0OLoEGrx0VgnGMnAP7vXUzcfIrCu02gdv1z6ChJNVFjyB7N2O7SkB
fxBXnyYHU0Y8kRfomRcRw4bE6XBBYpWni0RQY7B4PhwWttHwXav0mvrAhXkuVtlx
Ko7Rpojv/Es+6UEcmW1nrcozoI4VD8+yQOHn7BlVUJ60/7ns7wAt4sWmc80M8IPu
F28jFpnWCbVcxn5ageksjO1nVvEkBrIC3t2EwdX7SUHe/7INS4Wz/Lwk6VAAUnzX
9LjsFQGJ8KqzxLDNJRZPaM7EVh8/I4MHiUGqsKSL7nRhKiGr2MCmODvzYY8aztzd
Wl/HdaAOnldnZ6QMkEC81gZ2zXmM+FMY1W3hIFAMJW1nfJisJZ7ggd6dZBIGG9ka
h/1NW9shZfnXUk3+DHoB0wT6rR7yKd6lhab3PT8uHrcF9SaxNY0=
=xcpt
-----END PGP SIGNATURE-----

--------------hCXpYTD0jWK3qoQ7t5wByc8I--
