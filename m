Return-Path: <linux-man+bounces-452-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D60708596CE
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 13:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 306DEB2124B
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 12:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7A463407;
	Sun, 18 Feb 2024 12:00:48 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from gnu.wildebeest.org (gnu.wildebeest.org [45.83.234.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3769E4EB55
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 12:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.83.234.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708257648; cv=none; b=rXdX76ImlXe+dXc6i2drVW8ur+aSV1+3Hcikq1QbwLnzIAeV7CcHVARrXUxI6D/YBdaiTBBJmyXKa+PHJQcnczm5zL6Cao9iqi+hVTINOFYOBK+d2+Cx0aL4FdJx5pu5YjPBsa+h/wcDEvnMCb9/wAW09n6dVF4PQsQehbOdljg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708257648; c=relaxed/simple;
	bh=PVeTk/GiRYMaqthMv2aXjQ3q39UbNFvKgPDgBLzFvkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bUMzdHd8NdofMN01hfv54OchwG4sBwnca7AIMarHM0xhJ52opK/fl5bUz4shO8ytYf0Kl8VBIZfSaTrQ/u5HoaAgkYy4iTVYfKrOLFtebqV5xfJwa4GDJM7vk2sjzY94puzc4OQhG8H83kBPjYarXgmMDoRUpDsiGn1bfVR1kfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org; spf=pass smtp.mailfrom=klomp.org; arc=none smtp.client-ip=45.83.234.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=klomp.org
Received: by gnu.wildebeest.org (Postfix, from userid 1000)
	id D196C30003D0; Sun, 18 Feb 2024 13:00:35 +0100 (CET)
Date: Sun, 18 Feb 2024 13:00:35 +0100
From: Mark Wielaard <mark@klomp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?iso-8859-1?Q?H=E1jkov=E1?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <20240218120035.GE16832@gnu.wildebeest.org>
References: <20240212120704.1638500-1-mark@klomp.org>
 <ZdFY3PwhYhhIlUIg@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZdFY3PwhYhhIlUIg@debian>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi Alejandro,

On Sun, Feb 18, 2024 at 02:09:48AM +0100, Alejandro Colomar wrote:
> On Mon, Feb 12, 2024 at 01:07:04PM +0100, Mark Wielaard wrote:
> > close_range is defined in unistd.h when _GNU_SOURCE is defined.
> > The linux/close_range.h include file only defines the (linux specific)
> > flags constants. The flags argument is an int, not an unsigned int, in
> > the glibc wrapper. Use the close_range library call in the example code
> > instead of syscall.
> > 
> > Fixes: 71a62d6c3c56 ("close_range.2: Glibc added a wrapper recently")
> > Fixes: c2356ba085ed ("close_range.2: Glibc 2.34 has added a close_range() wrapper")
> > 
> > Reported-by: Alexandra Hájková <ahajkova@redhat.com>
> > Signed-off-by: Mark Wielaard <mark@klomp.org>
> 
> Thanks for the patch!  I've tweaked it a little bit, and applied it:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=9dc4cba62c1d19ff3aa02e062e4a0c03f5299182>

Thanks.

Note that there is now one line which is > 80 chars.
You can fix that using this from the original fix,
that splits and indents the comment on two lines:

> > +.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANGE_* "
> > +.BR "" "                                  constants */"

Cheers,

Mark

