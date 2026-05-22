Return-Path: <linux-man+bounces-5577-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PNsEZZiEGphWwYAu9opvQ
	(envelope-from <linux-man+bounces-5577-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:05:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4EE5B5CD7
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 16:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37E1C3112F88
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013C0425CF0;
	Fri, 22 May 2026 13:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="XRQkBGcG";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="XUl4SuKN"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64C0423175;
	Fri, 22 May 2026 13:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457190; cv=none; b=Z+XEOrxs9RMdyL/uDUooLwh+6tmgwf1WSVsKiYuBZchzU49Lnp4pS9UX56u/FAX/G4OFC6qWqFle919pq5uuPY3bAuPGBYnAcS4Sq7GB1Fb5KbHCJeVIHxyRyneFWAA5zpjIiWu4VtbMwADklFU4zog3Ma+O6Y1Nzxyftv4hplE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457190; c=relaxed/simple;
	bh=EHf6a2CTgl6Meib7qtj04+Nga45BdOt5tT8uSNWskX4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a2pSlPGBwXwWfn9+u4mr4CET0H/tp5+USrK4Y6zQnrl331AVFIYchBk2/1ci0/uWH45IY9Fnld5ZeOa9ZXCE4KhWw/uioGko3J519qdI7ZAzJ+sqwEY19yNNH3qm5m2xRPA8sghVJocPIhOXpraMwWsOVQRvyWf04niVYJW+j6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=XRQkBGcG; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=XUl4SuKN; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 6F0101D0011E;
	Fri, 22 May 2026 09:39:46 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 22 May 2026 09:39:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1779457186; x=1779543586; bh=m8tLFE9pHt2T/fAqSqYbmXbLxUOF+bN/
	k9MuWOxvlPk=; b=XRQkBGcGDI7mB2HeE+qtOa25rGgGXMCrtFu2P/VsIzrJbMFp
	Gbw+e59jnb8m05sM3/s/4tNGSdiAU9APos9Dlcd4LRTa6DzTs8VDo53tB8EHA5b1
	A1eO1lyEImxHlHEgiVHQhWv66wDaEthu/pJ0Iikcv1TcP4PLzGGkG9zSYHyQjLDj
	UMbsz1fYV68kQc1dqWVjA3H2teqvzi1lZjHRObPB1Mqqubq6oQxlZW7ejuEgT8FL
	gAl8x1X4vXM+IE258qoj96GaFFVLUNJwUR27e2IZ3CghnpCXj2aORG4My4ydDI0U
	S55yppvVg6dqoCkqz3on7nc9IkNa0WAYAmdyLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1779457186; x=
	1779543586; bh=m8tLFE9pHt2T/fAqSqYbmXbLxUOF+bN/k9MuWOxvlPk=; b=X
	Ul4SuKNSf8uluzHMVEFVz0YoS8tWsh1dQUKSYvwgk2FfRWiC52TItE7lHDDwOnCw
	vo4uEljwGt5FmvmEwIpTy+vqM8j1fu9vK7xrS7CZiMCJndguRMDIGeNFprxb0bcL
	e+KSRanD7OXCg/6/3QYcTpS1edwTMkkP+emNtX5CpDQZL7/nZSqq/+HQK4ymoH95
	JW9nKunas8UAHqZS9d40TLJYnxzM7Nuv0X4h18zvsMlxk/fyz5n/21POFbZjAinD
	dEyQIk7zQCZL5I1mKZqxsE9LFBZaD3ix+0elG9fmn7TWYDNu9IVBczP9+ReF0Vp2
	A90fF241SEebbXbQMav9w==
X-ME-Sender: <xms:olwQait2eQFXYjGZR9c0lDmUfPlXvB1-7Y1xcWbjMG5NKT8HFz-UYA>
    <xme:olwQaoipNuJM_-1w-2ZIYrtnzedNNn3mTiUVi_ubqI4SeQVQFOt_f2czaNZihe-aP
    5kLAS0kwDkEAe3i6eQanztHPzgLvrqxRAihDH0ew15JGvuZ-Uiy8w>
X-ME-Received: <xmr:olwQags0ft261hejZBJxboQf6htql-Q3EupdJJGlxD-AGL88EC4u2xsJgtEHwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduhedtfeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfgggtgfesthekre
    dtredtjeenucfhrhhomhepmfhirhihlhcuufhhuhhtshgvmhgruhcuoehkihhrihhllhes
    shhhuhhtvghmohhvrdhnrghmvgeqnecuggftrfgrthhtvghrnhepteefveejgeffleefff
    egiedtieegiedugeekudehtedvjeetvdegieeikefffeevnecuvehluhhsthgvrhfuihii
    vgepvdenucfrrghrrghmpehmrghilhhfrhhomhepkhhirhhilhhlsehshhhuthgvmhhovh
    drnhgrmhgvpdhnsggprhgtphhtthhopedviedpmhhouggvpehsmhhtphhouhhtpdhrtghp
    thhtoheprghkphhmsehlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtth
    hopehrphhptheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgvthgvrhigsehrvggu
    hhgrthdrtghomhdprhgtphhtthhopegurghvihgusehkvghrnhgvlhdrohhrghdprhgtph
    htthhopehljhhssehkvghrnhgvlhdrohhrghdprhgtphhtthhopehsuhhrvghnsgesghho
    ohhglhgvrdgtohhmpdhrtghpthhtohepvhgsrggskhgrsehkvghrnhgvlhdrohhrghdprh
    gtphhtthhopehlihgrmhdrhhhofihlvghtthesohhrrggtlhgvrdgtohhmpdhrtghpthht
    ohepiihihiesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:olwQaq5QfIi0qYrscn2tOkYtesTyVyZlx3wDjHAqlsDoxEGLfMIP7Q>
    <xmx:olwQartpIzAGl4HK5ALgRhDDLCCJH3bVQH6ww4__ewEdASKD8QcnrQ>
    <xmx:olwQak2fulxNTW8Wcq7UY4RLAZE0JZvK4RmnXhiMblsiTSKjByM4UA>
    <xmx:olwQag9aVfJxWPuU4zS06Qs3Yp5ybHO8w84udjvFXDspbghd82hzJA>
    <xmx:olwQamZ_wKcDPxWQyhBEnc3rqusyY-2MhZhDk0lODWLfDgLRWvmcid_M>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:45 -0400 (EDT)
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
Subject: [PATCH v3 13/16] selftests/mm: add userfaultfd RWP tests
Date: Fri, 22 May 2026 14:38:54 +0100
Message-ID: <20260522133857.552279-14-kirill@shutemov.name>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522133857.552279-1-kirill@shutemov.name>
References: <20260522133857.552279-1-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5577-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3C4EE5B5CD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

Coverage for UFFDIO_REGISTER_MODE_RWP and UFFDIO_RWPROTECT:

  rwp-async          async mode — touch pages, verify permissions are
                     auto-restored without a message
  rwp-sync           sync mode — access blocks, handler resolves via
                     UFFDIO_RWPROTECT
  rwp-pagemap        PAGEMAP_SCAN reports still-cold pages via
                     inverted PAGE_IS_ACCESSED
  rwp-mprotect       RWP survives mprotect(PROT_NONE) ->
                     mprotect(PROT_READ|PROT_WRITE) round-trip
  rwp-gup            GUP walks through a protnone RWP PTE (pipe
                     write/read drives the GUP path)
  rwp-async-toggle   UFFDIO_SET_MODE flips between sync and async
                     without re-registering
  rwp-close          closing the uffd restores page permissions
  rwp-fork           RWP survives fork() with EVENT_FORK; child's
                     PTEs keep the uffd bit
  rwp-fork-pin       RWP survives fork() on an RO-longterm-pinned
                     anon page (forces copy_present_page()); child
                     read auto-resolves and clears the bit, proving
                     PAGE_NONE was in place
  rwp-wp-exclusive   register with MODE_WP|MODE_RWP returns -EINVAL

All tests run against anon, shmem, shmem-private, hugetlb, and
hugetlb-private memory, except rwp-fork-pin which is anon-only —
copy_present_page() is the private-anon pinned-exclusive fork path.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Assisted-by: Claude:claude-opus-4-6
---
 tools/testing/selftests/mm/uffd-unit-tests.c | 766 +++++++++++++++++++
 1 file changed, 766 insertions(+)

diff --git a/tools/testing/selftests/mm/uffd-unit-tests.c b/tools/testing/selftests/mm/uffd-unit-tests.c
index 6f5e404a446c..234d3ac0adfb 100644
--- a/tools/testing/selftests/mm/uffd-unit-tests.c
+++ b/tools/testing/selftests/mm/uffd-unit-tests.c
@@ -7,6 +7,8 @@
 
 #include "uffd-common.h"
 
+#include <linux/fs.h>
+#include <sys/uio.h>
 #include "../../../../mm/gup_test.h"
 
 #ifdef __NR_userfaultfd
@@ -128,6 +130,11 @@ static void uffd_test_skip(const char *message)
  */
 static int test_uffd_api(bool use_dev)
 {
+	const uint64_t expected_ioctls =
+		BIT_ULL(_UFFDIO_REGISTER) |
+		BIT_ULL(_UFFDIO_UNREGISTER) |
+		BIT_ULL(_UFFDIO_API) |
+		BIT_ULL(_UFFDIO_SET_MODE);
 	struct uffdio_api uffdio_api;
 	int uffd;
 
@@ -167,6 +174,15 @@ static int test_uffd_api(bool use_dev)
 		goto out;
 	}
 
+	/* Verify returned fd-level ioctls bitmask */
+	if ((uffdio_api.ioctls & expected_ioctls) != expected_ioctls) {
+		uffd_test_fail("UFFDIO_API missing expected ioctls: "
+			       "got=0x%"PRIx64", expected=0x%"PRIx64,
+			       (uint64_t)uffdio_api.ioctls,
+			       expected_ioctls);
+		goto out;
+	}
+
 	/* Test double requests of UFFDIO_API with a random feature set */
 	uffdio_api.features = BIT_ULL(0);
 	if (ioctl(uffd, UFFDIO_API, &uffdio_api) == 0) {
@@ -623,6 +639,685 @@ void uffd_minor_collapse_test(uffd_global_test_opts_t *gopts, uffd_test_args_t *
 	uffd_minor_test_common(gopts, true, false);
 }
 
+static int uffd_register_rwp(int uffd, void *addr, uint64_t len)
+{
+	struct uffdio_register reg = {
+		.range = { .start = (unsigned long)addr, .len = len },
+		.mode = UFFDIO_REGISTER_MODE_RWP,
+	};
+
+	if (ioctl(uffd, UFFDIO_REGISTER, &reg) == -1)
+		return -errno;
+	return 0;
+}
+
+static void rwprotect_range(int uffd, __u64 start, __u64 len, bool protect)
+{
+	struct uffdio_rwprotect rwp = {
+		.range = { .start = start, .len = len },
+		.mode = protect ? UFFDIO_RWPROTECT_MODE_RWP : 0,
+	};
+
+	if (ioctl(uffd, UFFDIO_RWPROTECT, &rwp))
+		err("UFFDIO_RWPROTECT failed");
+}
+
+static void set_async_mode(int uffd, bool enable)
+{
+	struct uffdio_set_mode mode = { };
+
+	if (enable)
+		mode.enable = UFFD_FEATURE_RWP_ASYNC;
+	else
+		mode.disable = UFFD_FEATURE_RWP_ASYNC;
+
+	if (ioctl(uffd, UFFDIO_SET_MODE, &mode))
+		err("UFFDIO_SET_MODE failed");
+}
+
+/*
+ * Test async RWP faults on anonymous memory.
+ * Populate pages, register MODE_RWP with RWP_ASYNC,
+ * RW-protect, re-access, verify content preserved and no faults delivered.
+ */
+static void uffd_rwp_async_test(uffd_global_test_opts_t *gopts,
+				       uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	unsigned long p;
+
+	/* Populate all pages with known content */
+	for (p = 0; p < nr_pages; p++)
+		memset(gopts->area_dst + p * page_size, p % 255 + 1, page_size);
+
+	/* Register MODE_RWP */
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			  nr_pages * page_size))
+		err("register failure");
+
+	/* RW-protect all pages (sets protnone) */
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			 nr_pages * page_size, true);
+
+	/* Access all pages — should auto-resolve, no faults */
+	for (p = 0; p < nr_pages; p++) {
+		unsigned char *page = (unsigned char *)gopts->area_dst +
+				      p * page_size;
+		unsigned char expected = p % 255 + 1;
+
+		if (page[0] != expected) {
+			uffd_test_fail("page %lu content mismatch: %u != %u",
+				       p, page[0], expected);
+			return;
+		}
+	}
+
+	uffd_test_pass();
+}
+
+/*
+ * Fault handler for RWP — unprotect the page via UFFDIO_RWPROTECT.
+ */
+static void uffd_handle_rwp_fault(uffd_global_test_opts_t *gopts,
+				  struct uffd_msg *msg,
+				  struct uffd_args *uargs)
+{
+	if (!(msg->arg.pagefault.flags & UFFD_PAGEFAULT_FLAG_RWP))
+		err("expected RWP fault, got 0x%llx",
+		    msg->arg.pagefault.flags);
+
+	rwprotect_range(gopts->uffd, msg->arg.pagefault.address,
+			gopts->page_size, false);
+	uargs->minor_faults++;
+}
+
+/*
+ * Test sync RWP faults on anonymous memory.
+ * Populate pages, register MODE_RWP (sync), RW-protect,
+ * access from worker thread, verify fault delivered, UFFDIO_RWPROTECT resolves.
+ */
+static void uffd_rwp_sync_test(uffd_global_test_opts_t *gopts,
+				      uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	pthread_t uffd_mon;
+	struct uffd_args uargs = { };
+	bool failed = false;
+	char c = '\0';
+	unsigned long p;
+
+	uargs.gopts = gopts;
+	uargs.handle_fault = uffd_handle_rwp_fault;
+
+	/* Populate all pages */
+	for (p = 0; p < nr_pages; p++)
+		memset(gopts->area_dst + p * page_size, p % 255 + 1, page_size);
+
+	/* Register MODE_RWP */
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			  nr_pages * page_size))
+		err("register failure");
+
+	/* RW-protect all pages */
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			 nr_pages * page_size, true);
+
+	/* Start fault handler thread */
+	if (pthread_create(&uffd_mon, NULL, uffd_poll_thread, &uargs))
+		err("uffd_poll_thread create");
+
+	/* Access all pages — triggers sync RWP faults, handler unprotects */
+	for (p = 0; p < nr_pages; p++) {
+		unsigned char *page = (unsigned char *)gopts->area_dst +
+				      p * page_size;
+
+		if (page[0] != (p % 255 + 1)) {
+			uffd_test_fail("page %lu content mismatch", p);
+			failed = true;
+			goto out;
+		}
+	}
+
+out:
+	/*
+	 * Stop the handler before reading minor_faults: the last fault
+	 * resolution rwprotect_range()s before incrementing the counter,
+	 * so the main thread can race ahead of the increment.
+	 */
+	if (write(gopts->pipefd[1], &c, sizeof(c)) != sizeof(c))
+		err("pipe write");
+	if (pthread_join(uffd_mon, NULL))
+		err("join() failed");
+
+	if (failed)
+		return;
+	if (uargs.minor_faults == 0)
+		uffd_test_fail("expected RWP faults, got 0");
+	else
+		uffd_test_pass();
+}
+
+/*
+ * Test PAGEMAP_SCAN detection of RW-protected (cold) pages.
+ */
+static void uffd_rwp_pagemap_test(uffd_global_test_opts_t *gopts,
+					  uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	unsigned long p;
+	struct page_region regions[16];
+	struct pm_scan_arg pm_arg;
+	int pagemap_fd;
+	long ret;
+
+	/* Need at least 4 pages */
+	if (nr_pages < 4) {
+		uffd_test_skip("need at least 4 pages");
+		return;
+	}
+
+	/* Populate all pages */
+	for (p = 0; p < nr_pages; p++)
+		memset(gopts->area_dst + p * page_size, 0xab, page_size);
+
+	/* Register and RW-protect */
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			  nr_pages * page_size))
+		err("register failure");
+
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			 nr_pages * page_size, true);
+
+	/* Touch first half of pages to re-activate them (async auto-resolve) */
+	for (p = 0; p < nr_pages / 2; p++) {
+		volatile char *page = gopts->area_dst + p * page_size;
+		(void)*page;
+	}
+
+	/* Scan for cold (still RW-protected) pages */
+	pagemap_fd = open("/proc/self/pagemap", O_RDONLY);
+	if (pagemap_fd < 0)
+		err("open pagemap");
+
+	/*
+	 * PAGE_IS_ACCESSED is set once the uffd-wp bit has been cleared
+	 * (access happened, or the user resolved). Invert it to select
+	 * still-protected (cold) pages.
+	 */
+	memset(&pm_arg, 0, sizeof(pm_arg));
+	pm_arg.size = sizeof(pm_arg);
+	pm_arg.start = (uint64_t)gopts->area_dst;
+	pm_arg.end = (uint64_t)gopts->area_dst + nr_pages * page_size;
+	pm_arg.vec = (uint64_t)regions;
+	pm_arg.vec_len = ARRAY_SIZE(regions);
+	pm_arg.category_mask = PAGE_IS_ACCESSED;
+	pm_arg.category_inverted = PAGE_IS_ACCESSED;
+	pm_arg.return_mask = PAGE_IS_ACCESSED;
+
+	ret = ioctl(pagemap_fd, PAGEMAP_SCAN, &pm_arg);
+	close(pagemap_fd);
+
+	if (ret < 0) {
+		uffd_test_fail("PAGEMAP_SCAN failed: %s", strerror(errno));
+		return;
+	}
+
+	/*
+	 * The second half of pages should be reported as RW-protected.
+	 * They may be coalesced into one region.
+	 */
+	if (ret < 1) {
+		uffd_test_fail("expected cold pages, got %ld regions", ret);
+		return;
+	}
+
+	/* Verify the cold region covers the second half */
+	uint64_t cold_start = regions[0].start;
+	uint64_t expected_start = (uint64_t)gopts->area_dst +
+				  (nr_pages / 2) * page_size;
+
+	if (cold_start != expected_start) {
+		uffd_test_fail("cold region starts at 0x%lx, expected 0x%lx",
+			       (unsigned long)cold_start,
+			       (unsigned long)expected_start);
+		return;
+	}
+
+	uffd_test_pass();
+}
+
+/*
+ * Test that RWP protection survives a mprotect(PROT_NONE) ->
+ * mprotect(PROT_READ|PROT_WRITE) round-trip. The uffd-wp bit on a
+ * VM_UFFD_RWP VMA must continue to carry PROT_NONE semantics after
+ * mprotect() changes the base protection; otherwise accesses would
+ * silently succeed and the pagemap bit would stick without a fault
+ * ever clearing it.
+ */
+static void uffd_rwp_mprotect_test(uffd_global_test_opts_t *gopts,
+				   uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	unsigned long p;
+	struct page_region regions[16];
+	struct pm_scan_arg pm_arg;
+	int pagemap_fd;
+	long ret;
+
+	/* Populate all pages */
+	for (p = 0; p < nr_pages; p++)
+		memset(gopts->area_dst + p * page_size, 0xab, page_size);
+
+	/* Register and RW-protect the whole range */
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			      nr_pages * page_size))
+		err("register failure");
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			nr_pages * page_size, true);
+
+	/* Round-trip mprotect(): PROT_NONE -> PROT_READ|PROT_WRITE */
+	if (mprotect(gopts->area_dst, nr_pages * page_size, PROT_NONE))
+		err("mprotect() PROT_NONE");
+	if (mprotect(gopts->area_dst, nr_pages * page_size,
+		     PROT_READ | PROT_WRITE))
+		err("mprotect() PROT_READ|PROT_WRITE");
+
+	/* Touch every page. Async RWP must auto-resolve each fault. */
+	for (p = 0; p < nr_pages; p++) {
+		volatile char *page = gopts->area_dst + p * page_size;
+		(void)*page;
+	}
+
+	/*
+	 * After touching, no page should remain RW-protected. A stuck
+	 * uffd-wp bit would mean mprotect() silently dropped PROT_NONE and
+	 * the access never faulted.
+	 */
+	pagemap_fd = open("/proc/self/pagemap", O_RDONLY);
+	if (pagemap_fd < 0)
+		err("open pagemap");
+
+	memset(&pm_arg, 0, sizeof(pm_arg));
+	pm_arg.size = sizeof(pm_arg);
+	pm_arg.start = (uint64_t)gopts->area_dst;
+	pm_arg.end = (uint64_t)gopts->area_dst + nr_pages * page_size;
+	pm_arg.vec = (uint64_t)regions;
+	pm_arg.vec_len = ARRAY_SIZE(regions);
+	pm_arg.category_mask = PAGE_IS_ACCESSED;
+	pm_arg.category_inverted = PAGE_IS_ACCESSED;
+	pm_arg.return_mask = PAGE_IS_ACCESSED;
+
+	ret = ioctl(pagemap_fd, PAGEMAP_SCAN, &pm_arg);
+	close(pagemap_fd);
+
+	if (ret < 0) {
+		uffd_test_fail("PAGEMAP_SCAN failed: %s", strerror(errno));
+		return;
+	}
+	if (ret != 0) {
+		uffd_test_fail("expected no cold pages after mprotect()+touch, got %ld regions",
+			       ret);
+		return;
+	}
+
+	uffd_test_pass();
+}
+
+/*
+ * Test that GUP resolves through protnone PTEs (async mode).
+ * vmsplice() into a pipe pins user pages via get_user_pages_fast() --
+ * unlike write(), which goes through copy_from_user() and ordinary
+ * hardware page faults -- so it exercises gup_can_follow_protnone() on
+ * the RW-protected PTE. In async mode the kernel auto-restores
+ * permissions and GUP returns the page.
+ */
+static void uffd_rwp_gup_test(uffd_global_test_opts_t *gopts,
+				     uffd_test_args_t *args)
+{
+	struct iovec iov;
+	char buf;
+	int pipefd[2];
+
+	/* Populate first page with known content */
+	memset(gopts->area_dst, 0xCD, gopts->page_size);
+
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst, gopts->page_size))
+		err("register failure");
+
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			gopts->page_size, true);
+
+	if (pipe(pipefd))
+		err("pipe");
+
+	/*
+	 * One byte's worth of iov is enough to GUP the containing page and
+	 * keeps the pipe transfer well under any pipe-capacity limit even on
+	 * hugetlb-backed runs.
+	 */
+	iov.iov_base = gopts->area_dst;
+	iov.iov_len = 1;
+	if (vmsplice(pipefd[1], &iov, 1, 0) != 1) {
+		uffd_test_fail("vmsplice from RW-protected page failed: %s",
+			       strerror(errno));
+		goto out;
+	}
+
+	if (read(pipefd[0], &buf, 1) != 1) {
+		uffd_test_fail("read from pipe failed");
+		goto out;
+	}
+
+	if (buf != (char)0xCD) {
+		uffd_test_fail("content mismatch: got 0x%02x, expected 0xCD",
+			       (unsigned char)buf);
+		goto out;
+	}
+
+	uffd_test_pass();
+out:
+	close(pipefd[0]);
+	close(pipefd[1]);
+}
+
+/*
+ * Test runtime toggle between async and sync modes.
+ * Start in async mode (detection), flip to sync (eviction), verify faults
+ * block, resolve them, flip back to async.
+ */
+static void uffd_rwp_async_toggle_test(uffd_global_test_opts_t *gopts,
+					      uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	struct uffd_args uargs = { };
+	pthread_t uffd_mon;
+	char c = '\0';
+	unsigned long p;
+
+	uargs.gopts = gopts;
+	uargs.handle_fault = uffd_handle_rwp_fault;
+
+	/* Populate */
+	for (p = 0; p < nr_pages; p++)
+		memset(gopts->area_dst + p * page_size, p % 255 + 1, page_size);
+
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			  nr_pages * page_size))
+		err("register failure");
+
+	/* Phase 1: async detection — RW-protect, access first half */
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			 nr_pages * page_size, true);
+
+	for (p = 0; p < nr_pages / 2; p++) {
+		volatile char *page = gopts->area_dst + p * page_size;
+		(void)*page;  /* auto-resolves in async mode */
+	}
+
+	/* Phase 2: flip to sync for eviction */
+	set_async_mode(gopts->uffd, false);
+
+	/* Start handler — will receive faults for cold pages */
+	if (pthread_create(&uffd_mon, NULL, uffd_poll_thread, &uargs))
+		err("uffd_poll_thread create");
+
+	/* Access second half (cold pages) — should trigger sync faults */
+	for (p = nr_pages / 2; p < nr_pages; p++) {
+		unsigned char *page = (unsigned char *)gopts->area_dst +
+				      p * page_size;
+		if (page[0] != (p % 255 + 1)) {
+			uffd_test_fail("page %lu content mismatch", p);
+			goto out;
+		}
+	}
+
+	/*
+	 * Stop the handler before reading minor_faults: the last fault
+	 * resolution rwprotect_range()s before incrementing the counter,
+	 * so the main thread can race ahead of the increment. Stopping
+	 * here also makes Phase 3 a clean async-only test -- with the
+	 * handler still running it would silently resolve any sync fault
+	 * the kernel erroneously delivers, masking a regression.
+	 */
+	if (write(gopts->pipefd[1], &c, sizeof(c)) != sizeof(c))
+		err("pipe write");
+	if (pthread_join(uffd_mon, NULL))
+		err("join() failed");
+
+	if (uargs.minor_faults == 0) {
+		uffd_test_fail("expected sync faults, got 0");
+		return;
+	}
+
+	/* Phase 3: flip back to async */
+	set_async_mode(gopts->uffd, true);
+
+	/* RW-protect and access again — should auto-resolve */
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			 nr_pages * page_size, true);
+
+	for (p = 0; p < nr_pages; p++) {
+		volatile char *page = gopts->area_dst + p * page_size;
+		(void)*page;
+	}
+
+	uffd_test_pass();
+	return;
+out:
+	if (write(gopts->pipefd[1], &c, sizeof(c)) != sizeof(c))
+		err("pipe write");
+	if (pthread_join(uffd_mon, NULL))
+		err("join() failed");
+}
+
+/*
+ * Test that RW-protected pages become accessible after closing uffd.
+ */
+static void uffd_rwp_close_test(uffd_global_test_opts_t *gopts,
+				       uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	unsigned long p;
+
+	/* Populate */
+	for (p = 0; p < nr_pages; p++)
+		memset(gopts->area_dst + p * page_size, p % 255 + 1, page_size);
+
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			  nr_pages * page_size))
+		err("register failure");
+
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			 nr_pages * page_size, true);
+
+	/* Close uffd — should restore protnone PTEs */
+	close(gopts->uffd);
+	gopts->uffd = -1;
+
+	/* All pages should be accessible with original content */
+	for (p = 0; p < nr_pages; p++) {
+		unsigned char *page = (unsigned char *)gopts->area_dst +
+				      p * page_size;
+		unsigned char expected = p % 255 + 1;
+
+		if (page[0] != expected) {
+			uffd_test_fail("page %lu not accessible after close", p);
+			return;
+		}
+	}
+
+	uffd_test_pass();
+}
+
+/*
+ * Test that RWP protection is preserved across fork() when
+ * UFFD_FEATURE_EVENT_FORK is enabled. Without preservation, the child's
+ * PTEs would lose the uffd-wp marker and RWP-protected accesses would
+ * silently fall through to do_numa_page().
+ */
+static void uffd_rwp_fork_test(uffd_global_test_opts_t *gopts,
+			       uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	int pagemap_fd;
+	uint64_t value;
+
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst,
+			      nr_pages * page_size))
+		err("register failed");
+
+	/* Populate + RWP-protect */
+	*gopts->area_dst = 1;
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst,
+			page_size, true);
+
+	/* Parent: verify uffd-wp bit is set before fork */
+	pagemap_fd = pagemap_open();
+	value = pagemap_get_entry(pagemap_fd, gopts->area_dst);
+	pagemap_check_wp(value, true);
+
+	/*
+	 * Fork with EVENT_FORK: child inherits VM_UFFD_RWP. Child reads
+	 * its own pagemap and must still see the uffd-wp bit set.
+	 */
+	if (pagemap_test_fork(gopts, true, false)) {
+		uffd_test_fail("RWP marker lost in child after fork");
+		goto out;
+	}
+
+	uffd_test_pass();
+out:
+	close(pagemap_fd);
+}
+
+/*
+ * Test that RWP protection on a pinned anon page is preserved across fork().
+ * Pinning forces copy_present_page() in the child path, which must restore
+ * PAGE_NONE on top of the uffd bit. Using async mode, a read in the child
+ * auto-resolves if — and only if — the PTE was actually protnone+uffd; the
+ * cleared uffd bit afterward proves the fault path ran.
+ */
+static void uffd_rwp_fork_pin_test(uffd_global_test_opts_t *gopts,
+				   uffd_test_args_t *args)
+{
+	unsigned long page_size = gopts->page_size;
+	fork_event_args fevent_args = { .gopts = gopts, .child_uffd = -1 };
+	pin_args pin_args = {};
+	int pagemap_fd, status;
+	pthread_t fevent_thread;
+	uint64_t value;
+	pid_t child;
+
+	if (uffd_register_rwp(gopts->uffd, gopts->area_dst, page_size))
+		err("register failed");
+
+	/* Populate. */
+	*gopts->area_dst = 1;
+
+	/* RO-longterm pin so fork() takes copy_present_page() for this PTE. */
+	if (pin_pages(&pin_args, gopts->area_dst, page_size)) {
+		uffd_test_skip("Possibly CONFIG_GUP_TEST missing or unprivileged");
+		uffd_unregister(gopts->uffd, gopts->area_dst, page_size);
+		return;
+	}
+
+	/* RWP-protect: PTE is now PAGE_NONE + uffd bit. */
+	rwprotect_range(gopts->uffd, (uint64_t)gopts->area_dst, page_size, true);
+
+	pagemap_fd = pagemap_open();
+	value = pagemap_get_entry(pagemap_fd, gopts->area_dst);
+	pagemap_check_wp(value, true);
+
+	/*
+	 * UFFD_FEATURE_EVENT_FORK is required so the child inherits
+	 * VM_UFFD_RWP and the marker; without it dup_userfaultfd() resets
+	 * the child VMA and the test would pass for the wrong reason.
+	 * dup_userfaultfd() blocks until the EVENT_FORK message is consumed,
+	 * so spawn a reader before the fork().
+	 */
+	gopts->ready_for_fork = false;
+	if (pthread_create(&fevent_thread, NULL, fork_event_consumer,
+			   &fevent_args))
+		err("pthread_create() for fork event consumer");
+	while (!gopts->ready_for_fork)
+		; /* Wait for consumer to start polling. */
+
+	child = fork();
+	if (child < 0)
+		err("fork");
+	if (child == 0) {
+		volatile char c;
+		int cfd;
+
+		/*
+		 * Read the pinned page. Only reaches the fault path if the
+		 * child PTE is protnone + uffd; async mode auto-resolves and
+		 * clears the uffd bit. If copy_present_page() dropped
+		 * PAGE_NONE, the read would silently succeed and the bit
+		 * would still be set.
+		 */
+		c = *(volatile char *)gopts->area_dst;
+		(void)c;
+
+		cfd = pagemap_open();
+		value = pagemap_get_entry(cfd, gopts->area_dst);
+		close(cfd);
+		_exit((value & PM_UFFD_WP) ? 1 : 0);
+	}
+	if (waitpid(child, &status, 0) < 0)
+		err("waitpid");
+	if (pthread_join(fevent_thread, NULL))
+		err("pthread_join() for fork event consumer");
+	if (fevent_args.child_uffd >= 0)
+		close(fevent_args.child_uffd);
+
+	unpin_pages(&pin_args);
+	close(pagemap_fd);
+	if (uffd_unregister(gopts->uffd, gopts->area_dst, page_size))
+		err("unregister failed");
+
+	if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
+		uffd_test_fail("RWP not enforced in child after pinned fork");
+		return;
+	}
+
+	uffd_test_pass();
+}
+
+/*
+ * WP and RWP share the uffd-wp PTE bit and cannot coexist in the same VMA.
+ * Registration requesting both modes must be rejected.
+ */
+static void uffd_rwp_wp_exclusive_test(uffd_global_test_opts_t *gopts,
+				       uffd_test_args_t *args)
+{
+	unsigned long nr_pages = gopts->nr_pages;
+	unsigned long page_size = gopts->page_size;
+	struct uffdio_register reg = { };
+
+	reg.range.start = (unsigned long)gopts->area_dst;
+	reg.range.len = nr_pages * page_size;
+	reg.mode = UFFDIO_REGISTER_MODE_WP | UFFDIO_REGISTER_MODE_RWP;
+
+	if (ioctl(gopts->uffd, UFFDIO_REGISTER, &reg) == 0) {
+		uffd_test_fail("register with WP|RWP unexpectedly succeeded");
+		return;
+	}
+	if (errno != EINVAL) {
+		uffd_test_fail("register with WP|RWP: expected EINVAL, got %d",
+			       errno);
+		return;
+	}
+	uffd_test_pass();
+}
+
 static sigjmp_buf jbuf, *sigbuf;
 
 static void sighndl(int sig, siginfo_t *siginfo, void *ptr)
