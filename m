Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE81521212A
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:26:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728331AbgGBK0I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:26:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727921AbgGBK0H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:26:07 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89511C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:26:07 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id dr13so28687915ejc.3
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=89CuUslYD2fUIvBiHcq3ed+xowmiZ8zBBi+DPxdVPGg=;
        b=VN9yUs5wzONbGb2RNb48W394c2U/eKxYGsjt9Kef7pPHGweyZCUMJRZrArpQL3GRb7
         brRVb4yBv5waJXMmlQrgqWzy2jJ5ZfTMUoPxAkReGMceESGr7nFXD3BaCutTpHGuB+t7
         IFiVC2La2YHEOh8xyTEw2wRrbOeLfuBfh1dDhP6fpelHeVgnWwWwzBD93mdvtd+XBByI
         D1+yhAFJ/Po6UaIoQSswlfuigKS3nQopQU2yp7NpQH1ko6yjsHXdo3LDQV1btUIBWlDw
         zwtpq5tz+BLfJ88dLTagRIcF07qdgoWkmOEbQdsTWuVxFBYadY5iLtbmo9Z3FkvvyqjN
         1koA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=89CuUslYD2fUIvBiHcq3ed+xowmiZ8zBBi+DPxdVPGg=;
        b=Dte8dwFTO4TEHDyTz2Jk2NPPVDsavSjVE2poFWjVtKvN2pnGjUYJm6U8NM7sK6BG5L
         WFndsRjIbveXKqKnhD07NJea3ju2Kx1gVuMoEeSK3Ta1PlyGwvyKNxM2hy3lDsOdrSxY
         CjqdagpZO8fBprDg/XPOncyewTgEqq1aYbdjGlH6tF6BfDM6EkPz8sA2PeE+srjoZxNo
         aupAZuizbSmAPwHio114a6OPkHjINGaQar+QuR1J8ZkmWgFS+faHIpxcuURB0fwPexty
         mp6eN9s6SYQ2Ma3azzzKfYRYbFCnBMSStah7sVgrz4jXrayOCZpjgSNFdMxqj5VRwa+z
         +OwA==
X-Gm-Message-State: AOAM532Wbz7prtmwV+83n7+3V6K7SrND5AnKAWXoeC/O8qkIlBGkFAJH
        64WARxaFbt/H4eiouhtqVghoiKB7
X-Google-Smtp-Source: ABdhPJya2cX8f7sLVqJ5giOEpFhFod1Cz6T5BbSr7aq3URnZKsJn9NSOViOLz7S8ZdxSqfIMWwAgWA==
X-Received: by 2002:a17:906:3889:: with SMTP id q9mr28732995ejd.318.1593685566166;
        Thu, 02 Jul 2020 03:26:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id 92sm9003369edg.78.2020.07.02.03.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:26:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701220850.GA25056@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <af6422ad-41e3-c1bd-aec4-0f5e2f12103e@gmail.com>
