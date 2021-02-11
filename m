Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ABB0319115
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 18:32:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231952AbhBKRax (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 12:30:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229993AbhBKR3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Feb 2021 12:29:03 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D980BC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:28:22 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id u14so4998401wri.3
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DLi7/vzXsfDTyrTDCkBGxjeJQgg3jBq0Tmti+kvzdT4=;
        b=rPYAVxU+Qs6RzY6+xOapBKRfVLubUYHpy2GPOviJTan+SEcbkXwFnlkoeI8DEBhnJC
         o2m5QWTeFbX4VphtfABFOODA/lO6r/XmzvP0gkbQrjlfmRyfTN7ZFYlKVkO+ri4XM1bt
         lKcceE5qbz1S26B4nREcpjIz2QQVT++9KhJNhhqBmWykathp2Teyb4SWuwua/3BuJ6L0
         wC3tgabRw+I3nl9HoQ0CtoxHG+MVLVjb0JcPfKJFU8cylOsYNjo+1ahlISZmc3QwR3jg
         0jb+g1B6m9fFvTKbmki/xIBoYm1Sfpk/rX9Z2M7XRpGYiG2EDT3qmUaB1DrppUqawC3X
         gl/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DLi7/vzXsfDTyrTDCkBGxjeJQgg3jBq0Tmti+kvzdT4=;
        b=Erqe69Q23NwRCTqCtH463bX5SiFMROgeFkL6D+aRFMp7CD7Nwfkxsl9gNVYooRWt2m
         7sYmo9hRcQ+KRiga8PZHFxCCIlVZpS3Ry03Y04rE5MdIU7vGM8a/H5OnPI66C+EbRovi
         QO0oPz9teTx/rOa6HwhQaqYrK91w8BpyPQb8jRRqWqRh9MMXiCB0qFFLoQ/XKfuvlXlZ
         przzexa5StSF9Ml4p2M/Ri7zvFY4gqIl1MaYlBbzPXNY36TNjRlq8WZN+/YqTqYlF1Ez
         PWmvYDkUntUARcfYuo47eiO1MW+cF6V0i6seGYk+M9ndjAxCeTkN3xoEJ1A+An7W/U0R
         9mOA==
X-Gm-Message-State: AOAM533gyBCLF+BNo7nUAP/59z68PTtvB/RORnZ5bMrGbTBUlfEqOAv/
        59TnbZbDaFLYaOVa7+2m5p4=
X-Google-Smtp-Source: ABdhPJzKhnekl1xXbdv3mLavASLSeKxkTXgvRnuZkdvckIUfJYs++un//qq8fH8U1L8qNoHqBoEyiQ==
X-Received: by 2002:adf:f941:: with SMTP id q1mr6957228wrr.189.1613064500689;
        Thu, 11 Feb 2021 09:28:20 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f7sm6078502wrm.92.2021.02.11.09.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 09:28:19 -0800 (PST)
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
 <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
 <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
 <e5de8f47-b8cc-ee52-4702-5bdf7193f0d8@gmail.com>
 <CAHBesv0hwHLJMzqBq+e4LpDAWV98H4+d5mv4gSbFFWs8oV7b3w@mail.gmail.com>
 <20d93fb1-766e-ddf8-a7d8-b00f7bd04cc6@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Denys Vlasenko <dvlasenk@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <211a7ae9-44f9-dc42-cc57-accc99e76da9@gmail.com>
Date:   Thu, 11 Feb 2021 18:28:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20d93fb1-766e-ddf8-a7d8-b00f7bd04cc6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[[ CC += Denys, glibc ]]

Hi Michael,

On 2/11/21 7:50 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
>> On Tue, Feb 9, 2021, 23:34 Alejandro Colomar (man-pages) <
>> alx.manpages@gmail.com> wrote:
>>
>>> Hi Michael,
>>>
>>> On 2/9/21 7:25 PM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alex,
>>>>
>>>> On 2/8/21 11:36 PM, Alejandro Colomar (man-pages) wrote:
>>>>> [CC += linux-man@]
>>>>>
>>>>> I forgot the list.
>>>>>
>>>>> On 2/8/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
>>>>>> Hi Michael,
>>>>>>
>>>>>> I think we should simplify the prototype of ptrace(2) from using 'enum
>>>>>> __ptrace_request' to 'int'.  It is an implementation detail that should
>>>>>> be transparent to the user.  Other pages where glibc uses an 'enum' are
>>>>>> documented to use 'int' (I don't remember the names of those, but
>>>>>> remember having seen them a few days ago.  Otherwise, we might have to
>>>>>> document 'enum' elsewhere, which I don't think adds any value.  What do
>>>>>> you think about it?
>>>>
>>>> I'm somewhat conservative on this point. It's been documented
>>>> this way forever, so I'm inclined to pause before changing it.
>>> Okay.
>>>
>>>> I feel like we lack information. I'd like to know about some of
>>>> the other cases where enums in glibc are documented instead as int.
>>>> But, on the other hand, maybe this is not the highest priority,
>>>> so it may not be worth too much effort to discover those examples.
>>>
>>> I checked all of them ;)
>>> It's more like 50/50.
>>>
>>> Here are the glibc results (grepping though the kernel is taking much
>>> longer, but I guess the command will have ended by tomorrow morning, and
>>> I'll send you a follow-up.
>>>
>>>
>>> .../gnu/glibc$ man_lsfunc ../../linux/man-pages/man2 \
>>>                |while read -r f; do \
>>>                        grep_glibc_prototype $f;
>>>                done \
>>>                |grep enum;
>>> extern long pciconfig_iobase(enum __pciconfig_iobase_which __which,
>>> extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
>>> extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
>>> extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
>>> extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
>>> extern int ptrace (enum __ptrace_request __request, ...);
>>> extern long int ptrace (enum __ptrace_request __request, ...) __THROW;
>>> .../gnu/glibc$
>>>
>>>
>>> Of the above, only ptrace(2) uses 'enum' in the manual page.
>>> The others use 'int'.
>>>
>>>
>>> .../gnu/glibc$ man_lsfunc ../../linux/man-pages/man3 \
>>>                |while read -r f; do \
>>>                        grep_glibc_prototype $f;
>>>                done \
>>>                |grep enum;
>>> extern int mcheck (void (*__abortfunc)(enum mcheck_status)) __THROW;
>>> extern int mcheck_pedantic (void (*__abortfunc)(enum mcheck_status))
>>> __THROW;
>>> extern enum mcheck_status mprobe (void *__ptr) __THROW;
>>> .../gnu/glibc$
>>>
>>> All of the above use 'enum' in the manual page.
>>>
>>> Cheers,
>>>
>>> Alex
>>>
>>> ......
>>>
>>> man_lsfunc prints a list of all C functions documented in the SYNOPSIS
>>> of a directory such as man2 (it can also be used on a single manual
>>> page, such as `man_lsfunc man2/open.2`).
>>>
>>> function man_lsfunc()
>>> {
>>>         if ! [ -v 1 ]; then
>>>                 >&2 echo "Usage: ${FUNCNAME[0]} <dir>";
>>>                 return ${EX_USAGE};
>>>         fi
>>>
>>>         find "${1}" -type f \
>>>         |xargs grep -l "\.SH SYNOPSIS" \
>>>         |sort -V \
>>>         |while read -r manpage; do
>>>                 <${manpage} \
>>>                 sed -n \
>>>                         -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
>>>                         -e "/^\.SH SYNOPSIS/p" \
>>>                         -e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
>>>                 |sed \
>>>                         -e '/Feature/,$d' \
>>>                         -e '/:/,$d' \
>>>                 |man -P cat -l - 2>/dev/null;
>>>         done \
>>>         |sed -n "/^SYNOPSIS/,/^\w/p" \
>>>         |grep '^       \w' \
>>>         |grep -v '[{}]' \
>>>         |sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
>>>         |grep '^\w' \
>>>         |sort \
>>>         |uniq;
>>> }
>>>
>>>
>>>>
>>>> Thanks,
>>>>
>>>> Michael
>>>>
>>>
>>
> 
> On 2/10/21 10:55 PM, Alejandro Colomar wrote:
>> [offlist; phone]
>>
>> Hi Michael,
>>
>> I'd like to make sure you also read this email.
> 
> Yes, I saw it. I'll go with your judgement on this one. I do not 
> have strong feelings about it.
> 
> If you send the patch, please CC Denys Vlasenko <dvlasenk@redhat.com>.
> Denys has made many contributions to the ptrace.2 page in
> the past, and just maybe he has a comment.
> 
> Thanks,
> 
> Michael

(I fixed my top reply.)


I found that there are a few more functions using enum.
I didn't find them before, because they're probably macros?.

[[
$ man_section man2 SYNOPSIS | grep enum;
       long ptrace(enum __ptrace_request request, pid_t pid,
$ man_section man3 SYNOPSIS | grep '\benum\b'
       int mcheck(void (*abortfunc)(enum mcheck_status mstatus));
       int mcheck_pedantic(void (*abortfunc)(enum mcheck_status mstatus));
       enum mcheck_status mprobe(void *ptr);
              of enum clnt_stat cast to an integer if it fails.  The
routine clnt_perrno()
       enum clnt_stat clnt_broadcast(unsigned long prognum,
       enum clnt_stat clnt_call(CLIENT *clnt, unsigned long procnum,
       void clnt_perrno(enum clnt_stat stat);
       char *clnt_sperrno(enum clnt_stat stat);
       enum clnt_stat pmap_rmtcall(struct sockaddr_in *addr,
       void svcerr_auth(SVCXPRT *xprt, enum auth_stat why);
       typedef enum { preorder, postorder, endorder, leaf } VISIT;
                          enum xdr_op op);
       void xdrstdio_create(XDR *xdrs, FILE *file, enum xdr_op op);
]]

I see a difference between the syscall wrappers and the library calls:
The syscall wrappers use uglified enum tags (__xxx), which I guess means
that they are being used as an implementation detail that were not
supposed to be known by the users.  But the library calls (man3)
deliberately use normal enum tags.  Also, the glibc documentation uses
enum for mcheck*(3).

The BSDs use int for the ptrace(2) request (both manual and implementation).

So I'd fix ptrace(2) to use 'int', to be consistent with the
documentation for other syscall wrappers (pciconfig_iobase(2),
prlimit(2)); and leave the section 3 functions untouched.  However, I'm
not really sure about this now, so I'll send this email, wait some time
to see if someone else comments, and then I'll see.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
