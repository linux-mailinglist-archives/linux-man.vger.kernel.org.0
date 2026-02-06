Return-Path: <linux-man+bounces-5044-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDY1NkoShmk1JgQAu9opvQ
	(envelope-from <linux-man+bounces-5044-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 06 Feb 2026 17:09:46 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F03471000F5
	for <lists+linux-man@lfdr.de>; Fri, 06 Feb 2026 17:09:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 419AA30074EF
	for <lists+linux-man@lfdr.de>; Fri,  6 Feb 2026 16:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D18E3033DD;
	Fri,  6 Feb 2026 16:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.cyber.gouv.fr header.i=@oss.cyber.gouv.fr header.b="hcb57Jzy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.oss.cyber.gouv.fr (oss.cyber.gouv.fr [51.159.188.251])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8872C15AC;
	Fri,  6 Feb 2026 16:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.159.188.251
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770394125; cv=none; b=M9j6pDZlGjmTWOMzO6acbJ+JRIhxz1hIVglZy2xdtTcvQ1q5wBnd+2TKUUgPpewWWIFbqBpxllgbBUk8b/EMZ1OkEoN7EO+kUHJKVLbdd6tI/XehYjU1/jI/is51KRMCTQDbKFnOXzEm7aXQIa/3MVyqyDKfN5PJC+p48gZPZWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770394125; c=relaxed/simple;
	bh=pYorzQ6WR3pdElmoti5Nq0mMVeyKUaFJ5LBgYuekUHo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gF8Z4sxtzMy3gJdRBMUBSiPbFGKH8c6+w/OLbSESZ4GrEcn+UeCnh1UHaZlKwn8szlMEFLa59ZyfJad9aHdXA2Ie2aZusjvq5oYVwiJZQYu3RfjQl9A2iJN2bFEpaGqVQHHN7Q1A42eKK5KAlRTC+9N6hAwoE8PUjlkcZ1+kcNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.cyber.gouv.fr; spf=pass smtp.mailfrom=oss.cyber.gouv.fr; dkim=pass (2048-bit key) header.d=oss.cyber.gouv.fr header.i=@oss.cyber.gouv.fr header.b=hcb57Jzy; arc=none smtp.client-ip=51.159.188.251
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.cyber.gouv.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.cyber.gouv.fr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=oss.cyber.gouv.fr; s=default; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SGo12evYP80k+/VjL5uSB1A6g/pgl4XcMib+Qt1cnEI=; b=hcb57JzycP80w15yxk6FoCnvij
	kfdw0nT149ZcZ/MbdwC4W05BoDUDn4SU5pWkorGTOjfQfxNGHBKQLdiAU6kiqAFbcpkJ3uiA/08Az
	NkET6y9ugmiQgWZr1gNaeR/5a2OZ5nmzJMONTDVVwl0WhWkzZbgBMZKNkrBcnZT6CziDHd61x1HnX
	RhKIqzKNd+brmftiA5koUS+v1JmmQo+VwwEZFUkHHEg7XE/nA0f6XyzUee1weCL6haX5bV/h9e/0z
	IOh/hiBbK3LwNHiNgARSdmspWZAunyuz4tasdsWSyqEoxzZV3tB5GoJtcKiH5ALXNrVDJmvj+bBal
	On1jQh6g==;
Received: from laubervilliers-658-1-215-187.w90-63.abo.wanadoo.fr ([90.63.246.187]:16475 helo=archlinux)
	by pf-012.whm.fr-par.scw.cloud with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <nicolas.bouchinet@oss.cyber.gouv.fr>)
	id 1voONr-0000000ARZi-492e;
	Fri, 06 Feb 2026 17:08:37 +0100
Date: Fri, 6 Feb 2026 17:08:35 +0100
From: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>
To: Xiu Jianfeng <xiujianfeng@huawei.com>
Cc: Alyssa Ross <hi@alyssa.is>, Alejandro Colomar <alx@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, David Howells <dhowells@redhat.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYYP23WUyydsMGyx@archlinux>
References: <20260203195001.20131-1-hi@alyssa.is>
 <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa62e24c-537e-4141-9507-37cd0af19dfc@huawei.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[oss.cyber.gouv.fr : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5044-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_GMSV(0.00)[nicolas.bouchinet@oss.cyber.gouv.fr];
	HAS_X_AS(0.00)[nicolas.bouchinet@oss.cyber.gouv.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[alyssa.is,kernel.org,gmx.de,redhat.com,vger.kernel.org];
	DKIM_TRACE(0.00)[oss.cyber.gouv.fr:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.bouchinet@oss.cyber.gouv.fr,linux-man@vger.kernel.org];
	HAS_X_SOURCE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alyssa.is:email,archlinux.org:url,huawei.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,cyber.gouv.fr:email]
X-Rspamd-Queue-Id: F03471000F5
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 07:48:02PM +0800, Xiu Jianfeng wrote:
> On 2/4/2026 3:50 AM, Alyssa Ross wrote:
> > This is true for Fedora, where this page was sourced from, but I don't
> > believe it has ever been true for the mainline kernel, because Linus
> > rejected it.
> 
> Yeah, I also found this issue not long ago, but I haven't had time to submit
> a fix patch yet.
> 
> > 
> > Link: https://bbs.archlinux.org/viewtopic.php?pid=2088704#p2088704
> > Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqOzzMufBoovXVnfPw@mail.gmail.com/
> > Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel Lockdown feature")
> > Signed-off-by: Alyssa Ross <hi@alyssa.is>
> 
> I am not sure if appropriate to add my ACK here, if needed, feel free to
> add:
> 
> Acked-by: Xiu Jianfeng <xiujianfeng@huawei.com>
> 

You can also add mine too :

Acked-by: Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>

Thank you in advance,

Nicolas

> > ---
> >   man/man7/kernel_lockdown.7 | 3 ---
> >   1 file changed, 3 deletions(-)
> > 
> > diff --git a/man/man7/kernel_lockdown.7 b/man/man7/kernel_lockdown.7
> > index 5090484ea..5986c8f01 100644
> > --- a/man/man7/kernel_lockdown.7
> > +++ b/man/man7/kernel_lockdown.7
> > @@ -23,9 +23,6 @@ Lockdown: X: Y is restricted, see man kernel_lockdown.7
> >   .in
> >   .P
> >   where X indicates the process name and Y indicates what is restricted.
> > -.P
> > -On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
> > -if the system boots in EFI Secure Boot mode.
> >   .\"
> >   .SS Coverage
> >   When lockdown is in effect, a number of features are disabled or have their
> 

