Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF365699EC9
	for <lists+linux-man@lfdr.de>; Thu, 16 Feb 2023 22:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbjBPVMM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Feb 2023 16:12:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229866AbjBPVML (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Feb 2023 16:12:11 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF5E13B230
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 13:12:08 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id fi26so7868485edb.7
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 13:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/VyaGYP9Qdx2od72yMPkGBH+qH0JxeWAcJ+WeQPLR+8=;
        b=c98qWLLSGz19FxWINFo40A5M+aO0aY1hlPnwDl6YGZWqGsJyLRfqjink5SdU/vdU/a
         kJlbEcPQLcH6dqW/jVFaHgc2i5JxNzspk130eelmeRwTOw3Jyfw4hAOqaSIntxMzO0by
         fKr4rllNEYt05IUGiybUlfiz9Uljok2+rUExPpBTncXRxeV3W1RvzV+2exBNfna6Bq91
         PDr8c8HOSYgCrl0QuYBPPxhYe+2mQyrXw7ZLHEILEtmzLIVKddf9V/hxiQQqkhOALaJz
         t3YXjXsazO3pRFtNTfYAhjfpPlCcXFkIMoBldTeVc1Eq1X0icb331AVKeP72vW4MOng8
         ns+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/VyaGYP9Qdx2od72yMPkGBH+qH0JxeWAcJ+WeQPLR+8=;
        b=ZoZh/5vl+IRSC0H1laSVjfJQGI3iA9lTaT/xnmGwx+RNEaShrV4U9EEhgTGNLTiLUn
         /o8EFS1ZS8EbYNbLiT+eU66IXOK9mdUEznRo9etR3Kbb96RmT8l3Q5jEjnzrc5DRj2CX
         B9lqOQPzAqx6HJIuqZlDxN9yKLUPHMCZzRJCbRvuG1Fm3jTcDHLEst0AGAbSv+TYUi2e
         zmZZiZPAmViHORKZyAe4MX8dlmcf+xlFcRvK2Unyg1bD8TGVrx6Sel9j2DCcW6FcLUJK
         b0EDelhQEagVnitdQ6yPTEtHDeH80DjDJ9XxHEI0H9LaYio8+NzanOwdgCnK1ux2mqKi
         CmxQ==
X-Gm-Message-State: AO0yUKUqGILVvNUidxO2clzZJDq23aCDhC60gfGGvU9iV/w98Acr81ry
        7ak9eqE+x0h3/QOErHZbJoQVzlkBKOKr9y4+5mfqRKS0
X-Google-Smtp-Source: AK7set/b1/I1Odi2lmK4wivpkdofm77L14VvcO21/+j7NDGcxCky1Cqiym7rxWb7E3NRTGtrHwV3GlXfcHwk1SgPy+0=
X-Received: by 2002:a05:6402:2811:b0:4ac:ce81:9c1d with SMTP id
 h17-20020a056402281100b004acce819c1dmr2620343ede.0.1676581927205; Thu, 16 Feb
 2023 13:12:07 -0800 (PST)
MIME-Version: 1.0
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca> <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <d47cf59d1b4d921aeeb9cbedc06323c4108303b3.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 16 Feb 2023 23:11:53 +0200
Message-ID: <CACKs7VCNztr2c8zeN2WcMv2ryBVFwwRFscZ6DEQAAHwMiGA4Vw@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] man2/: add C digit separators to clarify POSIX
 feature release dates
To:     Brian Inglis <Brian.Inglis@shaw.ca>
Cc:     Linux Man Pages <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Brian,

On Wed, Feb 15, 2023 at 10:28 PM Brian Inglis <Brian.Inglis@shaw.ca> wrote:
>
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
>
> diff --git a/man2/access.2 b/man2/access.2
> index d3deeecba0c7..4c93a132b209 100644
> --- a/man2/access.2
> +++ b/man2/access.2
> @@ -56,7 +56,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR faccessat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L

Not sure how \[aq] renders, but if people want to copy / paste some of
these snippets (for use in their code, or for searching), wouldn't
they need to then remove the separator? I think that can cause
confusion, which you probably don't want documentation to do.

