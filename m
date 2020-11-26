Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 233582C53D4
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 13:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730546AbgKZMQi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 07:16:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727632AbgKZMQi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 07:16:38 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB262C0613D4;
        Thu, 26 Nov 2020 04:16:37 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m6so1906396wrg.7;
        Thu, 26 Nov 2020 04:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ImRL8HhrRWVlIHahlQySkvXXGEzQL3T3Ph8DASFBC+M=;
        b=VzBD2nwIEk9faRUcMvTQ3DOEEx6EBs/YE5b6c4cSJA0syK4vh+JZihBMEG026xziWN
         sU/UoagJB9WrRHsL+Gvh/9+l4/Xqgau+5jRcSahMhGNsuadyAG4kLYqJbhwCbA4b6U9A
         WbkFMtqQqhemtLVWCQqrjcexxMoRWeaVo6SnZQaxXQEcXp+BSCZ85UOu6wju1wsj81ZD
         HmWsUap5AxjzTNQYKLXgwGy2yTrPNW7Sv0CbUp6KOV+SXSlATEDe/UX4qT/yr07iWybD
         +fQemDxWb+6TyW21Sjk3lsDW0W1MtyEut/A/NP6M2JERtYQBCn6VKqWeAIr1/ZJ87zHP
         Ucig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ImRL8HhrRWVlIHahlQySkvXXGEzQL3T3Ph8DASFBC+M=;
        b=OfiebqkHuUu6hKuyRG1dEbWV6gfCxCSTwx75wdB9jSOPPzQIYpsO876JKYrccy6mdy
         a0ZnSxwrpCjJJ9OFTl5VHEkyv+yjMgwSeDxSikhIfG6yPRokQojT6/Kqizzyzfb49Vh5
         JFkEhcmA67WfyZPm0ymT9oITFZBrzhmvKQHsOaUfcXH4hONMcsIhyQ1xxXJLlghI+oAh
         ENSU/r1kpkV6VdFQerSYrKhEpodyv5OmR11r0P8R4CSYHVdjXHTaMYYbnQAzevZ0S2xC
         KuiZm5SIuLNLn6xLM99PahjgHBhTgky4YjH/oV50BZpSYkv0s9oo4I0bBS1PeSKeVgx3
         Rw1g==
X-Gm-Message-State: AOAM532E/5Kgjl+HKIj31vJh54o3ogWT10EFPW4jZ28wnsjfoSEQ3EKv
        /WVqCAJrFSowGyQ407fUUI8=
X-Google-Smtp-Source: ABdhPJwsFpenv0cVplp3Hk0bxhbGSanbK8wkxGkAegqT/sZRHdsQy7fftPQCLX6ooiZ+SaNPiBPfAA==
X-Received: by 2002:a5d:444c:: with SMTP id x12mr3573452wrr.6.1606392996507;
        Thu, 26 Nov 2020 04:16:36 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n9sm8065732wmd.4.2020.11.26.04.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 04:16:36 -0800 (PST)
Subject: Re: set_thread_area.2: csky architecture undocumented
To:     Guo Ren <guoren@kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-csky@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
References: <014e670b-2a11-3deb-4e7e-bfe9defd8597@gmail.com>
 <c669c780-f6e8-bd2a-e6ec-0a5960b7d7d8@gmail.com>
 <CAJF2gTQPai9k6XqqStbvk0waF+tmMQm9PMMZe3T8m6ioAjdTFA@mail.gmail.com>
From:   "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Message-ID: <0507b86c-fe5a-7d47-07d2-e37e4dd94d1e@gmail.com>
Date:   Thu, 26 Nov 2020 13:16:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAJF2gTQPai9k6XqqStbvk0waF+tmMQm9PMMZe3T8m6ioAjdTFA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Guo,

Thanks for the details!
I'll try to add csky to the man page,
and if I have any doubts I'll ask you.
Anyway, I'll CC you in any change I propose.

Cheers,

Alex

