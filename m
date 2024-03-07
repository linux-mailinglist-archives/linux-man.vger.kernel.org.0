Return-Path: <linux-man+bounces-555-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F295E874710
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 05:06:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7F851F2368F
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 04:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C5CDDD3;
	Thu,  7 Mar 2024 04:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b="u0Ef/TGT"
X-Original-To: linux-man@vger.kernel.org
Received: from pulsar.hadrons.org (2.152.202.106.dyn.user.ono.com [2.152.202.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0414E11CAF
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 04:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=2.152.202.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709784395; cv=none; b=TF+hfQjfAJt95PxeV0+y4WdZypEbdaZSn1cJDC4hZTFAhIltA3BZIIslfLZe90oOG/M9Tx/YJqPxJHVzP0Ue3N6Ji2Q/HU7ZMWxb6jXqecQ+eJBIDw906vl/uANYKyYoapQsWO7mYNiw/A7J1ivkZzJZYPxXWVtZyxZxx69BHgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709784395; c=relaxed/simple;
	bh=Uhzb0TqL4hLxp9pRuAEKiCBinWAxbvD2e2juWi6s63E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bSaRnB2LmCpqu48AX/cG907CYhvtAWnbkEEerCFkgXXEXxKACJsAEqj8pVmjlmujuwZGaNAVxMgsX3PeA32Igs7vspV2fx2DtBMDO/nlsmvFqYty2ffAztVh4tENvnEbyKJwSROAouzeg4M+RfYEoQ9LhneFImUY7OGAuEdE2d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org; spf=pass smtp.mailfrom=pulsar.hadrons.org; dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b=u0Ef/TGT; arc=none smtp.client-ip=2.152.202.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pulsar.hadrons.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hadrons.org;
	s=201908; t=1709784390;
	bh=1AW9pmLcumhvGe8os2GXsjE2+mtIJYlUuf0zfvptHgQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=u0Ef/TGTIM/GnoMKRaN0NFqczxQr0+jmUXULiJHON/mUE9p1oV4lKZkwNkN41aQFk
	 kymoA/dEecqtTG+ZfyYA04b1laMBIqvnSAEk8q5n8BUhuA8tIguEWRxe3JpoG7tWMI
	 IJRK+C7s4L1AM51A+nLSBrcTZ7N2/I6BlQB3XT0xUCJ1Mm23DywVPcp/wFu9gUGm/e
	 FIikU5AWr1riDCtejbZSviXc6wACR1Fq3XkjFCjoXoTkyNRzEUA3r0hi3jG0rlhB5K
	 SSjaun+l5r/T3wqMpkIUonmaoLeZn/pPLwFpAL8i5zRZAiJwkJJsCYzzBr9eHdFoBi
	 jBd5Za1c121ow==
Received: by pulsar.hadrons.org (Postfix, from userid 1000)
	id 1D67B122F1E; Thu,  7 Mar 2024 05:06:30 +0100 (CET)
Date: Thu, 7 Mar 2024 05:06:29 +0100
From: Guillem Jover <guillem@hadrons.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <Zek9RRW28ZinfkxB@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZekNZuR3nRczAIqX@debian>

Hi!

On Thu, 2024-03-07 at 01:42:14 +0100, Alejandro Colomar wrote:
> On Thu, Mar 07, 2024 at 12:22:58AM +0100, Guillem Jover wrote:
> > These pages have been provided by libbsd in the
> > 3bsd sub-section for some time, and that sorts earlier than 3type.
> > This has not been a problem for the section 3 pages, as then those
> > will always be preferred if present over the 3bsd ones. This also
> > means I might be reluctant to add new 3bsd manual pages related to
> > types, to avoid future occlusions.
> 
> If you want to add a page for a type that glibc doesn't provide, feel
> free to do so.  I even encourage you to use 3type, although that might
> be inconsistent with the rest of libbsd, so you may prefer to keep 3bsd.

I'd rather not stomp on any of the system section-space, also the
inconsistency and the behavior on other non-GNU or non-Linux systems.
But thanks for the offer. :)

> If you want to add a page for a type that is provided by glibc, just let
> me know, and I can provide the page instead.  (Although it would be rare
> that you provide a page for a type that glibc provides.)

Yeah, libbsd should not be providing man pages for system types.

> > But I'm not
> > sure how best this would be solved though. :/ Hmm perhaps thinking
> > about it, I could rewrite these manual pages and only provide them
> > for the TIMEVAL_TO_TIMESPEC and TIMESPEC_TO_TIMEVAL macros.
> 
> Actually, glibc provides these macros, so I should probably write pages
> for those too.  Maybe I can write something and then just drop the
> libbsd pages.  BTW, why do you provide those macros if glibc also
> provides them?  Maybe they are recent additions to glibc?
> 
> 
> alx@debian:~/src/gnu/glibc/master$ grepc TIMEVAL_TO_TIMESPEC .
> ./time/sys/time.h:# define TIMEVAL_TO_TIMESPEC(tv, ts) {                                   \
> 	(ts)->tv_sec = (tv)->tv_sec;                                    \
> 	(ts)->tv_nsec = (tv)->tv_usec * 1000;                           \
> }
> alx@debian:~/src/gnu/glibc/master$ grepc TIMESPEC_TO_TIMEVAL .
> ./time/sys/time.h:# define TIMESPEC_TO_TIMEVAL(tv, ts) {                                   \
> 	(tv)->tv_sec = (ts)->tv_sec;                                    \
> 	(tv)->tv_usec = (ts)->tv_nsec / 1000;                           \
> }

Ah, thanks, didn't check, and assumed these were not present. Digging
a bit now it seems these came included as part of the fix for:

  https://bugs.freedesktop.org/show_bug.cgi?id=94320

which was for non-glibc systems! And I guess I included the man page
for completeness and there was no support for selection per system
yet.

> > problem is still that unlisted sub-sections get folded into their
> > parent section, so perhaps some of these need to be proposed for
> > addition there. Not sure about other man pagers though.
> 
> I think projects shouldn't use their own subsection.  They should
> instead use the same sections, in this case 3type, and use LIBRARY to
> document the library needed to get the thing.

I don't think this works as a general rule, because different projects
might want to document things that live in different namespaces. For
things that are going to be "enforced" to share the same namespace
such as programs, or header files, then that's fine. But for function
interfaces or language features, for example which might be the same
on different implementations using sub-section makes sense to me. For
example it seems it would be rather inappropriate to document perl's
if(3perl) as if(3). :)

> And in cases wher various projects offer the same page exact page, maybe
> /etc/alternatives should decide.

alternatives are supposed to be used for the same interface, not for
conflicting and unrelated ones, in this case if these document stuff
that is completely different then that would not seem appropriate.

In this particular case, what I'll be doing is to remove the
timeval(3bsd), timespec(3bsd) links everywhere, and stop installing
the TIMEVAL_TO_TIMESPEC(3bsd) and TIMESPEC_TO_TIMEVAL(3bsd) on glibc
based systems, and check on what others these are already provided,
and install those there conditionally.

Thanks,
Guillem

