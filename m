Return-Path: <linux-man+bounces-2885-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB86AB16FE
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 16:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48E8D1C43364
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FA42957D2;
	Fri,  9 May 2025 14:15:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCCB629550F
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 14:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800103; cv=none; b=gIGz589ljfp6OY5uMsCqrWw9feMizpBZOlKMT9XBn+ozGQcrTl6dDXqvigkACDKAGPJDH47kGchkHyR3f/VwFbPBHiFZGNV2JdCGzEFWihcktTtbWYtpKiYqYRNfvCe0QEtNykamCcXWehvgEqD+4HYydYrh6V+Pds0JcEBvwio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800103; c=relaxed/simple;
	bh=OUnr8UyoUTHAD3Iy56byT2GgB7O6xWHygetCpzkTVGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BpNLgj4oXrRHRiTylCczkOKEsyvXu3uh1bt8a1MQoTVpQabKTCN6iFJnbm5swgp61REwUQjHgsXgNfRxlFTIjbsxKdngERDIHSFzsFVAiGPfjMzIXAQrnA+uIhDKSRC5LbvJ2QtOkW81PtpBO5XaT6wpJdNb/DF1H1dY/v42ryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 237231595;
	Fri,  9 May 2025 07:14:50 -0700 (PDT)
Received: from e133380.arm.com (e133380.arm.com [10.1.197.52])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41E6A3F5A1;
	Fri,  9 May 2025 07:15:00 -0700 (PDT)
Date: Fri, 9 May 2025 15:14:57 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <aB4N4eD1gbZi6Cao@e133380.arm.com>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>

Hi,

On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> Hi all,
> 
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> 
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?


Should the one-line replacement statement in each file refer back to
the CREDITS file?

Also, nothing seems to say that anyone listed in CREDITS actually
contributed copyrightable material to the project (as opposed to, say,
review effort, moral support or free pizza).

Renaming the CREDITS file to AUTHORS and/or clarifying this in a brief
top-level LICENSE / COPYING file might make the meaning clearer?


Either way, ack for the changes affecting me.

[...]

Cheers
---Dave

