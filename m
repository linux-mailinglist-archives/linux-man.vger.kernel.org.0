Return-Path: <linux-man+bounces-4817-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC03D31FAC
	for <lists+linux-man@lfdr.de>; Fri, 16 Jan 2026 14:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 207F33039991
	for <lists+linux-man@lfdr.de>; Fri, 16 Jan 2026 13:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5ED284671;
	Fri, 16 Jan 2026 13:38:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CCA20FAAB
	for <linux-man@vger.kernel.org>; Fri, 16 Jan 2026 13:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768570695; cv=none; b=hzsupwVuS2iRtQEdw6T7amOkViDHFAEAjJEXO5N1LQpRY4TTWJk5j+2xwMNOFReaba35mkyaUJhkLiTcjg1+9xqkoOgjXkBKAgw5sXKQEk9lwguM9V/Wq4SdEnlwC8SeL2muiqEpJSsX5x8t35ys1WEKLRgwAhmjtHU4SPD4u1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768570695; c=relaxed/simple;
	bh=rMLvrPNHpotlovmUZrr3rCfD/DFuTD9VbPobRzV+oC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bCxe3zRqVVI16MobRAQZnuJGG6jCy8MVxAHhdWAN8z1kyc9iUzLFt+ku8tGzFSv4VkFUfdnPDlynrvzSVnnQerGP0v9i1C1jkQDiBFrQJlfM6RplHo9P4OIe+wjGd9K6ewDejftVnBRrQl4pU/9i0SSZTe0yt8IqcGmf7O6HeuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AC4C1515;
	Fri, 16 Jan 2026 05:38:06 -0800 (PST)
Received: from arm.com (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B5A63F59E;
	Fri, 16 Jan 2026 05:38:11 -0800 (PST)
Date: Fri, 16 Jan 2026 13:38:09 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florent Revest <revest@chromium.org>,
	Helge Kreutzmann <debian@helgefjell.de>,
	mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aWo_QapqzcfksqQD@arm.com>
References: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
 <aU2jhFY0ueqVHUJQ@devuan>
 <aWoOt_PCGehF1f_G@arm.com>
 <aWowCOHKdluUVvfl@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWowCOHKdluUVvfl@devuan>

On Fri, Jan 16, 2026 at 01:39:08PM +0100, Alejandro Colomar wrote:
> I've applied the following patch:
> 
> 	commit 6352d57d7324d8c6fee2d335f103d8755ea5a620
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Fri Jan 16 13:37:28 2026 +0100
> 
> 	    man/man2const/PR_SET_MDWE.2const: wfix
> 	    
> 	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
> 	    Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> 	    Cc: Florent Revest <revest@chromium.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 	diff --git a/man/man2const/PR_SET_MDWE.2const b/man/man2const/PR_SET_MDWE.2const
> 	index db75b1873..4749ea5be 100644
> 	--- a/man/man2const/PR_SET_MDWE.2const
> 	+++ b/man/man2const/PR_SET_MDWE.2const
> 	@@ -26,7 +26,7 @@ .SH DESCRIPTION
> 	 must be a bit mask of:
> 	 .TP
> 	 .B PR_MDWE_REFUSE_EXEC_GAIN
> 	-New memory mapping protections can't be writable and executable.
> 	+New memory mappings can't be writable and executable.
> 	 Non-executable mappings can't become executable.
> 	 .TP
> 	 .B PR_MDWE_NO_INHERIT " (since Linux 6.6)"

Looks good. Thanks!

-- 
Catalin

