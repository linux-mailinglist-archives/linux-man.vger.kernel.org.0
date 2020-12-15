Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 558652DB735
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 01:01:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727721AbgLPABH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 19:01:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726278AbgLOXZ4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 18:25:56 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9A0C0613D3;
        Tue, 15 Dec 2020 15:25:16 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id w5so17711562wrm.11;
        Tue, 15 Dec 2020 15:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mEnQ7aAeDvRnP33MLvsHxkYPbD2kQD2gYMjqtW14l7k=;
        b=JlBQ6TBbFMxcIylxax/Iq6J9oFeDJgH3drWCpixek8jvDLHLkqrqRSD8b8D/AkCS8/
         bWhKDl7pVXeRFZm1iedNvbMzHyUXQX4tu85jmZDN+j0lVrExPKRVLw+Z8En0MYTp/ayT
         zfY5ChkYKe2yyvCEvAInVe8vM21JHn/FFJuMqjaf8kEiJblgZjRDraFmpgH2jOEOtJdn
         ESVJPRSK6fQZl6FiIYKWFanhuvpOaR49kV2BNYNLAaFrjiJhz9+Fdmk+mtSlfqLA1GSH
         zJmnVDhtsI8EU6ZIgnbvZYd9p2o+anoLS/9ov058ynwVtypG65Km5MdjNlOJED811CZc
         10HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mEnQ7aAeDvRnP33MLvsHxkYPbD2kQD2gYMjqtW14l7k=;
        b=HTdQC7yt6aLb1qukkD4c3W/WM52Qho/XKKfLteTl2jf4vgob0lKCB+U+DVLsEAz+Qp
         SU7aHysekdoyuXWQNA7CVhvyoQVcqxe6INUWW0314uEs1QEEzI66lpsng4rW/8qpEBah
         iyIw+TYv+6z9Gy6y8nRXmH/RatEi44y2hmRjTG21uktownuDOaH7hPcZVV0ay0BpYr+l
         sYW3KtLoybGDeV972YvhFZPrUpcEa5w35NRHNZj8UHegoSWyslgm3265/YBew9IbtNfV
         3bxU89d/SB+SEW5Ot5luXMbEDX2hC7T4nVfpaeoWcJAkNTVWrC9qikBdCXdlu/RyZ8Dc
         PTww==
X-Gm-Message-State: AOAM532M3VAxgck/dcnna8cqvxJZGzYhnY/IFhQKHIxp8K+K3+74JOgB
        GpaSSWl3gYvqvLWz2EB5aPA=
X-Google-Smtp-Source: ABdhPJznzN5AjHzbXYLg8nRvX+e58aXB7eSnrxhO/pnDu8OWayKIPim54smcJd8fkZP8fwpdNH/67A==
X-Received: by 2002:a5d:4a44:: with SMTP id v4mr36840812wrs.106.1608074714845;
        Tue, 15 Dec 2020 15:25:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id h184sm8788wmh.23.2020.12.15.15.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 15:25:14 -0800 (PST)
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jann Horn <jann@thejh.net>
Cc:     Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Ted Estes <ted@softwarecrafters.com>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Jann Horn <jannh@google.com>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
 <X9lBp3BHbwcTmDqb@pc.thejh.net>
 <0e5189c0-9e9b-ac34-825c-619a9a6ef682@gmail.com>
Message-ID: <d38c5e8b-1653-d89a-a0c8-b95cb1844fba@gmail.com>
Date:   Wed, 16 Dec 2020 00:25:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0e5189c0-9e9b-ac34-825c-619a9a6ef682@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/16/20 12:23 AM, Alejandro Colomar (man-pages) wrote:
> Hi Jann,
> 
> On 12/16/20 12:07 AM, Jann Horn wrote:
>> Am Tue, Dec 15, 2020 at 06:01:25PM +0100 schrieb Alejandro Colomar (man-pages):
>>> Hi,
>>>
>>> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
>>>
>>> [[
>>> Under "Ptrace access mode checking", the documentation states:
>>>   "1. If the calling thread and the target thread are in the same thread
>>> group, access is always allowed."
>>>
>>> This is incorrect. A thread may never attach to another in the same group.
>>
>> No, that is correct. ptrace-mode access checks do always short-circuit for
>> tasks in the same thread group:
>>
>> /* Returns 0 on success, -errno on denial. */
>> static int __ptrace_may_access(struct task_struct *task, unsigned int mode)
>> {
>> [...]
>>         /* May we inspect the given task?
>>          * This check is used both for attaching with ptrace
>>          * and for allowing access to sensitive information in /proc.
>>          *
>>          * ptrace_attach denies several cases that /proc allows
>>          * because setting up the necessary parent/child relationship
>>          * or halting the specified task is impossible.
>>          */
>>
>>         /* Don't let security modules deny introspection */
>>         if (same_thread_group(task, current))
>>                 return 0;
>> [...]
>> }
> 
> AFAICS, that code always returns non-zero,

Sorry, I should have said "that code never returns 0".

> at least when called from ptrace_attach().
> 
> As you can see below,
> __ptrace_may_access() is called some lines after
> the code pointed to by the bug report.
> 
> 
> static int ptrace_attach(struct task_struct *task, long request,
> 			 unsigned long addr,
> 			 unsigned long flags)
> {
> [...]
> 	if (same_thread_group(task, current))
> 		goto out;
> 
> 	/*
> 	 * Protect exec's credential calculations against our interference;
> 	 * SUID, SGID and LSM creds get determined differently
> 	 * under ptrace.
> 	 */
> 	retval = -ERESTARTNOINTR;
> 	if (mutex_lock_interruptible(&task->signal->cred_guard_mutex))
> 		goto out;
> 
> 	task_lock(task);
> 	retval = __ptrace_may_access(task, PTRACE_MODE_ATTACH_REALCREDS);
> [...]
> }
> 
> 
> Thanks,
> 
> Alex
> 
>>
>> As the comment explains, you can't actually *attach*
>> to another task in the same thread group; but that's
>> not because of the ptrace-style access check rules,
>> but because specifically *attaching* to another task
>> in the same thread group doesn't work.
>>
