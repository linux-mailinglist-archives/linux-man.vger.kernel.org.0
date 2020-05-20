Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A13331DB5C6
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 15:56:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726946AbgETN4u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 May 2020 09:56:50 -0400
Received: from one.firstfloor.org ([193.170.194.197]:60196 "EHLO
        one.firstfloor.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726944AbgETN4u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 May 2020 09:56:50 -0400
Received: by one.firstfloor.org (Postfix, from userid 503)
        id 8895D86851; Wed, 20 May 2020 15:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=firstfloor.org;
        s=mail; t=1589983006;
        bh=nvuGyAFsjyjZIyRAMibsHbScTtmV6d7FBQhoIoX04CQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JNu82vP9KAmqgT0U+09OXp+rV31xmzvaJLbKOECvPMv8mbkpG+0PFekwAF9pY93Ms
         3aRQHNmNSoY7P+0dpbE6IQ7Q2OeV9L30HlqH02aL3WBhEiPJTL5DzwLaVPbY8zmfBp
         nOjk6mtlq3odyjzm2rw8nPNzVwQhFGD6ekHlG6n4=
Date:   Wed, 20 May 2020 06:56:46 -0700
From:   Andi Kleen <andi@firstfloor.org>
To:     Keno Fischer <keno@juliacomputing.com>
Cc:     Andi Kleen <andi@firstfloor.org>,
        Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
Message-ID: <20200520135643.dn5h6piq7xsm7igt@two.firstfloor.org>
References: <20200518030053.GA72528@juliacomputing.com>
 <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
 <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 19, 2020 at 11:30:02PM -0400, Keno Fischer wrote:
> > > +.SS The layout and operation of the NT_X86_XSTATE regset
> >
> > Should rather have a complete table of NT_* entries first. The others
> > can be dummies for now.
> 
> Oh boy, I'm not sure my man-page-formatting-fu is up to the task of
> creating a nice looking table :).
> Michael, can you help?


'\" t in the first line

then 

.TS
tab(:);
c s 
l l.
header:header
entry:entry
...
.TE



> 
> > > +Obtain the kernel xsave component bitmask from the software-reserved area of the
> > > +xstate buffer. The software-reserved area beings at offset 464 into the xsave
> >
> > It would be better to put some struct defining this into the kernel uapi
> > and then reference that instead of magic numbers.
> 
> We have user_xstateregs in the kernel, but that's not in the uapi.
> I suppose we should move it, given that it is exposed here.

Yes.

> 
> > > +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
> > > +.IP 2.
> > > +Compute the offset of each state component by adding the sizes of all prior state
> > > +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
> > > +format matches that of a compacted xsave area with XCOMP_BV set to the
> >
> > The sizes of these areas should probably also be in the uapi include
> 
> Yes, that seems like a good idea.
> What's the policy on helper functions in uapi includes?
> Can we have helper functions that given a buffer and the kernel xstate mask,
> does this computation for you?

Yes that sounds like a good idea. Just needs to be an inline.

I'm not aware of any policy against that.

> > > +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> > > +state components must first be re-set to the correct initial state for the
> > > +corresponding state component, and the XSTATE_BV bitfield must subsequently
> > > +be adjusted to match the kernel xstate component bitmask (obtained as
> > > +described above).
> >
> > I wonder if we shouldn't just fix the kernel to do this properly on its
> > own.  Presumably it won't break any existing user space.
> >
> > It seems more a bug than something that should be a documented ABI.
> 
> I'd be happy to see this interface improved, since I do think it wasn't quite
> intended to work this way when originally conceived (i.e. originally, before
> the init optimization and before we had flags that turn off various xstate
> components resulting in a compressed buffer).

Yes we should fix the kernel to make sure that anything copied out
can be straight copied in again (plus probably some self tests for this)

> 
> As I said in the other email thread, I think it would be reasonable to change
> the offsets to always be non-compressed, which would at least make this
> a normal xsave buffer. No ptracer that I looked at knows that this buffer
> can be compressed, so changing the kernel behavior here would actually
> make it closer to what existing userspace expects ;).

Hmm, maybe. It seems a bit risky to mess with an ABI.
I guess could add a new NT_* for this and deprecate the old one.

> 
> I'm not sure what to do about the getregset/setregset mismatch. On the one
> hand it's pretty bad, but on the other hand, I'm not really sure what to do
> about it, short of introducing a different NT_X86_* constant that behaves
> differently.


The kernel just needs to fill in the right fields on GET?

Or perhaps it can be only fixed in a new NT_*

> 
> > > +
> > > +The value of the kernel's state component bitmask is determined on boot and
> > > +need not be equivalent to the maximal set of state components supported by the
> > > +CPU (as enumerated through CPUID).
> >
> > Okay so how should someone get it? Looks like that's a hole in the
> > kernel API that we need to fix somehow.
> 
> The cpuid enumerated value does still represent a maximum so that can be used
> to size the buffer and the actual value can then be read from the software saved
> area as described here. Is that what you were asking? Not sure I understood
> correctly.

Okay so it's already exported. Never mind.

-Andi
