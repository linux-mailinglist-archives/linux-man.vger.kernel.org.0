Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83C2B2EEEF1
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 09:57:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727146AbhAHI45 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 03:56:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726631AbhAHI44 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 03:56:56 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81F71C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 00:56:16 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id w1so13428847ejf.11
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 00:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ybhR2WMv7gAjt+N1lIEaUbbLD/xoPhxV8rnJz0IVIcw=;
        b=OG2NJeerCVVIMLcS7gzmfY3fPp2qRccozslmKcKhT9oK2ma+of8MQzIBX1T61KQ0qU
         MhvOAv0zXETLgQpzS2rWbZE++v8gynoJerUpGbrwdeKsK3Z5kd1tEwpgFFh8NTaTEYoc
         rBo2pRc5y09fEfsBy+ATLJOPXok6gMAWBALA66ytM0ifzUXRZJL08dEkYekdw5pCtg5h
         YOq3d6WUM6jROg56wItMBDHtoItQ/DSxsPeQOWJ4pI2bC+fV1oaEpvrLQ5obA84z/zyp
         60O/cUwGehPDn6Qo0rRMxed/XCxmfKN3lllEqqlSOP1Mk8rAD0ufW4zocz2uQPr99cLh
         Ywtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ybhR2WMv7gAjt+N1lIEaUbbLD/xoPhxV8rnJz0IVIcw=;
        b=DaD5CTykereo75gst77R/u9ZWx+2NASLTK83CxRXkoVOreq+OUl4LH5dibQv/AusAi
         jE9j+DTW+Pqe1InyTVhLr48WXYaR38rFDVa5nzSOOcvOu0+6R5vDdl8kh8X2W3RMDXmC
         PShv+WEW+5TRtOzGGtqEL4OGNPttaeB/x0bviPy75tNX5G5HT3aCtHNd3nkU1vMxuCBV
         5DKF+EcRun5atLt+DkSnJTkCRhR+lZCtiuicnsl37IdliHO8DnOZgluXEyCrs1/nKnHK
         uFDVYONwf/N/nKGIWlHZr7FKMNZyAoAa/owPsnJtFWccVpGj+MkA6Sc1bZH+zRHnZRN/
         RSTA==
X-Gm-Message-State: AOAM531B/Ou/6DeNEqyAA8Ymx3gOyd01ZLSg3G5QMyW8+qG7OOqjImC8
        6sh+FNjTXUdNH42Us7NMoZ+tTsfoCTk=
X-Google-Smtp-Source: ABdhPJyshbOni4JUU+GejYB8SmKolNRgfcFcEnG2FxjywF1KXeSrCOVBM3nhcd5b4KFTEsosTX6img==
X-Received: by 2002:a17:906:59a:: with SMTP id 26mr1941454ejn.309.1610096174898;
        Fri, 08 Jan 2021 00:56:14 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id c12sm3560225edw.55.2021.01.08.00.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 00:56:14 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] close.2, getpriority.2, ioctl_userfaultfd.2, expm1.3,
 lio_listio.3, rcmd.3, lirc.4, mount_namespaces.7: tfix: Fix punctuation
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210107175514.40983-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <901f59cb-2a67-c9f5-6b11-577dc42fdb9a@gmail.com>
Date:   Fri, 8 Jan 2021 09:56:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210107175514.40983-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 1/7/21 6:55 PM, Alejandro Colomar wrote:
> Found using:
> $ pcregrep -rnM '^..[^"].*[^.]\.\n[a-z]' man?

