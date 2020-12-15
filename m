Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD8192DB791
	for <lists+linux-man@lfdr.de>; Wed, 16 Dec 2020 01:09:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727712AbgLPABG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 19:01:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730683AbgLOXPJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 18:15:09 -0500
X-Greylist: delayed 352 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 15 Dec 2020 15:14:13 PST
Received: from thejh.net (thejh.net [IPv6:2a03:4000:2:1b9::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C88C0C0613D3;
        Tue, 15 Dec 2020 15:14:13 -0800 (PST)
Received: from pc.thejh.net (thejh.net [37.221.195.125])
        by thejh.net (Postfix) with ESMTPA id 6B533180B24;
        Wed, 16 Dec 2020 00:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thejh.net; s=s2016;
        t=1608073633; bh=JfYHDjZhnEOFUIv6V0vdz/JbYVeAsMYomEzrtdM/sQA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DMKuPnb2PyJ8et4OsOxE50yjiMXYU1p3HKdlLQy6im6fRcAdsazNGGU7Hofl0FUjM
         nUzjwDKW7WYqNGWyIWxg2wljjL398ReGnzMmhkdMI8i7leZewtQRHcz045By0o11v4
         ATZ6OqU8DWYtNkqsF/imNSw+HkYcFLsnciLBVFE9EX86NYV8YQOvB57Q5Z4HZsPB4K
         yL08eK+ZeT2UT+ZhWX2jKVDcv3b3QxNpEBgTubEBVnXdcikxR9FII8sF8oHeC0d1Z2
         BDRFD6NdsiVnXJ3ZHzsuom1BEQqyEwOSHMjoJU5iuLafdHl/EqH5NdLoGlHJlhJj4m
         a8F7/rHXGmxhw==
Date:   Wed, 16 Dec 2020 00:07:19 +0100
From:   Jann Horn <jann@thejh.net>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Ted Estes <ted@softwarecrafters.com>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Jann Horn <jannh@google.com>
Subject: Re: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
Message-ID: <X9lBp3BHbwcTmDqb@pc.thejh.net>
References: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am Tue, Dec 15, 2020 at 06:01:25PM +0100 schrieb Alejandro Colomar (man-pages):
> Hi,
> 
> There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655
> 
> [[
> Under "Ptrace access mode checking", the documentation states:
>   "1. If the calling thread and the target thread are in the same thread
> group, access is always allowed."
> 
> This is incorrect. A thread may never attach to another in the same group.

No, that is correct. ptrace-mode access checks do always short-circuit for
tasks in the same thread group:

/* Returns 0 on success, -errno on denial. */
static int __ptrace_may_access(struct task_struct *task, unsigned int mode)
{
[...]
        /* May we inspect the given task?
         * This check is used both for attaching with ptrace
         * and for allowing access to sensitive information in /proc.
         *
         * ptrace_attach denies several cases that /proc allows
         * because setting up the necessary parent/child relationship
         * or halting the specified task is impossible.
         */

        /* Don't let security modules deny introspection */
        if (same_thread_group(task, current))
                return 0;
[...]
}

As the comment explains, you can't actually *attach*
to another task in the same thread group; but that's
not because of the ptrace-style access check rules,
but because specifically *attaching* to another task
in the same thread group doesn't work.
