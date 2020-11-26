Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8A882C53C3
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 13:15:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389266AbgKZMOR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 07:14:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388797AbgKZMOQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 07:14:16 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21FE1C0613D4;
        Thu, 26 Nov 2020 04:14:15 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r3so1926390wrt.2;
        Thu, 26 Nov 2020 04:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=leRIBFMdc/+95yE03Mwyi+p0MqR4836R4TmqRPoXHYk=;
        b=NDmPqvPIeTqk4uF0nostxKHoa7F04XIhs/+Cu4cC9EteZAc1MXGkt3UtLA8Q7RZFi+
         gNOR1aG4OP0zB9fkdoVJHx6WHlJJ+ttlcZwAOvR/GUIOSTSJr1yDA8alo7jGyaKrhtXa
         r0q3u9TdXpxOgTIXAx75wgk40S6Y+TQ9bFO/yk0LX4K8e540Rl6vSM37boycnQFx3Mhm
         DocPNEvWozVGKAo+gqIMUBapkf/gUItK80xjvbJnXhT2pCz1Ls+Q69opTTPk5ggIBIN3
         hm5HLJa7QR4OwhODOQ9EwFy3vrir4PG1cvVAeJzXknov1rYb2EOtKAuKRFhhtaaqcreN
         tJeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=leRIBFMdc/+95yE03Mwyi+p0MqR4836R4TmqRPoXHYk=;
        b=pDUHxJ8Vl9q8sRXmOlO477nQX4GN2Ati69JoASgcC4NZaBOgNKewfn784crqMlZbbJ
         a2P0WVzy5fNw+UBgHtkaVDn2mrsyVxpUlUO3hDhue7JCFXgm+uh6tdoeSaAMLsf/9zHq
         CQRpPpjB6S7db22vAKv9JoPuwDE0agmx5QyCSHKjjA0aUrkRBW3avhbL1/zhoEbu7eKc
         wFhQDakf7eJOQ2e9j5fOFhZ+D1hiHab3jWXFLzbwqo0a4Gf3pyFdaSt2glHdRtGzNUj2
         TWGLbKLRX5/LHbtTKzKEs24lfE1uBy1QKBYeVSEji5Bu0lDLeKA+ndEE+uvf9u3zFMiM
         I2ng==
X-Gm-Message-State: AOAM531viSPOkkmH+kMM6S5R6/3k3DT/zIf7VeXqTLyy+mwnYvBBNVGJ
        hujtrU15yKbhNXJ7MsgFX7c=
X-Google-Smtp-Source: ABdhPJx9WI5ffS1A5nhB9sPFGNuoIdGNWY9lmRCtj1GCm0Tkx5Kmm8SNmYO/hwqHar88SB9h0XVj5w==
X-Received: by 2002:a5d:4046:: with SMTP id w6mr3619887wrp.51.1606392853754;
        Thu, 26 Nov 2020 04:14:13 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id k81sm10057458wma.2.2020.11.26.04.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 04:14:13 -0800 (PST)
Subject: Re: set_thread_area.2: csky architecture undocumented
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
References: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
 <c669c780-f6e8-bd2a-e6ec-0a5960b7d7d8@gmail.com>
From:   "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Message-ID: <57bc9bce-5c04-fd1f-13c9-3e900a74f1eb@gmail.com>
Date:   Thu, 26 Nov 2020 13:14:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <c669c780-f6e8-bd2a-e6ec-0a5960b7d7d8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

HI Michael,

On 11/24/20 10:51 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 11/23/20 10:31 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> SYNOPSIS
>>        #include <linux/unistd.h>
>>
>>        #if defined __i386__ || defined __x86_64__
>>        # include <asm/ldt.h>
>>
>>        int get_thread_area(struct user_desc *u_info);
>>        int set_thread_area(struct user_desc *u_info);
>>
>>        #elif defined __m68k__
>>
>>        int get_thread_area(void);
>>        int set_thread_area(unsigned long tp);
>>
>>        #elif defined __mips__
>>
>>        int set_thread_area(unsigned long addr);
>>
>>        #endif
>>
>>        Note: There are no glibc wrappers for these system  calls;  see
>>        NOTES.
>>
>>
>> $ grep -rn 'SYSCALL_DEFINE.*et_thread_area'
>> arch/csky/kernel/syscall.c:6:
>> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
>> arch/mips/kernel/syscall.c:86:
>> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
>> arch/x86/kernel/tls.c:191:
>> SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, u_info)
>> arch/x86/kernel/tls.c:243:
>> SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, u_info)
>> arch/x86/um/tls_32.c:277:
>> SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, user_desc)
>> arch/x86/um/tls_32.c:325:
>> SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, user_desc)
>>
>>
>> See kernel commit 4859bfca11c7d63d55175bcd85a75d6cee4b7184
>>
>>
>> I'd change
>> -      #elif defined __mips__
>> +      #elif defined(__mips__ || __csky__)
>>
>> and then change the rest of the text to add csky when appropriate.
>> Am I correct?
> 
> AFAICT, you are correct. I think the reason that csky is missing is
> that the architecture was added after this manual pages was added.

Yep, I guessed it was that :)

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
