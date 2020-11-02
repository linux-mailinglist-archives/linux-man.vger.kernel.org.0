Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AD432A2BF9
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 14:51:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725849AbgKBNtb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 08:49:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725844AbgKBNtb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 08:49:31 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1743AC061A47
        for <linux-man@vger.kernel.org>; Mon,  2 Nov 2020 05:49:31 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id j30so17553194lfp.4
        for <linux-man@vger.kernel.org>; Mon, 02 Nov 2020 05:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=crmhEgzkOmERlRibdWJQ5fJu4CKk3cly9oNaCdoNCWg=;
        b=e6rC0R5eB3PGQ+ozTxEoHwxYIrjTzj/lowbcSttME14YVqM0lIps4VooUuhm29uIFE
         q8sNXcIJGw1ny8hoRglYxZ9KpzrARGaG8u/N9tg9+2fxDLajahu8D7ztqKBx0+P+97wD
         4+7gApcowelSqDo/j7gBpM0LF9LMwoRBhHlWlLF0AWUWkY6K823EIHiJsubXmHK+E3xk
         lOAWs2Oo413J9KNPAL17FSBQ2PIaDC1vMh4rOc652o/EuV589g2E4DXpKlkXZkO6XhAc
         gzqCT04f7oiU+lnIkGSrqs7iuqhzD+uA6V/Vg3+E84dav23WLkJXEsQtCLEKQAUdGu0f
         o0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=crmhEgzkOmERlRibdWJQ5fJu4CKk3cly9oNaCdoNCWg=;
        b=UmP72zrFSJUNhgz3XET2hbhz5QBZhhNy3QpDQPVnjtC2c6gi76xel2cFA92ygvnjmP
         PHklrZT6ZT/6inU7B/fRFboTMczHPRH43/kARdpghOXb9qSs9hnfd/0zsMaOZu8iHgCP
         5ep+WdrgbSggOAS2/YetbXli6rAddtbjwLXC/HQlwwOw9oxmWXqMapchYC0SIk+ue1aq
         XmodB3tgY5FN/Gb3DQvXbQP7PXHUHbt3Ke1FbNgPUz0WLa+VzdmKSwgpOyWkVQ+xxtUj
         gSEIaWWAKr1mL1FNbx9hgehx/y10n64/mOIOr8aKbuqCYPfETig/xDjR/m1N1k0d9cI1
         NLbQ==
X-Gm-Message-State: AOAM533qaWfiPXNEdokTwp1Stp1xQuxeNDoSiw+FgNz8R1UYWfs5y2/D
        IwrPwma7ZLRZfTQ4veB2k6rz1VLDf9SxaFNOimGGLQ==
X-Google-Smtp-Source: ABdhPJzGqIM5asHLIuy+EbHVmr9RXtwczq03HEhFi/zVkHIauFUcnrDjghLCaRPEjzU8Vbt4y8sReBCfx7RX76nxcBo=
X-Received: by 2002:a05:6512:51a:: with SMTP id o26mr5441083lfb.381.1604324969162;
 Mon, 02 Nov 2020 05:49:29 -0800 (PST)
MIME-Version: 1.0
References: <63598b4f-6ce3-5a11-4552-cdfe308f68e4@gmail.com>
 <CAG48ez0fBE6AJfWh0in=WKkgt98y=KjAen=SQPyTYtvsUbF1yA@mail.gmail.com>
 <0de41eb1-e1fd-85da-61b7-fac4e3006726@gmail.com> <CAG48ez3qKg-ReY4R=S_thQ6tOzv2ZHV=xW5qBxpqs0iSjH_oFQ@mail.gmail.com>
 <9f9b8b86-6e49-17ef-e414-82e489b0b99a@gmail.com>
In-Reply-To: <9f9b8b86-6e49-17ef-e414-82e489b0b99a@gmail.com>
From:   Jann Horn <jannh@google.com>
Date:   Mon, 2 Nov 2020 14:49:01 +0100
Message-ID: <CAG48ez0W2zye2KeNiVaKq9RPtUhcUtzP0zOjULRQZbOuRyz+9w@mail.gmail.com>
Subject: Re: For review: seccomp_user_notif(2) manual page [v2]
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Kees Cook <keescook@chromium.org>,
        Tycho Andersen <tycho@tycho.pizza>,
        Sargun Dhillon <sargun@sargun.me>,
        Christian Brauner <christian@brauner.io>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        Song Liu <songliubraving@fb.com>,
        Robert Sesek <rsesek@google.com>,
        Containers <containers@lists.linux-foundation.org>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Aleksa Sarai <cyphar@cyphar.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Will Drewry <wad@chromium.org>, bpf <bpf@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Oct 31, 2020 at 9:31 AM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
> On 10/30/20 8:14 PM, Jann Horn wrote:
> > With the caveat that a cancelled syscall
> > could've also led to the memory being munmap()ed, so the nread==0 case
> > could also happen legitimately - so you might want to move this check
> > up above the nread==0 (mm went away) and nread==-1 (mm still exists,
> > but read from address failed, errno EIO) checks if the error message
> > shouldn't appear spuriously.
>
> In any case, I've been refactoring (simplifying) that code a little.
> I haven't so far rearranged the order of the checks, but I already
> log message for the nread==0 case. (Instead, there will eventually
> be an error when the response is sent.)
>
> I also haven't exactly tested the scenario you describe in the
> seccomp unotify scenario, but I think the above is not correct. Here
> are two scenarios I did test, simply with mmap() and /proc/PID/mem
> (no seccomp involved):
>
> Scenario 1:
> A creates a mapping at address X
> B opens /proc/A/mem and and lseeks on resulting FD to offset X
> A terminates
> B reads from FD ==> read() returns 0 (EOF)
>
> Scenario 2:
> A creates a mapping at address X
> B opens /proc/A/mem and and lseeks on resulting FD to offset X
> A unmaps mapping at address X
> B reads from FD ==> read() returns -1 / EIO.
>
> That last scenario seems to contradict what you say, since I
> think you meant that in this case read() should return 0 in
> that case. Have I misunderstood you?

Sorry, I messed up the description when I wrote that. Yes, this looks
as expected - EIO if the VMA is gone, 0 if the mm_users of the
mm_struct have dropped to zero because all tasks that use the mm have
exited.
