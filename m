Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A20F2DBD75
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 10:24:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726239AbgLPJWx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Dec 2020 04:22:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725889AbgLPJWx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Dec 2020 04:22:53 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 825EBC061793;
        Wed, 16 Dec 2020 01:22:12 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 3so1698446wmg.4;
        Wed, 16 Dec 2020 01:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RJZfbOpvaoYmBANt+HqV8ylipILatFYPhAQZqMNkeQk=;
        b=uw+7s7jcI055eQvQWhgqFcpZ65vMk8eqB9iBn7ghOjEMfeqeTE2R2dpt0gXbscNAPK
         qjMkWxY3yWRycAkRtCWUndblagXRUFaTbZKaDnKpQwY4ySsWweBvucxhE4RfMY26vXga
         orCF2vpyzpQQwo7vWq1Q0evgMCFpLDOXbdu6gpF1QHhXYMGo34lORhedYnO099/9Rus/
         KRdZca7gLCdMoNsUwamBHmErOu/P/AZozr8nOsdQ3Rcp/3l/oDgCgIFAqrlRhArsTo1h
         aJrpGYkBVTxpO9AXI/pEJBIwxsqSMdQ/G8Ea9LTcstO6mNlDNIK6ZBpg2qj4ZdqtoBXF
         88Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RJZfbOpvaoYmBANt+HqV8ylipILatFYPhAQZqMNkeQk=;
        b=qBADz5WV3chbZ2LWmPTyXvSj4ukhbpZqa8xuyFZdfXkmo78Tjbh4TyRR+o+Ov8P/ZG
         Uq5jcuhsLx2XDfNRnn4hgayeuJpBTOl4rG0+hXuAC8L35zkRFPbTVd1/j1ZIEeSD31Wr
         +Q7rT15lDcteN52a7QExPLWcBmXHeTczffxj908VSeGQGrTxxZHQOrrp9GHb/FzCMR20
         zZksD6kTlZlynZwLOCROMyi9bDaqPg8eQrIUeiniznq8ghAAuo8nEPmq87TjOPk4MyZI
         GQDCYp0Caa6BmvBnZZfG3nVA5KmYX2OHtKGGh8s2YHahFlngqxUc2kbrbfEew4itvNHv
         /m+A==
X-Gm-Message-State: AOAM530SkWRVw0ZswBut02uxfKVvdLcRmHElt10fnPMwlplfUDfE4Rp/
        UF6XAwB2uUYFK6Ct9KZryWg=
X-Google-Smtp-Source: ABdhPJz1oBrT5frbwr3vf8c6PpsC/sX3kunWq/rOVKwhoQAcQ4AIS2zFWP6CMvLMEObEj3YvPWJJrA==
X-Received: by 2002:a7b:c4d5:: with SMTP id g21mr2328214wmk.92.1608110531295;
        Wed, 16 Dec 2020 01:22:11 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w21sm1827774wmi.45.2020.12.16.01.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Dec 2020 01:22:10 -0800 (PST)
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
To:     Oleg Nesterov <oleg@tv-sign.ru>, Jann Horn <jannh@google.com>,
        Ted Estes <ted@softwarecrafters.com>
Cc:     Jann Horn <jann@thejh.net>, Pavel Emelyanov <xemul@openvz.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Darren Hart <dvhart@infradead.org>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <X9lBp3BHbwcTmDqb@pc.thejh.net>
 <0e5189c0-9e9b-ac34-825c-619a9a6ef682@gmail.com>
 <d38c5e8b-1653-d89a-a0c8-b95cb1844fba@gmail.com>
 <CAG48ez0y21uWBDuaczLMxLPpFTKABrgm+-aqLb-0a4rHuOCX-g@mail.gmail.com>
 <5062fe43-ca37-134f-89ad-57fbd8c312ba@softwarecrafters.com>
 <CAG48ez2g=U-H56g6VebQCiSXGg+bVvhBA5yfwymNxVYAGEJJcA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1abbf267-d522-0586-e5a5-c71f4d7b0fa4@gmail.com>
Date:   Wed, 16 Dec 2020 10:22:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez2g=U-H56g6VebQCiSXGg+bVvhBA5yfwymNxVYAGEJJcA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Thomas, Ingo, Peter, Darren]

Hi Oleg,

On 12/16/20 3:33 AM, Jann Horn wrote:
> On Wed, Dec 16, 2020 at 3:21 AM Ted Estes <ted@softwarecrafters.com> wrote:
>> On 12/15/2020 6:01 PM, Jann Horn wrote:
>>> On Wed, Dec 16, 2020 at 12:25 AM Alejandro Colomar (man-pages)
>>> <alx.manpages@gmail.com> wrote:
>>>> On 12/16/20 12:23 AM, Alejandro Colomar (man-pages) wrote:
>>>>> On 12/16/20 12:07 AM, Jann Horn wrote:
>>>>>> As the comment explains, you can't actually *attach*
>>>>>> to another task in the same thread group; but that's
>>>>>> not because of the ptrace-style access check rules,
>>>>>> but because specifically *attaching* to another task
>>>>>> in the same thread group doesn't work.
>>> As I said, attaching indeed doesn't work. But that's not what "Ptrace
>>> access mode checking" means. As the first sentence of that section
>>> says:
>>>
>>> | Various parts of the kernel-user-space API (not just ptrace()
>>> | operations), require so-called "ptrace access mode" checks,
>>> | whose outcome determines whether an operation is
>>> | permitted (or, in a  few cases,  causes  a "read" operation
>>> | to return sanitized data).
>>>
>>> You can find these places by grepping for \bptrace_may_access\b -
>>> operations like e.g. the get_robust_list() syscall will always succeed
>>> when inspecting other tasks in the caller's thread group thanks to
>>> this rule.
>>
>> Ah, yes.  I missed that back reference while trying to digest that
>> rather meaty man page.  A grep on the man page source tree does show a
>> number of references to "ptrace access mode".
>>
>> That said, the ptrace(2) man page also directly references the ptrace
>> access mode check under both PTRACE_ATTACH and PTACE_SEIZE:
>>
>> | Permission to perform a PTRACE_ATTACH is governed by a ptrace | access
>> mode PTRACE_MODE_ATTACH_REALCREDS check; see below. As confirmed, the
>> "same thread group" rule does not apply to either of those operations. A
>> re-wording of rule 1 similar to this might help avoid confusion: 1. If
>> the calling thread and the target thread are in the same thread group:
>> a. For ptrace() called with PTRACE_ATTACH or PTRACE_SEIZE, access is
>> NEVER allowed. b. For all other so-called "ptrace access mode checks",
>> access is ALWAYS allowed. --Ted
> 
> Yeah, maybe. OTOH I'm not sure whether it really makes sense to
> explain this as being part of a security check, or whether it should
> be explained separately as a restriction on PTRACE_ATTACH and
> PTRACE_SEIZE (with a note like "(irrelevant for ptrace attachment)" on
> rule 1). But I don't feel strongly about it either way.
> 

As you are the maintainer for ptrace,
could you confirm the above from Jan?
And maybe suggest what you would do with the manual page.

I'd like to get confirmation that there are still other functions that
require "ptrace access mode" other than ptrace() itself, where it's
valid that the calling thread and the target thread are in the same group.

Jann noted get_robust_list() as an example, so I CCed futex maintainers.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
