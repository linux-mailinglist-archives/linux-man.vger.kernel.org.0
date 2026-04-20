Return-Path: <linux-man+bounces-5348-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNsIEM395WlEqAEAu9opvQ
	(envelope-from <linux-man+bounces-5348-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 12:19:57 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B446C4294A6
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 12:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A88713058DFC
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 10:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC9A939657C;
	Mon, 20 Apr 2026 10:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="NZjG+EJS"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E0F13D539
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 10:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776680100; cv=none; b=nJE8Okb5Lhdq53u7Cy3NYBzROUmrPcyKdGP0TwZWYCxK6B5nwW3CSMpMw4jsjQlGS0GUIwAddKCmIXMXC9x3uB7mFntp01u6xu4R4iX6ARriikYMBC/gzcCD+1UfUM6qVs/9hFG6CV6MVvmTRHhm7HR+ln46NksEtUF+CbQSvKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776680100; c=relaxed/simple;
	bh=IU8mn6EfGBoEjBk1txI8xGFdUNtX2/Njo+AOR/VTGTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JuF/+3D+5RyJQ8TGVtkO9czhDMF0ykJIlpkpcw26RTFhoECUe9CblYltwRfphx4ZvfYisxPSyH3J56jJX2R52ZlI7OFkoJN0lNH3O6fi46FC7B37QTy/+zbk9y/A1u18s0/Ju5tOtLB5mwVVJNRa6z5Rxflm1iqTZPOsU/tGWu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=NZjG+EJS; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=hBLw9Zd0fXFmrIF4mfXt2Xca5E0kP7RsXaYNcZZvvEM=; b=NZjG+EJSj/K/6l4P+z/BHqgKa6
	2AgbAWlxeoCxG6XDVPrp/6L8GG/i/uOdE3KXhGBLPZr4f5O1v51JWPNxylGRhDwswGFSkLPR7/FpM
	aYBkFS3QPaSA+lN5eRepWssCLxxzXDEF/a35C4UQh8s+/Sbn5vIzlTE+NwwK2NWbJRTtZXkED2WkG
	vF0vOis9d/NOH1TIbYyyC7yf/Vxie7nhNfnop7GKaXlQgNRcr/Olr2NKabAnFcLNiUsw2a5rhsfUe
	phozDb6jDGMhBJdTEL/avXv8Jc8frO//dMomdXKyJmphetKnlB9hQHqcd7urLmjpW8p6Lh/9b8J9V
	zUGh6QYw==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <cjwatson@debian.org>)
	id 1wEleZ-0000rE-2h;
	Mon, 20 Apr 2026 10:14:56 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <cjwatson@debian.org>)
	id 1wEleX-00000003X85-1e53;
	Mon, 20 Apr 2026 11:14:53 +0100
Date: Mon, 20 Apr 2026 11:14:52 +0100
From: Colin Watson <cjwatson@debian.org>
To: Russ Allbery <rra@debian.org>
Cc: Alejandro Colomar <alx@kernel.org>, debian-policy@lists.debian.org,
	"Dr. Tobias Quathamer" <toddy@debian.org>,
	linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: Stop compressing manual pages
Message-ID: <aeX8nCySpQhTBw8j@riva.ucam.org>
Mail-Followup-To: Russ Allbery <rra@debian.org>,
	Alejandro Colomar <alx@kernel.org>, debian-policy@lists.debian.org,
	"Dr. Tobias Quathamer" <toddy@debian.org>,
	linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	"G. Branden Robinson" <branden@debian.org>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
 <aU1D0aL00gy1V-NX@devuan>
 <87ms364c05.fsf@hope.eyrie.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ms364c05.fsf@hope.eyrie.org>
X-Debian-User: cjwatson
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[debian.org:s=smtpauto.stravinsky];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[debian.org:+];
	TAGGED_FROM(0.00)[bounces-5348-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cjwatson@debian.org,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riva.ucam.org:mid]
X-Rspamd-Queue-Id: B446C4294A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Dec 25, 2025 at 11:06:34AM -0800, Russ Allbery wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > On Thu, Dec 25, 2025 at 02:47:33PM +0100, Dr. Tobias Quathamer wrote:
> >> thanks for your bug report and the provided statistics. I haven't thought
> >> about this up until now, because it violates Debian Policy. Quoting from
> >> Section 12.1
> >> (https://www.debian.org/doc/debian-policy/ch-docs.html#manual-pages):
> >> 
> >> "Manual pages should be installed compressed using gzip -9."
> 
> [...]
> 
> > Yup, I'd like that policy to change.  I've added debian-policy@ to this
> > mail (and also linux-man@).
> 
> Colin, do you have an opinion on this as the man-db maintainer? The
> software you maintain is probably the primary consumer by a significant
> margin of the installed manual pages.
> 
> The rationale in Debian for compressing documentation in general is for
> embedded systems and other small installations, and it applies to just
> about anything that can be safely compressed (manual pages are only one
> example). But this rule also predates such facilities as the nodoc build
> profile, and is several decades old and thus predates the growth in
> storage size even in small embedded environments that has significantly
> outpaced the size of text-adjacent documents. I would definitely want to
> get feedback from embedded folks before changing this rule, but at least
> at first glance it sounds like a reasonable request worth considering.

Sorry for being slow to reply to this.

It's not something I feel as strongly about as Alejandro: in man-db 
we've already paid most of the costs (in terms of software complexity) 
of making compressed manual pages work well, and we'll have to keep that 
code around for the foreseeable future no matter what.  But it's true 
that there are continuing annoyances with ad-hoc shell pipelines.

Let's put it this way: as man-db maintainer, I have no objection to 
recommending uncompressed manual pages.  Sort of +0 or +0.5.  I 
definitely agree that embedded folks ought to be consulted, if they 
aren't already simply excluding manual pages entirely.

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

