Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35BA355A87E
	for <lists+linux-man@lfdr.de>; Sat, 25 Jun 2022 11:34:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232520AbiFYJSh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Jun 2022 05:18:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232489AbiFYJSg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Jun 2022 05:18:36 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D41E2ED72
        for <linux-man@vger.kernel.org>; Sat, 25 Jun 2022 02:18:35 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g4so8323973lfv.9
        for <linux-man@vger.kernel.org>; Sat, 25 Jun 2022 02:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5RiyOnAIv/SN1wqnq44CLhXneTLLmPvXAaUWxiPG/6Y=;
        b=n945Gk0cPKwcidbL9WEUn6TpHU7/daCZHXldipzPoLwxnkQIxl4ichYIJVcwebqasm
         dh497RhnNKwoViUmqOKBVFWDqtIsBBIvbxG9HUP/0VBXmhO8Z1lig2SC9qTPn7T+6BW3
         WjMo3fRkyUiA5MDwR3CX3IBkiadr9wKDiwSvVs9kt2t2Ab9ZUPjCwr+Nf0RhL5j09Nio
         c7ndU+X7c2YkssQ26WAfIIUl2vdhmY1pISJsA0f123kFkH7cPwglHEQchSaFV8RMvdRR
         nbe4ppiYkjLTMx+2Z/lLlpZzM+8+wanyhlwQkGbtubnNYVjtQtbQXJuZBzTcLgQyxmxY
         jQQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5RiyOnAIv/SN1wqnq44CLhXneTLLmPvXAaUWxiPG/6Y=;
        b=Mqk94kHMDkin2/7tcsAaEj3XvsSIUtELC8mgO7106qjEvr7pAyMDnTiX6JT1Z+n8ht
         q9tcv7S8dWux8VwyCA3mZW6HmyPHAnyyPwZF6C8usq4E63fvjqonM2n1Trqaapy/h/Zx
         ZiAJPcxfZ2xm5r9nJa2PGzvSRMrMih4Vfy0W5eRDAIKTQi60VsZsNuAxoE+F5qSJFia3
         /8ivkVqY3F12/zHqRZxuRuPhMh9A4TFfq704DK+P44ISANcKN88neW1t34e5a0xT80LX
         Yx4IV6IbAAAae7tbFXgyNDcYbSoIy3tH0MO9dlQRFs1DlWz+ly3hDU4J0Yfu7QCu6NFo
         EsZg==
X-Gm-Message-State: AJIora+CJkE48C8teAIGKEyBz8mWAPkl7DsvVJKK3wQwcllMdju3DeTy
        nNnxtC2KkEECrFfn5lazPB4T5bzA2dyuqhE2SZjRDVpI
X-Google-Smtp-Source: AGRyM1s3X2ndRU/2u8PoXgZlFlwilcWGB9bi028di0TRd8GF3d8dos3VrAbZfTszSK2tyo8AECijgVEb86XMmeBXXVQ=
X-Received: by 2002:a05:6512:3486:b0:47f:8790:85b with SMTP id
 v6-20020a056512348600b0047f8790085bmr2006014lfr.551.1656148713343; Sat, 25
 Jun 2022 02:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAMZQ0rLCM_7-pabFTZNkheXZ+N6+YaLBDjJCGM3U+FYRaCBgfA@mail.gmail.com>
In-Reply-To: <CAMZQ0rLCM_7-pabFTZNkheXZ+N6+YaLBDjJCGM3U+FYRaCBgfA@mail.gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Sat, 25 Jun 2022 12:18:21 +0300
Message-ID: <CACKs7VCQWcbK6+vPm1DGUOOG28yR9sgYE366DAT3y5hAAMMfBQ@mail.gmail.com>
Subject: Re: [PATCH] fallocate.2, getdents.2, rcmd.3, capabilities.7,
 feature_test_macros.7, ip.7, pipe.7, socket.7, tcp.7: wfix
To:     Jesse Rosenstock <jmr@google.com>
Cc:     lnx-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Noticed some typos in your patch.

