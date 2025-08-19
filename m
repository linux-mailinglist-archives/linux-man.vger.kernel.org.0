Return-Path: <linux-man+bounces-3506-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 769DAB2CB98
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 20:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 371AB3BB4B7
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE56C30EF7B;
	Tue, 19 Aug 2025 18:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="PDmIKTOs"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DECD30E0C7
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 18:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755626603; cv=none; b=JAyFKNzVNbEgF8uJs4EehVTihAscX9FCJriUyYWEh8wTFKJt+MuZRrcs6HITMtvtMz30ioAnOkBhwJBDuR3SM5Pv4nEyAPVUjfceALgQ1jzIIfgbXNmGIYOKjjnH0h1Kj7Phf7jtr0aBbbqGaRgrCEqNQZciMcmlGXxra5ZCnRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755626603; c=relaxed/simple;
	bh=yaLfM0BDs/wStbeqlWblGWaIdjSZPuukGigRC3r8Xns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jY60YZ2pzxZK1AvR/mkF6YklTeFxg6eEDvPiB0mdvMejRnI2BvcfwgjVR/Fe8bpyUycbP2S+JWme11hKn8xjPK0rj59ruYS3B8FBuF0+nOj/uoZuos65qIwk8cNQJoVTanWCUDinbsj5/HCvDV68F3phRS6sh7mqaRxMqv9c0j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=PDmIKTOs; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=o3bEGj/vX7WuxT25yjeSvjTPaFt6jY8mFQp20Jure9U=; b=PDmIKTOsurxeSJl4
	iF20QtWslXdjcUIfwHzhgjRBgZXLnLtSNtHvlQoP/CFYHRVsfd7uKcoSY/G0ZVYYmGliRaxjlrGeP
	U8W7+fh3Lj4yMzQlRbMohxFc6zVqtErWfXDTq5/fyxKmQnMlkwuL9URhcB+Ksa8RBIF1ryv6620/o
	L5XWoX1ecfcYCMtUk6XYkDOAs2x3wZ9KMufcVbe5jvGgS6zkH/lLgmoMmXGCYjMINQ4zSyfK89Y01
	YARPhYZ6KcV4yuLX7tyI9XAOHsr+hNZQwCW075+nPUrVchUkUIZQy4IWgundBIQJXvRfNsCVfUguU
	+ryG5v4aKpRxx6jnBA==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
	(envelope-from <dg@treblig.org>)
	id 1uoQfy-0053Bv-16;
	Tue, 19 Aug 2025 18:03:14 +0000
Date: Tue, 19 Aug 2025 18:03:14 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
Message-ID: <aKS8YhvnXbQeyyEh@gallifrey>
References: <20250818174553.70132-1-dave@treblig.org>
 <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
 <aKRj_-jnlO_BxWHr@gallifrey>
 <cj4pybbqz74oxknh3fh44ejvwsxus5spmsvwsjdlg7xfw4t7d3@bynwkotgfzw5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <cj4pybbqz74oxknh3fh44ejvwsxus5spmsvwsjdlg7xfw4t7d3@bynwkotgfzw5>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-34-amd64 (x86_64)
X-Uptime: 18:02:54 up 114 days,  2:16,  1 user,  load average: 0.00, 0.01,
 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi Dave,
> 
> On Tue, Aug 19, 2025 at 11:46:07AM +0000, Dr. David Alan Gilbert wrote:
> > * Alejandro Colomar (alx@kernel.org) wrote:
> > > Hi Dave,
> > > 
> > > On Mon, Aug 18, 2025 at 06:45:53PM +0100, dave@treblig.org wrote:
> > > > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > > > 
> > > > The strftime example requires a format paramter.  If you don't
> > > > pass one it crashes.
> > > > Check for the parameter.
> > > > 
> > > > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > > 
> > > Thanks!  I've applied the patch.  (But see some minor comment below.)
> > 
> > Thanks!
> > Is that something that I can spot locally?
> > Since I seem to be working my way through the set checking most of the
> > examples, I'm probably going to be posting some more so I should
> > get the checks running.
> 
> Yes, you can.
> 
> > I'm trying to run:
> >    make -R lint build-all check
> 
> This is essentially what it does.  Here's the full script I use in my
> server (the linters are run on pushes to refs/heads/contrib):
> 
> 	alx@www:/srv/src/alx/linux/man-pages/man-pages.git$ cat hooks/post-update;
> 	#!/bin/bash
> 
> 	set -uo pipefail;
> 
> 	cd /home/alx/src/linux/man-pages/man-pages/.bare.git/;
> 
> 	unset $(git rev-parse --local-env-vars);
> 	git fetch srv >/dev/null;
> 
> 	export LANG=C.utf8;
> 
> 	test "$1" = "refs/heads/main" \
> 	&& (
> 		cd /home/alx/src/linux/man-pages/man-pages/main/;
> 
> 		git reset srv/main --hard >/dev/null;
> 
> 		export pdfdir="/srv/www/share/dist/man-pages/git/HEAD";
> 		export DISTNAME="man-pages-HEAD";
> 
> 		make -R install-pdf-book 2>&1 \
> 		| sed '/bashrc.*PS1/d';
> 		echo '$?: '"$?";
> 	)
> 
> 	test "$1" = "refs/heads/contrib" \
> 	&& (
> 		set -Ee;
> 
> 		export PS1=;
> 		cd /home/alx/src/linux/man-pages/man-pages/contrib/;
> 
> 		old="$(git rev-parse HEAD)";
> 
> 		git reset srv/contrib --hard >/dev/null;
> 
> 		make_opts='';
> 		make_opts="$make_opts -R";
> 		make_opts="$make_opts -j4";
> 		make_opts="$make_opts -Otarget";
> 		make_opts="$make_opts --no-print-directory";
> 
> 		export VERSION=contrib;
> 		#export GROFFBINDIR=/opt/local/gnu/groff/deri-gropdf-ng/bin;
> 		#export PRECONV=$GROFFBINDIR/preconv;
> 		#export PIC=$GROFFBINDIR/pic;
> 		#export TBL=$GROFFBINDIR/tbl;
> 		#export EQN=$GROFFBINDIR/eqn;
> 		#export TROFF=$GROFFBINDIR/troff;
> 		#export GROPDF=$GROFFBINDIR/gropdf;
> 
> 		make_target()
> 		{
> 			make $make_opts "$@" 2>&1 \
> 			| sed '/bashrc.*PS1/d';
> 		}
> 
> 		make_target lint;
> 		make_target build-pdf-book;
> 		make_target build-all;
> 		make_target check;
> 		make_target dist;
> 		echo '$?: '"$?";
> 
> 		echo 'URI:';
> 		git rev-list "$old..HEAD" \
> 		| sed 's,.*,https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib\&id=&,';
> 	)
> 
> > but it seems to be missing 'checkpatch' and I'm not sure which checkpatch
> > that is. (I'm on Fedora 42).
> 
> Yup, checkpatch is the one you can't run.  I have a fork of the kernel's
> checkpatch, which I want to eventually package.  I need to find some
> time to do it.
> 
> For now, you should be able to do what CONTRIBUTING.d/lint says about
> make's -t and -k options, which will allow you to ignore those failures.
> Let me know if that doesn't work.

OK great, I'll give those a go and hopefully you'll see some more patches!

Dave

> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