Again, just my 2 cents,
Stefan.

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
>              || ((_XOPEN_SOURCE >= 500) &&
> -                ! (_POSIX_C_SOURCE >= 200112L))
> +                ! (_POSIX_C_SOURCE >= 2001\[aq]12L))
>  .\"    (_XOPEN_SOURCE >= 500 ||
>  .\"        _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED) &&
>      From glibc 2.12 to glibc 2.19:
>          _BSD_SOURCE || _SVID_SOURCE
>              || ((_XOPEN_SOURCE >= 500) &&
> -                ! (_POSIX_C_SOURCE >= 200112L))
> +                ! (_POSIX_C_SOURCE >= 2001\[aq]12L))
>  .\"    (_XOPEN_SOURCE >= 500 ||
>  .\"        _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED) &&
>      Before glibc 2.12:
> diff --git a/man2/chdir.2 b/man2/chdir.2
> index 0bbff4e87842..cca6a568871c 100644
> --- a/man2/chdir.2
> +++ b/man2/chdir.2
> @@ -33,7 +33,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +    /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
>          || _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
>          || /* glibc <= 2.19: */ _BSD_SOURCE
> @@ -53,7 +53,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR fchownat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    _POSIX_C_SOURCE >= 199309L
> +    _POSIX_C_SOURCE >= 1993\[aq]09L
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
> -    _POSIX_C_SOURCE >= 200112L
> +    _POSIX_C_SOURCE >= 2001\[aq]12L
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
> -            || /* Since glibc 2.8: */ _POSIX_C_SOURCE >= 200112L
> +            || /* Since glibc 2.8: */ _POSIX_C_SOURCE >= 2001\[aq]12L
>  .fi
>  .PP
>  .BR fdatasync ():
>  .nf
> -    _POSIX_C_SOURCE >= 199309L || _XOPEN_SOURCE >= 500
> +    _POSIX_C_SOURCE >= 1993\[aq]09L || _XOPEN_SOURCE >= 500
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
> -    _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200112L
> +    _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 2001\[aq]12L
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
> -        _DEFAULT_SOURCE || ! (_POSIX_C_SOURCE >= 200112L)
> +        _DEFAULT_SOURCE || ! (_POSIX_C_SOURCE >= 2001\[aq]12L)
>      glibc 2.12 to glibc 2.19:
> -        _BSD_SOURCE || ! (_POSIX_C_SOURCE >= 200112L)
> +        _BSD_SOURCE || ! (_POSIX_C_SOURCE >= 2001\[aq]12L)
>      Before glibc 2.12:
>          _BSD_SOURCE || _XOPEN_SOURCE >= 500
>  .\"        || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> diff --git a/man2/getsid.2 b/man2/getsid.2
> index 3afccbd9d6bf..355c4df2601a 100644
> --- a/man2/getsid.2
> +++ b/man2/getsid.2
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
>      Before glibc 2.10:
>          _ATFILE_SOURCE
>  .fi
> @@ -49,7 +49,7 @@ It is modified by the process's
>  .I umask
>  in the usual way: in the absence of a default ACL, the mode of the
>  created directory is
> -.RI ( mode " & \[ti]" umask " & 0777)."
> +.RI ( mode " & \[ti]" umask " & 0\[aq]777)."
>  Whether other
>  .I mode
>  bits are honored for the created directory depends on the operating system.
> diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
> index 12e0cee84b85..4732ef705fe0 100644
> --- a/man2/nanosleep.2
> +++ b/man2/nanosleep.2
> @@ -33,7 +33,7 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR nanosleep ():
>  .nf
> -    _POSIX_C_SOURCE >= 199309L
> +    _POSIX_C_SOURCE >= 1993\[aq]09L
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
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    _POSIX_C_SOURCE >= 200112L
> +    _POSIX_C_SOURCE >= 2001\[aq]12L
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
>      _XOPEN_SOURCE >= 500
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200112L
> +    _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 2001\[aq]12L
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
>          || /* glibc <= 2.19: */ _BSD_SOURCE
>  .fi
> @@ -48,7 +48,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR readlinkat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    _POSIX_C_SOURCE >= 200112L
> +    _POSIX_C_SOURCE >= 2001\[aq]12L
>          || /* glibc <= 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/setpgid.2 b/man2/setpgid.2
> index 52c5bd5fcc10..4cf35c3a0c03 100644
> --- a/man2/setpgid.2
> +++ b/man2/setpgid.2
> @@ -46,7 +46,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
>  .fi
>  .PP
>  .BR setpgrp "() (POSIX.1):"
> diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
> index cdc8a8e39f70..45d6db43a0c8 100644
> --- a/man2/sigaltstack.2
> +++ b/man2/sigaltstack.2
> @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
>          || /* glibc <= 2.19: */ _BSD_SOURCE
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
> -    _POSIX_C_SOURCE >= 199309L
> +    _POSIX_C_SOURCE >= 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR sigwaitinfo ()
> diff --git a/man2/stat.2 b/man2/stat.2
> index 8479befccd8d..4bd67667b5c2 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -49,14 +49,14 @@ Feature Test Macro Requirements for glibc (see
>      /* Since glibc 2.20 */ _DEFAULT_SOURCE
>          || _XOPEN_SOURCE >= 500
>  .\"   _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.10: */ _POSIX_C_SOURCE >= 200112L
> +        || /* Since glibc 2.10: */ _POSIX_C_SOURCE >= 2001\[aq]12L
>          || /* glibc 2.19 and earlier */ _BSD_SOURCE
>  .fi
>  .PP
>  .BR fstatat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200112L
> +    _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 2001\[aq]12L
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
>          || /* glibc <= 2.19: */ _BSD_SOURCE
>  .fi
> @@ -44,7 +44,7 @@ Feature Test Macro Requirements for glibc (see
>  .BR symlinkat ():
>  .nf
>      Since glibc 2.10:
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -    _POSIX_C_SOURCE >= 199309L
> +    _POSIX_C_SOURCE >= 1993\[aq]09L
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
> -    _POSIX_C_SOURCE >= 199309L
> +    _POSIX_C_SOURCE >= 1993\[aq]09L
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
> -    _POSIX_C_SOURCE >= 199309L
> +    _POSIX_C_SOURCE >= 1993\[aq]09L
>  .fi
>  .SH DESCRIPTION
>  .BR timer_getoverrun ()
> diff --git a/man2/truncate.2 b/man2/truncate.2
> index 8a00ec3ffba2..bb57666e64b1 100644
> --- a/man2/truncate.2
> +++ b/man2/truncate.2
> @@ -35,7 +35,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +        || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
>          || /* glibc <= 2.19: */ _BSD_SOURCE
>  .fi
>  .PP
> @@ -43,7 +43,7 @@ Feature Test Macro Requirements for glibc (see
>  .nf
>      _XOPEN_SOURCE >= 500
>  .\"    || _XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED
> -        || /* Since glibc 2.3.5: */ _POSIX_C_SOURCE >= 200112L
> +        || /* Since glibc 2.3.5: */ _POSIX_C_SOURCE >= 2001\[aq]12L
>          || /* glibc <= 2.19: */ _BSD_SOURCE
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
> -        _POSIX_C_SOURCE >= 200809L
> +        _POSIX_C_SOURCE >= 2008\[aq]09L
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
> -        (_XOPEN_SOURCE >= 500) && ! (_POSIX_C_SOURCE >= 200809L)
> +        (_XOPEN_SOURCE >= 500)         (_XOPEN_SOURCE >= 500) && ! (_POSIX_C_SOURCE >= 200809L)        (_XOPEN_SOURCE >= 500) && ! (_POSIX_C_SOURCE >= 200809L) ! (_POSIX_C_SOURCE >= 2008\[aq]09L)
>              || /* Since glibc 2.19: */ _DEFAULT_SOURCE
>              || /* glibc <= 2.19: */ _BSD_SOURCE
>      Before glibc 2.12:
> diff --git a/man2/wait.2 b/man2/wait.2
> index e2dcd59bda09..ad031d40ca07 100644
> --- a/man2/wait.2
> +++ b/man2/wait.2
> @@ -53,11 +53,11 @@ Feature Test Macro Requirements for glibc (see
>  .BR waitid ():
>  .nf
>      Since glibc 2.26:
> -        _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
> +        _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 2008\[aq]09L
>  .\"    (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
>      glibc 2.25 and earlier:
>          _XOPEN_SOURCE
> -            || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
> +            || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 2008\[aq]09L
>              || /* glibc <= 2.19: */ _BSD_SOURCE
>  .fi
>  .SH DESCRIPTION
> diff --git a/man2/wait4.2 b/man2/wait4.2
> index a5b38108d318..703df0797f80 100644
> --- a/man2/wait4.2
> +++ b/man2/wait4.2
> @@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
>      Since glibc 2.26:
>          _DEFAULT_SOURCE
>              || (_XOPEN_SOURCE >= 500 &&
> -                ! (_POSIX_C_SOURCE >= 200112L
> +                ! (_POSIX_C_SOURCE >= 2001\[aq]12L
>                     || _XOPEN_SOURCE >= 600))
>      From glibc 2.19 to glibc 2.25:
>          _DEFAULT_SOURCE || _XOPEN_SOURCE >= 500
> --
> 2.39.0
>
