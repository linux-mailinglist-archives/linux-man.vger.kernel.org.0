Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4BDB29E9E7
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 12:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726025AbgJ2LCu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 07:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725774AbgJ2LCu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 07:02:50 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4241C0613CF;
        Thu, 29 Oct 2020 04:02:48 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id c16so2002739wmd.2;
        Thu, 29 Oct 2020 04:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cIbiV1a/u6vhCm+3+IClWgED9AdaCdhu6mO9dkQqo8w=;
        b=mblLIw0xc5k0mSEYVz5ULAYcXQ/joXIhjoH2HP41uf3m1lJPFd0r+o5tk4KuYBbNH2
         zESqedCiFesLrQHuDbEd0Ub9Pfc9aS0l1SJMhRUV/CLkr1jWnpEyorDEC8KW32luz4J7
         GVh2k4F3yA/W+euW71iMwskoKRniuXhAZ8LlasHgR8OstXELv403LsBS842YuwV/Apjy
         +9cRtnXpBjrGWyzkzSAxn68pJPBMXuYJUgN3sUT1cT5iEBmGqbAe2a4t3pzlh8vvdQ0r
         raLYu8V8reMkhWOgoxlsC++gUk7gWs7vGsE6DGWIsjNYzLYWOninkIecTeE1OVLb8U+l
         l4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cIbiV1a/u6vhCm+3+IClWgED9AdaCdhu6mO9dkQqo8w=;
        b=lC2wxK2zXxLvsyAbP4iM2ScUjzUsmrvP6eNpZuV3iZ4q1bNDlbd64XVJchfBYSITPK
         qO/CJClohI5AzZimlv/tDVO/EcVIV2rKUmbEbpGF2ybCmQ2nHfzbS5LFKvJK33PTmooh
         xkOdEr4sdCFMGJbwEvyzOr514c8aaio5FN4znpC6ppCGX1FzobETGulrCQSYrBQ/RPFe
         xaJOExVKK1/9cvSp0Sk0GuY3mqm2Kht1kgWEWH3wCpLbz7FP58n4fAPfVeKAC/cdXBxu
         4mNrHd73+sqHOFYKr4S+u93mfOIDYfcw7CUN87Fv+b+1dRhPSZqwx9SBo9EAKOfsylaT
         LnQQ==
X-Gm-Message-State: AOAM530zBXCaMZJKOODyjtJZvsp1MSKxe8l1yRYGe1CEK/k3I50VEc/B
        mXh8Yn9TRe/tH0qF0HNIX88=
X-Google-Smtp-Source: ABdhPJzhdN6tfHQ0KJ9UTeO+EQC2fgQoXzp+T9zhRrPRKylp13veDw62uUAQT12zNUtt7vAhXQMCFQ==
X-Received: by 2002:a1c:c912:: with SMTP id f18mr3801505wmb.150.1603969366596;
        Thu, 29 Oct 2020 04:02:46 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l16sm4451378wrx.5.2020.10.29.04.02.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 04:02:45 -0700 (PDT)
Subject: Re: [PATCH] getdents.2: Use 'ssize_t' instead of 'int'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <20201028221118.158108-1-colomar.6.4.3@gmail.com>
 <ed5937c4-a590-1735-b716-0894657ff8fc@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <1195fda6-4de3-09fc-8653-42655d7e2b76@gmail.com>
Date:   Thu, 29 Oct 2020 12:02:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ed5937c4-a590-1735-b716-0894657ff8fc@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[[ CC += linux-kernel, libc-alpha ]]

Hi Michael,

On 2020-10-29 08:13, Michael Kerrisk (man-pages) wrote:
 > Hi Alex,
 >
 > On 10/28/20 11:11 PM, Alejandro Colomar wrote:
 >> The glibc wrapper for getdents64() uses ssize_t.
 >
 > It also changed the types for the arguments, so those need to be
 > fixed too.

I saw that, but I sent an email to glibc asking if it was a bug.
I'll hold this patch, and I'll CC this list in that other thread.

 >
 >> And let's use it also for getdents().
 >
 > I actually think we should *not* change that. So long as their is
 > no wrapper, we should show pretty much what the ABI exposes. (That
 > makes me think that the return type should really be long; see
 > what you think about DEFINE_SYSCALL3 in the kernel sources.)

Agreed; then getdents() (and all syscalls without a wrapper)
should use 'long', as you said.

BTW: My mind explodes when I try to read through SYSCALL_DEFINEx :)

 >
 > And you added an include for <sys/types.h>. I'm not sure
 > whether that's needed, but it should be explained in the
 > commit message.

Agreed.
I should be able to check if it's needed, in ssize_t(3) :p
... Actually it's not needed (<stdio.h> already provides it).

Thanks,

Alex
