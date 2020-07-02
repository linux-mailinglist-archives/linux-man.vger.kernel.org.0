Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40B7121213A
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728355AbgGBK23 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:28:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbgGBK23 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:28:29 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0231C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:28:28 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id d16so16412366edz.12
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZO8Hn8WvVBDCLw7iNoQT3aBJsAaIIcujEPOmmHoIVrA=;
        b=jPiBUk4Iul2QLjfXt5mOmHxNL7yVIFYOA7ddP7dkaJl7Ow5f+iQIzFgYfT/IRTulac
         lsWCRkR1gUWJnavwETyyP7CgjaawddgEjVMxqxMwUR3+VFO3iXYR+pDT6VojcXaleDqY
         Q1Ty7xgvg0AZHce3JtNqb6mImsANYoabi61tDRg4XHyavB5NdF2WCwqc2EAznnemoBj3
         Vo1odKjDmKuMdqNtYAxdvLizDcwuRD13+ayfNf72fgNehbwPwd36FG9W4S3ksx8oCHVG
         wm8J1RCJ3ToCnFYAB3m6Nh7g9O/zUog8WrzVpn5G18dWFpG1EgX1E5k0So2992P94vPX
         eu1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZO8Hn8WvVBDCLw7iNoQT3aBJsAaIIcujEPOmmHoIVrA=;
        b=FhDWady8RJ3a5aBKluWaQvfERG++wQ63Soo7R6NamYupQ7CurPVMNPGhOC9l1VubfI
         Ye/ch6Qt4IzjUzJZGv7UEMcPMIE0dqH/dPLe3sqqPaVLYLEE0iOf+ebHNn96cI5AZh8i
         KMLUp8egKlJ073Jvj2kGniPgjwbamTDtGYRWfyGoZR4JQtSBBq3aT4OLPWppP2eKEj7b
         wAmq+30L49OZTJl4NnTt+2VcU4LpDk5Kow5BNaM8q27S3v7SD6ax+RcYnE7I6Lep4oJY
         YFJGsnAgZiAL9Dymlt9ifwkR027kW4z8t8HuqjD2DTE3RGZSe2EAJl3ykhg7L/q1LxIt
         nrSA==
X-Gm-Message-State: AOAM532Brv1i5fFYqe86Jibw+0yKhGdrfWK5jqGOHEJhODYMLy2Lilfb
        WveAOzKGhcrSa7712AOh0lnT9mC6