@@ -1625,6 +2320,77 @@ uffd_test_case_t uffd_tests[] = {
 		/* We can't test MADV_COLLAPSE, so try our luck */
 		.uffd_feature_required = UFFD_FEATURE_MINOR_SHMEM,
 	},
+	{
+		.name = "rwp-async",
+		.uffd_fn = uffd_rwp_async_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_RWP_ASYNC,
+	},
+	{
+		.name = "rwp-sync",
+		.uffd_fn = uffd_rwp_sync_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required = UFFD_FEATURE_RWP,
+	},
+	{
+		.name = "rwp-pagemap",
+		.uffd_fn = uffd_rwp_pagemap_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_RWP_ASYNC,
+	},
+	{
+		.name = "rwp-mprotect",
+		.uffd_fn = uffd_rwp_mprotect_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_RWP_ASYNC,
+	},
+	{
+		.name = "rwp-gup",
+		.uffd_fn = uffd_rwp_gup_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_RWP_ASYNC,
+	},
+	{
+		.name = "rwp-async-toggle",
+		.uffd_fn = uffd_rwp_async_toggle_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_RWP_ASYNC,
+	},
+	{
+		.name = "rwp-close",
+		.uffd_fn = uffd_rwp_close_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required = UFFD_FEATURE_RWP,
+	},
+	{
+		.name = "rwp-fork",
+		.uffd_fn = uffd_rwp_fork_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_EVENT_FORK,
+	},
+	{
+		.name = "rwp-fork-pin",
+		.uffd_fn = uffd_rwp_fork_pin_test,
+		.mem_targets = MEM_ANON,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP | UFFD_FEATURE_RWP_ASYNC |
+		UFFD_FEATURE_EVENT_FORK,
+	},
+	{
+		.name = "rwp-wp-exclusive",
+		.uffd_fn = uffd_rwp_wp_exclusive_test,
+		.mem_targets = MEM_ALL,
+		.uffd_feature_required =
+		UFFD_FEATURE_RWP |
+		UFFD_FEATURE_PAGEFAULT_FLAG_WP |
+		UFFD_FEATURE_WP_HUGETLBFS_SHMEM,
+	},
 	{
 		.name = "sigbus",
 		.uffd_fn = uffd_sigbus_test,
-- 
2.51.2


