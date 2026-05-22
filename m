Return-Path: <linux-man+bounces-5570-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHJhMl9iEGphWwYAu9opvQ
	(envelope-from <linux-man+bounces-5570-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:04:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 416185B5CAB
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2720A30E0E08
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DCB407CC2;
	Fri, 22 May 2026 13:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="BpJuvh11";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Y3Y/uCux"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B04D406270;
	Fri, 22 May 2026 13:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457170; cv=none; b=Ebm3nxND3Aa7y9KTMTeWtdzcc2EphXxxhqEnHLgDu3pxJmLhGVoCL0ufBmIvw+za3ErW7nRZVhLA2lEtDEYpHrvls05VUFrIqYEazc+Vm+Nr+JPlrQwXuWqsSS1CSmXn5oHzgXDHGYSClgduQCjuw9+ZTfMJxEnDBy3ZA71eWvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457170; c=relaxed/simple;
	bh=T6SxWsRd5exyC151K5uKEWRngtSU7bGh3JzBGBLDasU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mgrS36M713ncs9AZiHfpzg9XR2HBatJuh3K+hBGsl81D3HfOTTdyWQf7oizBoGHNE1sv06io8Vo0SIa9G0NZnYq6H1xM60ieeVua57mwiU4s8iL8EnDtPdGcw8ZbHYKyk3QsKIeZ3m55f94Jp1l1PZp3xpn2kE+v320IU1A9qPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=BpJuvh11; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Y3Y/uCux; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 172621D000C0;
	Fri, 22 May 2026 09:39:27 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Fri, 22 May 2026 09:39:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779457166; x=
	1779543566; bh=4O70bbPQBhsg9A1RHU2I5MV8zYc4hA13AS1pM3gYLMI=; b=B
	pJuvh114IBpvIJUAR1pE2ADh+zpjut1nRgon42CU8PlpWSEyYI63hMFpgCm1sab6
	pg9m06xWZpI4kByZu3zYQUce4feMSifQHNJC2LgiUHz+TaRzhxo//qGF9LSSJxBD
	qWv0c96rcnQTCY+SBgBBAWoSW/rY7xO1kpGwk+NnGlEvegOJnKDYJSKRZzGR5WC2
	/LmAs6xJSNmW7l1c678ZkH97aYRpnSxvMP7cVUrDFU+/3KjkB/Q0ujHH41STIr/s
	9DdJUdUgbyuz9TBrUwFbnVBVCD3UADPuSIB+tN4mBIGM4FUmAfqrVlCN48J7UMtf
	vm8sg083MXSOZiPeDGm0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779457166; x=1779543566; bh=4
	O70bbPQBhsg9A1RHU2I5MV8zYc4hA13AS1pM3gYLMI=; b=Y3Y/uCuxjU76IM30U
	WnGlzo+BCyv6sJ4YcJESMw5oUJ6d90t4L6wBLAX9oTxFirGB/ZI77wIsgkjwIZYP
	wPJu/kFg/piB5GkU4y5VuDUFXkL7dVdRyH1dOMQfZytPcPf/ECoFuXsrclW3fkGo
	iPRVGbC1tQfaFF/55wCl+BPMoSundIB/Fra1j5PDQWKzZXu400bT6Z3nL9YUsY/a
	atdPZbidD+LYhkPWldyDG2o2MjaVHe3UK3NpkF7nnO3GEEiXgs2FV9wjADH+upUM
	i753X2c4YGHO30DHbHEmAv2dXpxpxR4WC9T/kRsk9QUeiJnV9OQrzt4tDXetw2PI
	zRSSA==
X-ME-Sender: <xms:jlwQarkgJK3dm5IM20YuYhSEswJ4YPDuvvOw9rwtInZ2XFQ2vNGcSw>
    <xme:jlwQav7bBK7C1WzOle3xKtr3zX_rgpvgJ_5Jl7t7LZcwt-8VVpZI1KzHqRB-81kKj
    Vj0R3Apkeo3XkFEbYP4tvCfTusNQSvGHCPFLFufXh89kK38CxxJSA>
X-ME-Received: <xmr:jlwQakm0Z75IDLnQM7n9dJHma3NO6tg9A4KwcM2vDstf-ox0Qmj0UXRqzE1yHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduhedtfeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpefmihhrhihlucfuhhhuthhsvghmrghuuceokhhirhhilhhlsehs
    hhhuthgvmhhovhdrnhgrmhgvqeenucggtffrrghtthgvrhhnpeegveehtdfgvdfhudegff
    euuddvgeevjefhveevgefhvdevieevteeivdehjefhjeenucevlhhushhtvghrufhiiigv
    peefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehkihhrihhllhesshhhuhhtvghmohhvrd
    hnrghmvgdpnhgspghrtghpthhtohepvdeipdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopegrkhhpmheslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoh
    eprhhpphhtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehpvghtvghrgiesrhgvughh
    rghtrdgtohhmpdhrtghpthhtohepuggrvhhiugeskhgvrhhnvghlrdhorhhgpdhrtghpth
    htoheplhhjsheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhurhgvnhgssehgohho
    ghhlvgdrtghomhdprhgtphhtthhopehvsggrsghkrgeskhgvrhhnvghlrdhorhhgpdhrtg
    hpthhtoheplhhirghmrdhhohiflhgvthhtsehorhgrtghlvgdrtghomhdprhgtphhtthho
    peiiihihsehnvhhiughirgdrtghomh
X-ME-Proxy: <xmx:jlwQahSfRxIOkGaf2O_qoHrlG_OPOXBXaULuGZ4P5tNmZxN8MOk0cQ>
    <xmx:jlwQailvKz62wofA2eji2lqGK-hvSKqav2mQpDdx3sGhh8mKef-QmA>
    <xmx:jlwQaiPDbfAZBFTXomy9KqSn9xadBcUok220ZpffW2qgOfFGtxYIKQ>
    <xmx:jlwQai3gFWX4U-tY3org80t0T9pAtkera330SfDgRXpaaVXtLH0o6A>
    <xmx:jlwQajZMBrwrPXrE7UT9_4Z7TJMti8jKXnhqIqBrrzR0-z9__uIw0JU2>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:26 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org
Cc: ljs@kernel.org,
	surenb@google.com,
	vbabka@kernel.org,
	Liam.Howlett@oracle.com,
	ziy@nvidia.com,
	corbet@lwn.net,
	skhan@linuxfoundation.org,
	seanjc@google.com,
	pbonzini@redhat.com,
	jthoughton@google.com,
	aarcange@redhat.com,
	sj@kernel.org,
	usama.arif@linux.dev,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	kvm@vger.kernel.org,
	kernel-team@meta.com,
	linux-man@vger.kernel.org,
	alx@kernel.org,
	"Kiryl Shutsemau (Meta)" <kas@kernel.org>
Subject: [PATCH v3 06/16] mm: preserve RWP marker across PTE rewrites
Date: Fri, 22 May 2026 14:38:47 +0100
Message-ID: <20260522133857.552279-7-kirill@shutemov.name>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522133857.552279-1-kirill@shutemov.name>
References: <20260522133857.552279-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5570-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 416185B5CAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

The uffd PTE bit must survive any kernel path that rewrites a PTE
on a VM_UFFD_RWP VMA, otherwise the marker that carries PAGE_NONE
semantics is silently dropped and the next access leaks past RWP
tracking. Wire the preservation through every path that rewrites a
VM_UFFD_RWP PTE.

Swap and device-exclusive: do_swap_page(), restore_exclusive_pte(),
and unuse_pte() (swapoff()) re-apply PAGE_NONE when the swap PTE
carries the uffd bit and the VMA has VM_UFFD_RWP.

Migration: remove_migration_pte() and remove_migration_pmd() do the
same after the migration entry is replaced with a real PTE/PMD.

Fork: __copy_present_ptes(), copy_present_page(), copy_nonpresent_pte(),
copy_huge_pmd(), copy_huge_non_present_pmd(), and
copy_hugetlb_page_range() keep the uffd bit on the child when the
destination VMA has VM_UFFD_RWP, matching the existing VM_UFFD_WP
handling. Add VM_UFFD_RWP to VM_COPY_ON_FORK so the flag itself
propagates.

mprotect(): change_pte_range() and change_huge_pmd() restore PAGE_NONE
after pte_modify()/pmd_modify() have recomputed the base protection
from a (possibly user-changed) vm_page_prot. pte_modify() preserves
_PAGE_UFFD, so the bit stays; we just have to force PAGE_NONE back
on top.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Assisted-by: Claude:claude-opus-4-6
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 include/linux/mm.h |  3 ++-
 mm/huge_memory.c   | 47 ++++++++++++++++++++++++++++++++++++++++++----
 mm/hugetlb.c       | 40 ++++++++++++++++++++++++++++++---------
 mm/memory.c        | 47 +++++++++++++++++++++++++++++++++++++++-------
 mm/migrate.c       |  8 ++++++++
 mm/mprotect.c      | 10 ++++++++++
 mm/mremap.c        | 13 +++++++++++--
 mm/swapfile.c      |  5 +++++
 mm/userfaultfd.c   | 14 ++++++++++++++
 9 files changed, 164 insertions(+), 23 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 9054468774b5..0598b1482aeb 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -663,7 +663,8 @@ enum {
  *                           only and thus cannot be reconstructed on page
  *                           fault.
  */
-#define VM_COPY_ON_FORK (VM_PFNMAP | VM_MIXEDMAP | VM_UFFD_WP | VM_MAYBE_GUARD)
+#define VM_COPY_ON_FORK (VM_PFNMAP | VM_MIXEDMAP | VM_UFFD_WP | VM_UFFD_RWP | \
+			 VM_MAYBE_GUARD)
 
 /*
  * mapping from the currently active vm_flags protection bits (the
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index befc919de69e..189192ea45cf 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -1918,7 +1918,7 @@ static void copy_huge_non_present_pmd(
 	add_mm_counter(dst_mm, MM_ANONPAGES, HPAGE_PMD_NR);
 	mm_inc_nr_ptes(dst_mm);
 	pgtable_trans_huge_deposit(dst_mm, dst_pmd, pgtable);
-	if (!userfaultfd_wp(dst_vma))
+	if (!userfaultfd_protected(dst_vma))
 		pmd = pmd_swp_clear_uffd(pmd);
 	set_pmd_at(dst_mm, addr, dst_pmd, pmd);
 }
@@ -2013,9 +2013,15 @@ int copy_huge_pmd(struct mm_struct *dst_mm, struct mm_struct *src_mm,
 out_zero_page:
 	mm_inc_nr_ptes(dst_mm);
 	pgtable_trans_huge_deposit(dst_mm, dst_pmd, pgtable);
-	pmdp_set_wrprotect(src_mm, addr, src_pmd);
-	if (!userfaultfd_wp(dst_vma))
+
+	/* See __copy_present_ptes(): restore accessible protection. */
+	if (!userfaultfd_protected(dst_vma)) {
+		if (userfaultfd_rwp(src_vma))
+			pmd = pmd_modify(pmd, dst_vma->vm_page_prot);
 		pmd = pmd_clear_uffd(pmd);
+	}
+
+	pmdp_set_wrprotect(src_mm, addr, src_pmd);
 	pmd = pmd_wrprotect(pmd);
 set_pmd:
 	pmd = pmd_mkold(pmd);
@@ -2601,8 +2607,16 @@ bool move_huge_pmd(struct vm_area_struct *vma, unsigned long old_addr,
 			pgtable_trans_huge_deposit(mm, new_pmd, pgtable);
 		}
 		pmd = move_soft_dirty_pmd(pmd);
-		if (vma_has_uffd_without_event_remap(vma))
+		if (vma_has_uffd_without_event_remap(vma)) {
+			/*
+			 * See __copy_present_ptes(): normalise RWP PMDs so
+			 * the destination starts accessible instead of taking
+			 * a numa-hinting fault on first access.
+			 */
+			if (pmd_present(pmd) && userfaultfd_rwp(vma))
+				pmd = pmd_modify(pmd, vma->vm_page_prot);
 			pmd = clear_uffd_wp_pmd(pmd);
+		}
 		set_pmd_at(mm, new_addr, new_pmd, pmd);
 		if (force_flush)
 			flush_pmd_tlb_range(vma, old_addr, old_addr + PMD_SIZE);
@@ -2739,6 +2753,10 @@ int change_huge_pmd(struct mmu_gather *tlb, struct vm_area_struct *vma,
 		 */
 		entry = pmd_clear_uffd(entry);
 
+	/* See change_pte_range(): preserve RWP protection across mprotect() */
+	if (userfaultfd_rwp(vma) && pmd_uffd(entry))
+		entry = pmd_modify(entry, PAGE_NONE);
+
 	/* See change_pte_range(). */
 	if ((cp_flags & MM_CP_TRY_CHANGE_WRITABLE) && !pmd_write(entry) &&
 	    can_change_pmd_writable(vma, addr, entry))
@@ -2906,6 +2924,13 @@ int move_pages_huge_pmd(struct mm_struct *mm, pmd_t *dst_pmd, pmd_t *src_pmd, pm
 		_dst_pmd = move_soft_dirty_pmd(src_pmdval);
 		_dst_pmd = clear_uffd_wp_pmd(_dst_pmd);
 	}
+
+	/* Re-arm RWP on the moved PMD if dst_vma is RWP-registered. */
+	if (userfaultfd_rwp(dst_vma)) {
+		_dst_pmd = pmd_modify(_dst_pmd, PAGE_NONE);
+		_dst_pmd = pmd_mkuffd(_dst_pmd);
+	}
+
 	set_pmd_at(mm, dst_addr, dst_pmd, _dst_pmd);
 
 	src_pgtable = pgtable_trans_huge_withdraw(mm, src_pmd);
@@ -3082,6 +3107,11 @@ static void __split_huge_zero_page_pmd(struct vm_area_struct *vma,
 		entry = pte_mkspecial(entry);
 		if (pmd_uffd(old_pmd))
 			entry = pte_mkuffd(entry);
+
+		/* Restore PAGE_NONE so an RWP marker keeps trapping */
+		if (userfaultfd_rwp(vma) && pmd_uffd(old_pmd))
+			entry = pte_modify(entry, PAGE_NONE);
+
 		VM_BUG_ON(!pte_none(ptep_get(pte)));
 		set_pte_at(mm, addr, pte, entry);
 		pte++;
@@ -3356,6 +3386,10 @@ static void __split_huge_pmd_locked(struct vm_area_struct *vma, pmd_t *pmd,
 		if (uffd_wp)
 			entry = pte_mkuffd(entry);
 
+		/* Restore PAGE_NONE so an RWP marker keeps trapping */
+		if (userfaultfd_rwp(vma) && uffd_wp)
+			entry = pte_modify(entry, PAGE_NONE);
+
 		for (i = 0; i < HPAGE_PMD_NR; i++)
 			VM_WARN_ON(!pte_none(ptep_get(pte + i)));
 
@@ -5054,6 +5088,11 @@ void remove_migration_pmd(struct page_vma_mapped_walk *pvmw, struct page *new)
 		pmde = pmd_mkwrite(pmde, vma);
 	if (pmd_swp_uffd(*pvmw->pmd))
 		pmde = pmd_mkuffd(pmde);
+
+	/* See do_swap_page(): restore PAGE_NONE for RWP */
+	if (pmd_swp_uffd(*pvmw->pmd) && userfaultfd_rwp(vma))
+		pmde = pmd_modify(pmde, PAGE_NONE);
+
 	if (!softleaf_is_migration_young(entry))
 		pmde = pmd_mkold(pmde);
 	/* NOTE: this may contain setting soft-dirty on some archs */
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index 3cdbf0057dce..eee32a325481 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -4859,8 +4859,12 @@ hugetlb_install_folio(struct vm_area_struct *vma, pte_t *ptep, unsigned long add
 
 	__folio_mark_uptodate(new_folio);
 	hugetlb_add_new_anon_rmap(new_folio, vma, addr);
-	if (userfaultfd_wp(vma) && huge_pte_uffd(old))
+	if (userfaultfd_protected(vma) && huge_pte_uffd(old)) {
 		newpte = huge_pte_mkuffd(newpte);
+		/* Restore PAGE_NONE so the RWP marker keeps trapping. */
+		if (userfaultfd_rwp(vma))
+			newpte = huge_pte_modify(newpte, PAGE_NONE);
+	}
 	set_huge_pte_at(vma->vm_mm, addr, ptep, newpte, sz);
 	hugetlb_count_add(pages_per_huge_page(hstate_vma(vma)), vma->vm_mm);
 	folio_set_hugetlb_migratable(new_folio);
@@ -4933,7 +4937,7 @@ int copy_hugetlb_page_range(struct mm_struct *dst, struct mm_struct *src,
 
 		softleaf = softleaf_from_pte(entry);
 		if (unlikely(softleaf_is_hwpoison(softleaf))) {
-			if (!userfaultfd_wp(dst_vma))
+			if (!userfaultfd_protected(dst_vma))
 				entry = huge_pte_clear_uffd(entry);
 			set_huge_pte_at(dst, addr, dst_pte, entry, sz);
 		} else if (unlikely(softleaf_is_migration(softleaf))) {
@@ -4947,11 +4951,11 @@ int copy_hugetlb_page_range(struct mm_struct *dst, struct mm_struct *src,
 				softleaf = make_readable_migration_entry(
 							swp_offset(softleaf));
 				entry = swp_entry_to_pte(softleaf);
-				if (userfaultfd_wp(src_vma) && uffd)
+				if (userfaultfd_protected(src_vma) && uffd)
 					entry = pte_swp_mkuffd(entry);
 				set_huge_pte_at(src, addr, src_pte, entry, sz);
 			}
-			if (!userfaultfd_wp(dst_vma))
+			if (!userfaultfd_protected(dst_vma))
 				entry = huge_pte_clear_uffd(entry);
 			set_huge_pte_at(dst, addr, dst_pte, entry, sz);
 		} else if (unlikely(pte_is_marker(entry))) {
@@ -5015,6 +5019,13 @@ int copy_hugetlb_page_range(struct mm_struct *dst, struct mm_struct *src,
 				goto next;
 			}
 
+			/* See __copy_present_ptes(): restore accessible protection. */
+			if (!userfaultfd_protected(dst_vma)) {
+				if (userfaultfd_rwp(src_vma))
+					entry = huge_pte_modify(entry, dst_vma->vm_page_prot);
+				entry = huge_pte_clear_uffd(entry);
+			}
+
 			if (cow) {
 				/*
 				 * No need to notify as we are downgrading page
@@ -5027,9 +5038,6 @@ int copy_hugetlb_page_range(struct mm_struct *dst, struct mm_struct *src,
 				entry = huge_pte_wrprotect(entry);
 			}
 
-			if (!userfaultfd_wp(dst_vma))
-				entry = huge_pte_clear_uffd(entry);
-
 			set_huge_pte_at(dst, addr, dst_pte, entry, sz);
 			hugetlb_count_add(npages, dst);
 		}
@@ -5075,10 +5083,19 @@ static void move_huge_pte(struct vm_area_struct *vma, unsigned long old_addr,
 		huge_pte_clear(mm, new_addr, dst_pte, sz);
 	} else {
 		if (need_clear_uffd_wp) {
-			if (pte_present(pte))
+			if (pte_present(pte)) {
+				/*
+				 * See __copy_present_ptes(): normalise RWP
+				 * PTEs so the destination starts accessible
+				 * instead of taking a numa-hinting fault on
+				 * first access.
+				 */
+				if (userfaultfd_rwp(vma))
+					pte = huge_pte_modify(pte, vma->vm_page_prot);
 				pte = huge_pte_clear_uffd(pte);
-			else
+			} else {
 				pte = pte_swp_clear_uffd(pte);
+			}
 		}
 		set_huge_pte_at(mm, new_addr, dst_pte, pte, sz);
 	}
@@ -6529,6 +6546,11 @@ long hugetlb_change_protection(struct vm_area_struct *vma,
 				pte = huge_pte_mkuffd(pte);
 			else if (uffd_wp_resolve || uffd_rwp_resolve)
 				pte = huge_pte_clear_uffd(pte);
+
+			/* Preserve RWP protection across mprotect() */
+			if (userfaultfd_rwp(vma) && huge_pte_uffd(pte))
+				pte = huge_pte_modify(pte, PAGE_NONE);
+
 			huge_ptep_modify_prot_commit(vma, address, ptep, old_pte, pte);
 			pages++;
 			tlb_remove_huge_tlb_entry(h, &tlb, ptep, address);
diff --git a/mm/memory.c b/mm/memory.c
index f2e7e900b1b8..ea9616e3dbaf 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -880,6 +880,10 @@ static void restore_exclusive_pte(struct vm_area_struct *vma,
 	if (pte_swp_uffd(orig_pte))
 		pte = pte_mkuffd(pte);
 
+	/* See do_swap_page(): restore PAGE_NONE for RWP */
+	if (pte_swp_uffd(orig_pte) && userfaultfd_rwp(vma))
+		pte = pte_modify(pte, PAGE_NONE);
+
 	if ((vma->vm_flags & VM_WRITE) &&
 	    can_change_pte_writable(vma, address, pte)) {
 		if (folio_test_dirty(folio))
@@ -1025,7 +1029,7 @@ copy_nonpresent_pte(struct mm_struct *dst_mm, struct mm_struct *src_mm,
 				   make_pte_marker(marker));
 		return 0;
 	}
-	if (!userfaultfd_wp(dst_vma))
+	if (!userfaultfd_protected(dst_vma))
 		pte = pte_swp_clear_uffd(pte);
 	set_pte_at(dst_mm, addr, dst_pte, pte);
 	return 0;
@@ -1072,9 +1076,13 @@ copy_present_page(struct vm_area_struct *dst_vma, struct vm_area_struct *src_vma
 	/* All done, just insert the new page copy in the child */
 	pte = folio_mk_pte(new_folio, dst_vma->vm_page_prot);
 	pte = maybe_mkwrite(pte_mkdirty(pte), dst_vma);
-	if (userfaultfd_pte_wp(dst_vma, ptep_get(src_pte)))
-		/* Uffd-wp needs to be delivered to dest pte as well */
+	if (userfaultfd_protected(dst_vma) && pte_uffd(ptep_get(src_pte))) {
+		/* The uffd bit needs to be delivered to the dest pte as well */
 		pte = pte_mkuffd(pte);
+		/* Restore PAGE_NONE so the RWP marker keeps trapping */
+		if (userfaultfd_rwp(dst_vma))
+			pte = pte_modify(pte, PAGE_NONE);
+	}
 	set_pte_at(dst_vma->vm_mm, addr, dst_pte, pte);
 	return 0;
 }
@@ -1084,9 +1092,29 @@ static __always_inline void __copy_present_ptes(struct vm_area_struct *dst_vma,
 		pte_t pte, unsigned long addr, int nr)
 {
 	struct mm_struct *src_mm = src_vma->vm_mm;
+	bool writable;
+
+	/*
+	 * Snapshot writability before the RWP-disarm rewrite below: when the
+	 * child is not RWP-armed, pte_modify(pte, dst_vma->vm_page_prot) can
+	 * silently drop _PAGE_RW from a resolved (no-marker) writable PTE,
+	 * so a later pte_write(pte) check would skip the COW wrprotect and
+	 * leave the parent writable over a folio shared with the child.
+	 */
+	writable = pte_write(pte);
+
+	/*
+	 * Child is not RWP-armed: restore accessible protection so the
+	 * inherited PAGE_NONE does not cost a fault on first read.
+	 */
+	if (!userfaultfd_protected(dst_vma)) {
+		if (userfaultfd_rwp(src_vma))
+			pte = pte_modify(pte, dst_vma->vm_page_prot);
+		pte = pte_clear_uffd(pte);
+	}
 
 	/* If it's a COW mapping, write protect it both processes. */
-	if (is_cow_mapping(src_vma->vm_flags) && pte_write(pte)) {
+	if (is_cow_mapping(src_vma->vm_flags) && writable) {
 		wrprotect_ptes(src_mm, addr, src_pte, nr);
 		pte = pte_wrprotect(pte);
 	}
@@ -1096,9 +1124,6 @@ static __always_inline void __copy_present_ptes(struct vm_area_struct *dst_vma,
 		pte = pte_mkclean(pte);
 	pte = pte_mkold(pte);
 
-	if (!userfaultfd_wp(dst_vma))
-		pte = pte_clear_uffd(pte);
-
 	set_ptes(dst_vma->vm_mm, addr, dst_pte, pte, nr);
 }
 
@@ -5080,6 +5105,14 @@ vm_fault_t do_swap_page(struct vm_fault *vmf)
 	if (pte_swp_uffd(vmf->orig_pte))
 		pte = pte_mkuffd(pte);
 
+	/*
+	 * A page reclaimed while RWP-protected carries the uffd bit on
+	 * its swap entry. Re-apply PAGE_NONE on swap-in so the first access
+	 * still traps as an RWP fault. pte_modify() preserves _PAGE_UFFD.
+	 */
+	if (pte_swp_uffd(vmf->orig_pte) && userfaultfd_rwp(vma))
+		pte = pte_modify(pte, PAGE_NONE);
+
 	/*
 	 * Same logic as in do_wp_page(); however, optimize for pages that are
 	 * certainly not shared either because we just allocated them without
diff --git a/mm/migrate.c b/mm/migrate.c
index 9d81b7b881ec..633085130b7c 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -329,6 +329,10 @@ static bool try_to_map_unused_to_zeropage(struct page_vma_mapped_walk *pvmw,
 	if (pte_swp_uffd(old_pte))
 		newpte = pte_mkuffd(newpte);
 
+	/* See remove_migration_pte(): restore PAGE_NONE for RWP */
+	if (pte_swp_uffd(old_pte) && userfaultfd_rwp(pvmw->vma))
+		newpte = pte_modify(newpte, PAGE_NONE);
+
 	set_pte_at(pvmw->vma->vm_mm, pvmw->address, pvmw->pte, newpte);
 
 	dec_mm_counter(pvmw->vma->vm_mm, mm_counter(folio));
@@ -394,6 +398,10 @@ static bool remove_migration_pte(struct folio *folio,
 		else if (pte_swp_uffd(old_pte))
 			pte = pte_mkuffd(pte);
 
+		/* See do_swap_page(): restore PAGE_NONE for RWP */
+		if (pte_swp_uffd(old_pte) && userfaultfd_rwp(vma))
+			pte = pte_modify(pte, PAGE_NONE);
+
 		if (folio_test_anon(folio) && !softleaf_is_migration_read(entry))
 			rmap_flags |= RMAP_EXCLUSIVE;
 
diff --git a/mm/mprotect.c b/mm/mprotect.c
index 4a6b35482aee..e0b5fe7c66b2 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -296,6 +296,16 @@ static __always_inline void change_present_ptes(struct mmu_gather *tlb,
 	else if (uffd_prot_resolve)
 		ptent = pte_clear_uffd(ptent);
 
+	/*
+	 * The uffd bit on a VM_UFFD_RWP VMA carries PROT_NONE
+	 * semantics. If mprotect() or NUMA hinting changed the
+	 * base protection, restore PAGE_NONE so the PTE still
+	 * traps on any access. pte_modify() preserves
+	 * _PAGE_UFFD.
+	 */
+	if (userfaultfd_rwp(vma) && pte_uffd(ptent))
+		ptent = pte_modify(ptent, PAGE_NONE);
+
 	/*
 	 * In some writable, shared mappings, we might want
 	 * to catch actual write access -- see
diff --git a/mm/mremap.c b/mm/mremap.c
index 12732a5c547e..14e5df316f83 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -296,10 +296,19 @@ static int move_ptes(struct pagetable_move_control *pmc,
 			pte_clear(mm, new_addr, new_ptep);
 		else {
 			if (need_clear_uffd_wp) {
-				if (pte_present(pte))
+				if (pte_present(pte)) {
+					/*
+					 * See __copy_present_ptes(): normalise
+					 * RWP PTEs so the destination starts
+					 * accessible instead of taking a
+					 * numa-hinting fault on first access.
+					 */
+					if (userfaultfd_rwp(vma))
+						pte = pte_modify(pte, vma->vm_page_prot);
 					pte = pte_clear_uffd(pte);
-				else
+				} else {
 					pte = pte_swp_clear_uffd(pte);
+				}
 			}
 			set_ptes(mm, new_addr, new_ptep, pte, nr_ptes);
 		}
diff --git a/mm/swapfile.c b/mm/swapfile.c
index 9119efef7fe6..260239b260d5 100644
--- a/mm/swapfile.c
+++ b/mm/swapfile.c
@@ -2338,6 +2338,11 @@ static int unuse_pte(struct vm_area_struct *vma, pmd_t *pmd,
 		new_pte = pte_mksoft_dirty(new_pte);
 	if (pte_swp_uffd(old_pte))
 		new_pte = pte_mkuffd(new_pte);
+
+	/* See do_swap_page(): restore PAGE_NONE for RWP */
+	if (pte_swp_uffd(old_pte) && userfaultfd_rwp(vma))
+		new_pte = pte_modify(new_pte, PAGE_NONE);
+
 setpte:
 	set_pte_at(vma->vm_mm, addr, pte, new_pte);
 	folio_put_swap(swapcache, folio_file_page(swapcache, swp_offset(entry)));
diff --git a/mm/userfaultfd.c b/mm/userfaultfd.c
index d546ffd2f165..d4a1d340dab3 100644
--- a/mm/userfaultfd.c
+++ b/mm/userfaultfd.c
@@ -1200,6 +1200,13 @@ static long move_present_ptes(struct mm_struct *mm,
 		if (pte_dirty(orig_src_pte))
 			orig_dst_pte = pte_mkdirty(orig_dst_pte);
 		orig_dst_pte = pte_mkwrite(orig_dst_pte, dst_vma);
+
+		/* Re-arm RWP on the moved PTE if dst_vma is RWP-registered. */
+		if (userfaultfd_rwp(dst_vma)) {
+			orig_dst_pte = pte_modify(orig_dst_pte, PAGE_NONE);
+			orig_dst_pte = pte_mkuffd(orig_dst_pte);
+		}
+
 		set_pte_at(mm, dst_addr, dst_pte, orig_dst_pte);
 
 		src_addr += PAGE_SIZE;
@@ -1307,6 +1314,13 @@ static int move_zeropage_pte(struct mm_struct *mm,
 
 	zero_pte = pte_mkspecial(pfn_pte(zero_pfn(dst_addr),
 					 dst_vma->vm_page_prot));
+
+	/* Re-arm RWP on the moved PTE if dst_vma is RWP-registered. */
+	if (userfaultfd_rwp(dst_vma)) {
+		zero_pte = pte_modify(zero_pte, PAGE_NONE);
+		zero_pte = pte_mkuffd(zero_pte);
+	}
+
 	ptep_clear_flush(src_vma, src_addr, src_pte);
 	set_pte_at(mm, dst_addr, dst_pte, zero_pte);
 	double_pt_unlock(dst_ptl, src_ptl);
-- 
2.51.2


