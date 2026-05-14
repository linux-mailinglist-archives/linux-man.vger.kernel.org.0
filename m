Return-Path: <linux-man+bounces-5506-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EI4/BNRABmqmggIAu9opvQ
	(envelope-from <linux-man+bounces-5506-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:38:28 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CEF5471CC
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:38:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 706E5300623F
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 21:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191B73C9890;
	Thu, 14 May 2026 21:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kolttonen.fi header.i=@kolttonen.fi header.b="lPF9zN3V"
X-Original-To: linux-man@vger.kernel.org
Received: from cloud35.hostingpalvelu.fi (mail35.hostingpalvelu.fi [31.217.192.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5C93A9D9B
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 21:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=31.217.192.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778794701; cv=none; b=S2Itv3SMzBCtzY/K395+5aAB1TY+e81cjdoOBkcRX2JIbS5e6idQdYtvaloGmW+5ltaL0t4tc0skuTaidqwm7dRH2k+/fExQy4GD8Z7B7uaa10Bn1bwzrDyajumLac/lT4BMTb3RvX0p6CrR05ojyTQfV0LP4cteXK093E9G5LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778794701; c=relaxed/simple;
	bh=zUlVoVE78juE7oNtSA7DajUJpvgs8ReFuu6rCnMKm+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dK8uRrYq0zOn6z1kXkgzOQWx6bLKDWIlyad7FKk0Fb0PHsKPt9l4bYhciBvmCwtrkZJyNQZQ3EwhgIsSDE58klY95HLr5VQGAxFd9AGUB1d824ZPkQrwuR+o6V9C36qmwqeVTbY1c4xnS+sYUe0HEJn7GDwF93qoRrpMxtSIw5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kolttonen.fi; spf=pass smtp.mailfrom=kolttonen.fi; dkim=pass (2048-bit key) header.d=kolttonen.fi header.i=@kolttonen.fi header.b=lPF9zN3V; arc=none smtp.client-ip=31.217.192.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kolttonen.fi
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kolttonen.fi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kolttonen.fi; s=default; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nqBdGzc+VEWf88PWNWQWhlxxJlin9eHvlQ68kTwxbuI=; b=lPF9zN3VOzvyswASMHL/f0vhN3
	rpWS+f0wEkaH3zTGjkvjrolg1A/tuRnabZXSiCj9MJ+8YtilzCsvsAtpUIZOTfatObHeS++xZoSyB
	CtafJ6dUKColCKUFwupPVsvCVpI+N/1N/8kJTODmDZp9FbFcCYyCPcV1F/mJwlvMvF8CsmEh3tVCo
	o7yf4xyJEPuE/f8LrtLzqD+GraIvQILoLkoeoptMG+L/Lkv5aPkaKv1Cmf76CCH3/3p1gi7jH8BmB
	PKEjt/hCq6jchfT2COsFD0nf8CUO+5oyU188SAFwgVZMDt52+Sjg8BPd1cMLjaT/sVAOt0u5MD7q5
	6yRJi04g==;
Received: from 176-93-144-62.bb.dnainternet.fi ([176.93.144.62]:11725 helo=14-5A-FC-31-E8-67)
	by cloud35.hostingpalvelu.fi with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.2)
	(envelope-from <kalevi@kolttonen.fi>)
	id 1wNdl9-0000000EAjX-2w7i;
	Fri, 15 May 2026 00:38:18 +0300
Date: Fri, 15 May 2026 00:38:16 +0300
From: Kalevi Kolttonen <kalevi@kolttonen.fi>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: reallocarray() is now part of POSIX
Message-ID: <agZAyPqsPJ4khpp0@14-5A-FC-31-E8-67>
References: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
 <agY88e74EJ72Vli7@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <agY88e74EJ72Vli7@devuan>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cloud35.hostingpalvelu.fi
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kolttonen.fi
X-Get-Message-Sender-Via: cloud35.hostingpalvelu.fi: authenticated_id: kalevi@kolttonen.fi
X-Authenticated-Sender: cloud35.hostingpalvelu.fi: kalevi@kolttonen.fi
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Queue-Id: 08CEF5471CC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[kolttonen.fi:s=default];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[kolttonen.fi];
	TAGGED_FROM(0.00)[bounces-5506-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_AS(0.00)[kalevi@kolttonen.fi];
	HAS_X_GMSV(0.00)[kalevi@kolttonen.fi];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kolttonen.fi:-];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FROM_NEQ_ENVFROM(0.00)[kalevi@kolttonen.fi,linux-man@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_X_ANTIABUSE(0.00)[];
	NEURAL_SPAM(0.00)[0.122];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Thu, May 14, 2026 at 11:29:40PM +0200, Alejandro Colomar wrote:
> You probably have an old version of the manual page.  The current manual
> page documents POSIX.1-2024:

You are quite right! Fedora 44 has man-pages 6.13-3. I am very
surprised that they do not ship the latest man pages because
usually the latest Fedora is well up-to-date.

Thanks for the info! I guess I should contact Fedora about this.

br,
KK

