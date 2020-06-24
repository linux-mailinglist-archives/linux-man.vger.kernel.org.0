Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6469207072
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 11:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389905AbgFXJx0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 05:53:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389824AbgFXJxZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 05:53:25 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 562A2C061573
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 02:53:25 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id h28so1041395edz.0
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 02:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=m36bxft8P5WN1Bw4rA67K0YXo2XoZWZe7nJzIy5ATP0=;
        b=MPwgBsCTAePg+EB0zjdsUbASpyl3gRMlEbFtx2hWcSRk6aLZ6OaldXj3AlY0R61QPT
         A83ve1LQpG2uETgDCD3DeYvtTJIoEBbDqHT3pNdj1wNgpTQYBPXL8vHw7XPj5ZFwJH82
         akqE33agTITCM+o+IjI8b7SGZmepuldv61Hw8as9iUSTNtOdH/FtcEMwKXnEPDVkJFtP
         Lddl12P2VTcngf0DHB6ih6nLWL5Gq/+oKlzFZKv2CZZkA6Qop5gI8dfmzMGZFWsbdeKj
         8wRiMA1D2RTGistvFO8ctxCe5wHwIbs1Cee7o3EPoTPomArmGtHJF5aXO+2JOKbd6UZw
         fCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=m36bxft8P5WN1Bw4rA67K0YXo2XoZWZe7nJzIy5ATP0=;
        b=W2j0ujTlo80DXkyujqQs03ZV69B7dPsYk73WRJcaF7g/OStuOoWY5IEGG26QtRrzeV
         HBubcA5nX3vFvEMdDi+5eS/fbipEwdwT9VKbPp4R9bpbit1T4qBLOc1vnV0ZzTEWPkVH
         Y4Vf0Cv6pOQffkn8iZ9OxBK6uLxw0xe7JMLMvYPO+KPGc3JFsiYkUHFnSV8KQg+YJwtV
         JWFqexJuIQQIeyoUwgCxpS+E/Q11HymjBio2m3b4ctFYJHTDvSM2rB+4afRESZXdCXwm
         FS2/6GU1a3PfV8TnCrE5EDZelrb7EGfwJzPtka57KExuNvCjs9RpIl0xKw/qgJwg66UY
         YPOw==
X-Gm-Message-State: AOAM533tqUF/W8E5ZLOz/Kn+PVdflNRpPikL6HNyVJ06cMNLgecsMpmf
        B5MbWw220D86Omo3MWhwhGNFuVgwRK9WsoYp03A=
X-Google-Smtp-Source: ABdhPJzKNQPXvbE76WwL0n+5sWVjNFT+w51Vys6G95vsehNvqZGoWGy76dMlEbAEuGrb+tDX7wBLx6uXpSSc1fPEESU=
X-Received: by 2002:aa7:c756:: with SMTP id c22mr26333933eds.239.1592992403810;
 Wed, 24 Jun 2020 02:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
 <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
 <87zh9snqiu.fsf@nanos.tec.linutronix.de> <2103b6f3-42d1-8f92-0e97-e43ccd12c1b7@deloquencia.de>
In-Reply-To: <2103b6f3-42d1-8f92-0e97-e43ccd12c1b7@deloquencia.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 24 Jun 2020 11:53:12 +0200
Message-ID: <CAKgNAkiNQw5DE9X5Mw2MMF+=bXHzAz45ym+=s2_C2Nz=p4zfQg@mail.gmail.com>
Subject: Re: [PATCH] iopl.2: Changing description of permissions set
 per-process to per-thread
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Thomas P,

Might you have an update for this patch?

Thanks,

Michael


On Thu, 28 May 2020 at 16:52, Thomas Piekarski
<t.piekarski@deloquencia.de> wrote:
>
> Hello Thomas,
> Hello Michael,
>
>
> On 28.05.20 3:22 PM, Thomas Gleixner wrote:
> > "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> >
> >> I expect that the small change at Thomas P proposes in this patch is
> >> correct (i.e., iopl(2) operates per-thread, not per-process). I
> >> remember that you touch the relevant kernel source file often. Perhaps
> >> you are able to give a quick Ack?
> >>>
> >>>    man2/iopl.2 | 6 +++---
> >>>    1 file changed, 3 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/man2/iopl.2 b/man2/iopl.2
> >>> index e5b216a14..329095808 100644
> >>> --- a/man2/iopl.2
> >>> +++ b/man2/iopl.2
> >>> @@ -39,7 +39,7 @@ iopl \- change I/O privilege level
> >>>    .BI "int iopl(int " level );
> >>>    .SH DESCRIPTION
> >>>    .BR iopl ()
> >>> -changes the I/O privilege level of the calling process,
> >>> +changes the I/O privilege level of the calling thread,
> >
> > I'm fine with the s/process/thread/ changes. The permissions are really
> > per thread.
> >
> > Though the manpage should mention that a thread inherits the permissions
> > from the parent, i.e. clone() vs. fork(), exec().
> >
> >>>    as specified by the two least significant bits in
> >>>    .IR level .
> >>>    .PP
> >>> @@ -50,7 +50,7 @@ Since these X servers require access to all 65536 I/O
> >>> ports, the
> >>>    call is not sufficient.
> >>>    .PP
> >>>    In addition to granting unrestricted I/O port access, running at a higher
> >>> -I/O privilege level also allows the process to disable interrupts.
> >>> +I/O privilege level also allows the thread to disable interrupts.
> >
> > This paragraph became outdated as of
> >
> >     a24ca9976843 ("x86/iopl: Remove legacy IOPL option")
> >
> > in v5.5. The kernel no longer allows user space to disable
> > interrupts. It still grants access to _ALL_ 64k ioports.
> >
> > Also:
> >
> >> This call is necessary to allow 8514-compatible X servers to run under
> >> Linux.  Since these X servers require access to all 65536 I/O ports,
> >> the ioperm(2) call is not sufficient.
> >
> > is outdated.
> >
> > ioperm() allows to set all 64k bits, but its significantly slower than
> > iopl(3) because it needs to copy 8k of data on context switch while
> > iopl(3) just maps an 'all bits set' static bitmap.
> >
> > Aside of that only really old x servers rely on iopl(3).
>
>
> Thanks for your feedback. I'll update the patch accordingly.
>
> 1. Rechecking that it says that permissions are inherited from parents
> 2. Stating that since Kernel v5.5 it is not possible anymore to
>     disable interrupts from user space
> 3. Removing the paragraph "This call is necessary..."
>
> Should the man page mention that iopl is deprecated, provided only for
> compatibility to old X-Servers and significantly slower than ioperm?



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
