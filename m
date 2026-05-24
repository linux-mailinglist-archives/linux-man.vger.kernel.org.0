Return-Path: <linux-man+bounces-5586-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHDzN4CbEmo51gYAu9opvQ
	(envelope-from <linux-man+bounces-5586-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2026 08:32:32 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 789795C1869
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2026 08:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE77530059BC
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2026 06:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1FF38D3E8;
	Sun, 24 May 2026 06:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkW/BTsR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBBE2066DE;
	Sun, 24 May 2026 06:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779604347; cv=none; b=lD9fJVJ9T0B4r7xB/xQM1wOGgOFTC2guvcJ90wuZkK5ihGVxWYEIS9I/uHRQO3JJ4op+NlCwr31Ef3kpT30czn/+abtGa4390bIBpT6QJH5lI6Nhmm875OQ/mWnyppEQhB9Czrpgaf72aB5v7W8cu2yuDbLXLr8kbhTCijywSzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779604347; c=relaxed/simple;
	bh=g20WPpVZ9KIN7rbySEoBKOQpCVMdL4V2ycrVRw+abEI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RxXNWmQvE/h/qndxIrv5fuNfUzBosw0volDc9Gs0Pq6NfS7DfIgkBdNb9IdySNto8HV8pEmA4F9xMUHoJjDxkxNt+kMv1UHhIciOmtAkWnTvNAXbAxm+DsBxCbeSpQR1jddGD+Pv6AC3KcE3ND1mTqVOczWfnyEgDAcqr4oMvc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkW/BTsR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B4051F000E9;
	Sun, 24 May 2026 06:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779604346;
	bh=zWtOiJuxeH/+e3Jcsrdi7jNThcpdTxQXGumirxf15nc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AkW/BTsRTiW5BVztshGqfK2t9rvxsAhno2rDSZ5CYNkjBgUKrrfI2ksfLydAEU0Bh
	 wduSw40cQWzS5nMx5Ne70i7Xs9yQug7APGkOzA7ABYptytJj7abghd+U5yI9ntngup
	 pr62clcslNBKiSS4FCrYaLWOhZnbtIQHDaNFJRQjncpuiYh9JaQRvHBbQJM+hfn7r9
	 RA3N3pUcAdJdtRIpP4/HYaUe0ntYSL7y5RGzUT+FfHhLy+fAKUyZuVLRKr6KAvihkY
	 NHP9eircNJ8gaM1F541+LA/8qE16l6yt8O0WJlG4Js7f14/CmhRq7qxPtzkPf4oyrl
	 6mGwZbiWmtkYg==
Date: Sun, 24 May 2026 09:32:15 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: akpm@linux-foundation.org, peterx@redhat.com, david@kernel.org,
	ljs@kernel.org, surenb@google.com, vbabka@kernel.org,
	Liam.Howlett@oracle.com, ziy@nvidia.com, corbet@lwn.net,
	skhan@linuxfoundation.org, seanjc@google.com, pbonzini@redhat.com,
	jthoughton@google.com, aarcange@redhat.com, sj@kernel.org,
	usama.arif@linux.dev, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kselftest@vger.kernel.org, kvm@vger.kernel.org,
	kernel-team@meta.com, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [PATCH v3 15/16] userfaultfd.2: Add read-write protect mode
Message-ID: <ahKbb3QGHaqmeL5W@kernel.org>
References: <20260522133857.552279-1-kirill@shutemov.name>
 <20260522133857.552279-16-kirill@shutemov.name>
 <ahGDbKr2u6sqoc3f@kernel.org>
 <ahJBTaobKD9XdT33@thinkstation>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ahJBTaobKD9XdT33@thinkstation>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5586-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 789795C1869
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, May 24, 2026 at 01:08:11AM +0100, Kiryl Shutsemau wrote:
> On Sat, May 23, 2026 at 01:37:32PM +0300, Mike Rapoport wrote:
> > On Fri, May 22, 2026 at 02:38:56PM +0100, Kiryl Shutsemau wrote:
> > > From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>
> > > 
> > > Read-write protect mode (UFFDIO_REGISTER_MODE_RWP) is supported starting
> > > from Linux 7.2. It traps every access -- read or write -- to a present
> > > page within a registered range. The matching UAPI consists of:
> > > 
> > >   - UFFDIO_REGISTER_MODE_RWP   registration-mode bit
> > >   - UFFD_FEATURE_RWP           capability bit
> > >   - UFFD_FEATURE_RWP_ASYNC     async (in-kernel) fault resolution
> > >   - UFFDIO_RWPROTECT           install / remove RWP on a range
> > >   - UFFDIO_SET_MODE            runtime sync/async toggle
> > >   - UFFD_PAGEFAULT_FLAG_RWP    new pagefault.flags bit
> > > 
> > > Document the new registration-mode entry, the "Userfaultfd read-write
> > > protect mode" section, the new pagefault flag, and a VERSIONS line.
> > > 
> > > Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> > > ---
> > >  man2/userfaultfd.2 | 147 ++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 146 insertions(+), 1 deletion(-)
> > 
> > This doesn't apply to the current man-pages tree
> > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
> > 
> > and reading raw groff hurts eyes too much.
> > 
> > What linux-man tree did you use to generate those?
> 
> Ughh.. Used old github mirror. Will rebase.

I found that the man patches in the same thread confuse b4 review, I
suppose sashiko also failed to apply because of them.

Can you send them as a separate thread please?
 
> -- 
>   Kiryl Shutsemau / Kirill A. Shutemov

-- 
Sincerely yours,
Mike.

