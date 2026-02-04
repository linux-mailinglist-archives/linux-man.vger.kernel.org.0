Return-Path: <linux-man+bounces-5027-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHCDCQcRg2kPhQMAu9opvQ
	(envelope-from <linux-man+bounces-5027-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 04 Feb 2026 10:27:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BC719E3D2F
	for <lists+linux-man@lfdr.de>; Wed, 04 Feb 2026 10:27:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0EFDD300644E
	for <lists+linux-man@lfdr.de>; Wed,  4 Feb 2026 09:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBD93A6418;
	Wed,  4 Feb 2026 09:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.cyber.gouv.fr header.i=@oss.cyber.gouv.fr header.b="C5l7KhXA"
X-Original-To: linux-man@vger.kernel.org
Received: from 251-188-159-51.instances.scw.cloud (unknown [51.159.188.251])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E962C3252;
	Wed,  4 Feb 2026 09:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.159.188.251
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770197252; cv=none; b=TpS346GB0krnadyknC/Elz6f+ZmI+WvoYiK2YMNTkBAbW32VgECn5jOaLgCmhdqaOyIq8iICz/3Zr0KTqtsDh5hqYX0991d0YGBnMJORsO0LqVJcUZuwWPgVWIygcAY3g828g3JD0nsmgHVHmXS8S8evXRUuLPuHSQMT6UpgF9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770197252; c=relaxed/simple;
	bh=X5hamC+evCcAKoA5x015FCCeBI3f+hELljSQ8F5ZxXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RS6yGsFikDjzuKGk1++iKDXYAM4uqxkHXX5yWv/M0FTWsKWX0Oq1ahAmyDW9/YCOzQnPXjwvGiDw6AXX2Nu9B1+tG/dNVIjX5ymmUovtRXXyX6TIP+5soDJUqyVlULyVIjVmBfo7KlchM6gZsr4rqbj72YV7UyJx0AUNB3FI+RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.cyber.gouv.fr; spf=pass smtp.mailfrom=oss.cyber.gouv.fr; dkim=pass (2048-bit key) header.d=oss.cyber.gouv.fr header.i=@oss.cyber.gouv.fr header.b=C5l7KhXA; arc=none smtp.client-ip=51.159.188.251
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.cyber.gouv.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.cyber.gouv.fr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=oss.cyber.gouv.fr; s=default; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KmT798fgfjCl2iPP8EbcgLaVOUdLYUcGiZDs0hORdyE=; b=C5l7KhXATNVlXt2GXvJRpl8eej
	GsBG+4h/vrZKCk/d2EjPvTpMPFNZ1Y/EmFdmJRxB3HOXJLKf3BCFzkOyiZrN+BmgPpZSoVpnugFtQ
	Zk4qeTaRO7Bn6NR7oQddH6cmG4vTC77y6T1M5+JVircSKkgK2fbSRhgd/RTD+LPJ4o0syAvR+0UU5
	jDX+6rSrUmwRT5kq400p4mzPw6Nhj3QuczY3hSyyNr54wjAV4xMCNmYce3Y5xalnjDjmobwtMesXS
	eFWnvzyiVzBTUpawwtGIjIgn/R6g2jD/KGDKdaWuNVz474BYbPlVK0+Dwhhjaah7Il7UZOjjxSBUa
	hnvalqvg==;
Received: from laubervilliers-658-1-215-187.w90-63.abo.wanadoo.fr ([90.63.246.187]:1442 helo=archlinux)
	by pf-012.whm.fr-par.scw.cloud with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <nicolas.bouchinet@oss.cyber.gouv.fr>)
	id 1vnYnU-0000000AtGg-2aZd;
	Wed, 04 Feb 2026 10:03:39 +0100
Date: Wed, 4 Feb 2026 10:03:37 +0100
From: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>
To: Alyssa Ross <hi@alyssa.is>
Cc: Alejandro Colomar <alx@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, David Howells <dhowells@redhat.com>, 
	Xiu Jianfeng <xiujianfeng@huawei.com>, linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYMKwyxXMmtBqvOS@archlinux>
References: <20260203195001.20131-1-hi@alyssa.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203195001.20131-1-hi@alyssa.is>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - pf-012.whm.fr-par.scw.cloud
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - oss.cyber.gouv.fr
X-Get-Message-Sender-Via: pf-012.whm.fr-par.scw.cloud: authenticated_id: nicolas.bouchinet@oss.cyber.gouv.fr
X-Authenticated-Sender: pf-012.whm.fr-par.scw.cloud: nicolas.bouchinet@oss.cyber.gouv.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[oss.cyber.gouv.fr:s=default];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[oss.cyber.gouv.fr : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5027-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_GMSV(0.00)[nicolas.bouchinet@oss.cyber.gouv.fr];
	HAS_X_AS(0.00)[nicolas.bouchinet@oss.cyber.gouv.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmx.de,redhat.com,huawei.com,vger.kernel.org];
	DKIM_TRACE(0.00)[oss.cyber.gouv.fr:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.bouchinet@oss.cyber.gouv.fr,linux-man@vger.kernel.org];
	HAS_X_SOURCE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alyssa.is:email]
X-Rspamd-Queue-Id: BC719E3D2F
X-Rspamd-Action: no action

Hi,

On Tue, Feb 03, 2026 at 08:50:01PM +0100, Alyssa Ross wrote:
> This is true for Fedora, where this page was sourced from, but I don't
> believe it has ever been true for the mainline kernel, because Linus
> rejected it.
> 
I confirm this has never been merged upstream.
Idealy we really need to rewrite Lockdown documentation, it has changed
a lot since it was first introduced.

> Link: https://bbs.archlinux.org/viewtopic.php?pid=2088704#p2088704
> Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqOzzMufBoovXVnfPw@mail.gmail.com/
> Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel Lockdown feature")
> Signed-off-by: Alyssa Ross <hi@alyssa.is>
> ---
>  man/man7/kernel_lockdown.7 | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/man/man7/kernel_lockdown.7 b/man/man7/kernel_lockdown.7
> index 5090484ea..5986c8f01 100644
> --- a/man/man7/kernel_lockdown.7
> +++ b/man/man7/kernel_lockdown.7
> @@ -23,9 +23,6 @@ Lockdown: X: Y is restricted, see man kernel_lockdown.7
>  .in
>  .P
>  where X indicates the process name and Y indicates what is restricted.
> -.P
> -On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
> -if the system boots in EFI Secure Boot mode.
>  .\"
>  .SS Coverage
>  When lockdown is in effect, a number of features are disabled or have their
> -- 
> 2.52.0

Best regards,

Nicolas

