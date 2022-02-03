Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E14F94A8A29
	for <lists+linux-man@lfdr.de>; Thu,  3 Feb 2022 18:33:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352888AbiBCRdO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Feb 2022 12:33:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352904AbiBCRdN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Feb 2022 12:33:13 -0500
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9A74C06173D
        for <linux-man@vger.kernel.org>; Thu,  3 Feb 2022 09:33:12 -0800 (PST)
Received: by mail-ua1-x92e.google.com with SMTP id 60so6542870uae.1
        for <linux-man@vger.kernel.org>; Thu, 03 Feb 2022 09:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=QbQeRNHV9DT3DURT0M38bZxPDc/fSkmcoqdxRHpeMM0=;
        b=in/TYC0NzzcMiuKLgOvXv/ajzqHEoDVz2vsy8r6TSPwPxIiixf/Gj6YHSYfIh+xeJ8
         F6LKJ5RzVycUUQx5HSFcNjUsGp7kW6ZxyaLCF5NkMjYTKTG30VkGyNvkJRt7w9BRBT1X
         p9hGHatIPLEMuUyBEbptPDJgnRGezfkkTWn1V0LqaO96EAZyDVSeU1NTym1x6P3stoO2
         cqjp1aVkZrHWOJuLb8Ol0P2fuy4HlZMNAksgdHS2EZu1HbPy5IOjtNZ+KUywW07MPaaH
         e56is7YRnkfoDdvRMzsGex1GB46Fp65e873eTKK0dXaTzqYchhzHzKA9krax2R8K+ciW
         ++Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=QbQeRNHV9DT3DURT0M38bZxPDc/fSkmcoqdxRHpeMM0=;
        b=P5F405TwMR5/VjsmKsTtbRlWk0BLz4yYLBVi4s0w7VoDpwHMoUdIeeuA9tkQNt7uZn
         e3I8C3j/ujfBElkEYRzToE5Y5SzJfFd68P8xboeTLNcKBz1F37bKcO/SILBpH5DX6CS7
         gWOWGPSjBW5jYMTSAM7MM4bOaN2xf3kKHR7h2C1HR8p4NzfQIOhQ3LehZsFcjQTtQ67f
         yD4lXhJP/0SqoJ7ATw4a9swupm+Aa08QPDFQlnabYaAY6eWI43o/vYy76tgqPjp1aFvk
         OTntb/V4YaGDZ7PtAD1cbsJMu/JotamfbNB4csCtnmkWTnpaJpNKIqLBnmws2srTi8Ip
         QULw==
X-Gm-Message-State: AOAM530WAJo9POxoANTt/6uuoseNOTE5OLL0z1DyqMFTauf2gNW+QiQc
        k26/OHv197H3w+12cNPRIS64gE0/VgaSD4VNywaKPRebhoo=
X-Google-Smtp-Source: ABdhPJwlX9yGki2UINTh+pzrsau6YT/qukUtNkygY8oO32xptgdVK3oiDUSHMEsdFQr001xHcN3vnuxwAeGcPTqnPOc=
X-Received: by 2002:ab0:25c6:: with SMTP id y6mr14217932uan.81.1643909591752;
 Thu, 03 Feb 2022 09:33:11 -0800 (PST)
MIME-Version: 1.0
References: <CADVL9rE70DK+gWn-pbHXy6a+5sdkHzFg_xJ9phhQkRapTUJ_zg@mail.gmail.com>
 <55d40a53-ad40-0bbf-0aed-e57419408796@gmail.com> <Yfh/E5i/oqhe6KsQ@casper.infradead.org>
 <CADVL9rEWuAyNtSOM2JWhPk7Q1D9pF0amTg09rYw0T1ZSXi5zYg@mail.gmail.com>
 <YfmY0RMh/UN/rRGl@casper.infradead.org> <CADVL9rF8chZpN9Nycs=MW0JuppnFaoq07gjS+ODC3CSUt0w1xA@mail.gmail.com>
In-Reply-To: <CADVL9rF8chZpN9Nycs=MW0JuppnFaoq07gjS+ODC3CSUt0w1xA@mail.gmail.com>
From:   Mathnerd314 <mathnerd314.gph@gmail.com>
Date:   Thu, 3 Feb 2022 10:33:00 -0700
Message-ID: <CADVL9rGFhzG=Q8zWiq+g-0LjZ27bwF0L9ouFvMv2psd4HcdDEA@mail.gmail.com>
Subject: Fwd: EINTR for fsync(2)
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Forgot to send this to the mailing list.

