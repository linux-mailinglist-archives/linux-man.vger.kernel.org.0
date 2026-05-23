Return-Path: <linux-man+bounces-5582-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C/8A3t8EWq5mgYAu9opvQ
	(envelope-from <linux-man+bounces-5582-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 23 May 2026 12:07:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECB15BE74A
	for <lists+linux-man@lfdr.de>; Sat, 23 May 2026 12:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E6AA301917A
	for <lists+linux-man@lfdr.de>; Sat, 23 May 2026 10:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD2A3859E6;
	Sat, 23 May 2026 10:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ee3Xfjg3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9264133121E;
	Sat, 23 May 2026 10:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779530866; cv=none; b=kSYZkAlVqU5yDmODk8f7wY9UQlPVkUIn8Wb+1YxrpmRX//nNZSd5PnwwAg106wo89TnwNFD/q/yv2sOAdRVw979cvBm5dodplQgG5lyWXMCYTwpwHA9mZDc+dA4TP1rA1Oh/JbExDwEvqKkKrUdKnaf6dJo+CjPDFbCJ9vshOdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779530866; c=relaxed/simple;
	bh=D6nSXEYo+MpnMypr6RgL8yPZAFyIVpwonG2E7ic9SbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mkfKhEdtcNU5FoRCxNduyk0S6p5cme+5wnmrcoZbXYQwgAYuB+kQ5wFl4g5kphwAakwDn2s/xlRmBjSSB6potK1KeUhc+v9o3fYaWt1ke6bdiWVdutXYaiAt507O7PRbl7y4/zylwckKL1SRYr3Ptl8o75gkKmkLMhRfVWAeLMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ee3Xfjg3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F9761F000E9;
	Sat, 23 May 2026 10:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779530865;
	bh=rlp1W5vNBlur1QwehE++yDLWhSdLhgpE4g2TYJr/Zrs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ee3Xfjg3pkY/QBkGfqwUl/vlMPnivycAtzymBvtjnZlKjBwxVCWthpEyBYipSSzTT
	 7Hb3ZNH2kOFCKNE3qtCT+9Nr7uZYAGjCHz6ZJfQUi7JyzveC6qdztm0snhCDnnwNs7
	 JCbpv3KNt8AjX+bk84DtiNth6Rg2BdxiP255GajZCvs1fUmt5wjkw34YEykxmjF2mV
	 KcNcTpDapcXZJUh5tth7qD6xH1H5TIORh7sCj9pBmJqolBHW4xuMlHJFSh0CYr24NF
	 aCoObYVnef10OiEUycg02dD9SYvFNY7wMVyYEERHahhqBOpYbYVV9y77qAu1rHLjzC
	 ATNQLHXLaQDGQ==
Date: Sat, 23 May 2026 13:07:33 +0300
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
Subject: Re: [PATCH v3 13/16] selftests/mm: add userfaultfd RWP tests
Message-ID: <ahF8ZeErzcEp57Pw@kernel.org>
References: <20260522133857.552279-1-kirill@shutemov.name>
 <20260522133857.552279-14-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260522133857.552279-14-kirill@shutemov.name>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5582-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7ECB15BE74A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 02:38:54PM +0100, Kiryl Shutsemau wrote:
> From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>
> 
> Coverage for UFFDIO_REGISTER_MODE_RWP and UFFDIO_RWPROTECT:
> 
>   rwp-async          async mode — touch pages, verify permissions are
>                      auto-restored without a message
>   rwp-sync           sync mode — access blocks, handler resolves via
>                      UFFDIO_RWPROTECT
>   rwp-pagemap        PAGEMAP_SCAN reports still-cold pages via
>                      inverted PAGE_IS_ACCESSED
>   rwp-mprotect       RWP survives mprotect(PROT_NONE) ->
>                      mprotect(PROT_READ|PROT_WRITE) round-trip
>   rwp-gup            GUP walks through a protnone RWP PTE (pipe
>                      write/read drives the GUP path)
>   rwp-async-toggle   UFFDIO_SET_MODE flips between sync and async
>                      without re-registering
>   rwp-close          closing the uffd restores page permissions
>   rwp-fork           RWP survives fork() with EVENT_FORK; child's
>                      PTEs keep the uffd bit
>   rwp-fork-pin       RWP survives fork() on an RO-longterm-pinned
>                      anon page (forces copy_present_page()); child
>                      read auto-resolves and clears the bit, proving
>                      PAGE_NONE was in place
>   rwp-wp-exclusive   register with MODE_WP|MODE_RWP returns -EINVAL
> 
> All tests run against anon, shmem, shmem-private, hugetlb, and
> hugetlb-private memory, except rwp-fork-pin which is anon-only —
> copy_present_page() is the private-anon pinned-exclusive fork path.
> 
> Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> Assisted-by: Claude:claude-opus-4-6

Reviewed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

> ---
>  tools/testing/selftests/mm/uffd-unit-tests.c | 766 +++++++++++++++++++
>  1 file changed, 766 insertions(+)

-- 
Sincerely yours,
Mike.