Nice :-).

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/close.2             | 2 +-
>  man2/getpriority.2       | 2 +-
>  man2/ioctl_userfaultfd.2 | 2 +-
>  man3/expm1.3             | 4 ++--
>  man3/lio_listio.3        | 2 +-
>  man3/rcmd.3              | 4 ++--
>  man4/lirc.4              | 2 +-
>  man7/mount_namespaces.7  | 4 ++--
>  8 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/man2/close.2 b/man2/close.2
> index fed770719..864e9eec2 100644
> --- a/man2/close.2
> +++ b/man2/close.2
> @@ -148,7 +148,7 @@ The behavior in this situation varies across systems.
>  On some systems, when the file descriptor is closed,
>  the blocking system call returns immediately with an error.
>  .PP
> -On Linux (and possibly some other systems), the behavior is different.
> +On Linux (and possibly some other systems), the behavior is different:
>  the blocking I/O system call holds a reference to the underlying
>  open file description, and this reference keeps the description open
>  until the I/O system call completes.
> diff --git a/man2/getpriority.2 b/man2/getpriority.2
> index 2e5e49d57..217cc2dea 100644
> --- a/man2/getpriority.2
> +++ b/man2/getpriority.2
> @@ -93,7 +93,7 @@ calling process, or the real user ID of the calling process.
>  .PP
>  The
>  .I prio
> -argument is a value in the range \-20 to 19 (but see NOTES below).
> +argument is a value in the range \-20 to 19 (but see NOTES below),
>  with \-20 being the highest priority and 19 being the lowest priority.
>  Attempts to set a priority outside this range
>  are silently clamped to the range.
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index 945badf08..4270daf10 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -173,7 +173,7 @@ when the faulting process unmaps virtual memory either explicitly with
>  or implicitly during either
>  .BR mmap (2)
>  or
> -.BR mremap (2).
> +.BR mremap (2),
>  the userfaultfd monitor will receive an event of type
>  .BR UFFD_EVENT_UNMAP .
>  .TP
> diff --git a/man3/expm1.3 b/man3/expm1.3
> index 29e9e2580..73812186c 100644
> --- a/man3/expm1.3
> +++ b/man3/expm1.3
> @@ -162,10 +162,10 @@ Before approximately glibc version 2.11,
>  .\" but not expm1(1.00199970128e5) and beyond.
>  .BR expm1 ()
>  raised a bogus invalid floating-point exception in addition to the expected
> -overflow exception, and returned a NaN instead of positive infinity.
> +overflow exception, and returned a NaN instead of positive infinity,
>  for some large positive
>  .I x
> -values,
> +values.
>  .PP
>  Before version 2.11,
>  .\" It looks like the fix was in 2.11, or possibly 2.12.
> diff --git a/man3/lio_listio.3 b/man3/lio_listio.3
> index 0eb8606fe..d89670f7c 100644
> --- a/man3/lio_listio.3
> +++ b/man3/lio_listio.3
> @@ -71,7 +71,7 @@ The
>  .I nitems
>  argument specifies the size of the array
>  .IR aiocb_list .
> -null pointers in
> +Null pointers in
>  .I aiocb_list
>  are ignored.
>  .PP
> diff --git a/man3/rcmd.3 b/man3/rcmd.3
> index f3c0c82d8..9f0b72a6f 100644
> --- a/man3/rcmd.3
> +++ b/man3/rcmd.3
> @@ -172,9 +172,9 @@ This socket is suitable for use by
>  and several other functions.
>  Privileged ports are those in the range 0 to 1023.
>  Only a privileged process
> -(on Linux: a process that has the
> +(on Linux, a process that has the
>  .B CAP_NET_BIND_SERVICE
> -capability in the user namespace governing its network namespace).
> +capability in the user namespace governing its network namespace)
>  is allowed to bind to a privileged port.
>  In the glibc implementation,
>  this function restricts its search to the ports from 512 to 1023.
> diff --git a/man4/lirc.4 b/man4/lirc.4
> index f6c41763e..999cdc571 100644
> --- a/man4/lirc.4
> +++ b/man4/lirc.4
> @@ -148,7 +148,7 @@ The following ioctls can be used to probe or change specific
>  .B lirc
>  hardware settings.
>  Many require a third argument, usually an
> -.IR int .
> +.IR int ,
>  referred to below as
>  .IR val .
>  .\"
> diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
> index b086e99d4..4a736a11c 100644
> --- a/man7/mount_namespaces.7
> +++ b/man7/mount_namespaces.7
> @@ -1100,9 +1100,9 @@ may desire to prevent propagation of mount events to other mount namespaces
>  .BR unshare (1)).
>  This can be done by changing the propagation type of
>  mount points in the new namespace to either
> -.BR MS_SLAVE
> +.B MS_SLAVE
>  or
> -.BR MS_PRIVATE .
> +.BR MS_PRIVATE ,
>  using a call such as the following:
>  .PP
>  .in +4n
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