On 11/24/20 1:07 PM, Guo Ren wrote:
> Thx Michael & Alejandro,
> 
> Yes, the man page has no csky's.
> 
> C-SKY have abiv1 and abiv2
> For abiv1: There is no register for tls saving, We use trap 3 to got
> tls and use set_thread_area to init ti->tp_value.
> For abiv2: The r31 is the tls register. We could directly read r31 to
> got r31 and use set_thread_area to init reg->tls value.
> 
> In glibc:
> # ifdef __CSKYABIV2__
> /* Define r31 as thread pointer register.  */
> #  define READ_THREAD_POINTER() \
>         mov r0, r31;
> # else
> #  define READ_THREAD_POINTER() \
>         trap 3;
> # endif
> 
> /* Code to initially initialize the thread pointer.  This might need
>    special attention since 'errno' is not yet available and if the
>    operation can cause a failure 'errno' must not be touched.  */
> # define TLS_INIT_TP(tcbp) \
>   ({ INTERNAL_SYSCALL_DECL (err);                                       \
>      long result_var;                                                   \
>      result_var = INTERNAL_SYSCALL (set_thread_area, err, 1,            \
>                     (char *) (tcbp) + TLS_TCB_OFFSET);                  \
>      INTERNAL_SYSCALL_ERROR_P (result_var, err)                         \
>        ? "unknown error" : NULL; })
> 
> In kernel:
> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
> {
>         struct thread_info *ti = task_thread_info(current);
>         struct pt_regs *reg = current_pt_regs();
> 
>         reg->tls = addr;
>         ti->tp_value = addr;
> 
>         return 0;
> }
> 
> Any comments are welcome :)
> 
> 
> On Tue, Nov 24, 2020 at 5:51 PM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>>
>> Hi Alex,
>>
>> On 11/23/20 10:31 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> SYNOPSIS
>>>        #include <linux/unistd.h>
>>>
>>>        #if defined __i386__ || defined __x86_64__
>>>        # include <asm/ldt.h>
>>>
>>>        int get_thread_area(struct user_desc *u_info);
>>>        int set_thread_area(struct user_desc *u_info);
>>>
>>>        #elif defined __m68k__
>>>
>>>        int get_thread_area(void);
>>>        int set_thread_area(unsigned long tp);
>>>
>>>        #elif defined __mips__
>>>
>>>        int set_thread_area(unsigned long addr);
>>>
>>>        #endif
>>>
>>>        Note: There are no glibc wrappers for these system  calls;  see
>>>        NOTES.
>>>
>>>
>>> $ grep -rn 'SYSCALL_DEFINE.*et_thread_area'
>>> arch/csky/kernel/syscall.c:6:
>>> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
>>> arch/mips/kernel/syscall.c:86:
>>> SYSCALL_DEFINE1(set_thread_area, unsigned long, addr)
>>> arch/x86/kernel/tls.c:191:
>>> SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, u_info)
>>> arch/x86/kernel/tls.c:243:
>>> SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, u_info)
>>> arch/x86/um/tls_32.c:277:
>>> SYSCALL_DEFINE1(set_thread_area, struct user_desc __user *, user_desc)
>>> arch/x86/um/tls_32.c:325:
>>> SYSCALL_DEFINE1(get_thread_area, struct user_desc __user *, user_desc)
>>>
>>>
>>> See kernel commit 4859bfca11c7d63d55175bcd85a75d6cee4b7184
>>>
>>>
>>> I'd change
>>> -      #elif defined __mips__
>>> +      #elif defined(__mips__ || __csky__)
>>>
>>> and then change the rest of the text to add csky when appropriate.
>>> Am I correct?
>>
>> AFAICT, you are correct. I think the reason that csky is missing is
>> that the architecture was added after this manual pages was added.
>>
>> Thanks,
>>
>> Michael
>>
>>
>> --
>> Michael Kerrisk
>> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
>> Linux/UNIX System Programming Training: http://man7.org/training/
> 
> 
> 
> --
> Best Regards
>  Guo Ren
> 
> ML: https://lore.kernel.org/linux-csky/
> 
