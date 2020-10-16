Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DB6929095B
	for <lists+linux-man@lfdr.de>; Fri, 16 Oct 2020 18:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409269AbgJPQJk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Oct 2020 12:09:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409249AbgJPQJj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Oct 2020 12:09:39 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AD92C061755
        for <linux-man@vger.kernel.org>; Fri, 16 Oct 2020 09:09:39 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id p15so2944561wmi.4
        for <linux-man@vger.kernel.org>; Fri, 16 Oct 2020 09:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v7KR9i+GWjctdaemuf/EnPclnLN3fDkcrV4q1RB4lq8=;
        b=IKcN75q4KLNxD/WRxVTSmJiul4MQxu81KjWofB9JGiHJ9febToBFkUFWsVodIY8fpl
         Gq4+pfZLLU4m8VN28ZmlLlcQ4x/uR85zaPmBLSlKxVjRVK0OZqjnSQZJG/9zrkja7zUC
         CGQ9Xdz4TTIOn2oxPv0eN1m06GB2oZdc6e4C4ri1pbG3iwiGq0rkVMyOdRQ6d6X8n0uc
         sWo5IYlT+aF9aNP8OwfgKhG63s/nbYHhwjDL/Oa21O+RtlIMtqOFUtVWjz/XQNSJAKOe
         mw07cYLulxqbynkMf7SFNVpW05Adbib1HbjiVw+Kp4HXY4igZ3MuljXG9EhnkPAGI2YP
         EHZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v7KR9i+GWjctdaemuf/EnPclnLN3fDkcrV4q1RB4lq8=;
        b=hZr4zmkD0Zmr1WtqWgBV7w+CAFkRsyPcBtM/jnMRVKotWU2NTVWvuW5h2xG4O14mXU
         tN1xW+uBVql5FqbcNsZAzj6TlIZe4F8UiDZgwYs3hx0S3MSId3wQt9qNodp+cjVM2/ck
         smX557qNLluX3z+vUm6k7mR+4cA7djokIEnR+sIytKK+YMsDyrIJ//mNYx5tqHxcn2x8
         j0JicDD0CDv3JIF4YaguIqWhv1ssjH9Jq2ywOGAFU1acwIzJjxbyxbSP86IS4GwFl2oH
         KVsi0tGbOi9Ap0DvxaPaH1efkoFpCOcsvGsEJ+U5E/2iGiNk1oRYqG7+Qn5HtvkP7gPC
         mLfg==
X-Gm-Message-State: AOAM530IX1UzpUGsmpEXEUC5fu5KiDE2NKtu7fHrmg4EzwryRBLtvctP
        RLs71BNRthK/+ou8amyDXg0=
X-Google-Smtp-Source: ABdhPJyoF2uih1wdy5675N4lL7PoLJiceHK3czcql+uklS0qIXEDIz6Ma1NHYfjbgd7+cC00hBRTWw==
X-Received: by 2002:a05:600c:608:: with SMTP id o8mr4456497wmm.86.1602864578121;
        Fri, 16 Oct 2020 09:09:38 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id w11sm3860464wrs.26.2020.10.16.09.09.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 09:09:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Matthew Garrett <mjg59@google.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>
Subject: Re: [PATCH 1/1] kernel_lockdown.7: new file
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <7b9485d9-e286-a61e-63b6-15459dfc1f17@gmail.com>
 <20201016112834.12530-1-xypron.glpk@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eaefd1b4-199a-ee88-26a7-0bed8ad669a7@gmail.com>
Date:   Fri, 16 Oct 2020 18:09:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201016112834.12530-1-xypron.glpk@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Heinrich,

On 10/16/20 1:28 PM, Heinrich Schuchardt wrote:
> Provide a man-page for kernel_lockdown. The content is taken from a patch
> for the Fedora 34 man-pages available at
> 
> https://kojipkgs.fedoraproject.org//packages/man-pages/5.08/1.fc34/src/man-pages-5.08-1.fc34.src.rpm
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>

Thanks. I've applied this, done a few light edits, and pushed.

Cheers,

Michael

