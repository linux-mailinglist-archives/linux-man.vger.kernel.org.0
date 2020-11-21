Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBDD2BC26C
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 23:34:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728552AbgKUWeB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 17:34:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728541AbgKUWeB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 17:34:01 -0500
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4A1DC0613CF
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 14:34:00 -0800 (PST)
Received: by mail-ej1-x642.google.com with SMTP id a16so18046585ejj.5
        for <linux-man@vger.kernel.org>; Sat, 21 Nov 2020 14:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ngzVUpRkFSy555X47HFruDMRMj2QaNoh7F6d0dDAkt8=;
        b=YppvrodpARX48eq+i7yVX2MoVWP0SYgrswKWlskivy5Fq9JEVjHBQfk7PzwWahMv/+
         xc9FMxY/mTESn2lPNINa5McQH6F32v/xhmM9KbyBht7GXYxPueVfW+pqV2FLRw1Lgbzo
         H2nRXFP3BqiZtbI+v3LqIJKW/YIIuCtp90j94FE/GFzHtiZIrQwA573N+I0FpAVa6RFN
         O+1S0PioFkaCmy0DLKYXzZ2zFO1qESgtOWAWytZO1K/I37jim8/nsHEDn26wTEeQ0hJe
         xC32oJmYfKEqCd8oPNM1QCTOdmmZKpilKsKMdsOQeV9QshStcECIKRTVXuwgtAOQUvxN
         r9sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ngzVUpRkFSy555X47HFruDMRMj2QaNoh7F6d0dDAkt8=;
        b=gpa/98Iz/PCHuYcr8w5BJ+7JtH2Hr5AYgSUFlGa5RQmBQI3azIJtNVxgWvq7avMU+M
         8m3vVkTXNiThaiSS54vHuBO53sBOUDL3OU9ZLaU5e5U+jMWRJtiRHFuFGBC1i5IM26Mn
         ltsJnnYgRjM7J42U0RJSQ3cGBaVjHWK9SiF5fBRop77SFDixWkQmXkpG8Qw1z4QMGm17
         90QjYX1PFTEBFOG3KKRhDq/fQ6kERwfMyq8d5SpKF9m++lVzfHWXyU0oRpMbvuk/ahSa
         c61/Dtloa5U/tkBcPZRn2Po22lGDsGcIWaNUjE/nIO4bfxEAx81YTigQVw9nyH+zmMt8
         hrcg==
X-Gm-Message-State: AOAM532KEqTGbcyhed0rBc7y5MSXbxx+m4T2MS7vbztYyAjdk30gZxjS
        VAEcqmBos5u5+mrlmlQYuRiLNlTnWlbvLw==
X-Google-Smtp-Source: ABdhPJzEim/gRb6kKwjGw2TJ5d1lRaOEypdX3EKsWqGvLEeNACQCzwcRH36G/z7XdrprW52N0ppu1g==
X-Received: by 2002:a17:906:4104:: with SMTP id j4mr39857702ejk.439.1605998039293;
        Sat, 21 Nov 2020 14:33:59 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id l7sm2958949ejc.5.2020.11.21.14.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 14:33:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] capget.2, execve.2, readv.2, socketpair.2, utime.2,
 utimensat.2, getloadavg.3, proc.5, mount_namespaces.7, unix.7: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <2c1df93c-15d9-fb81-b85e-1a4a310b0cac@gmail.com>
 <20201121220349.18510-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c0882d87-27d5-213e-0f9a-cc5a243aae73@gmail.com>
Date:   Sat, 21 Nov 2020 23:33:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201121220349.18510-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/21/20 11:03 PM, Alejandro Colomar wrote:
> {.IR var [x]} -> {.I var[x]}
> 
> There were around 15 entries of the former,
> and around 360 of the latter.
> 
> Found using:
> $ grep -rn '^\.I[ |R].* \[.*\]' |sort

Thanks, Alex. Patch applied.

