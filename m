Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 444302B44B4
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 14:31:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728873AbgKPN3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 08:29:25 -0500
Received: from foss.arm.com ([217.140.110.172]:39832 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727210AbgKPN3Z (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 16 Nov 2020 08:29:25 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09B78101E;
        Mon, 16 Nov 2020 05:29:25 -0800 (PST)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 710F03F70D;
        Mon, 16 Nov 2020 05:29:24 -0800 (PST)
Date:   Mon, 16 Nov 2020 13:29:20 +0000
From:   Dave Martin <Dave.Martin@arm.com>
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
Message-ID: <20201116132920.GX6882@arm.com>
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
 <b3fd673a-200c-78fd-97fc-862f41e54d21@gmail.com>
 <C98DCC3D-49A0-4B02-943A-AA6F2622F66A@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <C98DCC3D-49A0-4B02-943A-AA6F2622F66A@gmx.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 12, 2020 at 10:04:08PM +0100, Heinrich Schuchardt wrote:
> Am 12. November 2020 22:01:58 MEZ schrieb "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>:
> >> Is there a function to change the signal mask without leaving the
> >handler?
> >
> >sigprocmask(2).
> 
> You might want to add a link to the function in the note section.

Actually, this is best avoided IMHO:

The behaviour of sigprocmask() is unspecified in multithreaded programs,
while pthread_sigmask() is not specified to be safe in signal handlers.
(Yay, POSIX.)

For these reasons, execve()'ing directly from a signal handler is not a
great idea.  It would probably be better to escape from the signal
handler with siglongjmp() or setcontext(), with the target sigjmp_buf or
ucontext previously set up do the execve().

With SA_SIGINFO, you can also update uc->uc_sigmask inside the signal
handler if you want to change the signal mask on return.  But that's
awkward to do portably, since sigaddset() and sigdelset() are not
specified to be safe in signal handlers either.

Cheers
---Dave
