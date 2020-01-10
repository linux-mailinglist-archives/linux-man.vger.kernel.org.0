Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5A14B1377C8
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2020 21:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgAJUNT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jan 2020 15:13:19 -0500
Received: from mail-pg1-f196.google.com ([209.85.215.196]:44178 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725776AbgAJUNS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jan 2020 15:13:18 -0500
Received: by mail-pg1-f196.google.com with SMTP id x7so1482184pgl.11
        for <linux-man@vger.kernel.org>; Fri, 10 Jan 2020 12:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BLQfBSFjj5fVyJTxFhcEoDgzJqmAZLkLEpStMfh31Ks=;
        b=eG4ub6WmALrwzNFL+9xl1+/qnQBFqTq2MdYNy4x28s4gbGnCWAP+2yNln2peoRkeMB
         CROv3P6PlWXXzacuqK7q1HHFEBAQwn6+4SG3AdC+9bJSHnhQxIm4EDuJxLhqJrM6IMXq
         AKZ7D99LYWWgT1c8wsfuEj/W8qv8Sqy+LSPzW19PoxzLqZuq6doqWjY3Ns2Yr9UbiEF2
         Q0lCXE5TQQJZUcBgX440la+LvUGrGEQIdFyzs0luAbunVD3YAt98X2a5tt4XFZCBnx5N
         FsAQefEJqwEdjUba9dQKBPfOwgj4c7LWKjjBZKNUJG4an1kNz8QqsZThZRWtg/xKmqic
         8rCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BLQfBSFjj5fVyJTxFhcEoDgzJqmAZLkLEpStMfh31Ks=;
        b=DxXJHk+ZafviK+WlUKJTo62fzeBY2NAfdGLUjXvhhJ7gmxBPkhsfg4XQuHYAojk1Lt
         wzDt9kxnjUIajQIp3VB3Rl2pp4U/uvm73n6tL0imHVlnCFDcnc9fVn6KIlzuXG6RIU4e
         pg9VX29vhV8nzwNyk20n+XMKIAQDf7k+fjT4iYPPMMEqVqzdQXNgvOj0q+PRG8pdS+Yh
         eCZbwt2BxvogGfEm3VD+hP0KSfRMTfMOf2t5ubdCxv/nnGk3qUmeh4xtbdYryOe4U6Me
         C5AlAzUs0qXSG5nMGs1HHYscTlXDordgkGntV9Ll0l9F945VtMGNC4dshsNoJgjmuW6M
         sJLQ==
X-Gm-Message-State: APjAAAUYi3/gIWVR1W/0CWhOKcgk8F86lOF43NMtVBW8FGhyRzxAOWPF
        qcfrK+TKMHsZnsRf6vyzA2jM5Zxt
X-Google-Smtp-Source: APXvYqwARSdRgV6vXuM0u6hf/7ioECbCByIrrDYcV07PEmdgCCL/+E5GFXX6RCQ6KMU+CmIzDHwLJg==
X-Received: by 2002:a63:d20a:: with SMTP id a10mr6234439pgg.273.1578687198102;
        Fri, 10 Jan 2020 12:13:18 -0800 (PST)
Received: from ?IPv6:2406:e003:5fa:5f01:e752:f840:6823:1947? ([2406:e003:5fa:5f01:e752:f840:6823:1947])
        by smtp.gmail.com with ESMTPSA id f81sm4138716pfa.118.2020.01.10.12.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 12:13:17 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Li Wang <liwang@redhat.com>,
        Cyril Hrubis <chrubis@suse.cz>
Subject: Re: [PATCH 1/1] syscall.2: Update Feature Test Macro Requirements
To:     Petr Vorel <pvorel@suse.cz>, linux-man@vger.kernel.org
References: <20200109154626.6206-1-pvorel@suse.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <aa304ca3-1ba3-faf8-c8cb-2abea26eca63@gmail.com>
Date:   Fri, 10 Jan 2020 21:13:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109154626.6206-1-pvorel@suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Petr,

On 1/9/20 4:46 PM, Petr Vorel wrote:
> Reported-by: Cyril Hrubis <chrubis@suse.cz>
> Signed-off-by: Petr Vorel <pvorel@suse.cz>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/syscall.2 | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 9091b34bb..3fc32cb7a 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -44,12 +44,22 @@
>  syscall \- indirect system call
>  .SH SYNOPSIS
>  .nf
> -.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
>  .B #include <unistd.h>
>  .BR "#include <sys/syscall.h>   "  "/* For SYS_xxx definitions */"
>  .PP
>  .BI "long syscall(long " number ", ...);"
>  .fi
> +.PP
> +.in -4n
> +Feature Test Macro Requirements for glibc (see
> +.BR feature_test_macros (7)):
> +.in
> +.PP
> +.BR syscall ():
> +.ad l
> +    /* Since glibc 2.19: */ _DEFAULT_SOURCE
> +    /* Glibc versions <= 2.19: */ _BSD_SOURCE || _SVID_SOURCE
> +.ad
>  .SH DESCRIPTION
>  .BR syscall ()
>  is a small library function that invokes
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
