Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 255FE2C221C
	for <lists+linux-man@lfdr.de>; Tue, 24 Nov 2020 10:52:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731301AbgKXJve (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Nov 2020 04:51:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728886AbgKXJvd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Nov 2020 04:51:33 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52406C0613D6;
        Tue, 24 Nov 2020 01:51:33 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id x22so1826147wmc.5;
        Tue, 24 Nov 2020 01:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WGjMjhDgXXoCLBlcKSk4hWoUaI6g3sVHouK3ZhWCgnc=;
        b=NaGxdcM1DZbTt+aJyT7J4y2dHsphM3hQ2x4/r90BVRCSCeq1AmIJG59rPAS1C0eBWA
         KvGsPYRYPioZ4Y1dtF/G9L99zOMmzatFZDAlM6Mkn59rw/VKovZovDsKdE66Loveb7h8
         C3AScoLwSltnhSQ+xTcIuBygt4mhQJUxm4qJ0IuJIs1Ki7xE+YcEyS2sYn6ZvIpVyvxC
         lLcTaUicEEjoCWVKKHwQ1glbaDSVZZbxCPH927KtCZkRXJ8FzZmkJTAZGcLiag8D/sI0
         SwvncCF5DZbD6CPFODcL+kzATUTEotMFj1IY1SlSRrFsH+p6DK74zNX8Opy2gy59/YqJ
         DrAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WGjMjhDgXXoCLBlcKSk4hWoUaI6g3sVHouK3ZhWCgnc=;
        b=kq8CT/OqdNPBYCDe8fGGTdo/vJrVIyHyBDzQAhSdnVEVbRz+wdbCRcIQ3a0MioUysc
         KXgD3gEm/xB2/atWYVqRqY16zY59ql+sBHJsion6NMmX0duCSt/LtVibjqj3wgx1Vnsn
         9dUOyuVTQtw5Ux8fD7bwox5r12nGKy6ZyBQVhTcM6n904dKeptkmNUWfL2j64zPmcmFY
         2G4YUe9R9IjqAOCGDSh6fyeXmnwSjZCTDPSU4itBMHyxsSLfmE4pYauXlYCdWXWrPNDR
         PsYg3fZ4XYNQyRc9jXQLEfk0SFvCA7QnJTlPppkWNI4dojUpbgBBtTA4oJ5bOUPWYi/T
         SW9A==
X-Gm-Message-State: AOAM533TmK6S5dX6/PNTiaf6pQA3MXi/istLeuGMjcs2J3BXQV5ouzzo
        7dsEdTggHYEmP9Nrgxa3Z80=
X-Google-Smtp-Source: ABdhPJyZ8SGFDH+He6V59Dnytrjr0cu5aB7l9peuKwN1QPMKkBjuzYI/i4QzOkxyofEme5si/qPWaA==
X-Received: by 2002:a1c:5f08:: with SMTP id t8mr3399394wmb.84.1606211492014;
        Tue, 24 Nov 2020 01:51:32 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id 2sm14881820wrq.87.2020.11.24.01.51.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 01:51:31 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
Subject: Re: set_thread_area.2: csky architecture undocumented
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c669c780-f6e8-bd2a-e6ec-0a5960b7d7d8@gmail.com>
Date:   Tue, 24 Nov 2020 10:51:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/23/20 10:31 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> SYNOPSIS
>        #include <linux/unistd.h>
> 
>        #if defined __i386__ || defined __x86_64__
>        # include <asm/ldt.h>
> 
>        int get_thread_area(struct user_desc *u_info);
>        int set_thread_area(struct user_desc *u_info);
> 
>        #elif defined __m68k__
> 
>        int get_thread_area(void);
>        int set_thread_area(unsigned long tp);
> 
>        #elif defined __mips__
> 
>        int set_thread_area(unsigned long addr);
> 
>        #endif
> 
>        Note: There are no glibc wrappers for these system  calls;  see
>        NOTES.
> 
> 
> $ grep -rn 'SYSCALL_DEFINE.*et_thread_area'
> arch/csky/kernel/syscall.c:6:
> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
> arch/mips/kernel/syscall.c:86:
> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
> arch/x86/kernel/tls.c:191:
> SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, u_info)
> arch/x86/kernel/tls.c:243:
> SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, u_info)
> arch/x86/um/tls_32.c:277:
> SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, user_desc)
> arch/x86/um/tls_32.c:325:
> SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, user_desc)
> 
> 
> See kernel commit 4859bfca11c7d63d55175bcd85a75d6cee4b7184
> 
> 
> I'd change
> -      #elif defined __mips__
> +      #elif defined(__mips__ || __csky__)
> 
> and then change the rest of the text to add csky when appropriate.
> Am I correct?

AFAICT, you are correct. I think the reason that csky is missing is
that the architecture was added after this manual pages was added.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