Cheers,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/capget.2     | 6 +++---
>  man2/execve.2     | 2 +-
>  man2/readv.2      | 8 ++++----
>  man2/socketpair.2 | 4 ++--
>  man2/utime.2      | 4 ++--
>  man2/utimensat.2  | 4 ++--
>  man3/getloadavg.3 | 2 +-
>  7 files changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/man2/capget.2 b/man2/capget.2
> index 9d2f6d90c..36ad7c27c 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -98,11 +98,11 @@ There was, however, an API glitch, and Linux 2.6.26 added
>  to fix the problem.
>  .PP
>  Note that 64-bit capabilities use
> -.IR datap [0]
> +.I datap[0]
>  and
> -.IR datap [1],
> +.IR datap[1] ,
>  whereas 32-bit capabilities use only
> -.IR datap [0].
> +.IR datap[0] .
>  .PP
>  On kernels that support file capabilities (VFS capabilities support),
>  these system calls behave slightly differently.
> diff --git a/man2/execve.2 b/man2/execve.2
> index 5f33332ca..5e995f289 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -354,7 +354,7 @@ is the series of words pointed to by the
>  argument of
>  .BR execve (),
>  starting at
> -.IR argv [1].
> +.IR argv[1] .
>  Note that there is no way to get the
>  .IR argv[0]
>  that was passed to the
> diff --git a/man2/readv.2 b/man2/readv.2
> index 5a8b74168..d8ae756a9 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -119,9 +119,9 @@ Buffers are processed in array order.
>  This means that
>  .BR readv ()
>  completely fills
> -.IR iov [0]
> +.I iov[0]
>  before proceeding to
> -.IR iov [1],
> +.IR iov[1] ,
>  and so on.
>  (If there is insufficient data, then not all buffers pointed to by
>  .I iov
> @@ -129,9 +129,9 @@ may be filled.)
>  Similarly,
>  .BR writev ()
>  writes out the entire contents of
> -.IR iov [0]
> +.I iov[0]
>  before proceeding to
> -.IR iov [1],
> +.IR iov[1] ,
>  and so on.
>  .PP
>  The data transfers performed by
> diff --git a/man2/socketpair.2 b/man2/socketpair.2
> index 60a90f640..0cc6e5ae1 100644
> --- a/man2/socketpair.2
> +++ b/man2/socketpair.2
> @@ -62,9 +62,9 @@ For further details of these arguments, see
>  .BR socket (2).
>  .PP
>  The file descriptors used in referencing the new sockets are returned in
> -.IR sv [0]
> +.I sv[0]
>  and
> -.IR sv [1].
> +.IR sv[1] .
>  The two sockets are indistinguishable.
>  .SH RETURN VALUE
>  On success, zero is returned.
> diff --git a/man2/utime.2 b/man2/utime.2
> index 03a43a416..24f397b1b 100644
> --- a/man2/utime.2
> +++ b/man2/utime.2
> @@ -110,9 +110,9 @@ struct timeval {
>  .EE
>  .in
>  .PP
> -.IR times [0]
> +.I times[0]
>  specifies the new access time, and
> -.IR times [1]
> +.I times[1]
>  specifies the new modification time.
>  If
>  .I times
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index b75adbaef..eb9d2a2af 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -89,9 +89,9 @@ an open file descriptor,
>  .PP
>  For both calls, the new file timestamps are specified in the array
>  .IR times :
> -.IR times [0]
> +.I times[0]
>  specifies the new "last access time" (\fIatime\fP);
> -.IR times [1]
> +.I times[1]
>  specifies the new "last modification time" (\fImtime\fP).
>  Each of the elements of
>  .I times
> diff --git a/man3/getloadavg.3 b/man3/getloadavg.3
> index be1f114db..015c41dfb 100644
> --- a/man3/getloadavg.3
> +++ b/man3/getloadavg.3
> @@ -61,7 +61,7 @@ averaged over various periods of time.
>  Up to
>  .I nelem
>  samples are retrieved and assigned to successive elements of
> -.IR loadavg [].
> +.IR loadavg[] .
>  The system imposes a maximum of 3 samples, representing averages
>  over the last 1, 5, and 15 minutes, respectively.
>  .SH RETURN VALUE
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