---------- Forwarded message ---------
From: Mathnerd314 <mathnerd314.gph@gmail.com>
Date: Thu, Feb 3, 2022 at 10:27 AM
Subject: Re: EINTR for fsync(2)
To: Matthew Wilcox <willy@infradead.org>


On Tue, Feb 1, 2022 at 1:32 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Tue, Feb 01, 2022 at 12:56:51PM -0700, Mathnerd314 wrote:
> > On Mon, Jan 31, 2022 at 5:30 PM Matthew Wilcox <willy@infradead.org> wrote:
> > > So while it's worth adding EINTR to the man page, I don't think it's
> > > worth going through an exercise of trying to add every possible
> > > errno to every syscall.
> >
> > It's true that POSIX's error list is purely a guideline. But that
> > doesn't mean Linux can't specify the precise set of possible error
> > codes. There are currently 133 error codes defined, across an equally
> > large number of syscalls - coding defensively and handling every
> > combination is impossible. Not to mention that the meaning of the
> > error codes differs from syscall to syscall. But with precise
> > information there are likely only 5-10 codes per syscall, so handling
> > every error appropriately is feasible. So the information can be quite
> > useful.
>
> Ahahahaha.  For one, every filesystem gets to return its own errors.
> So basically any syscall that takes an fd gets to return all the errors
> that any of our 50+ filesystems decides to use.

Right. This is where static analysis would help, allowing an audit of
all the error codes returned by filesystems.
The simple approximation `git grep -ho '\-E[A-Z]*' fs | sort -u | wc
-l` = 142 suggests all error codes are in use by filesystem APIs.

>
> Then there are the interposers.  Things like seccomp, Linux Security
> Modules, and other such hooks which might return their own errors.

Here the situation is much better, replacing fs with security in the
command above gives only 56 error codes.

I guess the static analysis might need some help tracing through the
syscall -> function pointer call -> security call indirection, and
similarly for the vfs indirection.

>
> On top of that there's error injection, which might allow eBPF to
> return any error that userspace has deemed appropriate from basically
> any function.

You're right, it is possible: https://github.com/trailofbits/ebpfault.
But the point of error injection is to increase reliability against
real errors, so injecting an error that a syscall couldn't possibly
return would be really dumb.
I think a note in the syscall(2) man pages that "eBPF overrides allow
any syscall to return any error code" is sufficient.

>
> Further, you generally don't execute syscalls.  You call glibc, which
> might decide to return its own errors, not even bothering to call
> the kernel.

I don't think glibc modifies the error codes it gets from the kernel.
And Go and Zig don't use glibc for syscalls, so they definitely use
unmodified error codes.

If glibc doesn't call the kernel, then it's a glibc thing, not
relevant at all to this discussion.

>
> But the real problem is that the kernel might decide to return new
> errors at any time.  Just because you exhaustively handled every error
> that could have occurred in 5.15 doesn't mean that there might not be
> an error returned by 5.20.

The ABI stability guarantee for syscalls
(https://www.kernel.org/doc/Documentation/ABI/stable/syscalls) says
that interface will be added to and not have things removed from it.
This is kind of vague but the way I interpret it is that if a syscall
returns a certain error code in a specific situation, then it's always
going to return that error code. So for example open() could only
return a new error code if it was a new filesystem or a new flag - the
ext4 open() codes are frozen at this point.
So assuming that, new errors have very few places to show up
unexpectedly in the ABI.

>
> This isn't even an Herculean task.  This is Sisyphean, and you'll
> probably feel like Prometheus by the end of it.  I mean, you'd learn a
> lot by attempting it, but you'd be better off picking a task that would
> actually help people.

Zig inspired me because it converts all unrecognized error codes to
"unexpected error":
https://github.com/ziglang/zig/blob/5210b9074ca68c23da474b0afcaa4ce11f7cc57c/lib/std/os.zig#L4979
I like the approach, but it does seem Zig is missing a few 100 possible errors.

I've opened a Zig bug with your line of reasoning:
https://github.com/ziglang/zig/issues/10776

-- Mathnerd314
