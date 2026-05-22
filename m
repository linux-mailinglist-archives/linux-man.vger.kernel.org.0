Return-Path: <linux-man+bounces-5564-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEaRBsBnEGpJXAYAu9opvQ
	(envelope-from <linux-man+bounces-5564-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:27:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E475B621D
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 01BDF303B0A2
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605263A63E3;
	Fri, 22 May 2026 13:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="g0SM78QP";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="qmqs2E2j"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7F93FFAAD;
	Fri, 22 May 2026 13:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457153; cv=none; b=r7MnccQE/sJ4IujudS23MFBTBKK4iJBftEAcxHleMP1kYJfj+gSEZm83fZwTwMa3HgNCUP8mZEMN5IxMY2FVF+T9rzgsncJjRSbPvdJyw6VXHMBQHbMp3sNrR59s6d6wUolG1R/5XC4ocJcdvY881fPg8W+x+08fcSpQUr77sE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457153; c=relaxed/simple;
	bh=CzDsO3eba2UdOF6qF2Vh5B5OJHCW3X302UlPr8/cg08=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=scZE0FJW9U3V2tIhxUpJ80F2GEv2ZZR4fwANDK1Xoc1BqAibZlDUGbm/Le9iV22IOrhK185EYA7f+tMI39B66qx+pGRfZARXBSIPW3yWApJb++v4di1mEUry8RlrtJPNYPNDudJNLX2E4YAtAgyzA3wsuQTthjaLZ68ONWVzH8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=g0SM78QP; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=qmqs2E2j; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id 7E8801D00072;
	Fri, 22 May 2026 09:39:09 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Fri, 22 May 2026 09:39:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:subject:subject:to:to; s=fm2; t=1779457149; x=
	1779543549; bh=60TM9NRLcDxoLP/n4ee+semPNu4DhUvbIg8bvNUrqi4=; b=g
	0SM78QPPZ8Oo9MTi/aqHJBBQiJUbflFBPUIbImkl9HTX8KN9SS7RvIafM/dGK/lQ
	BsTl+TLxrpPYHrAAmpCROTpHjkGMFB+Q13tGBdguErqtr+dp8sqvj+CU7twMEd9K
	sFiQelyFRbDVGzPxNcwhpTGy/41HpPcPs9PXirMrzj2DBtlNxQxGdUtG7k+rCO3r
	lBxjdnWXiUyz0AATnXGvKg63GpaPBJ7KgKHE2r8ipVftJtGbUY2coHh9ZLJNAUQz
	nvvxK/e08tKI62yW8oJJut9+C3tukT6I9Z2zsToYTJSpWYCn2D0DOltUZtASaFQo
	+AejVbWf81Gwo6ftXjERw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1779457149; x=1779543549; bh=60TM9NRLcDxoLP/n4ee+semPNu4D
	hUvbIg8bvNUrqi4=; b=qmqs2E2jze8pqhsy4cfzmYRldy3j6mC8xGjucE6TWyjp
	9dM+t7NEaX+v+94rWolbGTOEcxgNAdUwNqonR9DcsFPkS0mI/AZZho2wE8pxcUgi
	qTA/5NXzwaBIB3UVDQAERUoT7p0ioGjRZoh584GxTC2zK1x4LqG21X21hVYlBfBP
	aw8AEwa7TjtNJ5WmoFX9UtKSVuwEoPGD7cmL6T8kKXuZHcGqv5ZmElM+BilJhJ1J
	ncetrLgZ1epYFfnfVK+h65E7xKd85qIu6iQ0F1gpgwdazVQpWolDWy3J+/L/ctQu
	ZfIpTBiMolVI9YMHuFkTKg+Bexb0b+Xb9Ek4ZnWwAA==
X-ME-Sender: <xms:fFwQaqs9Hf1sa2lok2s5q_gTa130KuC8aVjRqsd0tbWv1MK-QSxLJA>
    <xme:fFwQagibLxasFfYptt8TVlaDZ8V2OibFa0_cV-rPfVKCRG7gsa8JdOr4qCElffI6p
    IyOa8Fv9vUUbM-Cv5WfrlynardUghqnbc9szUwL-s3P8ygRxws-uA>
X-ME-Received: <xmr:fFwQaosHdknRjB_nDut5r3QA3Q_n93kWldDvEClgL2k9_q_R_emn4TMXJsl5SA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduhedtfedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffogggtgfesthekredtre
    dtjeenucfhrhhomhepmfhirhihlhcuufhhuhhtshgvmhgruhcuoehkihhrihhllhesshhh
    uhhtvghmohhvrdhnrghmvgeqnecuggftrfgrthhtvghrnhepueeltedvledugffghfehie
    dufeekheeijeeiveeigfdvudeifffghfeftdeltdegnecuffhomhgrihhnpehkvghrnhgv
    lhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehkihhrihhllhesshhhuhhtvghmohhvrdhnrghmvgdpnhgspghrtghpthhtohepvdei
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrkhhpmheslhhinhhugidqfhhouh
    hnuggrthhiohhnrdhorhhgpdhrtghpthhtoheprhhpphhtsehkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopehpvghtvghrgiesrhgvughhrghtrdgtohhmpdhrtghpthhtohepuggrvh
    hiugeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhjsheskhgvrhhnvghlrdhorhhg
    pdhrtghpthhtohepshhurhgvnhgssehgohhoghhlvgdrtghomhdprhgtphhtthhopehvsg
    grsghkrgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhirghmrdhhohiflhgvthht
    sehorhgrtghlvgdrtghomhdprhgtphhtthhopeiiihihsehnvhhiughirgdrtghomh
X-ME-Proxy: <xmx:fFwQai5eBiMnN667hBm3cDiOGpL9jEKsPNrWB9m3QQGGcd2E2EeL3w>
    <xmx:fFwQajspDHcV6GCykoxP7SQTwmb1tiBBgWKt6bTvEXr9s--zDFFTOQ>
    <xmx:fFwQas0o4TNpJTwLNCJtAN3Ssn_8NsZ2wUOdK_YqSpTHvUbjJhfNQg>
    <xmx:fFwQao_lRu8vcvZlmrSu0bywGqfgFQVxHmJpqiJCDXH_roX6-gvMoQ>
    <xmx:fVwQamjbMWSs4iStWlBnShbnjZTbmtwqNloUMhgcM2KzqQW_S-N5knfG>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:08 -0400 (EDT)
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
Subject: [PATCH v3 00/16] userfaultfd: working set tracking for VM guest memory
Date: Fri, 22 May 2026 14:38:41 +0100
Message-ID: <20260522133857.552279-1-kirill@shutemov.name>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5564-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[shutemov.name];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 14E475B621D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

This series adds userfaultfd support for tracking the working set of
VM guest memory, so a VMM can identify cold pages and evict them to
tiered or remote storage.

v1: https://lore.kernel.org/all/20260427114607.4068647-1-kas@kernel.org/
v2: https://lore.kernel.org/all/cover.1778254670.git.kas@kernel.org/

== Changes since v2 ==

Review feedback from Mike Rapoport and SeongJae Park; tags folded in.

  - 03/16: rename uffd_wp local in copy_hugetlb_page_range() (SJ).
  - 04/16: group mode and protection bits in __VM_UFFD_FLAGS et al;
    move CONFIG_USERFAULTFD_RWP to 08/16 where the UAPI lands.
  - 05/16: fold uffd_wp/uffd_rwp bool pairs into uffd_prot in
    change_huge_pmd(), change_softleaf_pte(), change_present_ptes();
    nit fixes in comments.
  - 08/16: pre-scan rewritten as bool found; CONFIG_USERFAULTFD_RWP
    moved here from 04/16.
  - 09/16: line reflow.
  - 13/16: rewrite uffd_rwp_gup_test() with vmsplice() -- write()
    went through copy_from_user(), not gup_can_follow_protnone();
    plus selftest cleanups.
  - 14/16: documentation wording fixes.

Patches 15-16 are the matching userfaultfd(2) and ioctl_userfaultfd(2)
man-page updates against the linux-man tree. Apply with
"git am --directory=" or by hand in the man-pages repo.

== Problem ==

A VMM managing guest memory needs to:

  1. detect which pages are still being touched (working-set
     tracking);
  2. safely evict cold pages to slower tiered or remote storage;
  3. fetch them back on demand when accessed again.

== Approach ==

UFFDIO_REGISTER_MODE_RWP is a new userfaultfd registration mode, in
parallel with the existing MODE_MISSING / MODE_WP / MODE_MINOR. It
uses the same mechanism on every backing -- anon, shmem, hugetlbfs:

  - PAGE_NONE on the PTE (the same primitive NUMA balancing uses)
    makes the page inaccessible while keeping it resident;
  - the uffd PTE bit (the one MODE_WP already owns) marks the entry
    as "userfaultfd-tracked" so the protnone fault path can tell an
    RWP fault apart from an mprotect(PROT_NONE) or NUMA hinting
    fault.

VM_UFFD_WP and VM_UFFD_RWP are mutually exclusive per VMA, so the
same PTE bit safely carries both meanings depending on the
registered VMA flag.

In sync mode, the kernel delivers a UFFD_PAGEFAULT_FLAG_RWP message
to the registered handler, and the handler resolves the fault with
UFFDIO_RWPROTECT clearing MODE_RWP. In async mode
(UFFD_FEATURE_RWP_ASYNC), the fault is auto-resolved in-place: the
kernel restores the original PTE permissions and the faulting thread
continues without a userfaultfd message ever being delivered.
Userspace then learns which pages were touched by reading
PAGE_IS_ACCESSED out of PAGEMAP_SCAN -- pages whose uffd bit is
still set were not re-accessed since the last RWP cycle.

UFFDIO_RWPROTECT is the protect/unprotect ioctl, mirroring
UFFDIO_WRITEPROTECT.

UFFDIO_SET_MODE flips RWP_ASYNC <-> sync at runtime under
mmap_write_lock(), so a VMM can run in async mode for detection and
switch to sync for race-free eviction without re-registering the
userfaultfd.

== Typical VMM workflow ==

  /* arm */
  UFFDIO_API(features = RWP | RWP_ASYNC)
  UFFDIO_REGISTER(MODE_RWP)

  /* detection cycle */
  UFFDIO_RWPROTECT(range, RWP)
  sleep(interval)
  PAGEMAP_SCAN(!PAGE_IS_ACCESSED) -> cold pages

  /* eviction */
  UFFDIO_SET_MODE(disable = RWP_ASYNC)                  /* sync */
  pwrite(cold) + fallocate(FALLOC_FL_PUNCH_HOLE, cold)  /* races trapped */
  UFFDIO_SET_MODE(enable  = RWP_ASYNC)                  /* resume */

== Series layout ==

Patches 1 to 3 are preparatory:

  1: decouple protnone helpers from CONFIG_NUMA_BALANCING.
  2-3: rename _PAGE_BIT_UFFD_WP, pte_uffd_wp() and friends to drop
       the _WP suffix, since the bit now carries WP and RWP meaning
       depending on the VMA flag. The SCAN_PTE_UFFD enum's ftrace
       output string is intentionally kept as "pte_uffd_wp" so
       trace-based tooling does not silently break.

Patches 4 to 7 add the in-kernel mechanism:

  4: VM_UFFD_RWP VMA flag (aliased to VM_NONE until 8/16 introduces
     CONFIG_USERFAULTFD_RWP together with the UAPI).
  5: MM_CP_UFFD_RWP change_protection() primitive (PAGE_NONE +
     uffd bit, plus a RESOLVE counterpart).
  6: marker preservation across swap, device-exclusive, migration,
     fork, mremap, UFFDIO_MOVE, hugetlb copy, and mprotect().
  7: handle VM_UFFD_RWP in khugepaged, rmap, and GUP.

Patches 8 to 12 wire the userspace surface:

   8: UFFDIO_REGISTER_MODE_RWP and UFFDIO_RWPROTECT plumbing
      (introduces CONFIG_USERFAULTFD_RWP).
   9: RWP fault delivery and exposure of UFFDIO_REGISTER_MODE_RWP.
  10: PAGE_IS_ACCESSED in PAGEMAP_SCAN.
  11: UFFD_FEATURE_RWP_ASYNC for async fault resolution.
  12: UFFDIO_SET_MODE for runtime sync/async toggle.

Patches 13 and 14 are kernel tests and Documentation/. Patches 15 and
16 update userfaultfd(2) and ioctl_userfaultfd(2) in the linux-man
tree.

Kiryl Shutsemau (Meta) (16):
  mm: decouple protnone helpers from CONFIG_NUMA_BALANCING
  mm: rename uffd-wp PTE bit macros to uffd
  mm: rename uffd-wp PTE accessors to uffd
  mm: add VM_UFFD_RWP VMA flag
  mm: add MM_CP_UFFD_RWP change_protection() flag
  mm: preserve RWP marker across PTE rewrites
  mm: handle VM_UFFD_RWP in khugepaged, rmap, and GUP
  userfaultfd: add UFFDIO_REGISTER_MODE_RWP and UFFDIO_RWPROTECT
    plumbing
  mm/userfaultfd: add RWP fault delivery and expose
    UFFDIO_REGISTER_MODE_RWP
  mm/pagemap: add PAGE_IS_ACCESSED for RWP tracking
  userfaultfd: add UFFD_FEATURE_RWP_ASYNC for async fault resolution
  userfaultfd: add UFFDIO_SET_MODE for runtime sync/async toggle
  selftests/mm: add userfaultfd RWP tests
  Documentation/userfaultfd: document RWP working set tracking
  userfaultfd.2: Add read-write protect mode
  ioctl_userfaultfd.2: Add read-write protect mode docs

 Documentation/admin-guide/mm/pagemap.rst     |  13 +-
 Documentation/admin-guide/mm/userfaultfd.rst | 236 +++++-
 Documentation/filesystems/proc.rst           |   1 +
 arch/arm64/Kconfig                           |   1 +
 arch/arm64/include/asm/pgtable-prot.h        |   8 +-
 arch/arm64/include/asm/pgtable.h             |  47 +-
 arch/loongarch/Kconfig                       |   1 +
 arch/loongarch/include/asm/pgtable.h         |   4 +-
 arch/powerpc/include/asm/book3s/64/pgtable.h |   8 +-
 arch/powerpc/platforms/Kconfig.cputype       |   1 +
 arch/riscv/Kconfig                           |   1 +
 arch/riscv/include/asm/pgtable-bits.h        |  12 +-
 arch/riscv/include/asm/pgtable.h             |  59 +-
 arch/s390/Kconfig                            |   1 +
 arch/s390/include/asm/hugetlb.h              |  12 +-
 arch/s390/include/asm/pgtable.h              |   4 +-
 arch/x86/Kconfig                             |   1 +
 arch/x86/include/asm/pgtable.h               |  56 +-
 arch/x86/include/asm/pgtable_types.h         |  16 +-
 fs/proc/task_mmu.c                           | 108 ++-
 fs/userfaultfd.c                             | 263 ++++++-
 include/asm-generic/hugetlb.h                |  18 +-
 include/asm-generic/pgtable_uffd.h           |  32 +-
 include/linux/huge_mm.h                      |   7 +
 include/linux/leafops.h                      |   4 +-
 include/linux/mm.h                           |  46 +-
 include/linux/mm_inline.h                    |   4 +-
 include/linux/pgtable.h                      |  32 +-
 include/linux/swapops.h                      |   4 +-
 include/linux/userfaultfd_k.h                |  78 +-
 include/trace/events/huge_memory.h           |   2 +-
 include/trace/events/mmflags.h               |   7 +
 include/uapi/linux/fs.h                      |   1 +
 include/uapi/linux/userfaultfd.h             |  54 +-
 init/Kconfig                                 |   8 +
 mm/Kconfig                                   |   9 +
 mm/debug_vm_pgtable.c                        |   4 +-
 mm/huge_memory.c                             | 155 +++-
 mm/hugetlb.c                                 | 146 +++-
 mm/internal.h                                |   4 +-
 mm/khugepaged.c                              |  38 +-
 mm/memory.c                                  | 123 ++-
 mm/migrate.c                                 |  20 +-
 mm/migrate_device.c                          |   8 +-
 mm/mprotect.c                                |  68 +-
 mm/mremap.c                                  |  17 +-
 mm/page_table_check.c                        |   8 +-
 mm/rmap.c                                    |  18 +-
 mm/swapfile.c                                |   9 +-
 mm/userfaultfd.c                             | 112 ++-
 tools/include/uapi/linux/fs.h                |   1 +
 tools/testing/selftests/mm/uffd-unit-tests.c | 766 +++++++++++++++++++
 man2/ioctl_userfaultfd.2                     | 209 ++++++++++++++++++++++++++++++++++++++-
 man2/userfaultfd.2                           | 147 ++++++++++++++++++++++++++-
 54 files changed, 2586 insertions(+), 426 deletions(-)

base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
-- 
2.51.2


