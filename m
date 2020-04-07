Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBF0E1A16B6
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 22:23:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726365AbgDGUXO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 16:23:14 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43109 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbgDGUXN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Apr 2020 16:23:13 -0400
Received: by mail-wr1-f65.google.com with SMTP id w15so5337004wrv.10
        for <linux-man@vger.kernel.org>; Tue, 07 Apr 2020 13:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZGFDDTn3mAqFiewydyjuZTHsYXJJKv8IYIULKEwykEo=;
        b=OhqidxTdFH4+WQZXzoFs9mMUNpnpbsN7p/lzcFIktAou9JtcN9XPH/CoOctSAbGITw
         CB02kVO1pKohOvnZw65QiNo8vgAya3HqnyZ8XbpdOrc/e/OumrNy8P6xXT1b40VI4+Cp
         0iXLSdoITlGLBV0F/8n5F9mgsFmm2TQPkwxVGa5a5y4SvAK2hAYHs8hhf8eQeXik7+Z7
         tbPomUDiCRmeJv/jrT2eHCEhXLPPK0wULH3boRh67BlvRUUpcwC94NUN7ixPc23i5o8e
         CEUFaIgOYfw//KKEaPk9VXa2Aj4ZQexaYKDEEUDsGWZCXW0pb+iRyAxjn+jNYPG4oBmi
         JN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZGFDDTn3mAqFiewydyjuZTHsYXJJKv8IYIULKEwykEo=;
        b=cpraQ7IDJ48689RMwl4pzkHsnGLOy1UefeM5ozo1HcQOaDXhaFGK6GC3ZURGj6JxXK
         cOebblB7oX9ClTc97JltfSQA+Ky1mT2sdjpHheFYcii4LdI/IWike7i9NBgahqI8nQmc
         Dogdmjz5CQKHmLg5W4Zfkwb4gbq5fcJHM32+Ha8CazFGLosD7yh1DiDIg0rCfxV5PQq5
         meqw/xqw2bL1d14YbY2tzFbKNs6xzkL++s/xNrQh/fKLyTBXDvGFMc4JHmHCAzEDYFfq
         a7kdt7ham1PNebWbG1TqGZgvy/Z1vL79mbzzhZoj9k8CrRE/HxkgBxqvvzVwILRFz5fe
         VRvA==
X-Gm-Message-State: AGi0PubEx0UsmzWr5YrgZkS12GQcvkrUK419yLIQGFxXiTldl6M0q57l
        DXR+hdwVxxnigqsmwp/pA3TSwylL
X-Google-Smtp-Source: APiQypLk1PSx9TZOQsjek0Y/MPeDwPMJSjuhcMWIGETxu4LpAaqHWS/WhVhW0vRhtBcXUFPAxdEDjw==
X-Received: by 2002:adf:e684:: with SMTP id r4mr4540387wrm.6.1586290991384;
        Tue, 07 Apr 2020 13:23:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id c190sm3974620wme.4.2020.04.07.13.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 13:23:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] arch_prctl.2: Add ARCH_SET_CPUID subcommand
To:     Keno Fischer <keno@juliacomputing.com>
References: <20200316032127.GA4619@juliacomputing.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c21da2ee-66d0-09de-2415-b7dcfa6558cc@gmail.com>
Date:   Tue, 7 Apr 2020 22:23:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200316032127.GA4619@juliacomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Keno,

On 3/16/20 4:21 AM, Keno Fischer wrote:
> This subcommand was added a few years ago to support cpuid emulation
> on x86 targets, but no changes to the man page appear to have been
> made at the time. This commit adds a description for it and the
> corresponding getter.
> 
> Signed-off-by: Keno Fischer <keno@juliacomputing.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man2/arch_prctl.2 | 43 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> index c49f4e0..e40d6bb 100644
> --- a/man2/arch_prctl.2
> +++ b/man2/arch_prctl.2
> @@ -48,7 +48,44 @@ for the "set" operations, or as an
>  .IR "unsigned long\ *" ,
>  for the "get" operations.
>  .PP
> -Subfunctions for x86-64 are:
> +Subfunctions for both x86 and x86-64 are:
> +.TP
> +.BR ARCH_SET_CPUID " (since Linux 4.12)"
> +Enable (
> +.I addr != 0
> +) or disable (
> +.I addr == 0
> +) the
> +.I cpuid
> +instruction for the current thread. The instruction
> +is enabled by default. If disabled,
> +any execution of a
> +.I cpuid
> +instruction will instead generate a
> +.B SIGSEGV
> +signal. This feature can be used to emulate
> +.I cpuid
> +results that differ from what the underlying
> +hardware would have produced (e.g. in a paravirtualization setting).
> +This setting is preserved across
> +.BR fork (2)
> +and
> +.BR clone (2)
> +but reset to default (i.e.
> +.I cpuid
> +enabled) on
> +.BR execve (2)
> +.
> +.TP
> +.BR ARCH_GET_CPUID " (since Linux 4.12)"
> +Return the setting of the flag manipulated by
> +.B ARCH_SET_CPUID
> +as the result of the system call (1 for enabled, 0 for disabled).
> +.I addr
> +is ignored.
> +
> +.TP
> +Subfunctions for x86-64 only are:
>  .TP
>  .B ARCH_SET_FS
>  Set the 64-bit base for the
> @@ -96,6 +133,10 @@ is not a valid subcommand.
>  .B EPERM
>  .I addr
>  is outside the process address space.
> +.TP
> +.B ENODEV
> +.B ARCH_SET_CPUID
> +was requested, but the underlying hardware does not support CPUID faulting.
>  .\" .SH AUTHOR
>  .\" Man page written by Andi Kleen.
>  .SH CONFORMING TO
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
