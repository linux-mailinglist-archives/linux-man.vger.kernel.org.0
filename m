Return-Path: <linux-man+bounces-3777-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE8FB3D394
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 15:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 596EB7A13A5
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E01625B301;
	Sun, 31 Aug 2025 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZTTyFSU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DCD24DD01
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756646313; cv=none; b=JJzTIfzNqiwOANWTCwnUbo7bO8Wa84tzu/abD7tymUgpL3h9mfEkyesZnEUSWdyaoS8T1yld7wHl838n9ZWw9Yt/X/JJ+BFQbceU+HYfPqY0ncwBDKMHpYEXCtiOgBhex6HNqzCB+M/Bbc4XPd1gwT4a2tcIGY0Acep/1B/5Cio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756646313; c=relaxed/simple;
	bh=riO1UM2g0ot/RVmVDRFj06fUPlErvsvB02yKgG9YCN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EO6uez0oVGeiygl2z+Chzk/4R4RrK6rBbmsqgef0rTgxgKq9zY2nkVbOrlzJt7drEOi2BAQ2LDrINiiag1NQJf0n0mAadrtlOnSlh6xLA5cjnzI4uDql9uvUeylpXP43qA7GQ6XD/6NdCJtfa86PJgGgFiPvYgNKRmgA2mImgvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZTTyFSU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E3BDC4CEED;
	Sun, 31 Aug 2025 13:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756646313;
	bh=riO1UM2g0ot/RVmVDRFj06fUPlErvsvB02yKgG9YCN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pZTTyFSUbe6t4ippWyA3bxQxmAcXRGvG6Pp0F+hgGlf+tcN6QaArNteIPr34/f8sw
	 yocI0yYCIvtc13e0MBQXe9RWN27QjBr6WRbhAArn0sQozFs8wWtxbJKDi7J2JLDOsY
	 r5W0GAgl8TBqhwByMKJaASvEq2aL54QxcBIGM6oCepsCOPVogXwpckbu4MnFSTJ3iu
	 xn+fYyPHx9xft98Bj83A/PG9FWAgw8xqzr9xdNxOlHD81k2J5Tm27CuiOkX/Xhh1uq
	 wWuSv4wZ3huwL+ZQhhjmyex/rJN9e8CowtIpm0OFrePS9ZQsjhJ71ybGC6VzjhLkUC
	 J87+q697efy3w==
Date: Sun, 31 Aug 2025 15:18:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <vpwzo76pwb6lbnkaldkh4ciitivjqdbitzxzib2moho2y2vskz@7djyeqqiji5r>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
 <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
 <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>

Hi Mario,

On Sun, Aug 31, 2025 at 02:56:18PM +0200, Mario Blättermann wrote:
> Yes, maybe a bug in po4a… Currently, the line break after ".BR login
> (1)" obviously causes the double space. Without further digging into
> the Po4a sources, I found a workaround for this. See the attached
> patch. But it is based on the Git repo of manpages-l10n, so it cannot
> be applied directly. It's quite simple; you'll see what I mean.

> -are displayed by
> -.BR login (1)
> -after a successful login but just before it executes the login shell.
> +are displayed by \fBlogin\fP(1) after a successful login but just before it executes the login shell.

Yup, I see what you mean.  However, I certainly dislike that approach.
I've done a lot of work removing that kind of pattern in existing manual
pages, and don't want to reintroduce it.  Please fix po4a instead.


Have a lovely day!
Alex

P.S.:  Sorry; no time to PGP-sign this email.

-- 
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

