Return-Path: <linux-man+bounces-5565-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPq0EPlhEGphWwYAu9opvQ
	(envelope-from <linux-man+bounces-5565-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:02:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E87CD5B5C05
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FDCE30C6FC1
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5EED4014A0;
	Fri, 22 May 2026 13:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="lKbi+rpf";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="o1ODzb5g"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b1-smtp.messagingengine.com (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5553E401490;
	Fri, 22 May 2026 13:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457156; cv=none; b=siLBMAvFEwjc/T5OsxTsF8ECMsRI3kbzAmBkhFZ/804GS41UxO9nRk1erSZtu38LAUexG/gjIhML34Hs7RXfE/prE6S49LPv/nahG8djrtsyh483yDo8UjImVC7nG0c6uLOClsvaezQTtmHbfYIKjDI+FFihe42clmuM2mzOocE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457156; c=relaxed/simple;
	bh=nATjgNMBsypNIB7WUpB9uXUDHuk1SLIJw2eIla6IFVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PjDKmK99EoKECQ9nPcCNTwJMThZIwB87yn/vyAIBySVi0DcJAqx0I3NPndAWF37MrdG0kdeiRAmdex202FRbax5gZ/vH5MKT0dI04/HkA06WDjsEPhQok9OxneL7+EL6okSQmoxs6PT99gCRZggqjSdDnKxK5z4GV9RlQc0/dHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=lKbi+rpf; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=o1ODzb5g; arc=none smtp.client-ip=202.12.124.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 146267A0091;
	Fri, 22 May 2026 09:39:13 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 22 May 2026 09:39:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779457152; x=
	1779543552; bh=lFejW6pY3Lb6ZOpcKZvpdBFeHnt3oKZ73VgU/+PGrlY=; b=l
	Kbi+rpfbEC3Qk8XPZ5Vy3DaEr+Rb3aNoNc8AlZXpmB8MHfk+WNUy8ofaUEvEarYY
	2y5vSHIBgp4gV8bEI77wZUAVd9kvsmKGe0gvXgk1QL8SAmxTu2JAd8DLkxHIq5xG
	H9rV9Dq35O0FaiNCH0hcvxj0kbonLDrfpCR7KiI4YXZY7WxKYpoPs3OGtBs/mxQd
	uhX4SDwYNgqWHxeReftJEABwLDwRdsfJjaaHaFr3srSWKRwunyGPxYaxOxbKiZXN
	IXZQUDvbp/exbVjydzBgbTyfLBUgCqe2Hleop6AIxQ+zNcms3W+65YXM2BWmGR0G
	fHl8i6S5Eo/wlKdk7886w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779457152; x=1779543552; bh=l
	FejW6pY3Lb6ZOpcKZvpdBFeHnt3oKZ73VgU/+PGrlY=; b=o1ODzb5gRP8kwB6Ub
	swTZmlfvVk+3l2XMtArFoyzMxqky5WcjDmtKiTlN8AkunDRHTxuc5d2venhoud8k
	OiuZoLOXat2vCu9ZG3omzKIDEyv5jcB3RVWYblwdGqGPqaNVpr+2/Tdx5QrJlf9g
	EwLo+A7v4F2nmnDUWy+kMAcwEUCFgMiTk4uf/MJU+Fmbw/LNG98GI7RLe93zObJZ
	LOpOajoq0i89q4f/PCZPyrAR+BxDJub5z9UVT01ffzBVXWUdlRXRVMz4Ir5lwMqY
	RF91KyhuoKRqub58G+qrG6Pkoq9/EjCVOHRHjYkLicUR3sXM8FzOWltnWCZHBQCE
	YJrxg==
X-ME-Sender: <xms:gFwQaoUQRslXDbP-fGz8OkwNIaqC2HsS6v0YzPpqodeADtrnABvZVA>
    <xme:gFwQato9-R1go_QIwR4ZcyNcJ4BR1ReUwxmOY_8NEWMbKS2Y3-Cj9wJ872wN94KtW
    LpK7XAMyTCjWuq7KmxJe3R2X3t5kyBnxqyp7J5NMKmoKj2xtQOKew>
X-ME-Received: <xmr:gFwQavUGMfjlwwwNxl1qjTPtZ3yQ1abehrZ_ujXZ6Lwkkmnr7LT_C795pT06FQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduhedtfeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpefmihhrhihlucfuhhhuthhsvghmrghuuceokhhirhhilhhlsehs
    hhhuthgvmhhovhdrnhgrmhgvqeenucggtffrrghtthgvrhhnpeegveehtdfgvdfhudegff
    euuddvgeevjefhveevgefhvdevieevteeivdehjefhjeenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehkihhrihhllhesshhhuhhtvghmohhvrd
    hnrghmvgdpnhgspghrtghpthhtohepvdeipdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopegrkhhpmheslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoh
    eprhhpphhtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehpvghtvghrgiesrhgvughh
    rghtrdgtohhmpdhrtghpthhtohepuggrvhhiugeskhgvrhhnvghlrdhorhhgpdhrtghpth
    htoheplhhjsheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhurhgvnhgssehgohho
    ghhlvgdrtghomhdprhgtphhtthhopehvsggrsghkrgeskhgvrhhnvghlrdhorhhgpdhrtg
    hpthhtoheplhhirghmrdhhohiflhgvthhtsehorhgrtghlvgdrtghomhdprhgtphhtthho
    peiiihihsehnvhhiughirgdrtghomh
X-ME-Proxy: <xmx:gFwQalBa1uvzeTJ11bRNHmq1YLQ1kCtTLnxNO8oONM8wl8jYNQdAfA>
    <xmx:gFwQarUPeb-L9hjtBP3lobglCyoCzrkrCQE6WgHQYVY4-bok_qzWRw>
    <xmx:gFwQar_myCXHNMyHLKUUQ6oBjOdmMHBJ9jABK-j3CsImNNnVnfHL3A>
    <xmx:gFwQapkxshqiYvbSS5CfW-d-bJP2-lG3SxPvy_WtrxHAcy8Wgd0Ymg>
    <xmx:gFwQaoJtusc7HNb6Uat6i_u4MuvjiXPeN2MtuymcY7SmfSiOpgfRNXg9>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:11 -0400 (EDT)
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
Subject: [PATCH v3 01/16] mm: decouple protnone helpers from CONFIG_NUMA_BALANCING
Date: Fri, 22 May 2026 14:38:42 +0100
Message-ID: <20260522133857.552279-2-kirill@shutemov.name>
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
	TAGGED_FROM(0.00)[bounces-5565-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: E87CD5B5C05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

pte_protnone() and pmd_protnone() detect present-but-inaccessible page
table entries. This capability is useful beyond NUMA balancing -- for
example, userfaultfd working set tracking uses protnone PTEs to track
page access without unmapping pages.

Introduce CONFIG_ARCH_HAS_PTE_PROTNONE to decouple the protnone PTE
infrastructure from CONFIG_NUMA_BALANCING. The six architectures that
support protnone PTEs (x86_64, arm64, powerpc, s390, riscv, loongarch)
now select this option, and CONFIG_NUMA_BALANCING depends on it.

No functional change -- the same set of architectures continues to have
working protnone support, but the infrastructure is now available
independently of NUMA balancing.

Signed-off-by: Kiryl Shutsemau (Meta) <kas@kernel.org>
Assisted-by: Claude:claude-opus-4-6
Acked-by: SeongJae Park <sj@kernel.org>
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 arch/arm64/Kconfig                           |  1 +
 arch/arm64/include/asm/pgtable.h             |  7 ++---
 arch/loongarch/Kconfig                       |  1 +
 arch/loongarch/include/asm/pgtable.h         |  4 +--
 arch/powerpc/include/asm/book3s/64/pgtable.h |  8 ++---
 arch/powerpc/platforms/Kconfig.cputype       |  1 +
 arch/riscv/Kconfig                           |  1 +
 arch/riscv/include/asm/pgtable.h             |  7 ++---
 arch/s390/Kconfig                            |  1 +
 arch/s390/include/asm/pgtable.h              |  4 +--
 arch/x86/Kconfig                             |  1 +
 arch/x86/include/asm/pgtable.h               |  8 ++---
 include/linux/pgtable.h                      | 32 ++++++++++++++------
 init/Kconfig                                 |  8 +++++
 mm/debug_vm_pgtable.c                        |  4 +--
 15 files changed, 52 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index fe60738e5943..319470b3b1bb 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -78,6 +78,7 @@ config ARM64
 	select ARCH_SUPPORTS_CFI
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128
+	select ARCH_HAS_PTE_PROTNONE
 	select ARCH_SUPPORTS_NUMA_BALANCING
 	select ARCH_SUPPORTS_PAGE_TABLE_CHECK
 	select ARCH_SUPPORTS_PER_VMA_LOCK
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 4dfa42b7d053..873f4ea2e288 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -553,10 +553,7 @@ static inline pte_t pte_swp_clear_uffd_wp(pte_t pte)
 }
 #endif /* CONFIG_HAVE_ARCH_USERFAULTFD_WP */
 
-#ifdef CONFIG_NUMA_BALANCING
-/*
- * See the comment in include/linux/pgtable.h
- */
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline int pte_protnone(pte_t pte)
 {
 	/*
@@ -575,7 +572,7 @@ static inline int pmd_protnone(pmd_t pmd)
 {
 	return pte_protnone(pmd_pte(pmd));
 }
-#endif
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 #define pmd_present(pmd)	pte_present(pmd_pte(pmd))
 #define pmd_dirty(pmd)		pte_dirty(pmd_pte(pmd))
diff --git a/arch/loongarch/Kconfig b/arch/loongarch/Kconfig
index 3b042dbb2c41..229b3d1b7056 100644
--- a/arch/loongarch/Kconfig
+++ b/arch/loongarch/Kconfig
@@ -67,6 +67,7 @@ config LOONGARCH
 	select ARCH_SUPPORTS_LTO_CLANG
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_SUPPORTS_MSEAL_SYSTEM_MAPPINGS
+	select ARCH_HAS_PTE_PROTNONE
 	select ARCH_SUPPORTS_NUMA_BALANCING if NUMA
 	select ARCH_SUPPORTS_PER_VMA_LOCK
 	select ARCH_SUPPORTS_RT
diff --git a/arch/loongarch/include/asm/pgtable.h b/arch/loongarch/include/asm/pgtable.h
index 2a0b63ae421f..d295447a2763 100644
--- a/arch/loongarch/include/asm/pgtable.h
+++ b/arch/loongarch/include/asm/pgtable.h
@@ -619,7 +619,7 @@ static inline pmd_t pmdp_huge_get_and_clear(struct mm_struct *mm,
 
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
 
-#ifdef CONFIG_NUMA_BALANCING
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline long pte_protnone(pte_t pte)
 {
 	return (pte_val(pte) & _PAGE_PROTNONE);
@@ -629,7 +629,7 @@ static inline long pmd_protnone(pmd_t pmd)
 {
 	return (pmd_val(pmd) & _PAGE_PROTNONE);
 }
-#endif /* CONFIG_NUMA_BALANCING */
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 #define pmd_leaf(pmd)		((pmd_val(pmd) & _PAGE_HUGE) != 0)
 #define pud_leaf(pud)		((pud_val(pud) & _PAGE_HUGE) != 0)
diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index e67e64ac6e8c..53a0c5892548 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -490,13 +490,13 @@ static inline pte_t pte_clear_soft_dirty(pte_t pte)
 }
 #endif /* CONFIG_HAVE_ARCH_SOFT_DIRTY */
 
-#ifdef CONFIG_NUMA_BALANCING
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline int pte_protnone(pte_t pte)
 {
 	return (pte_raw(pte) & cpu_to_be64(_PAGE_PRESENT | _PAGE_PTE | _PAGE_RWX)) ==
 		cpu_to_be64(_PAGE_PRESENT | _PAGE_PTE);
 }
-#endif /* CONFIG_NUMA_BALANCING */
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 static inline bool pte_hw_valid(pte_t pte)
 {
@@ -1067,12 +1067,12 @@ static inline pte_t *pmdp_ptep(pmd_t *pmd)
 #endif
 #endif /* CONFIG_HAVE_ARCH_SOFT_DIRTY */
 
-#ifdef CONFIG_NUMA_BALANCING
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline int pmd_protnone(pmd_t pmd)
 {
 	return pte_protnone(pmd_pte(pmd));
 }
-#endif /* CONFIG_NUMA_BALANCING */
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 #define pmd_write(pmd)		pte_write(pmd_pte(pmd))
 
diff --git a/arch/powerpc/platforms/Kconfig.cputype b/arch/powerpc/platforms/Kconfig.cputype
index bac02c83bb3e..36b64a24cf30 100644
--- a/arch/powerpc/platforms/Kconfig.cputype
+++ b/arch/powerpc/platforms/Kconfig.cputype
@@ -87,6 +87,7 @@ config PPC_BOOK3S_64
 	select ARCH_ENABLE_HUGEPAGE_MIGRATION if HUGETLB_PAGE && MIGRATION
 	select ARCH_ENABLE_SPLIT_PMD_PTLOCK
 	select ARCH_SUPPORTS_HUGETLBFS
+	select ARCH_HAS_PTE_PROTNONE
 	select ARCH_SUPPORTS_NUMA_BALANCING
 	select HAVE_MOVE_PMD
 	select HAVE_MOVE_PUD
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d235396c4514..9eb4a9315bdf 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -71,6 +71,7 @@ config RISCV
 	select ARCH_SUPPORTS_MSEAL_SYSTEM_MAPPINGS if 64BIT && MMU
 	select ARCH_SUPPORTS_PAGE_TABLE_CHECK if MMU
 	select ARCH_SUPPORTS_PER_VMA_LOCK if MMU
+	select ARCH_HAS_PTE_PROTNONE if MMU
 	select ARCH_SUPPORTS_RT
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_SCHED_MC if SMP
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index a1a7c6520a09..48a127323b21 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -524,10 +524,7 @@ static inline pte_t pte_swp_clear_soft_dirty(pte_t pte)
 					PAGE_SIZE)
 #endif
 
-#ifdef CONFIG_NUMA_BALANCING
-/*
- * See the comment in include/asm-generic/pgtable.h
- */
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline int pte_protnone(pte_t pte)
 {
 	return (pte_val(pte) & (_PAGE_PRESENT | _PAGE_PROT_NONE)) == _PAGE_PROT_NONE;
@@ -537,7 +534,7 @@ static inline int pmd_protnone(pmd_t pmd)
 {
 	return pte_protnone(pmd_pte(pmd));
 }
-#endif
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 /* Modify page protection bits */
 static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index ecbcbb781e40..bc5bef08454b 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -151,6 +151,7 @@ config S390
 	select ARCH_SUPPORTS_HUGETLBFS
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && CC_IS_CLANG
 	select ARCH_SUPPORTS_MSEAL_SYSTEM_MAPPINGS
+	select ARCH_HAS_PTE_PROTNONE
 	select ARCH_SUPPORTS_NUMA_BALANCING
 	select ARCH_SUPPORTS_PAGE_TABLE_CHECK
 	select ARCH_SUPPORTS_PER_VMA_LOCK
diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
index 2c6cee8241e0..97241dea5573 100644
--- a/arch/s390/include/asm/pgtable.h
+++ b/arch/s390/include/asm/pgtable.h
@@ -842,7 +842,7 @@ static inline int pte_same(pte_t a, pte_t b)
 	return pte_val(a) == pte_val(b);
 }
 
-#ifdef CONFIG_NUMA_BALANCING
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline int pte_protnone(pte_t pte)
 {
 	return pte_present(pte) && !(pte_val(pte) & _PAGE_READ);
@@ -853,7 +853,7 @@ static inline int pmd_protnone(pmd_t pmd)
 	/* pmd_leaf(pmd) implies pmd_present(pmd) */
 	return pmd_leaf(pmd) && !(pmd_val(pmd) & _SEGMENT_ENTRY_READ);
 }
-#endif
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 static inline bool pte_swp_exclusive(pte_t pte)
 {
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index f3f7cb01d69d..9da1119e8ff6 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -123,6 +123,7 @@ config X86
 	select ARCH_SUPPORTS_DEBUG_PAGEALLOC
 	select ARCH_SUPPORTS_HUGETLBFS
 	select ARCH_SUPPORTS_PAGE_TABLE_CHECK	if X86_64
+	select ARCH_HAS_PTE_PROTNONE		if X86_64
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
 	select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP	if NR_CPUS <= 4096
 	select ARCH_SUPPORTS_CFI		if X86_64
diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
index 2187e9cfcefa..c7f014cbf0a9 100644
--- a/arch/x86/include/asm/pgtable.h
+++ b/arch/x86/include/asm/pgtable.h
@@ -985,11 +985,7 @@ static inline int pmd_present(pmd_t pmd)
 	return pmd_flags(pmd) & (_PAGE_PRESENT | _PAGE_PROTNONE | _PAGE_PSE);
 }
 
-#ifdef CONFIG_NUMA_BALANCING
-/*
- * These work without NUMA balancing but the kernel does not care. See the
- * comment in include/linux/pgtable.h
- */
+#ifdef CONFIG_ARCH_HAS_PTE_PROTNONE
 static inline int pte_protnone(pte_t pte)
 {
 	return (pte_flags(pte) & (_PAGE_PROTNONE | _PAGE_PRESENT))
@@ -1001,7 +997,7 @@ static inline int pmd_protnone(pmd_t pmd)
 	return (pmd_flags(pmd) & (_PAGE_PROTNONE | _PAGE_PRESENT))
 		== _PAGE_PROTNONE;
 }
-#endif /* CONFIG_NUMA_BALANCING */
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 static inline int pmd_none(pmd_t pmd)
 {
diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index cdd68ed3ae1a..b6516a11adfa 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -2052,18 +2052,26 @@ static inline int pud_trans_unstable(pud_t *pud)
 	return 0;
 }
 
-#ifndef CONFIG_NUMA_BALANCING
+#ifndef CONFIG_ARCH_HAS_PTE_PROTNONE
 /*
- * In an inaccessible (PROT_NONE) VMA, pte_protnone() may indicate "yes". It is
- * perfectly valid to indicate "no" in that case, which is why our default
- * implementation defaults to "always no".
+ * In an inaccessible (PROT_NONE) VMA, pte_protnone() may indicate "yes". It
+ * is perfectly valid to indicate "no" in that case, which is why our
+ * default implementation defaults to "always no".
  *
- * In an accessible VMA, however, pte_protnone() reliably indicates PROT_NONE
- * page protection due to NUMA hinting. NUMA hinting faults only apply in
- * accessible VMAs.
+ * In an accessible VMA, pte_protnone() reliably indicates a present
+ * PROT_NONE page protection. Today the kernel uses such PTEs for two
+ * purposes: NUMA hinting faults, and userfaultfd RWP tracking on
+ * VM_UFFD_RWP VMAs. The two are distinguished by the uffd PTE bit and
+ * the VMA flag; see include/linux/userfaultfd_k.h.
  *
- * So, to reliably identify PROT_NONE PTEs that require a NUMA hinting fault,
- * looking at the VMA accessibility is sufficient.
+ * So, to reliably identify PROT_NONE PTEs that require kernel handling,
+ * looking at the VMA accessibility (and the uffd bit on RWP VMAs) is
+ * sufficient.
+ *
+ * Architectures without CONFIG_ARCH_HAS_PTE_PROTNONE get the always-zero
+ * stubs below; PAGE_NONE references that survive to runtime fire the
+ * BUILD_BUG() fallback, since callers should have folded such paths to
+ * dead code via IS_ENABLED(CONFIG_ARCH_HAS_PTE_PROTNONE).
  */
 static inline int pte_protnone(pte_t pte)
 {
@@ -2074,7 +2082,11 @@ static inline int pmd_protnone(pmd_t pmd)
 {
 	return 0;
 }
-#endif /* CONFIG_NUMA_BALANCING */
+
+#ifndef PAGE_NONE
+#define PAGE_NONE ({ BUILD_BUG(); (pgprot_t){0}; })
+#endif
+#endif /* CONFIG_ARCH_HAS_PTE_PROTNONE */
 
 #endif /* CONFIG_MMU */
 
diff --git a/init/Kconfig b/init/Kconfig
index 2937c4d308ae..58abb7f19206 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -944,6 +944,13 @@ config SCHED_PROXY_EXEC
 
 endmenu
 
+#
+# For architectures that support present-but-inaccessible (PROT_NONE) page
+# table entries detectable via pte_protnone() / pmd_protnone():
+#
+config ARCH_HAS_PTE_PROTNONE
+	bool
+
 #
 # For architectures that want to enable the support for NUMA-affine scheduler
 # balancing logic:
@@ -1010,6 +1017,7 @@ config ARCH_WANT_NUMA_VARIABLE_LOCALITY
 config NUMA_BALANCING
 	bool "Memory placement aware NUMA scheduler"
 	depends on ARCH_SUPPORTS_NUMA_BALANCING
+	depends on ARCH_HAS_PTE_PROTNONE
 	depends on !ARCH_WANT_NUMA_VARIABLE_LOCALITY
 	depends on SMP && NUMA_MIGRATION && !PREEMPT_RT
 	help
diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index 23dc3ee09561..5e9f3a35f924 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -672,7 +672,7 @@ static void __init pte_protnone_tests(struct pgtable_debug_args *args)
 {
 	pte_t pte = pfn_pte(args->fixed_pte_pfn, args->page_prot_none);
 
-	if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
+	if (!IS_ENABLED(CONFIG_ARCH_HAS_PTE_PROTNONE))
 		return;
 
 	pr_debug("Validating PTE protnone\n");
@@ -685,7 +685,7 @@ static void __init pmd_protnone_tests(struct pgtable_debug_args *args)
 {
 	pmd_t pmd;
 
-	if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
+	if (!IS_ENABLED(CONFIG_ARCH_HAS_PTE_PROTNONE))
 		return;
 
 	if (!has_transparent_hugepage())
-- 
2.51.2


