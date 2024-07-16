Return-Path: <linux-man+bounces-1480-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF112932987
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 16:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 698DB286816
	for <lists+linux-man@lfdr.de>; Tue, 16 Jul 2024 14:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323681A0734;
	Tue, 16 Jul 2024 14:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="TOFzdO9D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-1909.mail.infomaniak.ch (smtp-1909.mail.infomaniak.ch [185.125.25.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FB219EEA4
	for <linux-man@vger.kernel.org>; Tue, 16 Jul 2024 14:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721140770; cv=none; b=K+UQvWJjRroeTGyy4MBvsMKJbgwkAH/AK6DYGWpabXxhJ28o2ToJoqeNs7++0mDLovoempoDbOVHrZbRpGokwBVjFwtbKBd9CoyzuE1S66GyfsT0OjNOu/cEwgpwJIoRqqeuM+zgeuoF1SQMeuWjNpoQaxYzXrwj0ELIRY1jCB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721140770; c=relaxed/simple;
	bh=PmSlG24WM7HsYxrjIa8RUE81WRJaqrpPlKPm6M2bzCs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pE15+j7vVdLuReX4MIPss45A463xH2AyK3ELxFTeYtiBX0KzcX232HeOWU/O07nBb7T6sTwsUncfnE5cfETI1ohHG30CraEQKJAhuNomzBkGIhDT2o0OYbTjIou6WdxJ5iMg2eFKQvteQLMOpJZ7YV1PGwg2xyWJqF4HJS9Fq3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=TOFzdO9D; arc=none smtp.client-ip=185.125.25.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WNhXl1NWczrKk;
	Tue, 16 Jul 2024 16:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1721140759;
	bh=6k6tGvmdVzgNFp67uXHDB+THURk/xsbN8awIE4kAMGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TOFzdO9D294I4zsZU11cQvnvEMSDbGQWUpoZMMTLy41q0HuTPAlvsNscJLOoCvEyZ
	 EJ3vkv5c1zsi+Tzov6vbJHLz4zUd3kOhs0BYMzN1dj3pAJhynLTY/NRc5LDk+27OZB
	 mkE2tDGKLwHyN6DFKNDYt1n4OKX3QkAdCj8GRiLs=
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4WNhXk5RWWz3sP;
	Tue, 16 Jul 2024 16:39:18 +0200 (CEST)
Date: Tue, 16 Jul 2024 16:39:17 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] landlock.7: Document Landlock ABI version 5 (IOCTL)
Message-ID: <20240716.wu8queemuR5p@digikod.net>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-6-gnoack@google.com>
 <pbgazmvujum7sitkwgquqzy6fe5caks3vm75zelwcuzxerwdfh@5gagcpv3cv5f>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <pbgazmvujum7sitkwgquqzy6fe5caks3vm75zelwcuzxerwdfh@5gagcpv3cv5f>
X-Infomaniak-Routing: alpha

On Mon, Jul 15, 2024 at 06:20:53PM +0200, Alejandro Colomar wrote:
> Hi Günther,
> 
> On Mon, Jul 15, 2024 at 03:55:54PM GMT, Günther Noack wrote:
> > Landlock ABI 5 restricts ioctl(2) on device files.
> > 
> > Link: https://github.com/landlock-lsm/linux/issues/39

s/Link:/Closes:/

Closes: https://github.com/landlock-lsm/linux/issues/39


> > Cc: Mickaël Salaün <mic@digikod.net>
> > Signed-off-by: Günther Noack <gnoack@google.com>

Reviewed-by: Mickaël Salaün <mic@digikod.net>

> > ---
> >  man/man7/landlock.7 | 51 +++++++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 49 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index d452b93b2..044f57208 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -92,6 +92,8 @@ This access right is available since the third version of the Landlock ABI.
> >  .P
> >  Whether an opened file can be truncated with
> >  .BR ftruncate (2)
> > +or used with
> > +.BR ioctl (2)
> >  is determined during
> >  .BR open (2),
> >  in the same way as read and write permissions are checked during
> > @@ -188,6 +190,48 @@ If multiple requirements are not met, the
> >  .B EACCES
> >  error code takes precedence over
> >  .BR EXDEV .
> > +.P
> > +The following access right
> > +applies to both files and directories:
> > +.TP
> > +.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> > +Invoke
> > +.BR ioctl (2)
> > +commands on an opened character or block device.
> > +.IP
> > +This access right applies to all
> > +.BR ioctl (2)
> > +commands implemented by device drivers.
> > +However, the following common IOCTL commands continue to be invokable
> 
> Maybe s/IOCTL/ioctl(2)/ ?

ioctl(2) is already used in the previous sentence, so it might be too
much?

> 
> > +independent of the
> > +.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> > +right:
> > +.RS
> > +.IP \[bu] 3
> > +IOCTL commands targeting file descriptors
> > +.RB ( FIOCLEX ,
> > +.BR FIONCLEX ),
> > +.IP \[bu]
> > +IOCTL commands targeting file descriptions
> > +.RB ( FIONBIO ,
> > +.BR FIOASYNC ),
> > +.IP \[bu]
> > +IOCTL commands targeting file systems
> > +.RB ( FIFREEZE ,
> > +.BR FITHAW ,
> > +.BR FIGETBSZ ,
> > +.BR FS_IOC_GETFSUUID ,
> > +.BR FS_IOC_GETFSSYSFSPATH )
> > +.IP \[bu]
> > +Some IOCTL commands which do not make sense when used with devices, but
> > +whose implementations are safe and return the right error codes
> > +.RB ( FS_IOC_FIEMAP ,
> > +.BR FICLONE ,
> > +.BR FICLONERANGE ,
> > +.BR FIDEDUPERANGE )
> > +.RE
> > +.IP
> > +This access right is available since the fifth version of the Landlock ABI.
> >  .\"
> >  .SS Network flags
> >  These flags enable to restrict a sandboxed process
> > @@ -355,6 +399,8 @@ _	_	_
> >  _	_	_
> >  4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
> >  \^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
> > +_	_	_
> > +5	6.10	LANDLOCK_ACCESS_FS_IOCTL_DEV
> >  .TE
> >  .P
> >  Users should use the Landlock ABI version rather than the kernel version
> > @@ -405,7 +451,6 @@ accessible through these system call families:
> >  .BR chown (2),
> >  .BR setxattr (2),
> >  .BR utime (2),
> > -.BR ioctl (2),
> >  .BR fcntl (2),
> >  .BR access (2).
> >  Future Landlock evolutions will enable to restrict them.
> > @@ -440,7 +485,8 @@ attr.handled_access_fs =
> >          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> >          LANDLOCK_ACCESS_FS_MAKE_SYM |
> >          LANDLOCK_ACCESS_FS_REFER |
> > -        LANDLOCK_ACCESS_FS_TRUNCATE;
> > +        LANDLOCK_ACCESS_FS_TRUNCATE |;
> 
> s/;//
> 
> right?

Correct

> 
> > +        LANDLOCK_ACCESS_FS_IOCTL_DEV;
> >  .EE
> >  .in
> >  .P
> > @@ -459,6 +505,7 @@ __u64 landlock_fs_access_rights[] = {
> >      (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
> >      (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
> >      (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
> > +    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
> >  };
> >  \&
> >  int abi = landlock_create_ruleset(NULL, 0,
> > -- 
> > 2.45.2.993.g49e7a77208-goog
> > 
> > 
> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



