Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0A902C17AF
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 22:32:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729939AbgKWVbI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Nov 2020 16:31:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728161AbgKWVbI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Nov 2020 16:31:08 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C08BC0613CF;
        Mon, 23 Nov 2020 13:31:08 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id a65so884709wme.1;
        Mon, 23 Nov 2020 13:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=UqQWOz+44E9c9KnrAg8GfsTSqMpBn4kp20E2/CWG8c4=;
        b=WCtRjf9Mg+dHi+uFX/T/CyUIR7oGCUEzVfbsqpLXpu2HjM5dnxivnAahC+x1BkT8sN
         gA5kWE4rLvsPlxFxWOQK+E/XLfUn4to+G8391sgVsI+KLkLBy51MKVvVmYg3SW/i77zP
         xsXrQIsd0ASfdzxVcGIAH7bcOrXFO9l//7rcqhAElIPb4/3Gw4wwFfnmd8RKKWe6ly3q
         0D9rjito1LgSyGFt0QVx6+AjIicCafbn9e0iY7kkttQDlAdxDuEQtOEmSseaxJzsDX0n
         srSFo68SA/EdBIGTO8cHtw95UHLKVupiVfOZCEolwqMJmXsaGWI/NuMQUQKZHX/AhI8x
         SjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=UqQWOz+44E9c9KnrAg8GfsTSqMpBn4kp20E2/CWG8c4=;
        b=BlAwNQqV7CC3paZBeJ01FDlvwqf+wx5UENQy36r433ho+TB3ouiMX65YSheTOuopSW
         1sYbjnnDh82I4dubr2klJuufw93g20LEF4QQ2/DsCAp5zhp6rgmETxvJ3Os8Ka/odyKg
         f1mF5HkOl2ndj/0lcgCpLTnkkQB2SLGyjQOqXpJUao9LUHE6avVYh2d86Ns6LLMNYFVp
         eZvjjImg3LsIoC5eMTR7uOsq+NVYc3J9r1tYiSW2p1cN1BQYupHyjLXLUFotdbaOIRls
         mDBkpbmdMot/VXRHajh0gZ5I2ej0Ax1/kM0s08/K5Qu6HQv1UrcWxk56/oAwlPtYjVJh
         X5Cw==
X-Gm-Message-State: AOAM532POgSF+5kPRkpcWkISB4mtSE54AMpv5hsA/+KfLiC+lF1zoD74
        h0uQVlua6k5TgVba6sdvCg7N+H48E0fvWw==
X-Google-Smtp-Source: ABdhPJyjhsqb0+CYPzx6IG5RO6ZbOKws3sITN/xisfZ5ZeFZJH22+waeyFXrOxmPZpANa/PIQxEWtw==
X-Received: by 2002:a1c:6043:: with SMTP id u64mr855453wmb.166.1606167066915;
        Mon, 23 Nov 2020 13:31:06 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w17sm21606289wru.82.2020.11.23.13.31.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 13:31:06 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: set_thread_area.2: csky architecture undocumented
Message-ID: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
Date:   Mon, 23 Nov 2020 22:31:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

SYNOPSIS
       #include <linux/unistd.h>

       #if defined __i386__ || defined __x86_64__
       # include <asm/ldt.h>

       int get_thread_area(struct user_desc *u_info);
       int set_thread_area(struct user_desc *u_info);

       #elif defined __m68k__

       int get_thread_area(void);
       int set_thread_area(unsigned long tp);

       #elif defined __mips__

       int set_thread_area(unsigned long addr);

       #endif

       Note: There are no glibc wrappers for these system  calls;  see
       NOTES.


$ grep -rn 'SYSCALL_DEFINE.*et_thread_area'
arch/csky/kernel/syscall.c:6:
SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
arch/mips/kernel/syscall.c:86:
SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
arch/x86/kernel/tls.c:191:
SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, u_info)
arch/x86/kernel/tls.c:243:
SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, u_info)
arch/x86/um/tls_32.c:277:
SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, user_desc)
arch/x86/um/tls_32.c:325:
SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, user_desc)


See kernel commit 4859bfca11c7d63d55175bcd85a75d6cee4b7184


I'd change
-      #elif defined __mips__
+      #elif defined(__mips__ || __csky__)

and then change the rest of the text to add csky when appropriate.
Am I correct?

Thanks,

Alex