On Fri, Jun 24, 2022 at 6:19 PM Jesse Rosenstock <jmr@google.com> wrote:
>
> Rewrite potentially ambiguous "only since" to something more explicit,
> such as "support was added in".
>
> A continuation of:
> https://lore.kernel.org/linux-man/a06413f0-c87d-f80e-cb3a-e27258fbcd59@gmail.com/T/#t
>
> Signed-off-by: Jesse Rosenstock <jmr@google.com>
> ---
>  man2/fallocate.2           | 2 +-
>  man2/getdents.2            | 4 ++--
>  man3/rcmd.3                | 2 +-
>  man7/capabilities.7        | 2 +-
>  man7/feature_test_macros.7 | 2 +-
>  man7/ip.7                  | 2 +-
>  man7/pipe.7                | 2 +-
>  man7/socket.7              | 4 ++--
>  man7/tcp.7                 | 4 ++--
>  9 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/man2/fallocate.2 b/man2/fallocate.2
> index b4cb3516f..0a15a2f47 100644
> --- a/man2/fallocate.2
> +++ b/man2/fallocate.2
> @@ -470,7 +470,7 @@ is available on Linux since kernel 2.6.23.
>  Support is provided by glibc since version 2.10.
>  The
>  .BR FALLOC_FL_*
> -flags are defined in glibc headers only since version 2.18.
> +flags were added to glibc headers in version 2.18.
>  .\" See http://sourceware.org/bugzilla/show_bug.cgi?id=14964
>  .SH CONFORMING TO
>  .BR fallocate ()
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index 8201c3310..3cb3efc49 100644
> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -91,8 +91,8 @@ struct linux_dirent {
>                           offsetof(struct linux_dirent, d_name)) */
>      /*
>      char           pad;       // Zero padding byte
> -    char           d_type;    // File type (only since Linux
> -                              // 2.6.4); offset is (d_reclen \- 1)
> +    char           d_type;    // File type (added in Linux 2.6.4);
> +                              // offset is (d_reclen \- 1)
>      */
>  }
>  .EE
> diff --git a/man3/rcmd.3 b/man3/rcmd.3
> index b2f06c01d..46460d3e6 100644
> --- a/man3/rcmd.3
> +++ b/man3/rcmd.3
> @@ -315,7 +315,7 @@ and are not present on as wide a range of systems.
>  .BR iruserok ()
>  and
>  .BR iruserok_af ()
> -are declared in glibc headers only since version 2.12.
> +are were missing from glibc headers before version 2.12.

were missing? Or maybe, to be consistent with the rest of the patch,
you could say "were added in glibc headers in version 2.12"?

>  .\" Bug filed 25 Nov 2007:
>  .\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=5399
>  .SH SEE ALSO
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index c65524496..e818fa9e2 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -1218,7 +1218,7 @@ denotes a file capability set
>  Note the following details relating to the above capability
>  transformation rules:
>  .IP * 3
> -The ambient capability set is present only since Linux 4.3.
> +The ambient capability set was added in Linux 4.3.
>  When determining the transformation of the ambient set during
>  .BR execve (2),
>  a privileged file is one that has capabilities or
> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
> index 77362ed23..8fbd26c82 100644
> --- a/man7/feature_test_macros.7
> +++ b/man7/feature_test_macros.7
> @@ -237,7 +237,7 @@ definitions for POSIX.2-1992.
>  .IP \(bu
>  The value 199309L or greater additionally exposes
>  definitions for POSIX.1b (real-time extensions).
> -.\" 199506L functionality is available only since glibc 2.1
> +.\" 199506L functionality was added in glibc 2.1
>  .IP \(bu
>  The value 199506L or greater additionally exposes
>  definitions for POSIX.1c (threads).
> diff --git a/man7/ip.7 b/man7/ip.7
> index 7eee2811e..e60b773a7 100644
> --- a/man7/ip.7
> +++ b/man7/ip.7
> @@ -301,7 +301,7 @@ group, or 0 to indicate any interface.
>  .IP
>  The
>  .I ip_mreqn
> -structure is available only since Linux 2.2.
> +structure was added in Linux 2.2.
>  For compatibility, the old
>  .I ip_mreq
>  structure (present since Linux 1.2) is still supported;
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index bf93cafbf..b704bbee0 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -331,7 +331,7 @@ The target for delivery of signals must be set using the
>  command.
>  On Linux,
>  .B O_ASYNC
> -is supported for pipes and FIFOs only since kernel 2.6.
> +supported for pipes and FIFOs was added in kernel 2.6.

"support for pipes"?

Thanks,
Stefan.

>  .SS Portability notes
>  On some systems (but not Linux), pipes are bidirectional:
>  data can be transmitted in both directions between the pipe ends.
> diff --git a/man7/socket.7 b/man7/socket.7
> index 67736214a..15b763543 100644
> --- a/man7/socket.7
> +++ b/man7/socket.7
> @@ -781,9 +781,9 @@ is not changeable on Linux
>  .RB ( setsockopt (2)
>  fails with the error
>  .BR ENOPROTOOPT ).
> +Support for changing
>  .B SO_RCVLOWAT
> -is changeable
> -only since Linux 2.4.
> +was added in Linux 2.4.
>  .IP
>  Before Linux 2.6.28
>  .\" Tested on kernel 2.6.14 -- mtk, 30 Nov 05
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index 0a7c61a37..4aaaeb6be 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -1046,9 +1046,9 @@ As currently implemented, there is a 200
> millisecond ceiling on the time
>  for which output is corked by
>  .BR TCP_CORK .
>  If this ceiling is reached, then queued data is automatically transmitted.
> -This option can be combined with
> +Support for combining this option with
>  .B TCP_NODELAY
> -only since Linux 2.5.71.
> +was added in Linux 2.5.71.
>  This option should not be used in code intended to be portable.
>  .TP
>  .BR TCP_DEFER_ACCEPT " (since Linux 2.4)"
> --
> 2.37.0.rc0.104.g0611611a94-goog
