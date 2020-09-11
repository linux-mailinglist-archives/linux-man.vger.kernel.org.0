Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C792826598A
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 08:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725536AbgIKGpH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 02:45:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725497AbgIKGpA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 02:45:00 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9316AC061573;
        Thu, 10 Sep 2020 23:44:58 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e16so10339772wrm.2;
        Thu, 10 Sep 2020 23:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cWqHeovm590MhuZp19yBBP+HpQpfYturHdDBjMgTDMQ=;
        b=Mz34LlPrqx2gbGO/kxKqKh+YKqc8BexrSuwASwCFl8+IvVXuMvSfwW2Y9Oc3U1lzmJ
         xk1jGw7TkUuR64DA3gdBEQJV/tf99Qc+s+xFqgp4sD2Et2fpS45/QoJbmpw9XPZOWYvU
         a+/jvjDYtuXMfhjktHBGaRjsbj11kIocN3hb35GXzNwTSJk0ZccpV9x6boyIJpbg/E/i
         DFVqTTzTHdWnEr6Ap9Xk+I618ggAPBNclAlMOkdK/at0lXdzXbEyWv5+pWcxiPjxQS6o
         Cg2UBXkghd4RDNMTHQLyBGxDN6onpITdHyGjc4zWtuA1AVdoAGehpjVFlzHMVaZxkgIT
         lozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cWqHeovm590MhuZp19yBBP+HpQpfYturHdDBjMgTDMQ=;
        b=d2PlhGT53G0PAiVmUzL55L4WD/bT97bJXAQiQodqm98hZJffyE1McCOqtXyNdKbOVd
         lSlOm6XzIVUkKdG+siMUvYV/z5n8ddz5F8h0imjQ0zU5FN3nSJYojOHgziByLEiFRWET
         15ZxbVT/PtGd4cqgAxnL0VMjuFXyIPKLj08UmP1lWop5QlZGHFAujR8bEVJLubE1iDow
         hYwn8Ip9KdV+oUWY+KOD7r+6FK+d3h6YPQYhTLQqyfrPHdRLGZVPpNlPwcoT8wfKM1x8
         uaPOvXGbFkroBmMd/ibRbxpCtVSLkrhPtk9iAgTZ/Niij4HhEWAR+DnjILvA+5u4ZJDT
         dTYw==
X-Gm-Message-State: AOAM531Z/wnm34ifyyiNG+fi3jH/2Wx/1bhhuKgzA3g5GlzNwiNyjtsU
        ++JEM6ymHMaYfR++mcaAn7QTIlkUw+0=
X-Google-Smtp-Source: ABdhPJxJvUOduOSFVtm8433wY84M4qQQbjbR0aZuZ4vOJzJ/+exjAnzDWZq+5Gb5bRYPVBXFMKEqWA==
X-Received: by 2002:a5d:51ce:: with SMTP id n14mr491199wrv.8.1599806697005;
        Thu, 10 Sep 2020 23:44:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 70sm2410231wme.15.2020.09.10.23.44.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 23:44:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5aad6df9-3531-1b16-4d2d-97fb5cf423c2@gmail.com>
Date:   Fri, 11 Sep 2020 08:44:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-23-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Notes: I copied .nf and .fi from futex.2, but they made no visual difference.
> What do they actually do?
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man2/membarrier.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/man2/membarrier.2 b/man2/membarrier.2
> index 8825de71e..f65c6be5c 100644
> --- a/man2/membarrier.2
> +++ b/man2/membarrier.2
> @@ -26,9 +26,15 @@
>  .SH NAME
>  membarrier \- issue memory barriers on a set of threads
>  .SH SYNOPSIS
> +.nf
> +.PP
>  .B #include <linux/membarrier.h>
>  .PP
>  .BI "int membarrier(int " cmd ", int " flags ");"
> +.fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR membarrier ()
> @@ -270,6 +276,9 @@ Examples where
>  .BR membarrier ()
>  can be useful include implementations
>  of Read-Copy-Update libraries and garbage collectors.
> +.PP
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
>  .SH EXAMPLES
>  Assuming a multithreaded application where "fast_path()" is executed
>  very frequently, and where "slow_path()" is executed infrequently, the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
