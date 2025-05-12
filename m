Return-Path: <linux-man+bounces-2911-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9F2AB443F
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 21:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE8D916C88B
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 19:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF9814F117;
	Mon, 12 May 2025 19:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="RVc9/aAK";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="wwpk5r4C"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C3D297120
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 19:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747076626; cv=none; b=R7xbW/z1gno7Lh5DEkTHhUfY0AviDDVAdEO6SXsPCU1fvZmRr50rOIHU62NvWvtP0ZyPN/mzqgfqomwXXjgplWDueQAJ/HQnJtMPjcuCt8zDKHRKdNcdCV4+bL1MxsRMi9jPk5XgFHyVSZmI+1VynxWuR63Sy5wgpQA8iD1C7y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747076626; c=relaxed/simple;
	bh=ZGGmxl/yJUxOz06Z3zlDuFBX6gp/GalusQi59i+MW8Q=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=qL8EnwIbBzfXRmp5rP4TaCYPOjPbTha9/iR7vFqJXrKCwH1HdL/GU9uWUyGU1oKpyUldCZpWorEv6GslkjoGf5amI8KFkPn728ZrRFqg9Xti3ZOrhdNUwrY6YMTt+te0h6xM39FPphzD0LsEPt1r7BuKIIu58KzyEOxZnC8wkyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=RVc9/aAK; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=wwpk5r4C; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1747076623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ecCpkYXN4e5qt/Io9xkDVVZ1HU3yxz625iXLWNpFBsA=;
	b=RVc9/aAKZFljxh7VKHrlcxXsuh+rmb6SyM2MZOiEhkotMBvRpYhwcQYf0o93FcEPW0ZT/d
	XDHuJ03PdWrS4M6xR95LplkssdcveH5u47xm+tap/CQcfeEXspewVR450mizsxWbHEsXXY
	OAH2SZMHEZiDIf3ZYomBLuzgU/dgPTz91+uF9HuMepUMlhLAoQZe82fI7JO418LClBTiU4
	k6f6n9YRfYSda22VPtipEcMWGh7EYHCnVzoKiBORfrGjg5QIyLCpjtFZI02qU9tMDwZsBQ
	zTYYH+lC7zzTGBbb94+dNHaKedUhAPX/tSrcFfN+1Nn7mLu00Tcd1qAI7Ua8jQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1747076623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ecCpkYXN4e5qt/Io9xkDVVZ1HU3yxz625iXLWNpFBsA=;
	b=wwpk5r4C6Q38lw+vvEJhrxcjq/+lAqtaiskFMUsyCK8kpzff3cYyO6yZOzkttdY9+TINMy
	i9/C/3c3ac72fIAQ==
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, "G. Branden Robinson"
 <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
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
Date: Mon, 12 May 2025 21:03:42 +0200
Message-ID: <87wmalk5wx.ffs@tglx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri, May 09 2025 at 14:54, Alejandro Colomar wrote:

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

Acked-by: Thomas Gleixner <tglx@linutronix.de>

