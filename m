Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5E533E37C4
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 03:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbhHHBCF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 21:02:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbhHHBCF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 21:02:05 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D746C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 18:01:46 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id bo18so304168pjb.0
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 18:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=darso5R52bYs9XBEA9H8H/n4ivOqZuWtcLQs2YmJKxM=;
        b=WBhY6eMKyjkUm8mmUp4ByA/7/1fWDy91W/sDDUj2A0Zbylv7JMJPGkq/XqXiVn8iF3
         2jUk4uUewBnduRXSB6sq5uzB6J3HqldQU4S4p0HrcpzKmnbznQzpYAHyGSn0kHgyy91c
         XWuH1Z3Q7/sKrI5+8MFV64SBRuy8YWL7g5gGt811uqc50asXXgtKBTSXjEmjumC+4k7b
         P37ouB0FvPilNoRQn/hZ6XC22WV6+Li14T9+GWmp1sh7oYV5eoICosav5iQZUGrWuKbR
         7HTMx5wX3bLlG9y0mx0GD20ahGcPom7+XnQIFcXgYk5Yy5+EZD9NyE5QhpakKb3/i6V8
         tPVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=darso5R52bYs9XBEA9H8H/n4ivOqZuWtcLQs2YmJKxM=;
        b=nshxU7n5ecO6mV7I55W5FAghI1OdCFzqj0GZ5S5P6iWzxsiuX03NkfE7SzZaAJSdVa
         jpN3FmtBclR/83Fov1jdCgjUTiWxRqMNgSDnFOt+FrnDVYasGWOBC1g5D9FpwMMqmLSe
         r0beYG3PnIxF7Y2V6scL4KHXcsQoA8bNQS8r53lzevYo0HBwFL16k8dDxUCaaZVEbcNZ
         9UyFD7Bc2stosyr5vUy9dHKH7ma4VyAJt0lT05gZEA/a0vmnQ0IjFr6ef/r1S2MV4mzC
         MQXmQ9cxUWzaaqXB0TkJZh2OIjlNJbyl5uBBzY8/bCR2OpepTs1iCDW02k7MnEmcRDOb
         fYGQ==
X-Gm-Message-State: AOAM532W6vF1mhpdCxyWtdwSZYXP+4J66sfpQiBgUKG2L/iiS533shpe
        d7zB5q9AGAguAJAJrNfo+1ZH3N9xSbY=
X-Google-Smtp-Source: ABdhPJxyeHa7XvaNr9ZuwET9iVEt0dyDnbG8JjtMlLGPo0wW9TejiBjChaOU85x50nKewQgav020kg==
X-Received: by 2002:a17:90a:9318:: with SMTP id p24mr17337055pjo.138.1628384505636;
        Sat, 07 Aug 2021 18:01:45 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id mm7sm3097539pjb.44.2021.08.07.18.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 18:01:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Rodrigo Campos <rodrigo@kinvolk.io>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 16/32] seccomp_unotify.2: Add doc for
 SECCOMP_ADDFD_FLAG_SEND
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-17-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1a858a67-c3a7-2c1b-eec5-ff206b97f82e@gmail.com>
Date:   Sun, 8 Aug 2021 03:01:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-17-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rodrigo, Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Rodrigo Campos <rodrigo@kinvolk.io>
> 
> This flag was recently added to Linux 5.14 by a patch I wrote:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c
> 
> This patch adds documentation for the flag, the error code that the flag
> added and explains in the caveat when it is useful.

Thanks for taking the time to write this patch!

Patch applied.

Cheers,

Michael

> Signed-off-by: Rodrigo Campos <rodrigo@kinvolk.io>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/seccomp_unotify.2 | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
> index 2673d9bc7..9bd27214f 100644
> --- a/man2/seccomp_unotify.2
> +++ b/man2/seccomp_unotify.2
> @@ -739,6 +739,17 @@ When allocating the file descriptor in the target,
>  use the file descriptor number specified in the
>  .I newfd
>  field.
> +.TP
> +.BR SECCOMP_ADDFD_FLAG_SEND
> +Available since Linux 5.14, combines the
> +.B SECCOMP_IOCTL_NOTIF_ADDFD
> +ioctl with
> +.B SECCOMP_IOCTL_NOTIF_SEND
> +into an atomic operation. On successful invocation, the target process's
> +errno will be 0 and the return value will be the file descriptor number that was
> +installed in the target. If allocating the file descriptor in the tatget fails,
> +the target's syscall continues to be blocked until a successful response is
> +sent.
>  .RE
>  .TP
>  .I srcfd
> @@ -801,6 +812,13 @@ Allocating the file descriptor in the target would cause the target's
>  limit to be exceeded (see
>  .BR getrlimit (2)).
>  .TP
> +.B EBUSY
> +If the flag
> +.B SECCOMP_IOCTL_NOTIF_SEND
> +is used, this means the operation can't proceed until other
> +.B SECCOMP_IOCTL_NOTIF_ADDFD
> +requests are processed.
> +.TP
>  .B EINPROGRESS
>  The user-space notification specified in the
>  .I id
> @@ -1131,6 +1149,14 @@ that would
>  normally be restarted by the
>  .BR SA_RESTART
>  flag.
> +.PP
> +Furthermore, if the supervisor response is a file descriptor
> +added with
> +.B SECCOMP_IOCTL_NOTIF_ADDFD,
> +then the flag
> +.B SECCOMP_ADDFD_FLAG_SEND
> +can be used to atomically add the file descriptor and return that value,
> +making sure no file descriptors are inadvertently leaked into the target.
>  .\" FIXME
>  .\" About the above, Kees Cook commented:
>  .\"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
