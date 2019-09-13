Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9FD6B255F
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 20:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389898AbfIMSs2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 14:48:28 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36572 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388709AbfIMSs1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 14:48:27 -0400
Received: by mail-wr1-f68.google.com with SMTP id y19so33068387wrd.3
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 11:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qFnecsdG1lz7Ws2InsWkqGZ7DD6Kp5RUuFcUqckO4WQ=;
        b=nAFcS7woWxQftz0g+wBIYUdDjF0nQN8PhLGaLyr2D5tdVwhCupD+21NCQxFO08yRGG
         09TppIWvT5H05q6vC5rEMD4SV0s1AH4lyopCjiphpVG0iPvdtT53Rct9vXeWwLt4x+iX
         JQ6voqCcemC+iWj+Z6/3Z924ihcV9bwqxJfoXYr90bNHGJMpMXXL7YEAOWNu3n2IQiwf
         CaxmBWkZ/2wnHuv42Wn+yfTLT3uSS8lvZeK3l3vlKT1+vaarZLYGIHBZivqMoNfpPK0f
         qAW0y7dnHH0KXrlVadxSAWs5QWi3r4pV1Zh+oqI5ts/54FNuf1G4VJ4UyLmiyZr2ypFa
         Bxtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qFnecsdG1lz7Ws2InsWkqGZ7DD6Kp5RUuFcUqckO4WQ=;
        b=COUKSY3WyfXJuv9KmCc+UF6Yk9g3n+0CvcPo2zhLinSSu5WLdBmhrv9wHD7Mraz3Q0
         6DLrxiwSSVjw/AKBMXJPNcOAynLWby//uThiApCZYrxPWn1RhIvxmBUxPY8fvSC4quGO
         R1Hjslq8mAITAkRWu3HgxV4IICH+xp7MBp6Deu4eLKiwxs1svIlJ2R+lfAt9ErcQU9Ng
         sr+aZYG8n5Ly9wS4tmhBo6o/PmrMf2hJffPxkm4/4XQTWOuVxv7ZjDcIQzqMHf0sY+7o
         xbieYkg18TYCgPHi+WWcWwIRezjpRcXq1IqT6eZyEmspwuRSL66MEJhKUyyjHnXi1QwC
         bqmQ==
X-Gm-Message-State: APjAAAWrY4ihjJy7udWhAOiVhUn+RPB3ihSJnOF/Cca57MkMYTKPpyz8
        8C634L+eQymLto5BVsxSgHzrD9mR
X-Google-Smtp-Source: APXvYqyjjY19WDQgUKMmqIcPSAayKWP9HGmAfKRKwQe4/7Dzgt9wnOCOanuRga95i/iWenVD7F0YnQ==
X-Received: by 2002:a5d:6602:: with SMTP id n2mr42685235wru.317.1568400505013;
        Fri, 13 Sep 2019 11:48:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:256b:9b01:1364:a0d6:67b5:6c6f? ([2001:a61:256b:9b01:1364:a0d6:67b5:6c6f])
        by smtp.gmail.com with ESMTPSA id g3sm16246167wrq.64.2019.09.13.11.48.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 11:48:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Elvira Khabirova <lineprinter@altlinux.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] ptrace.2: document struct ptrace_syscall_info
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <20190902123858.GA8956@altlinux.org>
 <0eb09cbc-8035-ee82-9c75-6525d91e7138@gmail.com>
 <20190911173807.GA25385@altlinux.org>
 <226a075d-5486-85fa-eee4-f13db6ee5448@gmail.com>
 <20190913154013.GA23393@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4bcd01d4-fd94-1802-d600-08eb55c649ab@gmail.com>
Date:   Fri, 13 Sep 2019 20:48:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190913154013.GA23393@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/13/19 5:40 PM, Dmitry V. Levin wrote:
> On Thu, Sep 12, 2019 at 11:17:52AM +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Dmitry,
>>
>> On 9/11/19 7:38 PM, Dmitry V. Levin wrote:
>>> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
>>> ---
>>>  man2/ptrace.2 | 51 ++++++++++++++++++++++++++++++++++++++++++++++++++-
>>>  1 file changed, 50 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>>> index ff897bb19..b030247e6 100644
>>> --- a/man2/ptrace.2
>>> +++ b/man2/ptrace.2
>>> @@ -1026,7 +1026,56 @@ If the size of the data to be written by the kernel exceeds the size
>>>  specified by the
>>>  .I addr
>>>  argument, the output data is truncated.
>>> -.\" FIXME Document 'struct ptrace_syscall_info'
>>> +.IP
>>> +The
>>> +.I ptrace_syscall_info
>>> +structure contains the following fields:
>>> +.IP
>>> +.in
>>> +.EX
>>> +struct ptrace_syscall_info {
>>> +    __u8 op;                    /* PTRACE_SYSCALL_INFO_* value
>>> +                                   describing the kind
>>> +                                   of system call stop,
>>> +                                   see <linux/ptrace.h> */
>>> +    __u32 arch;                 /* AUDIT_ARCH_* value,
>>> +                                   see seccomp(2) */
>>> +    __u64 instruction_pointer;  /* CPU instruction pointer */
>>> +    __u64 stack_pointer;        /* CPU stack pointer */
>>> +    union {
>>> +        struct {
>>> +            __u64 nr;           /* System call number */
>>> +            __u64 args[6];      /* System call arguments */
>>> +        } entry;                /* Information specific to
>>> +                                   system call entry stops */
>>> +        struct {
>>> +            __s64 rval;         /* System call return value */
>>> +            __u8 is_error;      /* System call error flag */
>>> +        } exit;                 /* Information specific to
>>> +                                   system call exit stops */
>>> +        struct {
>>> +            __u64 nr;           /* System call number */
>>> +            __u64 args[6];      /* System call arguments */
>>> +            __u32 ret_data;     /* The SECCOMP_RET_DATA portion
>>> +                                   of SECCOMP_RET_TRACE return
>>> +                                   value */
>>> +        } seccomp;              /* Information specific to
>>> +                                   PTRACE_EVENT_SECCOMP stops */
>>> +    };
>>> +};
>>> +.EE
>>> +.in
>>> +.IP
>>> +.IR op ,
>>> +.IR arch ,
>>> +.IR instruction_pointer ,
>>> +and
>>> +.I stack_pointer
>>> +fields are defined for all kinds of ptrace system call stops.
>>> +The rest of the structure is a union, one should read only those fields
>>> +that are meaningful for the kind of system call stop specified by the
>>> +.IR op
>>> +field.
>>>  .\"
>>>  .SS Death under ptrace
>>>  When a (possibly multithreaded) process receives a killing signal
>>
>> Thanks. I've applied, and done some light editing.
>>
>> I also added some pieces. Could you please take a look at commits
>> f04534d22c69 [1] and 227a3682312 [2] let me know if they are okay.
> 
> Thanks.  The only thing that needs correction is
> "Boolean: is rval != 0?" comment about is_error field.
> 
> In fact, is_error is a boolean that tells whether rval field
> contains a non-error return value (e.g. file descriptor) or
> an error value (e.g. -ERRORCODE).

Thanks for checking this Dmitry. I see what I missed before.
I've now changed the text here to be:

            __u8 is_error;     /* System call error flag;
                                  Boolean: does rval contain
                                  an error value (\-ERRCODE) or
                                  a nonerror return value? */

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
