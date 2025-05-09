Return-Path: <linux-man+bounces-2891-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF64AB1C32
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 20:22:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 537FD1C007CA
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 18:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CF5223BD05;
	Fri,  9 May 2025 18:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gentwo.org header.i=@gentwo.org header.b="OJHTFp/H"
X-Original-To: linux-man@vger.kernel.org
Received: from gentwo.org (gentwo.org [62.72.0.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17175239E94
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 18:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.72.0.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746814949; cv=none; b=ZIuPNb4xP7AY0uHYrrQOr9OPaz+CbCtxiGAK/dIuCY8+0LYSz+IxQkP61lrtBjD8ODbKNjvlcpcvW1WAvgnJEqU9UE2z05vEpI2lKtyythRvjPXcB6xnjjllPuF0Bf1nRuQciciHqkoaL0a/IiLRzDj0gDDZhgNdjiVp7RnH/j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746814949; c=relaxed/simple;
	bh=KfspTiZFH30oQIYi5nhtShCoNuLVEWdBh7mt1eglKKw=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=W1yiRvoivsywoaVdltGtaXl14fPNFV2xlxjuBB9JFdDxKfzaHvJddyba8D4qquBcMo7i1O+AtFW+SZoSjc90sgThU03yB3ETJReTyEv3JSOTu5yYpUH2pOnW08gkjk/Oyq6GC88NzEmIOmxkIr6/Ht1GapdeneE5LA19dXJ8JKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=gentwo.org; spf=pass smtp.mailfrom=gentwo.org; dkim=pass (1024-bit key) header.d=gentwo.org header.i=@gentwo.org header.b=OJHTFp/H; arc=none smtp.client-ip=62.72.0.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=gentwo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentwo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gentwo.org;
	s=default; t=1746814941;
	bh=KfspTiZFH30oQIYi5nhtShCoNuLVEWdBh7mt1eglKKw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=OJHTFp/HdFaIMNPC+Zv9AWRdvXcI9YHUvg3jO698WviNWuAaslodoT6AYqAUdmRKo
	 pfommuQXyZndfTIz8k8Kh6hMCEsjV7kdTCVEb4pLftbEwXm0siCFdCvMT94u2sA8r1
	 cLLasxsdGhcbiET/e8seWiRVkZap0sI/ES9tNrmI=
Received: by gentwo.org (Postfix, from userid 1003)
	id 4BD194025D; Fri,  9 May 2025 11:22:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by gentwo.org (Postfix) with ESMTP id 49560401FD;
	Fri,  9 May 2025 11:22:21 -0700 (PDT)
Date: Fri, 9 May 2025 11:22:21 -0700 (PDT)
From: "Christoph Lameter (Ampere)" <cl@gentwo.org>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
    "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Message-ID: <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com> <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik> <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn> <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv> <20250408124238.2gbis6jq5pdz7yoi@illithid> <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix> <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

There is a pending patch to standardize all my email addresses in the
kernel. This patch may conflict with the one in Andrew's tree.

The Email address going forward should be

Christoph Lameter <cl@gentwo.org>



On Fri, 9 May 2025, Alejandro Colomar wrote:

> Hi all,
>
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
>
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?
>
> I've generated the BCC with
>
> 	$ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
> 	| grep '^-[^-]' \
> 	| grep @ \
> 	| grep -o '[^     ]*@[^ ]*' \
> 	| sed 's/,//g' \
> 	| sed 's/\.$//' \
> 	| sed 's/.*(//' \
> 	| sed 's/<//' \
> 	| sed 's/>//' \
> 	| sed 's/\.)//' \
> 	| sed 's/)//' \
> 	| sort \
> 	| uniq \
> 	| sed 's/^/Bcc: /';
>
>
> Have a lovely day!
> Alex
>
> On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
> > Hi Carlos,
> >
> > On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
> > > On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> > > > Hi Alex,
> > > >
> > > > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> > > > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
> > > > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
> > > > > > > If you do this, I suggest you replace these lines with something
> > > > > > > like:
> > > > > > >
> > > > > > > .\" See the Git revision history at
> > > > > > > .\"   $URL
> > > > > > > .\" for records of changes and contributors to this file.
> > > > > >
> > > > > > Good idea.
> > > > >
> > > > > I'm thinking I won't do that.  I don't want to add that overhead to
> > > > > each page.  People interested in the history of a page will already
> > > > > have a look at the git history, and there they'll find the old states
> > > > > of a page, in which they'll find this information.
> > > > >
> > > > > And it would require some non-trivial work to add this note
> > > > > consistently.  I'll go with a removal without replacement, I think.
> > > >
> > > > Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
> > > > remember my reasoning from February, but my suggestion may have been at
> > > > attempt to find a "conservative" alteration to file content or the
> > > > expressed meaning of the comments.
> > > >
> > > > But, what's conservative in one dimension often is not in another, such
> > > > as "labor required".
> > > >
> > > > I also agree that while Git is a complex suite of tools, "git log" is
> > > > not among its deeper magicks.  At least not when run without arguments.
> > >
> > > We did something similar in glibc and created a CONTRIBUTED-BY file at the
> > > top-level and moved all contribution lines out of the respective
> > > files into the top-level file.
> >
> > Yep, a CREDITS file would be interesting.  I wouldn't keep info about
> > which specific files were written by each contributor.  That seems
> > something more appripriate for git-log(1).  The pre-git contributions
> > will be visible in old versions of the pages (i.e., if one sees
> > Jane Random Developer in CREDITS and wonders which pages she contributed
> > to, they can `git log -S 'Jane Random Developer'` and similar commands
> > to find out.
> >
> > Thanks!
> >
> >
> > Have a lovely night!
> > Alex
> >
> > >
> > > e.g.
> > > ~~~
> > > The glibc project stopped adding "Contributed by" lines to source files in 2012
> > > in favour of acknowledging contributors in the glibc manual and through the git
> > > log.  The record of existing "Contributed by" lines have now been moved to this
> > > file to acknowledge contributions by these developers to glibc.
> > >
> > > argp/argp-test.c:
> > >     Written by Miles Bader <miles@gnu.ai.mit.edu>.
> > >
> > > argp/tst-argp1.c:
> > >     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
> > > ...
> > > ~~~
> > > The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.
> > >
> > > Sme of the authors predated the use of git and so it was simpler to keep the
> > > lines somewhere as part of the transition away from "Contributed by"-style
> > > lines.
> > >
> > > --
> > > Cheers,
> > > Carlos.
> > >
> > >
> >
> > --
> > <https://www.alejandro-colomar.es/>
>
>
>
>

