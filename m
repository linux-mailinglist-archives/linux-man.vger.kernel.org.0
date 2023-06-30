Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59F34744563
	for <lists+linux-man@lfdr.de>; Sat,  1 Jul 2023 01:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjF3XwY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jun 2023 19:52:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229760AbjF3XwX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jun 2023 19:52:23 -0400
X-Greylist: delayed 913 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 30 Jun 2023 16:52:21 PDT
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B52F10FD
        for <linux-man@vger.kernel.org>; Fri, 30 Jun 2023 16:52:20 -0700 (PDT)
Date:   Fri, 30 Jun 2023 19:37:05 -0400
From:   Rich Felker <dalias@libc.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org, libc-coord@lists.openwall.com
Subject: Re: [musl] Re: regression in man pages for interfaces using loff_t
Message-ID: <20230630233705.GW4163@brightrain.aerifal.cx>
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jun 30, 2023 at 12:11:20AM -0700, Paul Eggert wrote:
> On 2023-06-28 12:15, Rich Felker wrote:
> 
> >There's also the problem that off64_t is "exactly 64-bit" which makes
> >it unsuitable as an interface type for cross-platform functions where
> >one could imagine the native type being larger (rather horrifying but
> >possible).
> 
> Although we won't have files with 2**63 bytes any time soon, this is
> the best argument for preferring "loff_t" to "off64_t".
> 
> But come to think of it, it'd be better to document the type simply
> as "off_t", with a footnote saying the equivalent of "this assumes
> that on 32-bit glibc platforms you compile with
> -DFILE_OFFSET_BITS=64 like any sane person would." The intent really
> is off_t here, and that will remain true even if off_t ever widens
> past 64 bits.

I would love that these functions just take normal off_t. However,
glibc made it so off_t can be 32- or 64-bit depending on
_FILE_OFFSET_BITS, and if it's 32-bit, there is no matching version of
the libc syscall wrappers for these functions. It seems to have been a
conscious choice not to make any.

> I don't see why not. For example, POSIX-2018 requires int32_t even
> though C17 says it's optional. So there's precedent for POSIX
> adopting a type that's optional elsewhere.

That's the other way around and not related to what I was talking
about.

> Also, to POSIX loff_t is just as optional as off64_t is. glibc
> defines neither type if the app #defines _POSIX_C_SOURCE as POSIX
> requires. So from a standardization viewpoint there's no reason to
> prefer one type over the other.

From a standardization viewpoint, a more general standard does not
want to adopt things from a more specific standard that might have
hidden requirements or tie-in with other parts of the more specific
standard that the more general one would not want to be tied down to.

> >This is exactly the problem why ISO C is stuck with the
> >broken and unusable fseek/ftell that take long, and hasn't adopted
> >fseeko/ftello from POSIX -- their public interfaces use the
> >POSIX-governed type off_t, and as such, ISO C adopting them without
> >adopting the whole POSIX off_t is out of the question.
> 
> I'm not sure what the point is here, as far as standardization goes.
> Neither ISO C nor POSIX use loff_t, and neither is likely to ever
> use it: ISO C won't even adopt off_t much less loff_t, and POSIX
> works just fine with off_t and doesn't need loff_t. (The same goes
> for off64_t of course.)

Noobody's talking about if ISO C would adopt loff_t. I'm talking about
how an interface using a type that's under somebody else's
jurisdiction is problematic to adoption. loff_t having no precedent
except these Linux-introduced functions is why it's not problematic.

However I don't particular like or want to argue "for loff_t". What I
care about is that published interface definitions don't get changed
unilaterally by someone writing docs and made incompatible with
existing implementations.

If we want to work together for something mutually acceptable and
better than loff_t, that'd be fine with me too. But it seems
independent of fixing the immediate regression.

> But anyway this is all moot if we simply document the arguments as
> off_t with a footnote.

This is still changing the documentated signature, which isn't really
nice, and would not be compatible with glibc unless glibc went out of
its way to hide those functions when _FILE_OFFSET_BITS is 32.

Rich
