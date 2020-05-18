Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEB0D1D886A
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2020 21:45:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728412AbgERTpF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 May 2020 15:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728409AbgERTpF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 May 2020 15:45:05 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC4BC061A0C
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 12:45:04 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id y3so13282324wrt.1
        for <linux-man@vger.kernel.org>; Mon, 18 May 2020 12:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IiSExuN8Hc7xJK85Rh9xdbaap+UkfNFLVKg9kr5WZWM=;
        b=L7cj8HHs5M8EEEtowr3X4Yyn8OHmTL0YdMM+/HM7oH4c+7tJUH1Du4zLne2CfS5NqV
         uZrtGTsfNao8yBSRtvF3+FLv1P6PQQyGHt53cdPNUPJosrlTz4Z8w34a/zYIQznow/uI
         r96ENiutVIPU5JWZQ0r3jfbw4fnYqktEaQYznx+mo501W18WW3BS4E+92R1aHK2Rme49
         k+cAusxsaujJ57sUuk+orYffnse/zlJIkdCvNDDGkQHso4ILaotAS6rpBp55oUSjcMqY
         UMDpNmRPJCY5aDYvqVWfJDlz0XLWDwQke033fhk++w6G3Zwi9d5DJ/3KRza5z1BUpkV/
         kbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IiSExuN8Hc7xJK85Rh9xdbaap+UkfNFLVKg9kr5WZWM=;
        b=BD13HH90t+wOuSJp6Z/zOLhRnsflqYGIdaTMSYSrQok506UJZHPRbtywrpLKvbMlPS
         Pd1/VdBS/jwsUyBFX2Yth1baheT8o0W7l2O0DwWAn/jO5Zd7wJRLz3/tHAW5ztYbhJhV
         6SF33otpRP+AQGSm9XX75418ZlzIg/wknDgc2eaOdZRWPYwPzkN5DwHYSJy4RSECnt3v
         C1t4OvbfHz+pkrG+DjqpVABbNU59l5QQSsz2LTTmN5iWxekX67PCcKa8glEZz1eIdJ+q
         AIroWJUgMSlKO2UViH0NZOmXPXVFmxB8RGejc5QHQqVBJRy+aIuCOlhOtsmxO3IsMCYa
         PTgA==
X-Gm-Message-State: AOAM531HbiQwZgC5zFgUggCYcja/H6vc8btWP6CpKZfDil/MvyyQRzSu
        dpXyobbVPCGKRFx1WRip4A1t8mKxr7g=
X-Google-Smtp-Source: ABdhPJy8Uu0pqXusVrecyzsvf3lgS7AXjlUlI7KwW2lvKZOKCPcKklI8zx0/cFzGIRELiIAOjg/8WA==
X-Received: by 2002:adf:f783:: with SMTP id q3mr21267480wrp.348.1589831103471;
        Mon, 18 May 2020 12:45:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id x5sm18653020wro.12.2020.05.18.12.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 12:45:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Missing commas in SEE ALSO part II
To:     Kir Kolyshkin <kolyshkin@gmail.com>
References: <20200516233425.3006706-1-kolyshkin@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <85070103-2eb1-e4c0-ea31-80fa92a00f97@gmail.com>
Date:   Mon, 18 May 2020 21:39:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516233425.3006706-1-kolyshkin@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kir,

