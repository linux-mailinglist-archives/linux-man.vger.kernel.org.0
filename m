Return-Path: <linux-man+bounces-2905-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D672BAB3611
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 13:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C55C13BA769
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 11:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB392918D9;
	Mon, 12 May 2025 11:40:49 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E52A2920BC
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 11:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747050049; cv=none; b=Yh7A0wCAUVaucbaF/hjdSOborUTgL3ucug4zuxRuOrD3AL7M+uAXMRMjCUNHIHARJu7/fFj7rMXXdKk1XRHAJKDPU4qzBSzLVqEuf33gyd0itaxHWDYPU/2hebda8V0FO9BKvBJoS5q3awjOF7eaPGXLKXy+P+IeY9v5+1CPrL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747050049; c=relaxed/simple;
	bh=8NQuQX3pP7tHA1BZz3Oie2tBWCQdbeovAw3orIpuydg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1KVghNIs+k+ZPrp06UqSZP9yAOHBUBmYCooyyegSlx1pJknVFeTWSQvRHJEbSN3AxZRmKojk0wHH4oC+qB8c7cWFGnNZoxEntnaeqS8TN3e/MffzS4PKA/ruDmysA2iPUEOIvAMw6gOaQD/V8AuN9UEm373U14yy+adYo/bq6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BF50150C;
	Mon, 12 May 2025 04:40:35 -0700 (PDT)
Received: from e133380.arm.com (e133380.arm.com [10.1.197.52])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 977B23F5A1;
	Mon, 12 May 2025 04:40:45 -0700 (PDT)
Date: Mon, 12 May 2025 12:40:39 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <aCHeN7Kh3VNOGP5c@e133380.arm.com>
References: <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
 <aB4iqKfkuNpOXUuY@e133380.arm.com>
 <bwtcqxfzrtnr2genjayihmgmqonac7blka6m43a5kbhq73mba7@l5jkhkp34h2d>
 <juos3oxvdsxkwzwe5rcst3jft3wsnhh4dxs6xasvfk2nzp7jdo@h2tz4hvtkqp7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <juos3oxvdsxkwzwe5rcst3jft3wsnhh4dxs6xasvfk2nzp7jdo@h2tz4hvtkqp7>

Hi,

On Fri, May 09, 2025 at 09:07:47PM +0200, Alejandro Colomar wrote:
> Hi Dave,
> 
> On Fri, May 09, 2025 at 08:49:39PM +0200, Alejandro Colomar wrote:
> > Hi Dave,
> > 
> > On Fri, May 09, 2025 at 04:43:36PM +0100, Dave Martin wrote:

[...]

> > > Just a suggestion, would something like this work in README:
> > > 
> > > +   AUTHORS
> > > +       List of individuals and organizations that have contributed
> > > +       content to the project.
> > > +
> > 
> > Certainly.  Thanks!
> > 
> > > This will still be a true description regardless of whether the list
> > > is complete or if non page content contributors are included.  (There
> > > are probably plenty of borderline cases as to whether something counts
> > > as a page content contribution or not.)
> > 
> > Yep.  For now, I haven't documented it, but I've drawn the line at:
> > 
> > 	-  Had its name either in a copyright notice,
> > 	-  or in a source line saying something like "modified by"
> > 	-  or was 'Author' in a git commit.
> > 
> > Anyone who meets at least one of those has been included in CREDITS (to
> > be renamed to AUTHORS).
> > 
> > Exceptions are authors of code that was taken by this project, but who
> > didn't contribute to this project themselves.  For example, the regents
> > of the University of California wrote pages that have been incorporated
> > into this project, but they didn't consciously contribute to this
> > project.  Thus, I've retained their copyright notices, and didn't add
> > them to CREDITS.

Seems reasonable.

> I've applied both changes already (currently in my branch):
> 
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=98c87fcf783f20da7aae8adbe21e1954d9e8f310>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=d5218b220e41a1ed031eea6219237fda0a93d9b2>

Looks good to me.  Thanks for the credit.

Cheers
---Dave

