Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21B43202958
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 09:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729415AbgFUHZj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 03:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729410AbgFUHZj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 03:25:39 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DB2C061794
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 00:25:38 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id l26so12089353wme.3
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 00:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tGBZboMbTu+Zi9MSNpzpVMkxXLWN7DwFrKYGlD8K5vE=;
        b=E2W1c4HFUmxVZ62m/D9r5DIsCkknUvb9671kJnhCbQvT7ulDeQ/8P+pebfzylJnSBB
         0CgGWZWlJZGLRn0A6TFf0UkHQlxqAqA7E0gsXkRcvWoqqZOsNDeaz/UQIWC/ScBKdppO
         A1mUMhCMsasXeH7aBu/GElMjEqh4Eq9N6vuRSrwRBLzrS8AhUvv2AeapFSSjQbx2Fyjq
         PjxgGEzwZYung1TeIBwyOWXLE8MeEsV0nTEtknvPwIzoJ6oPb16EV55YxGniTomRrx+y
         WHQyoTS/+JstAwTQy8PzgQqtZXFgZkZZSLDW2bhY0yrTfMIyDtobei3iqEUyHNk/Kjhk
         xzLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tGBZboMbTu+Zi9MSNpzpVMkxXLWN7DwFrKYGlD8K5vE=;
        b=V1cH/wtGGWtC49W5zmBWS2at1wkchQFI5fsjbu0iI8qDdPIGLhFUv2FebtcaXUFvFT
         SOS62K76UgNaoTcQFwOOVX9vLh+zzl3jSo4dCr/H1DzQCQIFJcxEY64StfnD1huLlASF
         AwXyl0Vl3BM+JsSMF4Z99bhnGDBxNehvreKT03ySqKP10aBvnjLGLikLcQlc0yy1p4/O
         XtC2jkAEZYbydeW4Cmv0xL+TpmRR5OXNZLlYH6cetKI/HsBGodBUIpF7FOKGYl95mzZ2
         a9vO8DpS72bg/RFqQ5cBPKubv3yfdWEvu1FR5oR8jX4xPQPxxboLFLmsfmXCYTspumbr
         sr/g==
X-Gm-Message-State: AOAM533lFuEm4JiOnhcqCidpcDXgTbtKrIpBfD70z5PlmerXf61UVeTJ
        iejEw+ZncIyZZhh9unzdbGflnR56
