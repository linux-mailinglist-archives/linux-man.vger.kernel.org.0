Return-Path: <linux-man+bounces-5598-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJpGLpZpFWqyUwcAu9opvQ
	(envelope-from <linux-man+bounces-5598-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 11:36:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4B75D36DD
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 11:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA1AF30107F5
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 09:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE8AA3C4B87;
	Tue, 26 May 2026 09:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4ck0gYN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BE73A9D95
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 09:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787866; cv=none; b=UQW5SG2+wFs6IhKTJAXSJc6knPub7w325jgBhrsWIqkk5OJudb5azgALGYoNR64gy0X3ULutRWvodM9PQUL3uTbs3QAKeQJioPBv02qE7x9RbuPCP4LgZ+1MtZh6QqI5IPVmtyLOdmJ1LwH1YFvH9Q3zIRoyZ9K8fYhRqVMvquQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787866; c=relaxed/simple;
	bh=86UOsq7nh/jJ9NNTAFcnPAFn/4LQ/JQIYF8rFQQw5sc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ox1MaVsPtW9gVj0l/ws8uOQVW5g+RLX3FzPMgC8Q6wHVu+UKYwC4PLHXR4Qr6/Gxt08iNU+PxXVBjzxY0goQlJtPk2clQq7Cbjv4XztcumLenq6n6MYPWRe5F2IFWlSfRIcRhSApuXGC4nYbAtoBqeIk6q2Pa/h6u6TxvrjJLWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4ck0gYN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 421B41F000E9;
	Tue, 26 May 2026 09:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779787865;
	bh=x+6X6r/1L0jGcM2fDpLS+DEmt+oNVnFKDM/qNq2yQ8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G4ck0gYNQzlVBtX5REq0snx4wevj5lgHW2jCohjsRdE+xUmUaO4znQ1SSEVSIwWv5
	 GT/Dtjac06qlMfogrulEroKjjk3C8CafBbe6CwebJ54IeS4X1+uOlDSq+OPrnONMlH
	 dd4cpVUiva5sUck8/j6sL2SL0I4/+YEI1bcD8akClIRE0AgnabQmCLeqcl4ML+gaPD
	 m4S+0O5eKD7BsDLm3doqm+J6kSGbkDx0RDdVxBtMmchfodf59o5qbH+q/GUaxlbeML
	 6STo1UJRpd/qkj7cEKtq5d7wGj0otwCZmBW6G32gcAh4JmJEKfoVBp90b3Qz5rZEji
	 186ZUmKjudZGA==
Date: Tue, 26 May 2026 12:30:58 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: alx@kernel.org, linux-man@vger.kernel.org, linux-mm@kvack.org,
	akpm@linux-foundation.org, peterx@redhat.com, david@kernel.org,
	kernel-team@meta.com
Subject: Re: [PATCH man-pages v1 0/6] userfaultfd: document read-write
 protect mode
Message-ID: <ahVoUsqYBY642VLS@kernel.org>
References: <20260525122816.1956804-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260525122816.1956804-1-kirill@shutemov.name>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-5598-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 4B4B75D36DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 01:28:10PM +0100, Kiryl Shutsemau wrote:
> This series documents userfaultfd read-write protection tracking
> (UFFDIO_REGISTER_MODE_RWP), a working-set tracking mechanism for VM
> guest memory landing in Linux 7.2.
> 
> The matching kernel series ("userfaultfd: working set tracking for VM
> guest memory") was sent against the mm tree:
> https://lore.kernel.org/all/20260525113737.1942478-1-kas@kernel.org/

The content of the docs looks fine to me.

Leaving groff and organization to Alex :)

Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

> == New UAPI documented ==
> 
>   UFFDIO_REGISTER_MODE_RWP    registration-mode bit (UFFDIO_REGISTER.2const)
>   UFFD_FEATURE_RWP            capability bit          (UFFDIO_API.2const)
>   UFFD_FEATURE_RWP_ASYNC      async resolution        (UFFDIO_API.2const)
>   UFFDIO_RWPROTECT            install/remove RWP      (new page)
>   UFFDIO_SET_MODE             runtime mode toggle     (new page)
>   UFFD_PAGEFAULT_FLAG_RWP     new pagefault.flags bit (userfaultfd.2)
>   PAGE_IS_ACCESSED            PAGEMAP_SCAN bit        (kernel docs only)
> 
> == Series layout ==
> 
>   1. userfaultfd.2: overview, registration mode entry, new pagefault
>      flag, VERSIONS line, and an "Userfaultfd read-write protect mode"
>      section.
>   2-3. New UFFDIO_RWPROTECT.2const and UFFDIO_SET_MODE.2const pages.
>   4. UFFDIO_API.2const: UFFD_FEATURE_RWP, UFFD_FEATURE_RWP_ASYNC,
>      and 1 << _UFFDIO_SET_MODE.
>   5. UFFDIO_REGISTER.2const: UFFDIO_REGISTER_MODE_RWP and
>      1 << _UFFDIO_RWPROTECT.
>   6. ioctl_userfaultfd.2: reference the two new ioctls.
> 
> Order: new pages first so the cross-references in patches 4-6 link
> to pages that already exist.
> 
> Kiryl Shutsemau (5):
>   UFFDIO_RWPROTECT.2const: New page
>   UFFDIO_SET_MODE.2const: New page
>   UFFDIO_API.2const: Document UFFD_FEATURE_RWP{,_ASYNC} and 1 <<
>     _UFFDIO_SET_MODE
>   UFFDIO_REGISTER.2const: Document UFFDIO_REGISTER_MODE_RWP and 1 <<
>     _UFFDIO_RWPROTECT
>   ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT and UFFDIO_SET_MODE
> 
> Kiryl Shutsemau (Meta) (1):
>   userfaultfd.2: Add read-write protect mode
> 
>  man/man2/ioctl_userfaultfd.2          |   4 +
>  man/man2/userfaultfd.2                | 152 +++++++++++++++++++++++++-
>  man/man2const/UFFDIO_API.2const       |  29 +++++
>  man/man2const/UFFDIO_REGISTER.2const  |  21 ++++
>  man/man2const/UFFDIO_RWPROTECT.2const | 117 ++++++++++++++++++++
>  man/man2const/UFFDIO_SET_MODE.2const  |  95 ++++++++++++++++
>  6 files changed, 414 insertions(+), 4 deletions(-)
>  create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const
>  create mode 100644 man/man2const/UFFDIO_SET_MODE.2const
> 
> 
> base-commit: 9a4bfd0e50745c2649b6291db40b58e37c9c1c6b
> -- 
> 2.54.0
> 

-- 
Sincerely yours,
Mike.

