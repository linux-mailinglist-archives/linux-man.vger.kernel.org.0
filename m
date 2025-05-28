Return-Path: <linux-man+bounces-3045-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8373EAC70E0
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 20:25:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 489254E64D4
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 18:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F101728E56D;
	Wed, 28 May 2025 18:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sn8ocD8A"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE08228E569
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 18:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748456722; cv=none; b=jLk3QVtHzyqQfSIaMpZCwasQv2JYBzykjEmIpUI07XGx5OYET7/Y0D/sQJHJzdCBaAtfORU4zbGe9KOTw2Cv+ffH+USjw6444j9BldV5z3suZb0nXngECb0RNeTjIE0uClDGUkV98dPf3skEOG2W3aALzceC1By5ZM4WtiTMI5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748456722; c=relaxed/simple;
	bh=d6Q7tN4gXtrxK4CumWO8giWuZ5Ue6X3lX6LWnG0p+zk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vi1/KRv9ECNduQty48Jo3c9ZrzqgRZzsoqg7xl5VDtFWZDArodluqax6USwmnm6SV/RC/7q0UMChwgNFyWvIby0RsN3CpXI/Ci8P9l0SzQkGtcHSQCgezR/9I8OKHLFXI+GMtXGwqC09PzY0uDcnfqnabLeCZC3y8V1LB9Sanns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sn8ocD8A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37A7DC4CEE3;
	Wed, 28 May 2025 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748456722;
	bh=d6Q7tN4gXtrxK4CumWO8giWuZ5Ue6X3lX6LWnG0p+zk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sn8ocD8AXCN7OSI+ivkZwO6SCSrOXdSBI3vJTzd2qgW4VvD/JC4JXtT/MRlTsXE/e
	 o6Sfoqit1buTuaSNgdNR7Ii+K4fkbiSTe2kxrZKUsvz+1N+eK5422r0nawrs6XVjWh
	 rlD/TzgUCUv3NCXW7UNaBY+1U547fTClGLkqRTJlIyy4o5vQW6bN5k/SgYUPbJMGSC
	 Kn9xnxceOyVrOhljXdhLOUJTG07ww/FNCX13GWqR40p2PmY0ilMQA0PqfzBkfOhVLb
	 ThN/h0XCQmJcH5vkPTQoGZt1blKFu6qye5wO2xNVno2VMUoB2b8kJ3CVFwtF8oBeje
	 Lckr9jJ+FFjrg==
Received: by pali.im (Postfix)
	id 6A47C8AF; Wed, 28 May 2025 20:25:19 +0200 (CEST)
Date: Wed, 28 May 2025 20:25:19 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Improving inode number documentation
Message-ID: <20250528182519.l6kyy5ebiivev2u5@pali>
References: <20250525103344.fe27ugiytfyoadz5@pali>
 <juxbjjsnt5mvtyctd72fcnc4o2u5wamqz7yd5occuor4clzkhx@zvob6krj6sq3>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <juxbjjsnt5mvtyctd72fcnc4o2u5wamqz7yd5occuor4clzkhx@zvob6krj6sq3>
User-Agent: NeoMutt/20180716

Hello!

On Monday 26 May 2025 01:30:43 Alejandro Colomar wrote:
> Hi Pali!
> 
> On Sun, May 25, 2025 at 12:33:44PM +0200, Pali Rohár wrote:
> > Hello Alex,
> > 
> > I would like to ask you, could you improve documentation about inode
> > numbers returned by readdir()/getdents() and stat()/statx() functions?
> 
> I'd love to do that.  I do not feel experienced enough in this matter to
> write the text myself, but I could try to learn about it.  On the other
> hand, if you want to send patches yourself, we can go much faster.
> Would you mind sending some patches?

Well, as it affects at least 7 man pages, I do not know how such
information should be ideally structured. Whether to be described just
in the readdir(3) and referenced from all others. Or split across all of
them. So I do not think that I'm the one who can prepare patches.

But I will try at least to propose how the changes could look like:

readdir(3) change:

  d_ino - This is the inode number of the directory entry, which belongs
  to the filesystem st_dev of the directory on which was readdir() called.
  If the directory entry is the mount point then the d_ino differs from
  the stat's st_ino. d_ino is the inode number of the underlying mount
  point, rather than of the inode number of mounted file system. According
  to POSIX this Linux behavior is considered to be a bug but conforms as
  "historical implementations".

stat(3type) change:

  st_ino - This field contains the file's inode number, which belongs to
  the st_dev. If the stat() was called on the mount point then st_ino
  differs from the readdir's d_ino. st_ino contains the inode number of
  mounted file system, whether readdir's d_ino contains the inode number
  of the underlying mount point.

So I suggest if somebody else look at it and prepare improvements
including how should be this information structured.

> 
> Have a lovely night!
> Alex
> 
> > https://man7.org/linux/man-pages/man3/readdir.3.html
> > https://man7.org/linux/man-pages/man2/readdir.2.html
> > https://man7.org/linux/man-pages/man2/getdents.2.html
> > https://man7.org/linux/man-pages/man2/stat.2.html
> > https://man7.org/linux/man-pages/man2/statx.2.html
> > https://man7.org/linux/man-pages/man3/stat.3type.html
> > https://man7.org/linux/man-pages/man7/inode.7.html
> > 
> > The missing information in those documentations is the fact that the
> > dirent.d_ino does not have to be same as stat.st_ino/statx.stx_ino for
> > the same file or dir.
> > 
> > stat.st_ino number belongs to the stat.st_dev but dirent.d_ino belongs
> > to the st_dev of the directory on which was called opendir().
> > 
> > So for the mount points these two numbers are different. readdir()
> > returns the inode number of the underlying directory (which belongs to
> > the parent filesystem), but the stat() returns the inode number of the
> > root directory of the upper/mounted filesystem.
> > 
> > And I think same applies for mount-binded files, not just for mounted
> > directories.
> > 
> > Note that this Linux behavior (when readdir and stat returns different
> > inode numbers) is in POSIX readdir() specification called "historical"
> > and is described in RATIONALE section of POSIX readdir:
> > https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.html
> > 
> > Therefore it would be nice to mention the fact in Linux readdir(3)
> > documentation, that Linux conforms to POSIX "historical implementation".
> > 
> > Pali
> 
> -- 
> <https://www.alejandro-colomar.es/>



