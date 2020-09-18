Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0984270612
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:14:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726205AbgIRUOF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:14:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRUOD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:14:03 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C915C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:14:02 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so6431775wme.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yWWmUHFbHlB1wGckFLdk4pWMPDhTI9TJlnQIFh5mYKk=;
        b=YwqcQJmxgGmZkoW945UA6S1UjPKyLdT7nKFLZkaQtZV+GMOmp8PO1b7KPWvn+9wiHe
         U9y+K8yem/+5eci9W2PxaGTkBuL7B9/mxl4BWBWxWKenU2vJkrmI8AJulTcYuf/7S8w9
         qdPBRFAekqMtLqRwcp81apnLtb85VN2aWyZye4+yvRTp+HP6BNyGkbQDb4R51f/RXWGY
         vyi36qVb6o7Yxy7EZtvPcuzafisSvjDVFvSw16xZZvJel3jrhPONUbso9kEX8Y2pFRtM
         kBTxhb2YiJ7gtRU0rUh/CmzFhPdXzl9ryYFSRTIOY5BsfcLZKJ3tu9fi+gRPjI4ihkmQ
         5/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yWWmUHFbHlB1wGckFLdk4pWMPDhTI9TJlnQIFh5mYKk=;
        b=fYSodxq6m6SevUZxLEay+eYIvuO9QAuKtlqCkyLFXXwNXxwlDSQKqb7p9C0zJMSLK0
         e30TVhsoHD04n2K/H71rHzkrt2W4hdnmWwimNfjLYI3pW+qcPJTlXPmthyMo/B62nJ1n
         JWoZtxPoEXpyhuwKrYCEh2/evPHp1dif4STOS6DZJjLIljFOIbWx6dstqsy0Cvgx32o8
         YHyYzyZJJBDhC5QiPky5SvTw9Wd4sTjXvq71ylXTcfILfGfFhByr65JEMoFw5+PRZ/wc
         /i0hx4ZWq5fk7kBqh5t7QDub3f9B7eW8RMmTl1D9KpVITb9fqVdnYPS/Iok2OkVGHwIo
         UffQ==
X-Gm-Message-State: AOAM532BkTBnxFLK10vNQfdvXR47eTypAColx9+TVL1vS+YqSYTg3xi5
        9EBnL3jVHK5T7EpytrbCDLo=
X-Google-Smtp-Source: ABdhPJy3JLwBVz8oEd+TFTnmqWgJpoykrmyI0EhyU+2gvdKTVP4CInno2xgGhDdYYo+HjoZ1AAN3xA==
X-Received: by 2002:a1c:9ecb:: with SMTP id h194mr16827930wme.140.1600460041191;
        Fri, 18 Sep 2020 13:14:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id l126sm6646578wmf.39.2020.09.18.13.14.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <20200918112755.21428-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5622dc89-6ae6-ce38-dc6b-8744d4ce0c25@gmail.com>
Date:   Fri, 18 Sep 2020 22:13:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918112755.21428-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 1:27 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Merged.

Thanks,

Michael

> ---
>  man7/system_data_types.7 | 103 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 99 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 84fea85b9..041e7e243 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -92,6 +92,101 @@ See also:
>  .\".I siginfo_t
>  .\"type in this page.
>  .TP
> +.I size_t
> +.IP
> +Include:
> +.I <stddef.h>
> +or
> +.IR <sys/types.h> ;
> +or
> +.I <aio.h>
> +or
> +.I <glob.h>
> +or
> +.I <grp.h>
> +or
> +.I <iconv.h>
> +or
> +.I <monetary.h>
> +or
> +.I <mqueue.h>
> +or
> +.I <ndbm.h>
> +or
> +.I <pwd.h>
> +or
> +.I <regex.h>
> +or
> +.I <search.h>
> +or
> +.I <signal.h>
> +or
> +.I <stdio.h>
> +or
> +.I <stdlib.h>
> +or
> +.I <string.h>
> +or
> +.I <strings.h>
> +or
> +.I <sys/mman.h>
> +or
> +.I <sys/msg.h>
> +or
> +.I <sys/sem.h>
> +or
> +.I <sys/shm.h>
> +or
> +.I <sys/socket.h>
> +or
> +.I <sys/uio.h>
> +or
> +.I <time.h>
> +or
> +.I <unistd.h>
> +or
> +.I <wchar.h>
> +or
> +.IR <wordexp.h> .
> +.IP
> +Used for a count of bytes.  It is the result of the
> +.I sizeof
> +operator.
> +According to the C language standard,
> +it shall be an unsigned integer type
> +capable of storing values in the range [0,
> +.BR SIZE_MAX ].
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +Notes:
> +.IR <aio.h> ,
> +.IR <glob.h> ,
> +.IR <grp.h> ,
> +.IR <iconv.h> ,
> +.IR <mqueue.h> ,
> +.IR <pwd.h> ,
> +.IR <signal.h>
> +and
> +.IR <sys/socket.h>
> +define
> +.I size_t
> +since POSIX.1-2008.
> +.IP
> +See also:
> +.BR fread (3),
> +.BR fwrite (3),
> +.BR memcmp (3),
> +.BR memcpy (3),
> +.BR memset (3),
> +.BR offsetof (3)
> +.IP
> +See also the
> +.I ssize_t
> +and
> +.I ptrdiff_t
> +types in this page.
> +.TP
>  .I ssize_t
>  .IP
>  Include:
> @@ -127,10 +222,10 @@ See also:
>  .BR recv (2),
>  .BR send (2),
>  .BR write (2)
> -.\".IP	FIXME: When size_t is added, uncomment
> -.\"See also the
> -.\".I size_t
> -.\"type in this page.
> +.IP
> +See also the
> +.I size_t
> +type in this page.
>  .TP
>  .I suseconds_t
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
