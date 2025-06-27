Return-Path: <linux-man+bounces-3222-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36045AEB07B
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 09:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A8B116883E
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 07:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC2E22541B;
	Fri, 27 Jun 2025 07:49:29 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BDF221FA4;
	Fri, 27 Jun 2025 07:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010569; cv=none; b=l43VtB9pQ/qkRBEMiyk5yapdX1KHwlehuXbOF1PeN9C7WMFPjtB2L6RfxgDaThptv3SG/4l9lKutqQe0xsenKeZBpZF2LiBTGV459zmO86hiRd07h8seO9kFGhh4lkXpwgG1FJ9St3um/VqSC1JJ1lz7SDAvf65Pf8IzhRyu4Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010569; c=relaxed/simple;
	bh=BCaO2ybR5yvOCiJnt5S+ARqflw3kao+Hl1RZmeDRtZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L0y0f65Zq0XvkxyDEXbtLBRg5x7b4lQygSYAiDGfF4hkXlK6CErtZx1EVXzsLG5sFrqd6gKNNs6GJNfGe6AgB1wYM0DtFF6rxqMpo+iEXgJjAendths0L0vuiW7EsPaKq8Eht1HZ4J40zeemTgu/IbIzOyMxnjr/XlVdsX7X+zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 7D841197;
	Fri, 27 Jun 2025 09:49:25 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 3D581CA045B; Fri, 27 Jun 2025 09:49:25 +0200 (CEST)
Date: Fri, 27 Jun 2025 09:49:25 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jilayne Lovejoy <opensource@jilayne.com>, seabass-labrax@gmx.com,
	Carlos O'Donell <carlos@redhat.com>,
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <20250627074925.GJ2809@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>,
	Jilayne Lovejoy <opensource@jilayne.com>, seabass-labrax@gmx.com,
	Carlos O'Donell <carlos@redhat.com>,
	"Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <20250627002011.GA431181@qaa.vinc17.org>
 <wwtmtg6ar6gfxvezbcendmcuo3zzgferrmqvhvutos7vp3er2q@xljv6kkogidj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <wwtmtg6ar6gfxvezbcendmcuo3zzgferrmqvhvutos7vp3er2q@xljv6kkogidj>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-06-27 06:23:26 +0200, Alejandro Colomar wrote:
> > I've always heard that a copyright notice was optional and only
> > informative (so, in particular, there are no requirements to have
> > per-file copyright notices instead of a single one for the work).
> 
> I tend to agree with you.  I'll invoke some SPDX people, which might
> clarify our legal doubts.  I suspect they're lawyers or have contact
> with lawyers.
> 
> For context to the SPDX people, we're discussing if the following is
> valid or not:
> 
> There were a lot of old copyright notices, each with its own format,
> some more formal, some less...
> 
> That was a huge mess, and the copyright notices were not always
> respected: for example, in cases code has been moved from one file to
> another, and the copyright notices weren't carried over.  In other
> cases, some people (including myself) significantly modified some files,
> but forgot to add a copyright notice for themselves.
> 
> So, I eventually decided to unify the copyright notices for the entire
> project, so that the copyright notices would look like
> 
> 	Copyright, the authors of the Linux man-pages project
> 
> And then a top-level AUTHORS file would list every author.  This is
> quite more accurate than the previous copyright notices.  However, some
> contributors are concerned that it might be illegal to modify those
> copyright notices without express written permission.
> 
> I've sent email to everyone whose copyright notice has been modified,
> and I got around a third of explicit approvals, but the other two thirds
> remained silent (in some cases, the emails probably don't exist, the
> people are dead, or they don't read the email anymore).  Notably, nobody
> has explicitly said no.
> 
> What do you think?

There is actually a more important issue: it appears that the man
pages are not all distributed under the same license (according to
"SPDX-License-Identifier:"), so that some care would have had do be
done when copying text from one man page to another one. That said,
I would tend to think that when such text has been copied, this was
for related man pages, and there is a chance that such man pages are
distributed under the same license. Unifying the licenses by asking
the authors / copyright holders would be a great thing to do.

Now, about the copyright notices, you also need to give the full
list of the licenses that can apply, as some license may require
the copyright notice to have some restricted form (such as being
included in the file itself).

For instance, the GPL licenses have

  To do so, attach the following notices to the program. It is safest
  to attach them to the start of each source file to most effectively
  convey the exclusion of warranty; and each file should have at least
  the "copyright" line and a pointer to where the full notice is
  found.

(or "state" instead of "convey"), for which this seems clear that
the current decision is OK.

I think that among the licences listes under LICENSES, only
Linux-man-pages-1-para could be problematic, but only 18 files
are concerned.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

