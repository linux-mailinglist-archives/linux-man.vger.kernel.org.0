Return-Path: <linux-man+bounces-2890-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5A5AB1911
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 17:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3359D189A5FC
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7076230BD6;
	Fri,  9 May 2025 15:43:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5D6230981
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 15:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805422; cv=none; b=YROvAfq24Gnr5RKrsgxCqJo6K9lX2i5CYJWvN5QlD0VIaaWY6O/tCiXB3A+BbMwkaMtNJ+PvSGRVBD1iMvvihfv/YHAGhWoEP9ctMjVLRYNHWC23vZOtBOk1NYO6zQt93MLS9WeukZjL8p4fp0PHCo2QfTuPNFVxjfj1o6P9s/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805422; c=relaxed/simple;
	bh=cTG1hCuu9tozuCWFxAPqXyw6/7EqpPQ6hUEP4SC1W6g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B4j5blyjCYLKCIVzFVA9axBRW/L+12gT5/iBfYnZAyDeR7eHuvDyLGZvUmi2aqh032R9gvXyZq4zPilzFOVnySXF3DOEuv7yvvkJcOnnt/t0UwpWuO3nhCHn8ibBcq5chGDxIBz4mllm7+SQGIdyB7FkkimxAJwf8M+iEA2GZEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F5AE175D;
	Fri,  9 May 2025 08:43:29 -0700 (PDT)
Received: from e133380.arm.com (e133380.arm.com [10.1.197.52])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49F183F58B;
	Fri,  9 May 2025 08:43:39 -0700 (PDT)
Date: Fri, 9 May 2025 16:43:36 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <aB4iqKfkuNpOXUuY@e133380.arm.com>
References: <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>

Hi,

On Fri, May 09, 2025 at 04:39:05PM +0200, Alejandro Colomar wrote:
> Hi Dave,
> 
> On Fri, May 09, 2025 at 03:14:57PM +0100, Dave Martin wrote:
> > Hi,
> > 
> > On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> > > Hi all,
> > > 
> > > I've added to BCC everyone whose copyright notices have been removed
> > > (those that noted an email).  The full thread for this discussion can be
> > > found here:
> > > <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> > > 
> > > Please let me know if it's okay to you to transform your copyright
> > > notices to make them uniform?  That is, do you approve
> > > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> > > in what affects you?
> > 
> > 
> > Should the one-line replacement statement in each file refer back to
> > the CREDITS file?
> 
> I prefer not, because then someone can copy the files to a different
> repository, without needing to modify the notices (they might take the
> CREDITS file as CREDITS_Linux-man-pages).

Fair enough, though would it make sense for the boilerplate line to at
least become

	# Copyright, The authors of the Linux man-pages project

...?

This remains meaningful out of context, but when shipped with the
original tree this wording macthes up with the naming of the AUTHORS
file (assuming that's what the file is called).


> > Also, nothing seems to say that anyone listed in CREDITS actually
> > contributed copyrightable material to the project (as opposed to, say,
> > review effort, moral support or free pizza).
> 
> I initially planned to include reviewers, etc. into CREDITS.  While
> doing that, I realized that wasn't easy, because the file would be huge,
> and would need to be updated too frequently; plus git(1) does a better
> job of documenting that with the Reviewed-by, Cc, and other tags.

Fair enough.  A line has to be drawn somewhere.


> > Renaming the CREDITS file to AUTHORS and/or clarifying this in a brief
> > top-level LICENSE / COPYING file might make the meaning clearer?
> 
> Yes, now that I discarded the idea of crediting *all* contributors, I
> agree this file should be renamed to AUTHORS.  Regarding a file solely
> to clarify that the AUTHORS file holds the copyright holders of the
> project, I guess by calling it AUTHORS it would already be obvious.  I'm
> hesitant to add another file for explaining that because the more
> uppercase files there are in the root of the repo, the harder it is to
> understand their relationship.  However, I can add something in the
> README, where I already document what each file is.

Ack, it's probably fairly obvious what a file called "AUTHORS" means.

Just a suggestion, would something like this work in README:

+   AUTHORS
+       List of individuals and organizations that have contributed
+       content to the project.
+

This will still be a true description regardless of whether the list
is complete or if non page content contributors are included.  (There
are probably plenty of borderline cases as to whether something counts
as a page content contribution or not.)

Cheers
---Dave

