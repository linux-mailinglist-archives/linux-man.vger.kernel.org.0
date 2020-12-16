Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A0602DB8E4
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 03:22:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725274AbgLPCWL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 21:22:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725208AbgLPCWL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 21:22:11 -0500
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02D1BC0613D6;
        Tue, 15 Dec 2020 18:21:31 -0800 (PST)
Received: by mail-il1-x141.google.com with SMTP id v3so21200107ilo.5;
        Tue, 15 Dec 2020 18:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=U7ofvTsUNQFzMNb8R1UcQcTuwqjTcF0danQfcnAU9T0=;
        b=Sq7AhOCEp6oZ9cB3L1+gHXRaYrW2sVpdZ9/YjCIupngpmRMhunUznpE73yrmGek3EV
         aNHsMk03cyx9u6505X/Y8zFl3h5EXcecp8Hi93X5TzX2xl7O9Y7U8mVIRsbKbSHbESnc
         wnnpd97tFd6nYSJPI5ppUr91UrsQ8odxX6LwZY5wzExkFqd48vptdERrMCWI2DQTGwRa
         CHA+/bk1YhhYbgkDRmSzNZ6H01mrpOITVs+KSW981NNFZ2qxT2oZPraJyfCR2hhbUtjn
         a53jl93kgxSa8d1uV5QGcRo2ZFzYjUM5jmKVdbAID0XQSlERbvfJetptu4N0ZM83ftaU
         Z8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=U7ofvTsUNQFzMNb8R1UcQcTuwqjTcF0danQfcnAU9T0=;
        b=ZARpKq/jQiN3LIUGqDdeBdUdV5YlDhVlGc+Aqt8D2wz8PvqFzZniG+2PSH3ZXeXIaa
         ui+NQjZn4TwiYtrlRA0QcTj7lKoql9ETYFj3Vj4MtSga2zRCI1pj6RWoszqqAFugJaqv
         5X0rfC/cxwv+JaaYlhjqHc0FQwCLr2VmzX4DgI9hoJW0kDeATUWEIFsKjrsDRWbe2KHm
         ml0TR9eyXN3Ag3UVxebqTpz6T+wabdA1/sooPYsU5we1uPmYaRHXsOJlwrCC1wF5UnC3
         XRenvB6HvJiqRyRLbN8vtFMS/qS2DMDJRKka8k86ktiirhZ8e7FilKWgBX+lda9Ob3ER
         K8cg==
X-Gm-Message-State: AOAM533/bAmKIdf4MF8iFREGdz/x2XVvQS/khdILeX50e+NctX0/ApRj
        PrAWdSb8Tzk5U5SOgMwtf1gvLz/ucdI6SQ==
X-Google-Smtp-Source: ABdhPJxRj6KW1BODFA4jgMXqkFPhRtqZxcr3X3zSF2l77TrOajzYhqx0wuVPIzqUyyPVRa1XQHoWxA==
X-Received: by 2002:a92:91d7:: with SMTP id e84mr43608329ill.159.1608085290012;
        Tue, 15 Dec 2020 18:21:30 -0800 (PST)
Received: from [192.168.1.124] (d53-64-28-168.nap.wideopenwest.com. [64.53.168.28])
        by smtp.gmail.com with ESMTPSA id e25sm11806566iom.40.2020.12.15.18.21.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 18:21:29 -0800 (PST)
Sender: Ted Estes <check.switch.26@gmail.com>
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
To:     Jann Horn <jannh@google.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jann Horn <jann@thejh.net>, Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <X9lBp3BHbwcTmDqb@pc.thejh.net>
 <0e5189c0-9e9b-ac34-825c-619a9a6ef682@gmail.com>
 <d38c5e8b-1653-d89a-a0c8-b95cb1844fba@gmail.com>
 <CAG48ez0y21uWBDuaczLMxLPpFTKABrgm+-aqLb-0a4rHuOCX-g@mail.gmail.com>
