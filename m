Return-Path: <linux-man+bounces-3047-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B32DAC7197
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 21:41:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED50F1BA87C1
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 19:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D5421FF41;
	Wed, 28 May 2025 19:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgMnyulp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F81A21325A
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 19:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748461269; cv=none; b=eiIafSd9AmAIc7hViWPWvXYwIt5YG+1Y9BivB7SfI2y1x4NyeY3bKPNi1oUMsEwqVUXREZFmZf4qkOO3QGbRCxEogDiGbKihuLHrM3tQJWn0P3lHXi0hVJ2GwEu+XXzdfTPMekfO9dsW+Duv4YyBLlxnecV9vGLqUOO9VdZYeXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748461269; c=relaxed/simple;
	bh=IA4Jemzkl5tEXaFLJEqiVwxyUvnRmKfbZzUgYo8I8cQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ayv+JcwwIZxdJfTnpmOGtcCV7avxDfsGGpx11qThrcTShlQTRPIPpdB0KeVl5FNQWbwnXiTvk/Y6ud7YHJ7e4hzcfyduO1pnhzBFn9Qiyo8hPKJyVN7z6olFRiX+OkSeO0KaFvZqodIWcavSycb77ZYd95evIexgU0MP6TWZluM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgMnyulp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC6A4C4CEE3;
	Wed, 28 May 2025 19:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748461269;
	bh=IA4Jemzkl5tEXaFLJEqiVwxyUvnRmKfbZzUgYo8I8cQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WgMnyulpLds3zDZEw03AN7AhqPnaFyWmVvEF4O3ATy+zqlAvacM0ZU7I2fU/KJRBz
	 rb7n0ZVGTNZZqUWbkuUXBIzYM728pZr15NzH4ZP1oZrilKNsK+XzerDTp2lPkrC2cm
	 yJrDJT8SSKJqZKSFw2D83Z2+rWYxvyQWtbRjeWTgmPO7WBqTgKL7rX4tYnjPpSBV6z
	 NGakw5eSxg0iX/hH8nf/S7czgdAkAjf+Vm0YkXPZnSuJik8nGv7YTiRsN7ldPmajgn
	 js2fmFRuphlac7QDwEooF9Gi1FFHYY1ZHQXMhK1ZCwLclJFBQqNO95VJ4Lt9HD6bE1
	 ucXllzvC/wKnw==
Received: by pali.im (Postfix)
	id D97838AF; Wed, 28 May 2025 21:41:05 +0200 (CEST)
Date: Wed, 28 May 2025 21:41:05 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Improving inode number documentation
Message-ID: <20250528194105.dqc2bgfck6n3xfya@pali>
References: <20250525103344.fe27ugiytfyoadz5@pali>
 <juxbjjsnt5mvtyctd72fcnc4o2u5wamqz7yd5occuor4clzkhx@zvob6krj6sq3>
 <20250528182519.l6kyy5ebiivev2u5@pali>
 <m5drckhk4mkw3l6fzfqyelobscbrmx6jefpjik4nj4j5ala7ff@mrm6ds7a4lk2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <m5drckhk4mkw3l6fzfqyelobscbrmx6jefpjik4nj4j5ala7ff@mrm6ds7a4lk2>
User-Agent: NeoMutt/20180716

On Wednesday 28 May 2025 21:03:04 Alejandro Colomar wrote:
> Hi Pali!
> 
> On Wed, May 28, 2025 at 08:25:19PM +0200, Pali Rohár wrote:
> > > > I would like to ask you, could you improve documentation about inode
> > > > numbers returned by readdir()/getdents() and stat()/statx() functions?
> > > 
> > > I'd love to do that.  I do not feel experienced enough in this matter to
> > > write the text myself, but I could try to learn about it.  On the other
> > > hand, if you want to send patches yourself, we can go much faster.
> > > Would you mind sending some patches?
> > 
> > Well, as it affects at least 7 man pages, I do not know how such
> > information should be ideally structured. Whether to be described just
> > in the readdir(3) and referenced from all others. Or split across all of
> > them. So I do not think that I'm the one who can prepare patches.
> > 
> > But I will try at least to propose how the changes could look like:
> > 
> > readdir(3) change:
> > 
> >   d_ino - This is the inode number of the directory entry, which belongs
> >   to the filesystem st_dev of the directory on which was readdir() called.
> >   If the directory entry is the mount point then the d_ino differs from
> >   the stat's st_ino. d_ino is the inode number of the underlying mount
> >   point, rather than of the inode number of mounted file system.
> 
> I guess the last sentence applies only as a clarification of the
> previous one, right?  If so, I'd separate the sentences with ':' instead
> of '.'.

Yes, it is a clarification.

> > According
> >   to POSIX this Linux behavior is considered to be a bug but conforms as
> >   "historical implementations".
> > 
> > stat(3type) change:
> > 
> >   st_ino - This field contains the file's inode number, which belongs to
> >   the st_dev. If the stat() was called on the mount point then st_ino
> >   differs from the readdir's d_ino. st_ino contains the inode number of
> >   mounted file system, whether readdir's d_ino contains the inode number
> >   of the underlying mount point.
> 
> These two paragraphs in two pages sound reasonable.  I've prepared a
> patch, and pushed a new branch to the git repo where we can continue
> working on it.
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=ino>
> 
> 
> > 
> > So I suggest if somebody else look at it and prepare improvements
> > including how should be this information structured.
> 
> Here's the change I propose based on your suggestions:
> ...
> 
> Does it look good to you?  Would you do anything else?  Please sign the
> patch if it looks good to you.
> 
> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>

As I said I'm not feeling comfortable with it. So I would really like if
somebody else ideally more skilled recheck it and improve it. Maybe
asking linux-fsdevel for help?

What is missing updating also the statx information (because this is
also syscall which returns inode number) and updating also readdir(2)
and getdents(2). In the first email I sent list of manpages which are
affected. It could be quite surprising for people reading documentation
why old stat syscall has something regarding to inodes and new statx
syscall does not have.

