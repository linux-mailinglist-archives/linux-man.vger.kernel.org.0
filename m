Return-Path: <linux-man+bounces-426-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A23850BA3
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 22:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BBC91C20A99
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 21:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD6C5F479;
	Sun, 11 Feb 2024 21:25:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from gnu.wildebeest.org (gnu.wildebeest.org [45.83.234.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC055F470
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 21:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.83.234.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686703; cv=none; b=SXECTRnuVJaS/VAgoXKC1T/Q4vC+ZJN3dgWpk/2VKBtKG1c3nOPqDx7iJrk25e7fckO0vMo3CaAbQIFgF492me9aeLAfuh58O/114nDs+7sqZm/hpm/HjNwcrIbe30yVookouBh+nqw978Vbz8N+wqIiagxxKX2G8I6UvEQ63U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686703; c=relaxed/simple;
	bh=ZeiwehUPUeLMiidwZnZF+Fe6FmmQDLM8gKVSOKKcvxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cL+NGKLryfsBVawW+05AFzwobRtNYakJSKS4PtstmRYT/eyD7Y41JTY+Ymv7jqxhVcBZ/PUlrNBGPzvreCuWhayvMAYgoYrmfbW/xxW46eMoNsKd+5NDiixYPyKc7ceIkEsLraK1v22MfxbLtbdCpfb2/pAaSnesNi/z0U3QCl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org; spf=pass smtp.mailfrom=klomp.org; arc=none smtp.client-ip=45.83.234.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=klomp.org
Received: by gnu.wildebeest.org (Postfix, from userid 1000)
	id CE07C300047C; Sun, 11 Feb 2024 22:24:50 +0100 (CET)
Date: Sun, 11 Feb 2024 22:24:50 +0100
From: Mark Wielaard <mark@klomp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?iso-8859-1?Q?H=E1jkov=E1?= <ahajkova@redhat.com>
Subject: Re: [PATCH] close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS
Message-ID: <20240211212450.GE21691@gnu.wildebeest.org>
References: <20240207101706.224655-1-mark@klomp.org>
 <ZckW2Kpxove_AcyG@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZckW2Kpxove_AcyG@debian>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi Alejandro,

On Sun, Feb 11, 2024 at 07:49:53PM +0100, Alejandro Colomar wrote:
> It seems this page was written when there was still no wrapper in libc.
> 
> But I see that Michael and I did mention there's now a wrapper in glibc:
> [...] 
> Both of those commits forgot to update the SYNOPSIS.  So, please add the
> following tags to your commit message:
> 
> Fixes: 71a62d6c3c56 ("close_range.2: Glibc added a wrapper recently")
> Fixes: c2356ba085ed ("close_range.2: Glibc 2.34 has added a close_range() wrapper")

I missed thos, will add the Fixes: to v2.

> >  .P
> >  .BI "int close_range(unsigned int " first ", unsigned int " last ,
> >  .BI "                unsigned int " flags );
> 
> And I notice the glibc wrapper is slightly different from the Linux
> kernel system call:
> 
> 	$ grepc close_range /usr/include/
> 	/usr/include/unistd.h:extern int close_range (unsigned int __fd, unsigned int __max_fd,
> 				int __flags) __THROW;
> 
> 
> 	$ grepc -tfl close_range ~/src/linux/linux/master/
> 	/home/alx/src/linux/linux/master/include/linux/syscalls.h:asmlinkage long sys_close_range(unsigned int fd, unsigned int max_fd,
> 					unsigned int flags);
> 	/home/alx/src/linux/linux/master/fs/open.c:SYSCALL_DEFINE3(close_range, unsigned int, fd, unsigned int, max_fd,
> 			unsigned int, flags)
> 	{
> 		return __close_range(fd, max_fd, flags);
> 	}
> 
> The third parameter is an 'int' in glibc.  Please also update that.

Will do. I see freebsd also uses int for flags.

I also noted just now that the example code still uses
syscall(SYS_close_range, 3, ~0U, 0)
even though it defines _GNU_SOURCE and includes unistd.h.
Will also fix that for v2.

Cheers,

Mark