X-Google-Smtp-Source: ABdhPJzwdQFJee+R5PKVQMtIMNyATL0AV1vgFA5Av2r60XAFrmKjC65V/AWs/r2wvBeOJ1LJ4prEWQ==
X-Received: by 2002:a1c:8186:: with SMTP id c128mr12892784wmd.114.1592724336526;
        Sun, 21 Jun 2020 00:25:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id f186sm3095887wmf.29.2020.06.21.00.25.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 00:25:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man5/*: srcfix, fix warnings from "mandoc -Tlint"
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200621000713.GA10250@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1898852e-4fee-1802-43df-a2183abbd496@gmail.com>
Date:   Sun, 21 Jun 2020 09:25:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200621000713.GA10250@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

Patch doesn't apply. Could you take a look please.

Cheers,

Michael


On 6/21/20 2:07 AM, Bjarni Ingi Gislason wrote:
>   Remove superfluous paragraph macros.
> 
>   The output from "nroff" and "groff" is unchanged.
> 
> ###
> 
>   Some examples of warnings:
> 
> mandoc: core.5:576:2: WARNING: skipping paragraph macro: PP empty
> 
> mandoc: elf.5:564:2: WARNING: skipping paragraph macro: IP empty
> 
> mandoc: utmp.5:229:2: WARNING: skipping paragraph macro: PP after SH
> 
> ###
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man5/core.5     | 1 -
>  man5/elf.5      | 3 ---
>  man5/locale.5   | 2 --
>  man5/networks.5 | 1 -
>  man5/proc.5     | 3 ---
>  man5/utmp.5     | 2 --
>  6 files changed, 12 deletions(-)
> 
> diff --git a/man5/core.5 b/man5/core.5
> index 53d173a0c..458a84ee9 100644
> --- a/man5/core.5
> +++ b/man5/core.5
> @@ -573,7 +573,6 @@ as well as the number of the signal which triggered the core dump):
>  # \fBsysctl \-w kernel.core_pattern="%e\-%s.core"\fP
>  .EE
>  .in
> -.PP
>  .\"
>  .SH NOTES
>  The
> diff --git a/man5/elf.5 b/man5/elf.5
> index 3be909870..eb84ab3c8 100644
> --- a/man5/elf.5
> +++ b/man5/elf.5
> @@ -561,7 +561,6 @@ This is defined as 0xffff, the largest number
>  can have, specifying where the actual number of program headers is assigned.
>  .PD
>  .RE
> -.IP
>  .TP
>  .I e_shentsize
>  This member holds a sections header's size in bytes.
> @@ -2129,7 +2128,6 @@ A version string of some sort.
>  Architecture information.
>  .PD
>  .RE
> -.PP
>  .RE
>  .SH NOTES
>  .\" OpenBSD
> @@ -2190,4 +2188,3 @@ Sun Microsystems,
>  .PP
>  AMD64 ABI Draft,
>  .IR "System V Application Binary Interface AMD64 Architecture Processor Supplement" .
> -.PP
> diff --git a/man5/locale.5 b/man5/locale.5
> index be1308b6e..d63488b87 100644
> --- a/man5/locale.5
> +++ b/man5/locale.5
> @@ -104,7 +104,6 @@ the GNU C library supports the following nonstandard categories:
>  See
>  .BR locale (7)
>  for a more detailed description of each category.
> -.PP
>  .SS LC_ADDRESS
>  The definition starts with the string
>  .I LC_ADDRESS
> @@ -1125,7 +1124,6 @@ Each string has the following format:
>  .IR direction ":" offset ":" start_date ":" end_date ":" era_name ":" era_format
>  .PP
>  The fields are to be defined as follows:
> -.PP
>  .TP 4
>  .I direction
>  Either
> diff --git a/man5/networks.5 b/man5/networks.5
> index 75ad20fc9..b85dac3e0 100644
> --- a/man5/networks.5
> +++ b/man5/networks.5
> @@ -59,7 +59,6 @@ The trailing ".0" (for the host component of the network address) may be omitted
>  .I aliases
>  Optional aliases for the network.
>  .PP
> -.PP
>  This file is read by the
>  .BR route (8)
>  and
> diff --git a/man5/proc.5 b/man5/proc.5
> index 6645a1ae8..45c921b49 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2080,7 +2080,6 @@ check (refer to
>  .BR ptrace (2)).
>  If the check denies access, then the field value is displayed as 0.
>  The affected fields are indicated with the marking [PT].
> -.IP
>  .RS
>  .TP 10
>  (1) \fIpid\fP \ %d
> @@ -2826,7 +2825,6 @@ In a multithreaded process, the contents of the
>  directory are not available if the main thread has already terminated
>  (typically by calling
>  .BR pthread_exit (3)).
> -.IP
>  .TP
>  .IR /proc/[pid]/task/[tid]/children " (since Linux 3.5)"
>  .\" commit 818411616baf46ceba0cff6f05af3a9b294734f7
> @@ -3984,7 +3982,6 @@ sl  local_address rem_address   st tx_queue rx_queue tr rexmits  tm\->when uid
>   1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 00000000 0
>  .EE
>  .in
> -.IP
>  .TP
>  .I /proc/net/unix
>  Lists the UNIX domain sockets present within the system and their
> diff --git a/man5/utmp.5 b/man5/utmp.5
> index 425e805d0..2ed616761 100644
> --- a/man5/utmp.5
> +++ b/man5/utmp.5
> @@ -226,7 +226,6 @@ removed, record-keeping is turned off.
>  .br
>  .I /var/log/wtmp
>  .SH CONFORMING TO
> -.PP
>  POSIX.1 does not specify a
>  .I utmp
>  structure, but rather one named
> @@ -278,7 +277,6 @@ Linux uses the BSD conventions for line contents, as documented above.
>  .\" informative messages such as \fB"new time"\fP in the line field.
>  System V has no \fIut_host\fP or \fIut_addr_v6\fP fields.
>  .SH NOTES
> -.PP
>  Unlike various other
>  systems, where utmp logging can be disabled by removing the file, utmp
>  must always exist on Linux.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