> ---
>  man7/kernel_lockdown.7 | 107 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 107 insertions(+)
>  create mode 100644 man7/kernel_lockdown.7
> 
> diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
> new file mode 100644
> index 000000000..5ec4289be
> --- /dev/null
> +++ b/man7/kernel_lockdown.7
> @@ -0,0 +1,107 @@
> +.\"
> +.\" Copyright (C) 2017 Red Hat, Inc. All Rights Reserved.
> +.\" Written by David Howells (dhowells@redhat.com)
> +.\"
> +.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
> +.\" This program is free software; you can redistribute it and/or
> +.\" modify it under the terms of the GNU General Public License
> +.\" as published by the Free Software Foundation; either version
> +.\" 2 of the License, or (at your option) any later version.
> +.\" %%%LICENSE_END
> +.\"
> +.TH "KERNEL LOCKDOWN" 7 2017-10-05 Linux "Linux Programmer's Manual"
> +.SH NAME
> +Kernel Lockdown \- Kernel image access prevention feature
> +.SH DESCRIPTION
> +The Kernel Lockdown feature is designed to prevent both direct and indirect
> +access to a running kernel image, attempting to protect against unauthorised
> +modification of the kernel image and to prevent access to security and
> +cryptographic data located in kernel memory, whilst still permitting driver
> +modules to be loaded.
> +.P
> +Lockdown is typically enabled during boot and may be terminated, if configured,
> +by typing a special key combination on a directly attached physical keyboard.
> +.P
> +If a prohibited or restricted feature is accessed or used, the kernel will emit
> +a message that looks like:
> +.P
> +.RS
> + Lockdown: X: Y is restricted, see man kernel_lockdown.7
> +.RE
> +.P
> +where X indicates the process name and Y indicates what is restricted.
> +.P
> +On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
> +if the system boots in EFI Secure Boot mode.
> +.P
> +If the kernel is appropriately configured, lockdown may be lifted by typing the
> +appropriate sequence on a directly attached physical keyboard.  For x86
> +machines, this is
> +.IR SysRq+x .
> +.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
> +.SH COVERAGE
> +When lockdown is in effect, a number of features are disabled or have their use
> +restricted.  This includes special device files and kernel services that allow
> +direct access of the kernel image:
> +.P
> +.RS
> +/dev/mem
> +.br
> +/dev/kmem
> +.br
> +/dev/kcore
> +.br
> +/dev/ioports
> +.br
> +BPF
> +.br
> +kprobes
> +.RE
> +.P
> +and the ability to directly configure and control devices, so as to prevent the
> +use of a device to access or modify a kernel image:
> +.P
> +.RS
> +The use of module parameters that directly specify hardware parameters to
> +drivers through the kernel command line or when loading a module.
> +.P
> +The use of direct PCI BAR access.
> +.P
> +The use of the ioperm and iopl instructions on x86.
> +.P
> +The use of the KD*IO console ioctls.
> +.P
> +The use of the TIOCSSERIAL serial ioctl.
> +.P
> +The alteration of MSR registers on x86.
> +.P
> +The replacement of the PCMCIA CIS.
> +.P
> +The overriding of ACPI tables.
> +.P
> +The use of ACPI error injection.
> +.P
> +The specification of the ACPI RDSP address.
> +.P
> +The use of ACPI custom methods.
> +.RE
> +.P
> +Certain facilities are restricted:
> +.P
> +.RS
> +Only validly signed modules may be loaded (waived if the module file being
> +loaded is vouched for by IMA appraisal).
> +.P
> +Only validly signed binaries may be kexec'd (waived if the binary image file to
> +be executed is vouched for by IMA appraisal).
> +.P
> +Unencrypted hibernation/suspend to swap are disallowed as the kernel image is
> +saved to a medium that can then be accessed.
> +.P
> +Use of debugfs is not permitted as this allows a whole range of actions
> +including direct configuration of, access to and driving of hardware.
> +.P
> +IMA requires the addition of the "secure_boot" rules to the policy, whether or
> +not they are specified on the command line, for both the builtin and custom
> +policies in secure boot lockdown mode.
> +.RE
> --
> 2.28.0
> 
> .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
