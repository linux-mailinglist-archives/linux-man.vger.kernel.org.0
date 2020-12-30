Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F1A52E7AEC
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 17:08:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbgL3QIK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 11:08:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726185AbgL3QIK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 11:08:10 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4517C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 08:07:29 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id cw27so15843431edb.5
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 08:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tEMtbLi+BdEud8R8BJNFZzELYkuKmYOsSNJgYrAOqa0=;
        b=bri/F7OELHAA+0jg4uiYPFOAs/4t5mhsMofJ0bkJG2TOT7HrEovTSdOFuDQZkOmxg0
         VleAH7G2xjR+1K+P3vFT9yNXywS6+UxtHv3e9irjBrhr5jSWXNEXFgjR2SDnGokS4cEh
         Y8JoNCIkohsdQJlDxyv1BgFKHyjPDONAjepz1DD67BMlzLKYAwIivhUem5RSAkG4IHdt
         f1FFT3mKXT7uWeqf8I9WXoJs7q3O55PlikwbnRIL12Lz1PMOBN3t0ps37r6Q7rTwYHoG
         uJXs038lZCXxOMP94AuOjn1PH8GHQwJ/WzgjthZ8NeRzXpRBc+BrMvE3d4sVqZDbBokr
         fJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tEMtbLi+BdEud8R8BJNFZzELYkuKmYOsSNJgYrAOqa0=;
        b=VSlR1oi4kcqDeDLwq+Ui35gvYLCu9RP8aXz5HwQa9KcKz7DgyT8pCgmecH4S9Ufqvf
         coMAYp0PAV4bo+NP9Mm0gUhQt92WxPV9EmxWe9vbfEF2373GXMSademof7JgKd05e2Qv
         9inTawSbZMJO3I1e84zVWrMhvOyu6lgPlgW7J/aoYPZJdYB05DMKN8xNCKM50X2dszJ4
         PTQifoA420isbehaSq4fyN6f/JbpoB2UMJF28qTnmNlHTCYIey8pC+ApFJYe2L8J5CJS
         E/m07yvgqYHLWiS4xP/n+ZK6zujuJB+evs2Y+b3yX4+jvrW98A0s9uUAsaKigRebxL3Y
         lpCw==
X-Gm-Message-State: AOAM531U+PbFPd7r+rAp2a/j5MFo2+usWzILuZVcPo1Sl3g9PWvT2saJ
        6X+xCSFwXXv0LDY13mKouEjCRP1fvQQ=
X-Google-Smtp-Source: ABdhPJy8B7GqmJNOZQmkCmmXAsqRTjV7omWCiwhBYb6odNoG/j3B951OuUEIU0WtixExvRJBJIeRrQ==
X-Received: by 2002:aa7:d154:: with SMTP id r20mr53054126edo.258.1609344448303;
        Wed, 30 Dec 2020 08:07:28 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id r7sm14979196ejo.20.2020.12.30.08.07.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 08:07:27 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] Various pages: Normalize NOTES about nonexistent
 glibc wrappers
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
 <20201230152025.300622-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fd9894ed-43d4-6f8e-665f-812c407d58e1@gmail.com>
Date:   Wed, 30 Dec 2020 17:07:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230152025.300622-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Ganimedes,

On 12/30/20 4:20 PM, Alejandro Colomar wrote:
> From: Ganimedes Colomar <gacoan.linux@gmail.com>
> 
> See previous commit.
> 
> This commit normalizes texts under sections other than SYNOPSIS
> (most of them in NOTES).

Good! Patch applied. I made one minor fix; see below.

> Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/add_key.2              | 2 +-
>  man2/arch_prctl.2           | 6 ++----
>  man2/getdents.2             | 8 ++++----
>  man2/io_cancel.2            | 2 +-
>  man2/io_destroy.2           | 2 +-
>  man2/io_getevents.2         | 2 +-
>  man2/io_setup.2             | 2 +-
>  man2/io_submit.2            | 2 +-
>  man2/kexec_load.2           | 3 +--
>  man2/keyctl.2               | 2 +-
>  man2/pidfd_getfd.2          | 2 +-
>  man2/pidfd_open.2           | 2 +-
>  man2/pidfd_send_signal.2    | 2 +-
>  man2/request_key.2          | 2 +-
>  man2/s390_guarded_storage.2 | 3 +--
>  man2/s390_pci_mmio_write.2  | 3 +--
>  man2/s390_runtime_instr.2   | 3 +--
>  man2/s390_sthyi.2           | 3 +--
>  man2/seccomp.2              | 3 +++
>  man2/sysctl.2               | 3 +--
>  20 files changed, 26 insertions(+), 31 deletions(-)
> 

[...]

> --- a/man2/kexec_load.2
> +++ b/man2/kexec_load.2
> @@ -335,8 +335,7 @@ system call first appeared in Linux 3.17.
>  .SH CONFORMING TO
>  These system calls are Linux-specific.
>  .SH NOTES
> -Currently, there is no glibc support for these system calls.
> -Call them using
> +Glibc does not provide a wrapper for this system call; call it using

I changed to: "... these system calls; call them using..."

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
