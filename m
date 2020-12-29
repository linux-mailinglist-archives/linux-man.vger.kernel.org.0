Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FC402E73EA
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:20:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726246AbgL2UUn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:20:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726214AbgL2UUn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:20:43 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF62C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:20:03 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id d8so12894150otq.6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=92GOtr4wR08jv4JxRp5oQN74QovP/xFqnG+wjLce1fA=;
        b=V3GZnHFE2B248vz5BpxHJ6DXwV6SGA2mwYTLbuIiPFZlBDinIYZ1CFX8R7plDb6gN8
         RcphxMo7b0LCNgIeK7V7ZryWY88U+BpYAdv0XknVLA3pUfr+I4NYwSpGJyY/YdTMv5H6
         coQA9UnkIrN1Zxpoo5Jj4Z3RXp+I/rVCaFHKIAbV8MENEJTv4WQrpA4s2WshyXwbGxeo
         SAUBy+e9KEBav2uQr8cra8LyMvnWpTiwN4haIcDqLrC9I6kZ//CrzwwqKiuI7zOXQ6ca
         y69KSWPj6/Y06wHcu9QIICswh/xiQ5SgTMOq3brc9opYKbeonsIM9tOAMDgkKf4W7JoL
         UI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=92GOtr4wR08jv4JxRp5oQN74QovP/xFqnG+wjLce1fA=;
        b=MJnkp84/h4vH6OfjsZv05uAql4iQXfbAurEixw2V9AaGu5/cWp4Hic5IeuoFBL7H+B
         AsMfH+OcNupASgL0ykl1YKCsEg5VIouqQ9bYBYR1otbdJeAIxytfE+lQXIJnxHSLaoCr
         V0bGXdR+bT0aFnNA63QqbSXSmJHoCcuWo9W7Vzb8k2NQAOu2FdMD3S6Gh2P5jO02sMnj
         SHMrTbxOopCMNOJ2Sy6ZLVy2MJ23W/oMPue8xBEO2BZl5cOfQ9aIgPp8Lod4dSEXgGrM
         qPt+f2D7ArL72ur3nI4n0qHp4/G4k6Vr+vwnxsbIf3M8HKLrduqPKTGVJSSNMmKxcIOU
         Fw+Q==
X-Gm-Message-State: AOAM530i3DyFsrqge6v3jGD1b0mMOgziJVIrtWVya0vLLtZmTXKA9mET
        EzBI7wlP0VAs3OhSnPemjbX4eTtHwKcRhgXUzQo=
X-Google-Smtp-Source: ABdhPJzx/5w9onRrl2yrzieORdCdx1cD3rM05n9CjEpepnWAnKh6jGeT60blOlz0HWXMYlO0WockXvTET3s4k5mmf+E=
X-Received: by 2002:a9d:7490:: with SMTP id t16mr37139559otk.323.1609273202669;
 Tue, 29 Dec 2020 12:20:02 -0800 (PST)
MIME-Version: 1.0
References: <20201229143859.17473-1-alx.manpages@gmail.com>
In-Reply-To: <20201229143859.17473-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Dec 2020 21:19:38 +0100
Message-ID: <CAKgNAkiFtdOjvXEXUTO-XiTACd1xmfMfyWzW=QJHpzgTOdE4aQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Normalize notes about missing glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Ganimedes Colomar <gacoan.linux@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, hi Ganimedes!

On Tue, 29 Dec 2020 at 15:39, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> Here are 2 patches my brother and I prepared together.

Thanks. I'm really happy to have patches like this that bring
consistent language where exactly the same thing is being talked
about. I will send one or two comments on the patches.

> There are still some pages that we couldn't find with grep,

Does something like this help find others:

$ cd man2
$ grep -l syscall $(git grep -l wrapper)

?

Thanks,

Michael

> so I'll send you more patches continuing these 2 as I find them
> while fixing other things.
>
> Cheers,
>
> Alex
>
> Ganimedes Colomar (2):
>   Various pages: Normalize SYNOPSIS notes about non-existing glibc
>     wrappers
>   Various pages: Normalize NOTES about non-existing glibc wrappers
>
>  man2/add_key.2              | 5 +++--
>  man2/arch_prctl.2           | 9 +++++----
>  man2/clone.2                | 2 +-
>  man2/delete_module.2        | 2 +-
>  man2/getdents.2             | 8 ++++----
>  man2/init_module.2          | 6 +-----
>  man2/io_cancel.2            | 2 +-
>  man2/io_destroy.2           | 2 +-
>  man2/io_getevents.2         | 2 +-
>  man2/io_setup.2             | 2 +-
>  man2/io_submit.2            | 2 +-
>  man2/kexec_load.2           | 3 +--
>  man2/keyctl.2               | 5 +++--
>  man2/pidfd_getfd.2          | 5 ++++-
>  man2/pidfd_open.2           | 5 ++++-
>  man2/pidfd_send_signal.2    | 4 +++-
>  man2/request_key.2          | 5 +++--
>  man2/s390_guarded_storage.2 | 6 ++++--
>  man2/s390_pci_mmio_write.2  | 6 ++++--
>  man2/s390_runtime_instr.2   | 6 ++++--
>  man2/s390_sthyi.2           | 6 ++++--
>  man2/sysctl.2               | 3 +--
>  22 files changed, 55 insertions(+), 41 deletions(-)
>
>
> base-commit: c55f66855eccfcd92b35fe7b13a326121f2ee0fd
> --
> 2.29.2
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