On 5/17/20 1:34 AM, Kir Kolyshkin wrote:
> This is a sequel to commit baf17bc4f2a3f3b02d, addressing the issues
> with missing commas in the middle of SEE ALSO lists that emerged since.
> 
> The awk script from the original commit was not working and had to be
> slightly modified (s/["]SEE ALSO["]/"?SEE ALSO/), otherwise it works
> like a charm. Here's the fixed script and its output just before this
> commit:
> 
> for f in man*/*; do
> awk '
>     /^.SH "?SEE ALSO/ {
> 	sa=1; print "== " FILENAME " =="; print; next
>     }
>     /^\.(PP|SH)/ {
> 	sa=0; no=0; next
>     }
>     /^\.BR/ {
> 	if (sa==1) {
> 	    print;
> 	    if (no == 1)
> 		print "Missing comma in " FILENAME " +" FNR-1; no=0
> 	}
>     }
>     /^\.BR .*)$/ {
> 	if (sa==1)
> 	    no=1;
> 	next
>     }
>     /\.\\"/ {next}
>     /.*/ {
> 	if (sa==1) {
> 	    print; next
> 	}
>     }
> ' $f; done | grep Missing
> Missing comma in man1/memusage.1 +272
> Missing comma in man2/adjtimex.2 +597
> Missing comma in man2/adjtimex.2 +598
> Missing comma in man2/mkdir.2 +252
> Missing comma in man2/sigaction.2 +1045
> Missing comma in man2/sigaction.2 +1047
> Missing comma in man3/mbsnrtowcs.3 +198
> Missing comma in man3/ntp_gettime.3 +142
> Missing comma in man3/strcmp.3 +219
> Missing comma in man3/strtol.3 +302
> Missing comma in man3/wcstombs.3 +120
> Missing comma in man7/user_namespaces.7 +1378
> Missing comma in man7/xattr.7 +198

Thanks for that! Patch applied!

Cheers,

Michael

> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man1/memusage.1        | 2 +-
>  man2/adjtimex.2        | 4 ++--
>  man2/mkdir.2           | 2 +-
>  man2/sigaction.2       | 4 ++--
>  man3/mbsnrtowcs.3      | 2 +-
>  man3/ntp_gettime.3     | 2 +-
>  man3/strcmp.3          | 2 +-
>  man3/strtol.3          | 2 +-
>  man3/wcstombs.3        | 2 +-
>  man7/user_namespaces.7 | 2 +-
>  man7/xattr.7           | 2 +-
>  11 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/man1/memusage.1 b/man1/memusage.1
> index 9cc06838b..aa5739eb0 100644
> --- a/man1/memusage.1
> +++ b/man1/memusage.1
> @@ -269,5 +269,5 @@ main(int argc, char *argv[])
>  .EE
>  .SH SEE ALSO
>  .BR memusagestat (1),
> -.BR mtrace (1)
> +.BR mtrace (1),
>  .BR ld.so (8)
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index 1722369a1..d802d52f9 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -594,8 +594,8 @@ is done by the kernel in timer context.
>  Thus, it will take one tick into the second
>  for the leap second to be inserted or deleted.
>  .SH SEE ALSO
> -.BR clock_gettime (2)
> -.BR clock_settime (2)
> +.BR clock_gettime (2),
> +.BR clock_settime (2),
>  .BR settimeofday (2),
>  .BR adjtime (3),
>  .BR ntp_gettime (3),
> diff --git a/man2/mkdir.2 b/man2/mkdir.2
> index 12b131270..959169cad 100644
> --- a/man2/mkdir.2
> +++ b/man2/mkdir.2
> @@ -249,5 +249,5 @@ argument.
>  .BR stat (2),
>  .BR umask (2),
>  .BR unlink (2),
> -.BR acl (5)
> +.BR acl (5),
>  .BR path_resolution (7)
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index b4e630878..744cdfcc4 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -1042,9 +1042,9 @@ See
>  .BR kill (1),
>  .BR kill (2),
>  .BR pause (2),
> -.BR pidfd_send_signal (2)
> +.BR pidfd_send_signal (2),
>  .BR restart_syscall (2),
> -.BR seccomp (2)
> +.BR seccomp (2),
>  .BR sigaltstack (2),
>  .BR signal (2),
>  .BR signalfd (2),
> diff --git a/man3/mbsnrtowcs.3 b/man3/mbsnrtowcs.3
> index 2e5420305..2e447bac8 100644
> --- a/man3/mbsnrtowcs.3
> +++ b/man3/mbsnrtowcs.3
> @@ -195,6 +195,6 @@ Passing NULL as
>  is not multithread safe.
>  .SH SEE ALSO
>  .BR iconv (3),
> -.BR mbrtowc (3)
> +.BR mbrtowc (3),
>  .BR mbsinit (3),
>  .BR mbsrtowcs (3)
> diff --git a/man3/ntp_gettime.3 b/man3/ntp_gettime.3
> index ff54a1ee0..be80b4801 100644
> --- a/man3/ntp_gettime.3
> +++ b/man3/ntp_gettime.3
> @@ -139,7 +139,7 @@ is described in the NTP Kernel Application Program Interface.
>  .BR ntp_gettimex ()
>  is a GNU extension.
>  .SH SEE ALSO
> -.BR adjtimex (2)
> +.BR adjtimex (2),
>  .BR ntp_adjtime (3),
>  .BR time (7)
>  .PP
> diff --git a/man3/strcmp.3 b/man3/strcmp.3
> index dd187be22..f1046f2e3 100644
> --- a/man3/strcmp.3
> +++ b/man3/strcmp.3
> @@ -216,5 +216,5 @@ main(int argc, char *argv[])
>  .BR strncasecmp (3),
>  .BR strverscmp (3),
>  .BR wcscmp (3),
> -.BR wcsncmp (3)
> +.BR wcsncmp (3),
>  .BR ascii (7)
> diff --git a/man3/strtol.3 b/man3/strtol.3
> index 960f61b3e..02598b983 100644
> --- a/man3/strtol.3
> +++ b/man3/strtol.3
> @@ -299,5 +299,5 @@ main(int argc, char *argv[])
>  .BR atoi (3),
>  .BR atol (3),
>  .BR strtod (3),
> -.BR strtoimax (3)
> +.BR strtoimax (3),
>  .BR strtoul (3),
> diff --git a/man3/wcstombs.3 b/man3/wcstombs.3
> index 8b3ca7d6f..749cc7b26 100644
> --- a/man3/wcstombs.3
> +++ b/man3/wcstombs.3
> @@ -117,5 +117,5 @@ provides a better interface to the same functionality.
>  .BR mblen (3),
>  .BR mbstowcs (3),
>  .BR mbtowc (3),
> -.BR wcsrtombs (3)
> +.BR wcsrtombs (3),
>  .BR wctomb (3)
> diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
> index 0f2c89184..1975daf5e 100644
> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
> @@ -1375,7 +1375,7 @@ main(int argc, char *argv[])
>  .BR subgid (5),         \" From the shadow package
>  .BR subuid (5),         \" From the shadow package
>  .BR capabilities (7),
> -.BR cgroup_namespaces (7)
> +.BR cgroup_namespaces (7),
>  .BR credentials (7),
>  .BR namespaces (7),
>  .BR pid_namespaces (7)
> diff --git a/man7/xattr.7 b/man7/xattr.7
> index 706dfa344..23a928c1b 100644
> --- a/man7/xattr.7
> +++ b/man7/xattr.7
> @@ -195,5 +195,5 @@ This page was formerly named
>  .BR removexattr (2),
>  .BR setxattr (2),
>  .BR acl (5),
> -.BR capabilities (7)
> +.BR capabilities (7),
>  .BR selinux (8)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