Date:   Thu, 2 Jul 2020 12:26:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701220850.GA25056@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/2/20 12:08 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man2/alloc_hugepages.2   | 2 +-
>  man2/listxattr.2         | 6 +++---
>  man2/mkdir.2             | 4 ++--
>  man2/open.2              | 2 +-
>  man2/ptrace.2            | 2 +-
>  man2/sched_setaffinity.2 | 2 +-
>  man2/seccomp.2           | 2 +-
>  man2/stat.2              | 2 +-
>  man2/unshare.2           | 2 +-
>  9 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
> index 14ed0516a..a5e6cb138 100644
> --- a/man2/alloc_hugepages.2
> +++ b/man2/alloc_hugepages.2
> @@ -146,5 +146,5 @@ boot parameter.
>  .\".PP
>  .\" requires CONFIG_HUGETLB_PAGE (under "Processor type and features")
>  .\" and CONFIG_HUGETLBFS (under "Filesystems").
> -.\" mount -t hugetlbfs hugetlbfs /huge
> +.\" mount \-t hugetlbfs hugetlbfs /huge
>  .\" SHM_HUGETLB
> diff --git a/man2/listxattr.2 b/man2/listxattr.2
> index 28b55c1e1..40fcf377c 100644
> --- a/man2/listxattr.2
> +++ b/man2/listxattr.2
> @@ -203,9 +203,9 @@ and then listing the attributes with the example program.
>  .in +4n
>  .EX
>  $ \fBtouch /tmp/foo\fP
> -$ \fBsetfattr -n user.fred -v chocolate /tmp/foo\fP
> -$ \fBsetfattr -n user.frieda -v bar /tmp/foo\fP
> -$ \fBsetfattr -n user.empty /tmp/foo\fP
> +$ \fBsetfattr \-n user.fred \-v chocolate /tmp/foo\fP
> +$ \fBsetfattr \-n user.frieda \-v bar /tmp/foo\fP
> +$ \fBsetfattr \-n user.empty /tmp/foo\fP
>  $ \fB./listxattr /tmp/foo\fP
>  user.fred: chocolate
>  user.frieda: bar
> diff --git a/man2/mkdir.2 b/man2/mkdir.2
> index 6411080fc..e01062869 100644
> --- a/man2/mkdir.2
> +++ b/man2/mkdir.2
> @@ -66,9 +66,9 @@ The newly created directory will be owned by the effective user ID of the
>  process.
>  If the directory containing the file has the set-group-ID
>  bit set, or if the filesystem is mounted with BSD group semantics
> -.RI ( "mount -o bsdgroups"
> +.RI ( "mount \-o bsdgroups"
>  or, synonymously
> -.IR "mount -o grpid" ),
> +.IR "mount \-o grpid" ),
>  the new directory will inherit the group ownership from its parent;
>  otherwise it will be owned by the effective group ID of the process.
>  .PP
> diff --git a/man2/open.2 b/man2/open.2
> index eb75437ff..9ab75516c 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -1192,7 +1192,7 @@ does not support
>  refers to a regular file that is too large to be opened.
>  The usual scenario here is that an application compiled
>  on a 32-bit platform without
> -.I -D_FILE_OFFSET_BITS=64
> +.I \-D_FILE_OFFSET_BITS=64
>  tried to open a file whose size exceeds
>  .I (1<<31)-1
>  bytes;
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 1233ee994..4d50d2f70 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -2270,7 +2270,7 @@ to the tracee after
>  returns.
>  This is an ordinary signal (similar to one which can be
>  generated by
> -.IR "kill -TRAP" ),
> +.IR "kill \-TRAP" ),
>  not a special kind of ptrace-stop.
>  Employing
>  .B PTRACE_GETSIGINFO
> diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
> index 6b54d202e..00a0ce65c 100644
> --- a/man2/sched_setaffinity.2
> +++ b/man2/sched_setaffinity.2
> @@ -324,7 +324,7 @@ system has two cores, each with two CPUs:
>  .PP
>  .in +4n
>  .EX
> -$ \fBlscpu | egrep -i 'core.*:|socket'\fP
> +$ \fBlscpu | egrep \-i 'core.*:|socket'\fP
>  Thread(s) per core:    2
>  Core(s) per socket:    2
>  Socket(s):             1
> diff --git a/man2/seccomp.2 b/man2/seccomp.2
> index 731e775f4..14b3b443c 100644
> --- a/man2/seccomp.2
> +++ b/man2/seccomp.2
> @@ -940,7 +940,7 @@ numbers on this architecture:
>  .PP
>  .in +4n
>  .EX
> -$ \fBuname -m\fP
> +$ \fBuname \-m\fP
>  x86_64
>  $ \fBsyscall_nr() {
>      cat /usr/src/linux/arch/x86/syscalls/syscall_64.tbl | \e
> diff --git a/man2/stat.2 b/man2/stat.2
> index a5f983b67..ad85e17d7 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -432,7 +432,7 @@ or
>  .IR blkcnt_t .
>  This error can occur when, for example,
>  an application compiled on a 32-bit platform without
> -.I -D_FILE_OFFSET_BITS=64
> +.I \-D_FILE_OFFSET_BITS=64
>  calls
>  .BR stat ()
>  on a file whose size exceeds
> diff --git a/man2/unshare.2 b/man2/unshare.2
> index 720c43ca1..4b7dbb89a 100644
> --- a/man2/unshare.2
> +++ b/man2/unshare.2
> @@ -474,7 +474,7 @@ new shell are in separate mount namespaces:
>  .EX
>  $ \fBreadlink /proc/$$/ns/mnt\fP
>  mnt:[4026531840]
> -$ \fBsudo ./unshare -m /bin/bash\fP
> +$ \fBsudo ./unshare \-m /bin/bash\fP
>  # \fBreadlink /proc/$$/ns/mnt\fP
>  mnt:[4026532325]
>  .EE
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
