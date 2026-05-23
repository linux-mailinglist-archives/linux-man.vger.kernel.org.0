Return-Path: <linux-man+bounces-5581-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG7mI4t7EWqHmgYAu9opvQ
	(envelope-from <linux-man+bounces-5581-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 23 May 2026 12:03:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E655BE6FB
	for <lists+linux-man@lfdr.de>; Sat, 23 May 2026 12:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 372443017032
	for <lists+linux-man@lfdr.de>; Sat, 23 May 2026 10:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03ED3859CC;
	Sat, 23 May 2026 10:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2v/Ws4X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA0D356767;
	Sat, 23 May 2026 10:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779530625; cv=none; b=n1irgif3mM8dpiUF0aUBB7Z/qc5KAZjOEZl5g9zOhun+gCHRlachR3NToqiJJBlbDcmO/5g1yxWPYdwMmkOiPg/KxAGZn7ldreC70kjqpj2gRd9Ygzh4M01r3in8d99vE2BKBxMno7T+Cf1JWh53zX3P5/Mh91s1zlD0Z81FX0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779530625; c=relaxed/simple;
	bh=Z8yfeiblCz/3Sd95IRWg5G2c2TXrpu+XnyizFFWl7ws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QnM4Al8p+rpTry3Kc1jkqVd6vws/RMfDvhd2dGynYEumb8kh2ul0ZxaH1JO8vepspn72lo+WaMkewa2UlCzpyi3HP0NB8x2bDkr+Bn1Dl+ATrdQ0O8BRpg7DLs29XHZs4Qro+RCnsRv4HldB14HrmDU7Z2c6ZbLMpomRAtuevqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2v/Ws4X; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AA061F000E9;
	Sat, 23 May 2026 10:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779530624;
	bh=tHmN2BHFAqmkx4+yIKAwc/rhqe6iOFn48NmkgaH2AR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b2v/Ws4X/OrJeoVd2MADb1/OzwlF6mfWpHskl0n53AtfrSWsGgexN3Yaa2xwr+Tgb
	 NxYvlMdRrDNzJNcemlWPWIZafZlAJ+IbO2Ay2XBX5cKlRzDab8WGSMMtKIdylDbLPH
	 joRzNAZdmyWyHGAzrW5zkWygvSxFheziGrqE4vs0cldK2Jz7LgE7peYrq7dPzjGpsZ
	 MdFNSGR6VDJSvQ1tnOQNvcAgH6LWWf8fCUvCYtWzKfh4MpqTCf0r8FubYVyZWrcYUk
	 Yk+89/7C5VZvHVkv453mbcpMostz4UddeknfAJnvcP/RyMnEpCuP9//GXhJ8CnT7Na
	 eLq5UlIcIHnug==
Date: Sat, 23 May 2026 13:03:32 +0300
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
	kernel-team@meta.com, linux-man@vger.kernel.org, alx@kernel.org,
	"Kiryl Shutsemau (Meta)" <kas@kernel.org>
Subject: Re: [PATCH v3 05/16] mm: add MM_CP_UFFD_RWP change_protection() flag
Message-ID: <ahF7dNveFezH5bEy@kernel.org>
References: <20260522133857.552279-1-kirill@shutemov.name>
 <20260522133857.552279-6-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260522133857.552279-6-kirill@shutemov.name>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5581-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E5E655BE6FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 02:38:46PM +0100, Kiryl Shutsemau wrote:
> From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>
> 
> Preparatory patch. Add the change_protection() primitive that
> userfaultfd RWP will use.
> 
> An RWP-protected PTE is PAGE_NONE with the uffd PTE bit set. The
> PROT_NONE half makes the CPU fault on any access; the uffd bit
> distinguishes an RWP fault from a plain mprotect(PROT_NONE) or NUMA
> hinting fault. MM_CP_UFFD_WP and MM_CP_UFFD_RWP share the same PTE
> bit, so the two cannot be used together on the same range.
> 
> Two new change_protection() flags:
> 
>   MM_CP_UFFD_RWP            install PAGE_NONE and set the uffd bit
>   MM_CP_UFFD_RWP_RESOLVE    restore vma->vm_page_prot, clear the uffd bit
> 
> Both are wired through change_pte_range(), change_huge_pmd(), and
> hugetlb_change_protection() so anon, shmem, THP, and hugetlb all
> share the same semantics.
> 
> Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> Assisted-by: Claude:claude-opus-4-6

Reviewed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

> ---
>  include/linux/mm.h            |  5 ++++
>  include/linux/userfaultfd_k.h |  1 -
>  mm/huge_memory.c              | 30 +++++++++++++----------
>  mm/hugetlb.c                  | 25 ++++++++++++++-----
>  mm/mprotect.c                 | 46 +++++++++++++++++++++++++++--------
>  5 files changed, 77 insertions(+), 30 deletions(-)

-- 
Sincerely yours,
Mike.

