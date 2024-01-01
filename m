Return-Path: <linux-man+bounces-335-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7450882144A
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 16:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61CCAB20D6E
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 15:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B0536108;
	Mon,  1 Jan 2024 15:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cs.unibo.it header.i=@cs.unibo.it header.b="HtWXd0v+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.virtlab.unibo.it (mail.virtlab.unibo.it [130.136.161.50])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBCEE8BE5
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 15:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.unibo.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.unibo.it
Received: from cs.unibo.it (94-33-52-139.static.clienti.tiscali.it [94.33.52.139])
	by mail.virtlab.unibo.it (Postfix) with ESMTPSA id 23CE11C0038;
	Mon,  1 Jan 2024 16:48:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cs.unibo.it;
	s=virtlab; t=1704124119;
	bh=pHudy36Chv4skR38yrsgc8e4EHxfZmNpISwS35RHH9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HtWXd0v+lqi4YUe2cB31s+WSJ9+bFlws/uDPc66U3UAKo7vRZXl+/Sn0U4O/YCmmm
	 UXPC3ikarAVycWokRsCUrkt1Sw/XNVR5//evMcNoYpGgGstF80UCAaCNE/VCLHtxTW
	 mvEDfbf7kf89zrYupiVpQp7jmq0zoFNmztQ1VTAo=
Date: Mon, 1 Jan 2024 16:48:37 +0100
From: Renzo Davoli <renzo@cs.unibo.it>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZZLe1Zg60z2Y0ON_@cs.unibo.it>
References: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
 <ZXRWyMQh2_uV_U_1@debian>
 <ZXSXwZMWbojebpH1@cs.unibo.it>
 <ZZKled8QpdxwC90B@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZZKled8QpdxwC90B@debian>

Hi Alex,
	great. thank you.
I wish you have a happy new year to you, too.

	renzo

On Mon, Jan 01, 2024 at 12:43:53PM +0100, Alejandro Colomar wrote:
> [CCing again linux-man@]
> 
> Dear Renzo,
> 
> On Sat, Dec 09, 2023 at 05:37:21PM +0100, Renzo Davoli wrote:
> > Dear Alex,
> > 
> > On Sat, Dec 09, 2023 at 01:00:08PM +0100, Alejandro Colomar wrote:
> > > On Wed, Dec 06, 2023 at 12:04:07PM +0100, Renzo Davoli wrote:
> > > > utimensat and faccessat support the flag AT_EMPTY_PATH since Linux 5.8 but
> > > > this option is still missing in the man pages.
> > > Thanks for reporting that.  Would you mind preparing a patch updating
> > > the page?  If you need any help, just ask for it.
> > 
> > No problem. It is here attached. Let me know if it's okay.
> 
> Normally, you should send a patch with a commit message (as formatted by
> git-format-patch(1)).  However, I've written something based on your
> original mail, so you don't need to do it.  I also signed it with your
> name.
> 
> Patch applied here:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=26cdb3ebb2f6bd5a0c947bcf46e35b7c07759632>
> 
> Thanks!
> 
> Have a lovely year,
> Alex

