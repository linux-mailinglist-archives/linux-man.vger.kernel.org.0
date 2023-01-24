Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B98186796AA
	for <lists+linux-man@lfdr.de>; Tue, 24 Jan 2023 12:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234049AbjAXLbn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Jan 2023 06:31:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234060AbjAXLbj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Jan 2023 06:31:39 -0500
X-Greylist: delayed 911 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 Jan 2023 03:31:36 PST
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69EE53C2AE
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 03:31:35 -0800 (PST)
Date:   Tue, 24 Jan 2023 06:16:23 -0500
From:   Rich Felker <dalias@libc.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>
Subject: Re: struct sockaddr_storage
Message-ID: <20230124111623.GD3298@brightrain.aerifal.cx>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jan 20, 2023 at 12:06:50PM +0200, Stefan Puiu via Libc-alpha wrote:
> Hi Alex,
> 
> On Thu, Jan 19, 2023 at 4:14 PM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
> >
> > Hi!
> >
> > I just received a report about struct sockaddr_storage in the man pages.  It
> > reminded me of some concern I've always had about it: it doesn't seem to be a
> > usable type.
> >
> > It has some alignment promises that make it "just work" most of the time, but
> > it's still a UB mine, according to ISO C.
> >
> > According to strict aliasing rules, if you declare a variable of type 'struct
> > sockaddr_storage', that's what you get, and trying to access it later as some
> > other sockaddr_8 is simply not legal.  The compiler may assume those accesses
> > can't happen, and optimize as it pleases.
> 
> Can you detail the "is not legal" part? How about the APIs like
> connect() etc that use pointers to struct sockaddr, where the
> underlying type is different, why would that be legal while using
> sockaddr_storage isn't?

Because they're specified to take different types. In C, any struct
pointer type can legally point to any other struct type. You just
can't dereference through it with the wrong type. How the
implementation of connect etc. handle this is an implementation
detail. You're allowed to pass pointers to struct sockaddr_in, etc. to
connect etc. simply because the specification says you are.

In any case, sockaddr_storage is a legacy thing designed by folks who
didn't understand the rules of the C language. It should never appear
in modern code except perhaps with sizeof for allocting buffers. There
is no action that needs to be taken here except documenting that it
should not be used (cannot be used meaningfully without UB).

Rich
