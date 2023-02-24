Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F32F26A2405
	for <lists+linux-man@lfdr.de>; Fri, 24 Feb 2023 23:05:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjBXWFG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 17:05:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjBXWFF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 17:05:05 -0500
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8DBBC19F2E
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 14:05:03 -0800 (PST)
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id CF8C472C90B;
        Sat, 25 Feb 2023 01:05:02 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id B54417CFDF4; Sat, 25 Feb 2023 01:05:02 +0300 (MSK)
Date:   Sat, 25 Feb 2023 01:05:02 +0300
From:   "Dmitry V. Levin" <ldv@strace.io>
To:     =?utf-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, Nate Eldredge <nate@thatsmathematics.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Message-ID: <20230224220502.GA9955@altlinux.org>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <20230224185347.GB7758@altlinux.org>
 <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Feb 24, 2023 at 09:11:55PM +0200, Φώτης Βαλασιάδης wrote:
> This was during the early days of the program I was implementing, I 
> later found out I needed PTRACE_O_TRACESYSGOOD anyways as the manual 
> suggests. Still it's something that should be documented! Caused a lot 
> of frustration.
> 
> Regarding your suggestion, it's great but I have something to point out. 
> In the case of PTRACE_EVENT_SECCOMP the union is filled normally, 
> without any need for the PTRACE_O_TRACESYSGOOD option to be set. So 
> unless I am missing something, please consider including that!

Correct, to get PTRACE_SYSCALL_INFO_SECCOMP
one has to set PTRACE_O_TRACESECCOMP option, and to get
PTRACE_SYSCALL_INFO_ENTRY/PTRACE_SYSCALL_INFO_EXIT
one has to set PTRACE_O_TRACESYSGOOD option.

> On 24/2/23 20:53, Dmitry V. Levin wrote:
> > On Fri, Feb 24, 2023 at 06:31:42PM +0200, Fotios Valasiadis wrote:
> >> From: Fotios Valasiadis <fvalasiad@csd.auth.gr>
> >>
> >> Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO's description wouldn't inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed information from said operation.
> >>
> >> Came upon this bug after writing a test program using PTRACE_O_TRACESYSGOOD. After failing to find what's wrong I posted a stackoverflow question which you can find right here: https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none
> >>
> >> Nate Eldredge found out what's wrong by looking into the kernel's source code, here is a link to the relevant part https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018
> >>
> >> In the code it can be seen that the union is filled if and only if the signal matches "SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSGOOD option is set. You can read about that in the PTRACE_O_TRACESYSGOOD section of ptrace.2 's manual.
> >>
> >> I am unaware if Nate wants to be included as a co-author of this commit, nor am I aware of any way to contact him.
> > Cc'ed Nate just in case.
> >
> >> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
> >> ---
> >>   man2/ptrace.2 | 5 +++++
> >>   1 file changed, 5 insertions(+)
> >>
> >> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> >> index 55d9fd36d..b437b4f44 100644
> >> --- a/man2/ptrace.2
> >> +++ b/man2/ptrace.2
> >> @@ -1033,6 +1033,11 @@ If the size of the data to be written by the kernel exceeds the size
> >>   specified by the
> >>   .I addr
> >>   argument, the output data is truncated.
> >> +To obtain complete information during system call entry or exit stops,
> >> +you should enable the
> >> +.B PTRACE_O_TRACESYSGOOD
> >> +option using
> >> +.B PTRACE_SETOPTIONS.
> >>   .IP
> >>   The
> >>   .I ptrace_syscall_info
> > I suggest the following wording:
> >
> > diff --git a/man2/ptrace.2 b/man2/ptrace.2
> > index 55d9fd36d..496d8fae0 100644
> > --- a/man2/ptrace.2
> > +++ b/man2/ptrace.2
> > @@ -1111,6 +1111,15 @@ stop.
> >   .B PTRACE_SYSCALL_INFO_NONE
> >   No component of the union contains relevant information.
> >   .RE
> > +.IP
> > +Note that the data returned by
> > +.B PTRACE_GET_SYSCALL_INFO
> > +is limited to type
> > +.B
> > +PTRACE_SYSCALL_INFO_NONE
> > +unless
> > +.B PTRACE_O_TRACESYSGOOD
> > +option is set before the corresponding ptrace stop has occurred.
> >   .\"
> >   .SS Death under ptrace
> >   When a (possibly multithreaded) process receives a killing signal
> >
> > As written in the manual page, using the PTRACE_O_TRACESYSGOOD option is
> > the recommended method to distinguish syscall-stops from other kinds of
> > ptrace-stops, since it is reliable and does not incur a performance
> > penalty.  In other words, if you use ptrace(2) at all, please consider
> > using PTRACE_O_TRACESYSGOOD option.
> >
> >

-- 
ldv
