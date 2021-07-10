Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED9403C2C42
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 03:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbhGJBHu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 21:07:50 -0400
Received: from gate.crashing.org ([63.228.1.57]:49549 "EHLO gate.crashing.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229506AbhGJBHu (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 9 Jul 2021 21:07:50 -0400
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
        by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 16A10uGQ009000;
        Fri, 9 Jul 2021 20:00:56 -0500
Received: (from segher@localhost)
        by gate.crashing.org (8.14.1/8.14.1/Submit) id 16A10sAY008999;
        Fri, 9 Jul 2021 20:00:54 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date:   Fri, 9 Jul 2021 20:00:54 -0500
From:   Segher Boessenkool <segher@kernel.crashing.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jonny Grant <jg@jguk.org>, gcc-help@gcc.gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fw@deneb.enyo.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strlen
Message-ID: <20210710010054.GY1583@gate.crashing.org>
References: <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org> <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com> <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com> <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org> <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com> <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org> <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com> <20210708234929.GU1583@gate.crashing.org> <3ddd0291-04d2-b35a-ce81-034bb0d9392a@jguk.org> <fbd62475-fa04-d26e-7d58-bc96180f7e4c@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbd62475-fa04-d26e-7d58-bc96180f7e4c@gmail.com>
User-Agent: Mutt/1.4.2.3i
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fine, I'll bite :-)

On Fri, Jul 09, 2021 at 04:17:08PM +0200, Alejandro Colomar (man-pages) wrote:
> On 7/9/21 3:54 PM, Jonny Grant wrote:
> >Yes, this could work. But it does rely on programmer typing it like that 
> >every time... Maybe an inline function better.
> 
> I agree on that.

A function (or any other abstraction) can be fine for this, *iff* you
can make people use it correctly.  Since it is pretty much impossible to
give a good succinct name to this function, I posit that is not the
case.  Please feel free to prove me wrong (by coming up with a decent
name for it).

> >I'd prefer a Annex K of C11 style function ISO/IEC TR 24731-1 for strlen() 
> >- but there isn't one such as strnlen_s.
> 
> Please, consider not calling some function safesomething() or similar, 
> as it isn't 100% safe.  It's like calling some thing "the new X".  How 
> will you call the next version?  "the nova X"? And the next? "the 
> supernew X"?
> 
> As I said before, unsigned types are unsafe, you may want to accept it 
> or not, but they are.

I thought Annex K was great entertainment, but calling unsigned types
"unsafe" takes the cake.

Unsigned types are Z/nZ with n some power of two.  Signed types are not
even Z (overflow is undefined).  Unsigned types are useful for
describing many machine things.  They are useful for sizes, not only
because sizes cannot be negative, but also because sizes can be bigger
than the maximum positive number that can fit in the same size signed
number.  They are useful for bitty things, registers maybe, stuff in
memory, or device I/O registers.  And they are much more useful than C
signed numbers for holding memory addresses, where you need that (you
can do sane aritmetic on it).

Using unsigned types without range checking is often wrong ("unsafe" in
your words).  Using signed types without range checking is just as wrong
in the same cases, if not more (overflow is undefined).  At least in the
"unsigned" case it is *possible* its behaviour is what the programmer
intended!

> Agree on this again, but I think the following is readable:
> 
> len = strlennull(maybenull);

If you use it a million times, of course you can give it a short and
non-sensical name, and expect the users to learn what it means.  If not,
it is better to be slightly more verbose, and reduce the mental load.


Segher
