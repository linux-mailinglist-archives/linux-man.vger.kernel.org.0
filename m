Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 410672DB790
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 01:09:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727716AbgLPABG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 19:01:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726187AbgLOXX7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 18:23:59 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E56BEC0611D0;
        Tue, 15 Dec 2020 15:23:18 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id c5so17799197wrp.6;
        Tue, 15 Dec 2020 15:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=61PAjCXFHe5f5EcDUVPOcNlP6sUU3yiMXGUtuTt/E+Y=;
        b=R4oJ9kSQl0d2mbbf9PVGl433U8hFUw5CPYbNAF8fRLy27kKJ9/WxY+EPMqpkiI0aMb
         3X0C3Ecn343cSrbOQHoYO78J038cKundWzb4AJBsID/u5XQ7puUvlmDZVIpOCyCHd93M
         1bFoEHRqr8Gju9ZWFhwvUWJclH9ib/vpBrA8tpikVQ6+sv3pAY2lFzWajZ+MOFS629jY
         ogc/zujpBc7dvuvbnE+z5ovAU+qxCGCwMpu9NCTn888Z0LeEBMdflyI/gzKjMiByZ9N2
         UL1gN/XcXEdL6MFiETA15IBm9h5RolTEUCWr43z+PCij1p4+bw79LK4bb1qG8WB/lWvm
         RVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=61PAjCXFHe5f5EcDUVPOcNlP6sUU3yiMXGUtuTt/E+Y=;
        b=DR+X843HV0YT7mjpTycnNF0NevP62pynCvhIOuaGRsBgXV2BPZ5bNxDzcNsO/U5ZJ+
         XotjiKtdDwFShFOHzXCl1Smb/+K8SrNjWHu5VF84ACzmsnbUi3daAGvujfOj9JBERclM
         oKqHxtHx+uO6oF+Z6JkRfO+671i9o4hAj3nOmepgWEYjMcer3iJl4w0FNQ0YRgqPBrAb
         A2yisbP4+Xn11hi13iqlqD631lf1RptrmfgKCer0KQKffT0RxWSJ4vhtu3BnRY6V4ohs
         ejSCimmbk0RlXpRVouLceexSHS870bloMaQdf2NZUk33+BHZXBq0Jab+sU779JQAGH2e
         UGBQ==
X-Gm-Message-State: AOAM530nHf7pCHEq1a3j3MvK7Wx8IPveagtVm5uKZGrfzOKspURW+o+C
        larHya8CJ8647gphzGFFsYc=
X-Google-Smtp-Source: ABdhPJxNBUV4IChsZr31aAboHMmayJq7o6p55Y5QHVjoTrwPMGTKz8HcqTCA5WqNYwYP1w+e6ej9gg==
X-Received: by 2002:adf:d0c6:: with SMTP id z6mr4584043wrh.10.1608074597737;
        Tue, 15 Dec 2020 15:23:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id p19sm323115wrg.18.2020.12.15.15.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 15:23:17 -0800 (PST)
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
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
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0e5189c0-9e9b-ac34-825c-619a9a6ef682@gmail.com>
Date:   Wed, 16 Dec 2020 00:23:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <X9lBp3BHbwcTmDqb@pc.thejh.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jann,

On 12/16/20 12:07 AM, Jann Horn wrote:
> Am Tue, Dec 15, 2020 at 06:01:25PM +0100 schrieb Alejandro Colomar (man-pages):
>> Hi,
>>
>> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
>>
>> [[
>> Under "Ptrace access mode checking", the documentation states:
>>   "1. If the calling thread and the target thread are in the same thread
>> group, access is always allowed."
>>
>> This is incorrect. A thread may never attach to another in the same group.
> 
> No, that is correct. ptrace-mode access checks do always short-circuit for
> tasks in the same thread group:
> 
> /* Returns 0 on success, -errno on denial. */
> static int __ptrace_may_access(struct task_struct *task, unsigned int mode)
> {
> [...]
>         /* May we inspect the given task?
>          * This check is used both for attaching with ptrace
>          * and for allowing access to sensitive information in /proc.
>          *
>          * ptrace_attach denies several cases that /proc allows
>          * because setting up the necessary parent/child relationship
>          * or halting the specified task is impossible.
>          */
> 
>         /* Don't let security modules deny introspection */
>         if (same_thread_group(task, current))
>                 return 0;
> [...]
> }

AFAICS, that code always returns non-zero,
at least when called from ptrace_attach().

As you can see below,
__ptrace_may_access() is called some lines after
the code pointed to by the bug report.


static int ptrace_attach(struct task_struct *task, long request,
			 unsigned long addr,
			 unsigned long flags)
{
[...]
	if (same_thread_group(task, current))
		goto out;

	/*
	 * Protect exec's credential calculations against our interference;
	 * SUID, SGID and LSM creds get determined differently
	 * under ptrace.
	 */
	retval = -ERESTARTNOINTR;
	if (mutex_lock_interruptible(&task->signal->cred_guard_mutex))
		goto out;

	task_lock(task);
	retval = __ptrace_may_access(task, PTRACE_MODE_ATTACH_REALCREDS);
[...]
}


Thanks,

Alex

> 
> As the comment explains, you can't actually *attach*
> to another task in the same thread group; but that's
> not because of the ptrace-style access check rules,
> but because specifically *attaching* to another task
> in the same thread group doesn't work.
> 
