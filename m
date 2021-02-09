Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ABFA3159F7
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 00:22:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234210AbhBIXUN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 18:20:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233522AbhBIWRC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 17:17:02 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B85C6C06178C
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 11:00:02 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id n6so10517975wrv.8
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 11:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Sq7veWnskG1bH/So4sPfXAMiGxTI5iAiud4Iyyw6We0=;
        b=t7MuvSL/GdLEdBc8ZIE1xHp/eB1Gp8nCKMSGkSsB/aZrTQGPZvIxjhtZCF0MUdmxae
         NuR1AhIpfchBCFPrtnJttkx4F15ibLQgbnPJOFkBGq9aOC1WimBFd5bI0pMgbcTx6sw6
         10mAEgPM35zpl23aSbW0Qt27gXbEHRUsqyiUtySSAUXJ74Kn4s8ISNa0n4+oI4AXTbUr
         OytbhU7nKENXY1q+TEPWzFW5soGsA5cVaBhjAxPgdJfu4WGB9XFerhkNnG/d3yX69stf
         c489jlPyMpAk50rk//6oeS9a50XrMch4HPpL5pSaiN+LsoBmqTXLTeMKEXNuG+YFEHI3
         TTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Sq7veWnskG1bH/So4sPfXAMiGxTI5iAiud4Iyyw6We0=;
        b=LsH7E1rIelpaXfjX7xf/nmf5vg5g4iVocfLkWcnj/9ABP5hwYEBYOjTg2K72RLzV7O
         mktPsoiKNQ4S32YjsGHjznIH7uEPhEWuLgJEpama0duYlwMhxKdGqHt5AG7SUEKmu4G5
         t9zFekQnNEVa05HNOsQjdobyp2i38q8gp8ErnQT2zSJrqxjoaTia2l1SVkZfbcCnfBDK
         DAt463NrtUVIVK0HOjIO4rZfOcaPKz0LULaEKpLQtGfb1iX8H1CXzGFQf4h0E8FQkX2C
         qYPFxaHbHnMcaU9VIYA41ozXyBKRb/7WD7m7dqSJru8JHY+B0E2WKbYn3dsQ8+UVgpNx
         wmqA==
X-Gm-Message-State: AOAM5333hD0YJRspOvGDUDZItIqNKP/3W1hmZCq8Q21eDbHlnksKFsDp
        oEHiG08Xc9hr3BpjN9X0JQI=
X-Google-Smtp-Source: ABdhPJyhbpSNOCn0NvwIpO4kgXtH1V4jR3YsPRIiIg7wdO7e5d3f/4pglLIncCCKrXPgh6q2j8OD/w==
X-Received: by 2002:a5d:5049:: with SMTP id h9mr27944986wrt.404.1612897201500;
        Tue, 09 Feb 2021 11:00:01 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id 143sm5995959wmb.47.2021.02.09.11.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:00:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2] mlock.2: mlock2(): Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210204111732.194599-1-alx.manpages@gmail.com>
 <20210207124611.201122-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <faf6af4d-e7f3-e591-f3cf-c02660e910f1@gmail.com>
Date:   Tue, 9 Feb 2021 20:00:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210207124611.201122-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex

On 2/7/21 1:46 PM, Alejandro Colomar wrote:
> The documented prototype for mlock2() was a mix of the
> glibc wrapper prototype and the kernel syscall prototype.
> Let's document the glibc wrapper prototype, which is shown below.

Thanks. Patch applied.

Cheers,

Michael

> ......
> 
> .../glibc$ grep_glibc_prototype mlock2
> sysdeps/unix/sysv/linux/bits/mman-shared.h:55:
> int mlock2 (const void *__addr, size_t __length, unsigned int __flags) __THROW;
> .../glibc$
> 
> function grep_glibc_prototype()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.h$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn \
> 	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/mlock.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/mlock.2 b/man2/mlock.2
> index 2822df7cf..f48d632c4 100644
> --- a/man2/mlock.2
> +++ b/man2/mlock.2
> @@ -31,7 +31,7 @@ mlock, mlock2, munlock, mlockall, munlockall \- lock and unlock memory
>  .B #include <sys/mman.h>
>  .PP
>  .BI "int mlock(const void *" addr ", size_t " len );
> -.BI "int mlock2(const void *" addr ", size_t " len ", int " flags );
> +.BI "int mlock2(const void *" addr ", size_t " len ", unsigned int " flags );
>  .BI "int munlock(const void *" addr ", size_t " len );
>  .PP
>  .BI "int mlockall(int " flags );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