X-Google-Smtp-Source: ABdhPJzOiAXgU71yIxfEFy/IrpPZCDiPKFOVyn5ZUluQXiG3WBX2d/X878hdOGe5D0l4snBX+cS2Sg==
X-Received: by 2002:aa7:c614:: with SMTP id h20mr33874384edq.29.1593685707440;
        Thu, 02 Jul 2020 03:28:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id c10sm2370683edt.22.2020.07.02.03.28.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:28:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man7/*: ffix, change '-' to '\-' for options and to
 '\(en' for a range
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701233130.GA28916@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <89b92f52-4fa4-b25f-8075-9e4ed1f4e496@gmail.com>
Date:   Thu, 2 Jul 2020 12:28:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701233130.GA28916@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/2/20 1:31 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.
> 
>   Change '-' to '\(en' for a range.

Thanks! Patch applied,

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man7/bootparam.7           |  4 ++--
>  man7/cgroups.7             | 12 ++++++------
>  man7/feature_test_macros.7 |  4 ++--
>  man7/man.7                 |  2 +-
>  man7/math_error.7          |  6 +++---
>  man7/pid_namespaces.7      |  2 +-
>  man7/pthreads.7            |  2 +-
>  7 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/man7/bootparam.7 b/man7/bootparam.7
> index 48a7d047c..888e47c8d 100644
> --- a/man7/bootparam.7
> +++ b/man7/bootparam.7
> @@ -138,7 +138,7 @@ A symbolic specification has the form
>  .IR /dev/XXYN ,
>  where XX designates
>  the device type (e.g., 'hd' for ST-506 compatible hard disk, with Y in
> -\&'a'-'d'; 'sd' for SCSI compatible disk, with Y in 'a'-'e'),
> +\&'a'\(en'd'; 'sd' for SCSI compatible disk, with Y in 'a'\(en'e'),
>  Y the driver letter or
>  number, and N the number (in decimal) of the partition on this device.
>  .IP
> @@ -485,7 +485,7 @@ for older kernels) in the Linux kernel source.
>  .B "IDE Disk/CD-ROM Driver Parameters"
>  The IDE driver accepts a number of parameters, which range from disk
>  geometry specifications, to support for broken controller chips.
> -Drive-specific options are specified by using 'hdX=' with X in 'a'-'h'.
> +Drive-specific options are specified by using 'hdX=' with X in 'a'\(en'h'.
>  .IP
>  Non-drive-specific options are specified with the prefix 'hd='.
>  Note that using a drive-specific prefix for a non-drive-specific option
> diff --git a/man7/cgroups.7 b/man7/cgroups.7
> index 2f4307bef..deed09d44 100644
> --- a/man7/cgroups.7
> +++ b/man7/cgroups.7
> @@ -522,7 +522,7 @@ cgroup filesystem is mounted:
>  .PP
>  .in +4n
>  .EX
> -mount -o release_agent=pathname ...
> +mount \-o release_agent=pathname ...
>  .EE
>  .in
>  .PP
> @@ -549,7 +549,7 @@ it is possible to mount a cgroup hierarchy that has no attached controllers:
>  .PP
>  .in +4n
>  .EX
> -mount -t cgroup -o none,name=somename none /some/mount/point
> +mount \-t cgroup \-o none,name=somename none /some/mount/point
>  .EE
>  .in
>  .PP
> @@ -633,7 +633,7 @@ when mounting the cgroup v2 filesystem using a command such as the following:
>  .PP
>  .in +4n
>  .EX
> -mount -t cgroup2 none /mnt/cgroup2
> +mount \-t cgroup2 none /mnt/cgroup2
>  .EE
>  .in
>  .PP
> @@ -670,7 +670,7 @@ during the boot process.
>  .\"
>  .SS Cgroups v2 mount options
>  The following options
> -.RI ( "mount -o" )
> +.RI ( "mount \-o" )
>  can be specified when mounting the group v2 filesystem:
>  .TP
>  .IR nsdelegate " (since Linux 4.15)"
> @@ -791,7 +791,7 @@ or '\-' (to disable a controller), as in the following example:
>  .IP
>  .in +4n
>  .EX
> -echo '+pids -memory' > x/y/cgroup.subtree_control
> +echo '+pids \-memory' > x/y/cgroup.subtree_control
>  .EE
>  .in
>  .IP
> @@ -1120,7 +1120,7 @@ option as follows:
>  .PP
>  .in +4n
>  .EX
> -mount -t cgroup2 -o remount,nsdelegate \e
> +mount \-t cgroup2 \-o remount,nsdelegate \e
>                   none /sys/fs/cgroup/unified
>  .EE
>  .in
> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
> index 186c8e27d..cba587bf1 100644
> --- a/man7/feature_test_macros.7
> +++ b/man7/feature_test_macros.7
> @@ -220,9 +220,9 @@ ISO Standard C.
>  This macro is implicitly defined by
>  .BR gcc (1)
>  when invoked with, for example, the
> -.I -std=c99
> +.I \-std=c99
>  or
> -.I -ansi
> +.I \-ansi
>  flag.
>  .TP
>  .B _POSIX_C_SOURCE
> diff --git a/man7/man.7 b/man7/man.7
> index 95033539f..7c6daac92 100644
> --- a/man7/man.7
> +++ b/man7/man.7
> @@ -277,7 +277,7 @@ macro, with the optional
>  (if present, usually a closing parenthesis and/or end-of-sentence
>  punctuation) immediately following.
>  For non-HTML output devices (e.g.,
> -.BR "man -Tutf8" ),
> +.BR "man \-Tutf8" ),
>  the link text is followed by the URL in angle brackets; if there is no
>  link text, the URL is printed as its own link text, surrounded by angle
>  brackets.
> diff --git a/man7/math_error.7 b/man7/math_error.7
> index 1a07a2318..187c0b1cc 100644
> --- a/man7/math_error.7
> +++ b/man7/math_error.7
> @@ -240,7 +240,7 @@ and POSIX.1.
>  .PP
>  The
>  .BR gcc (1)
> -.I "-fno-math-errno"
> +.I "\-fno-math-errno"
>  option causes the executable to employ implementations of some
>  mathematical functions that are faster than the standard
>  implementations, but do not set
> @@ -248,9 +248,9 @@ implementations, but do not set
>  on error.
>  (The
>  .BR gcc (1)
> -.I "-ffast-math"
> +.I "\-ffast-math"
>  option also enables
> -.IR "-fno-math-errno" .)
> +.IR "\-fno-math-errno" .)
>  An error can still be tested for using
>  .BR fetestexcept (3).
>  .SH SEE ALSO
> diff --git a/man7/pid_namespaces.7 b/man7/pid_namespaces.7
> index 05d821602..1e5a6065f 100644
> --- a/man7/pid_namespaces.7
> +++ b/man7/pid_namespaces.7
> @@ -343,7 +343,7 @@ is:
>  .PP
>  .in +4n
>  .EX
> -$ mount -t proc proc /proc
> +$ mount \-t proc proc /proc
>  .EE
>  .in
>  .PP
> diff --git a/man7/pthreads.7 b/man7/pthreads.7
> index 78f6df17f..c91106d8c 100644
> --- a/man7/pthreads.7
> +++ b/man7/pthreads.7
> @@ -856,7 +856,7 @@ is set to a value other than
>  then this value defines the default stack size for new threads.
>  To be effective, this limit must be set before the program
>  is executed, perhaps using the
> -.I ulimit -s
> +.I ulimit \-s
>  shell built-in command
>  .RI ( "limit stacksize"
>  in the C shell).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
