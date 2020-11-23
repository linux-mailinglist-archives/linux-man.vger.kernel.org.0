Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 429ED2C17F7
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 22:51:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729381AbgKWVsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Nov 2020 16:48:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726019AbgKWVsi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Nov 2020 16:48:38 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9512AC0613CF;
        Mon, 23 Nov 2020 13:48:38 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id y74so8018483oia.11;
        Mon, 23 Nov 2020 13:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=K9R5oqAXBKA/Zhx7gAhGP8yDRLYa4CIt7epTBbDa3C4=;
        b=LbQeigwnMD/GKmhn9qyAbPqOO6KE33QQUgNo5VU2h2K2gQOmdYS9WIVLKAHutJT2ds
         2hw+9nPpi2G1vgn6vpN/4S77lWeoFGm/AcXw4wlUg/uU3i5SrnAYwSPn3F9lJBfVBQjd
         gOFATw5acqyonZ7zbog5x8QIq81wPaTXz0SMUElPuA9lMh/Gqx1Mwmf5PoOj3FtshBIB
         MWWlW7jDTaGMDq2OMzG/lT112myQhmZGBO9Zbt7af2z6+mlVxoYn3cLA4CmyIkDs3xww
         VHdFMc1HxHktAsH996P5eUxDEkqQXnO70MAbtwm9qAa4lm1GICZjrOsArM9g37ska8fN
         6IKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=K9R5oqAXBKA/Zhx7gAhGP8yDRLYa4CIt7epTBbDa3C4=;
        b=roUjSVZpWYff/Ga55rQ/c0hSP5BJXC9QeahSE5iKRNDcn/TOB49pewwK/L+erYRJ8u
         M4SS6PQO4XtGXnweb8RLHtmjISk6F7SF+7Hl+LWWdNXEN9Q1AbvVEwWU1KUktGS1yeZe
         Z/jHRLO1LVQLIUUvwOzuqNyLHHkgcMEur6GCWKOmmAb9mS4M6HyTPbszxFpQx9E63QPZ
         fE1PALwhjTknAUpGQcebVdVNIP/0UWZszsq6cptJe87WYchjOHxLPUukvzXIRR25BR9a
         RYdqad4gR1IQQXz3dv/6IviGOtnGU5AkW1B2IJAabuCZKSERCHY/F9P9WBFFffdJ822v
         MjgQ==
X-Gm-Message-State: AOAM533UcMPeT9994krhMXj7GcwoWp87j4Q2X4wJOXAXShXmDl7bWKM2
        gvkALVPRoVK+iFu8WDrgObKPsbQa3OSL5/ZphrE=
X-Google-Smtp-Source: ABdhPJxvfRtVKYVAXpX+KP+7sLEY4V3ypPS7KNt9N6ZXOmpNh82aguso1UlGgZaW2NYuYQwtXbJwgSkt4AZbQofo40A=
X-Received: by 2002:aca:b706:: with SMTP id h6mr706393oif.177.1606168118052;
 Mon, 23 Nov 2020 13:48:38 -0800 (PST)
MIME-Version: 1.0
References: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
In-Reply-To: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 23 Nov 2020 22:48:26 +0100
Message-ID: <CAKgNAkiY3kycTVfJiUsu4RNtAF3hyBxAiKxc_GrhSueUMKiGug@mail.gmail.com>
Subject: Re: set_thread_area.2: csky architecture undocumented
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Mon, 23 Nov 2020 at 22:31, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
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

As far as I can tell, you are correct.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
