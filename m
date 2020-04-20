Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22F4E1B0630
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 12:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTKGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 06:06:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725775AbgDTKGN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 06:06:13 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 214AAC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:06:13 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id s3so7428515eji.6
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=174aT4MR/AonKfZMoTERrlNlmS3MuH/L7jI9Jz0bRqQ=;
        b=ujnhrSl8K8SUWgreidV8GLrYwarpllUodFRo3XZR9gtf4/KDsebHoPGAb3GIizxoTU
         ZwocqGqzdkAawGALlsRsMl7+M/fnLEDy789455hNJEFOupu0AlsLj9Oh4dTq9Gu5wNex
         0YZBd7zZ3acD/UCCiqb8CwMWsOnBAunrHG+ZxFMcBpVVHgczNpw/6k6KQeSdnSPmn8x8
         EKgMb2tUbSBoQ1vZwgRs3b0g3CB3UPvtmjNYysOPJkmwoUCba9xvA4d3jOB9enz2OvJA
         VVtOm47FRX3si5RJqr9/PjahNh4YW2wAy+xpZSHv5446AxjCvv43J6dPuaBWYAn7KZNK
         zqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=174aT4MR/AonKfZMoTERrlNlmS3MuH/L7jI9Jz0bRqQ=;
        b=Ms96KbVXu792+qRNDgl33020ZxxXngR0wSvkocVV4wgCniu+xSZazoJjBEuu3VQlE4
         OmiXG3vb9C3fGYtxmGQG4e9ay1laov5n/9rwrI4YdknHBqNcQfYCVoIzmo//GPiNRBrm
         /SzsZZ5t8pJpIJSBnNNx3ozSnzCWUkhjJlKqju2Ko9OVJwOVBeBm4IEv6kKXlQAiYLb7
         SwrUOSPq6tJuCITWme1BXFtqkb80H2gaXDIzcrkRlLvI+7Q4AZSxe5NszBgv3m9E7EZJ
         JABMb8lO4NN29/WPlTd9nfQkc/ixZ2m+4FKBZFOPnU2BLgiGn21fZXGpr7UumCt7mmvV
         ttVQ==
X-Gm-Message-State: AGi0PuZWidmzy4rao0GtHLC2leWn/IJRO9I7DjDf4YV5T3q2M4HZxBXT
        jPWkTKgsIHkwEPcSIB+koqoWGFANMIx2cI1t3CE=
X-Google-Smtp-Source: APiQypKVDzAFaQki6gA/ae6rtWVev76awldLCdyqBtmnnLXFhR7Uc3pJ+souEbMlIEHO9jUQ0BSh2/6YY1U9gpN3EbI=
X-Received: by 2002:a17:906:5fd2:: with SMTP id k18mr14894671ejv.243.1587377171678;
 Mon, 20 Apr 2020 03:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAHVhoEfuemaT0vS28XcrWLBHpd2+=7wLpn4Wf8BGbTXtnBn-Cw@mail.gmail.com>
In-Reply-To: <CAHVhoEfuemaT0vS28XcrWLBHpd2+=7wLpn4Wf8BGbTXtnBn-Cw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 12:06:00 +0200
Message-ID: <CAKgNAkgXtQZC=Np+0SBKxoTL_yCcyEA9xgjS7yZS4t8kS3EtuQ@mail.gmail.com>
Subject: Re: [patch] add man7/kernel_lockdown manpage latest 5.06
To:     Scott S <ssimmons9999@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 20 Apr 2020 at 01:00, Scott S <ssimmons9999@gmail.com> wrote:
>
> kernel_lockdown.patch

Please explain why you are submitting this.

Thanks,

Michael

> diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
> new file mode 100644
> index 0000000..5ec4289
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



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
