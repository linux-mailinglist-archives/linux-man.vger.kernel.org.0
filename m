Return-Path: <linux-man+bounces-431-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 529E7850C71
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 01:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 551C01C209A5
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 00:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64512368;
	Mon, 12 Feb 2024 00:05:37 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from gnu.wildebeest.org (gnu.wildebeest.org [45.83.234.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2AD193
	for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 00:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.83.234.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707696337; cv=none; b=JOCQN5nGYNxRr+JoJzjEksDc4eWqgQUfZJTvbx8Y5sHtCr8RNHnvQsLdW2xaeTO3qMp2NRCO/wAdwY7kXqL4YhgSjaPX+8kEZHGh70zj01PHl5efMEngR1T2klVAtFKLhfjhBisiqjK7ceR7Ax6F2NQSwZfjJY7zGfVIQJeJqbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707696337; c=relaxed/simple;
	bh=1Tn9gTU+lGmJUAa1YQjYqrNDXJ0swLpEeS3/ml4LZPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FJa0idDgvFSID8TGejNT/XZXHphuj/3T4c5QVfWpkx308VyA7n61yRsmfwjhNgDRSK7c8T0HMENl854qJnllsjWzpUxpMjlqylUZOCi9AtfVEw74qHCLdXspTB6teTXOD4JFqs/QMpnK5JGJMMA7qyRoL4GBfM9cZhHzCnNljkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org; spf=pass smtp.mailfrom=klomp.org; arc=none smtp.client-ip=45.83.234.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=klomp.org
Received: by gnu.wildebeest.org (Postfix, from userid 1000)
	id 5C3BE30005AB; Mon, 12 Feb 2024 01:05:31 +0100 (CET)
Date: Mon, 12 Feb 2024 01:05:31 +0100
From: Mark Wielaard <mark@klomp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?iso-8859-1?Q?H=E1jkov=E1?= <ahajkova@redhat.com>
Subject: Re: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <20240212000531.GG21691@gnu.wildebeest.org>
References: <20240211232903.1622396-1-mark@klomp.org>
 <ZcldDOM_i6u742Pf@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcldDOM_i6u742Pf@debian>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi Alejandro,

On Mon, Feb 12, 2024 at 12:49:32AM +0100, Alejandro Colomar wrote:
> Thanks!  LGTM, but please check a small comment below.
> 
> > ---
> >  man2/close_range.2 | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/man2/close_range.2 b/man2/close_range.2
> > index 380a47365..62b728e96 100644
> > --- a/man2/close_range.2
> > +++ b/man2/close_range.2
> > @@ -11,10 +11,13 @@ Standard C library
> >  .RI ( libc ", " \-lc )
> >  .SH SYNOPSIS
> >  .nf
> > -.B #include <linux/close_range.h>
> > +.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
> > +.B #include <unistd.h>
> > +.P
> > +.BR "#include <linux/close_range.h>" "  /* For the flags constants */"
> 
> Could you please format the comment like other pages that do the same
> thing?  See for example membarrier(2).

Sorry, you have to be more explicit what exactly you believe is not
the same thing that other pages do. membarrier.2 doesn't need a
_GNU_SOURCE define and I believe I used the comment as other pages
that do.

Cheers,

Mark

