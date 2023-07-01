Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9431B7449C0
	for <lists+linux-man@lfdr.de>; Sat,  1 Jul 2023 16:32:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjGAOcW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Jul 2023 10:32:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbjGAOcV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Jul 2023 10:32:21 -0400
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A85699
        for <linux-man@vger.kernel.org>; Sat,  1 Jul 2023 07:32:15 -0700 (PDT)
Date:   Sat, 1 Jul 2023 10:32:05 -0400
From:   Rich Felker <dalias@libc.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
        musl@lists.openwall.com, libc-alpha@sourceware.org
Subject: Re: [musl] Re: [libc-coord] Re: [musl] Re: regression in man pages
 for interfaces using loff_t
Message-ID: <20230701143205.GX4163@brightrain.aerifal.cx>
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <20230630233705.GW4163@brightrain.aerifal.cx>
 <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3f58057-f764-b4bf-a3fe-92867cfa3131@cs.ucla.edu>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 01, 2023 at 12:24:27AM -0700, Paul Eggert wrote:
> On 2023-06-30 16:37, Rich Felker wrote:
> >glibc made it so off_t can be 32- or 64-bit depending on
> >_FILE_OFFSET_BITS, and if it's 32-bit, there is no matching version of
> >the libc syscall wrappers for these functions. It seems to have been a
> >conscious choice not to make any.
> 
> Yes, _FILE_OFFSET_BITS=32 is obsolescent. Among other things in
> GNU/Linux it is guaranteed to stop working in the year 2038, because
> you can't have 64-bit time_t without also having 64-bit off_t. There
> is no interest in supporting _FILE_OFFSET_BITS=32 for new APIs,
> which these are.

These are not "new APIs" from the standpoint of glibc, which already
had them in 32-bit-off_t API profiles and can't be expected just to
remove them.

I'm all for using off_t in new interfaces. But unless glibc folks
agree, I am not for redefining interface types in a way that breaks
one of their supported profiles any more than I am for redefining
interface types in the way that broke things with musl.

> >I'm talking about
> >how an interface using a type that's under somebody else's
> >jurisdiction
> 
> I don't understand why jurisdiction matters here. Although off_t is
> under someone else's (POSIX's) jurisdiction, that doesn't mean the
> Linux man pages can't use POSIX-specified types like off_t.

I don't know if I'm not communicating well here or what. This topic
was about why we don't use off64_t for these interfaces (because
off64_t is governed by LFS64) not a reason not to use off_t.

In explaining this I cited an analogy to why the fseeko/ftello
interfaces were doomed not to be accepted in ISO C (if POSIX had made
fseekll and ftellll using long long instead, there would have been a
clear path to putting them in C without pulling in POSIX types). That
has nothing to do with your proposal to just use off_t. Of course
using off_t in new custom interfaces that build on an underlying POSIX
base is fine and is the preferred way to do things.

> >This is still changing the documentated signature, which isn't really
> >nice, and would not be compatible with glibc unless glibc went out of
> >its way to hide those functions when _FILE_OFFSET_BITS is 32.
> 
> I don't see any incompatibility with glibc and the changes I
> proposed. The changes merely weaken the spec in the man pages in an
> area where the spec should be weakened. glibc is compatible with the
> spec before it was changed to use off64_t, it's compatible with the
> spec now that it uses off64_t, and it would continue to be
> compatible with the spec if the proposed changes are adopted.

That's simply not the case.

1. The spec was that apps declare loff_t objects and pass pointers to
   those to some of the interfaces. That works on all existing
   implementations and profiles.

2. The spec was silently changed to be that apps declare off64_t
   objects and pass those instead. This breaks on musl which
   intentionally does not have LFS64 types/interfaces.

3. Under your proposal, the spec is that apps declare off_t objects
   and pass pointers to those. This produces a pointer type mismatch,
   and buffer overflow, if building with glibc and (still default)
   _FILE_OFFSET_BITS=32.

Of course glibc could try to remedy this by somehow masking these
functions when _FILE_OFFSET_BITS=32 so they can't get used. If they
want to do that, great. However, the documentation does not specify a
particular glibc version, and if applications followed your proposed
change to the documentation, they would end up with dangerously broken
code when compiled on any existing glibc out in the wild with
_FILE_OFFSET_BITS=32.

This is why the only safe and reasonable thing to do, without an
extensive consensus process working to understand and assess the
impact of a change, is NOT TO MAKE CHANGES TO EXISTING INTERFACE
SPECIFICATIONS. It's really unsettling that this was done unilaterally
in such an important source of documentation as linux-man. Unless
glibc folks come up with a way to get on board with changing it to
off_t like you want, I do not want to get into another round of making
changes to "improve" something that was wrong about how the interface
was specified before. I just want to revert the breakage and establish
that this kind of breakage should not happen.

Rich