From:   Ted Estes <ted@softwarecrafters.com>
Message-ID: <5062fe43-ca37-134f-89ad-57fbd8c312ba@softwarecrafters.com>
Date:   Tue, 15 Dec 2020 20:21:26 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez0y21uWBDuaczLMxLPpFTKABrgm+-aqLb-0a4rHuOCX-g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/15/2020 6:01 PM, Jann Horn wrote:
> On Wed, Dec 16, 2020 at 12:25 AM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>> On 12/16/20 12:23 AM, Alejandro Colomar (man-pages) wrote:
>>> On 12/16/20 12:07 AM, Jann Horn wrote:
>>>> Am Tue, Dec 15, 2020 at 06:01:25PM +0100 schrieb Alejandro Colomar (man-pages):
>>>>> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
>>>>>
>>>>> [[
>>>>> Under "Ptrace access mode checking", the documentation states:
>>>>>    "1. If the calling thread and the target thread are in the same thread
>>>>> group, access is always allowed."
>>>>>
>>>>> This is incorrect. A thread may never attach to another in the same group.
>>>> No, that is correct. ptrace-mode access checks do always short-circuit for
>>>> tasks in the same thread group:
>>>>
>>>> /* Returns 0 on success, -errno on denial. */
>>>> static int __ptrace_may_access(struct task_struct *task, unsigned int mode)
>>>> {
>>>> [...]
>>>>          /* May we inspect the given task?
>>>>           * This check is used both for attaching with ptrace
>>>>           * and for allowing access to sensitive information in /proc.
>>>>           *
>>>>           * ptrace_attach denies several cases that /proc allows
>>>>           * because setting up the necessary parent/child relationship
>>>>           * or halting the specified task is impossible.
>>>>           */
>>>>
>>>>          /* Don't let security modules deny introspection */
>>>>          if (same_thread_group(task, current))
>>>>                  return 0;
>>>> [...]
>>>> }
>>> AFAICS, that code always returns non-zero,
>> Sorry, I should have said "that code never returns 0".
>>
>>> at least when called from ptrace_attach().
> Yes.
>
>>> As you can see below,
>>> __ptrace_may_access() is called some lines after
>>> the code pointed to by the bug report.
>>>
>>>
>>> static int ptrace_attach(struct task_struct *task, long request,
>>>                         unsigned long addr,
>>>                         unsigned long flags)
>>> {
>>> [...]
>>>        if (same_thread_group(task, current))
>>>                goto out;
>>>
>>>        /*
>>>         * Protect exec's credential calculations against our interference;
>>>         * SUID, SGID and LSM creds get determined differently
>>>         * under ptrace.
>>>         */
>>>        retval = -ERESTARTNOINTR;
>>>        if (mutex_lock_interruptible(&task->signal->cred_guard_mutex))
>>>                goto out;
>>>
>>>        task_lock(task);
>>>        retval = __ptrace_may_access(task, PTRACE_MODE_ATTACH_REALCREDS);
>>> [...]
>>> }
> I said exactly that in my last mail:
>
>>>> As the comment explains, you can't actually *attach*
>>>> to another task in the same thread group; but that's
>>>> not because of the ptrace-style access check rules,
>>>> but because specifically *attaching* to another task
>>>> in the same thread group doesn't work.
> As I said, attaching indeed doesn't work. But that's not what "Ptrace
> access mode checking" means. As the first sentence of that section
> says:
>
> | Various parts of the kernel-user-space API (not just ptrace()
> | operations), require so-called "ptrace access mode" checks,
> | whose outcome determines whether an operation is
> | permitted (or, in a  few cases,  causes  a "read" operation
> | to return sanitized data).
>
> You can find these places by grepping for \bptrace_may_access\b -
> operations like e.g. the get_robust_list() syscall will always succeed
> when inspecting other tasks in the caller's thread group thanks to
> this rule.

Ah, yes.  I missed that back reference while trying to digest that 
rather meaty man page.  A grep on the man page source tree does show a 
number of references to "ptrace access mode".

That said, the ptrace(2) man page also directly references the ptrace 
access mode check under both PTRACE_ATTACH and PTACE_SEIZE:

| Permission to perform a PTRACE_ATTACH is governed by a ptrace | access 
mode PTRACE_MODE_ATTACH_REALCREDS check; see below. As confirmed, the 
"same thread group" rule does not apply to either of those operations. A 
re-wording of rule 1 similar to this might help avoid confusion: 1. If 
the calling thread and the target thread are in the same thread group: 
a. For ptrace() called with PTRACE_ATTACH or PTRACE_SEIZE, access is 
NEVER allowed. b. For all other so-called "ptrace access mode checks", 
access is ALWAYS allowed. --Ted

