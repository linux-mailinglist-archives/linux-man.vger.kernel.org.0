Return-Path: <linux-man+bounces-5580-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP6mMlNhEGprWwYAu9opvQ
	(envelope-from <linux-man+bounces-5580-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 15:59:47 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB285B5B6C
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 15:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF65F307DC2D
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF8A42DFEB;
	Fri, 22 May 2026 13:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="06PiO8pj";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="EPJyAb55"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE0C426EA6;
	Fri, 22 May 2026 13:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457203; cv=none; b=LWTapVe+LiaMcXi78y7k22e5LS2cVPLzCTORM8qLNJdyXvhotOXPgnT64ZFZPUrSDZ66AGh8n6rx5shPrHcpvenOwGPHRxGxOWTfTj4ThBmAkBG/Gz6NJR3x5hTxvfGOQ0yYnnQ5ul0XT3QM+1xYFi5WZxz1hUbPhXSWzj83o40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457203; c=relaxed/simple;
	bh=39e8fnpTUC46kSuw6XMbkKUnGDMgz+PEMYBez5ZsnoM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FBGOZfBVT7pGcDiMF8WljZEdL4ic2CSzMKA9ODHyVbxPyJ5EirdNNdPXTK+bi1lR2+UBl7wzyPyNAZcTO3fct0YdqEbPKA+8E7ao3m3fGNF21dZfX8Kx5K+fv6S0SbYkiSsbMsj+4J7AFQrsMFOPPzkkurvB7L7IxlCg9f3ZV3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=06PiO8pj; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=EPJyAb55; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id BB5291D00121;
	Fri, 22 May 2026 09:39:54 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Fri, 22 May 2026 09:39:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779457194; x=
	1779543594; bh=7kgK2B7CSrKKlV7MAxGh/B0N2F/JYv53qwBfZJ+EZP0=; b=0
	6PiO8pjoX+s75ZiHT4qw7ynCfBAjDhdjyUKwJsfr7BZ0gE8NoFBsAnbjHdzFdlzb
	ZMyrOFE4yR6XKstdv9fcpUtUbHwYqdl1C9yq510gXBJAULoTrVZrGleEL2aXV9z/
	3IOFF9X98wQCb+xxh68/DzIWouZyrT6LKRJyJHniNUQm5EamBiy+2nYtiNxEFB+y
	g4HfCf/N6bK7R93iadLzUQ0+kDwbjwJeCDGqRjFSyMrFw1T0JSxQAhof8T1+vyDq
	OerulQQvls5bQdM1Dbhy4G7+rl3+vd8L6jcwmqBCVeto97J3IgGGa6sAWM1pmIn8
	z228SWGpnB6cPHhQyeRKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779457194; x=1779543594; bh=7
	kgK2B7CSrKKlV7MAxGh/B0N2F/JYv53qwBfZJ+EZP0=; b=EPJyAb55jbrqUpgHF
	VjM2SUqz+yHoRy0qmFHa3mWQfnINHDJV2LKa4/Y+sSdwW+3GpDrtoA3tmIOxUi24
	LUnDrx8JDg24H9sgaLWGNBBTuix8Q27mMFRybJsOds5Xor4sC1S1lC1+tq4vGSP+
	vJ0PM+X2obTz7CE1cNeHjmNM+lZ19ZqgbOlpgP8Pk0M/4Q6DL9uY+NHQQjrGkyhl
	MGqFFOOsFMOhJ6ug9JwgvQRxdFvbtVOKAtLeSG3vPYeOm4gzwymMxfURJCVGEIhO
	/m5n8pkNywjMclMmalDlJgvEj9OkZsDWE1AeTTjnWcRPKNF0EB5ofjEDQP+fMgYG
	N1OcA==
X-ME-Sender: <xms:qlwQak0NWdRdzMMRRhBcLctEC-UwSXMnplLDesFGAqJAAnv5A_ZD9Q>
    <xme:qlwQagKPilxv-Y8vENSqGgJxDmYomUnWBYjhbmpGsAkBPKoo-ptNyE-G-2MJka2NP
    mdA-qQBlHOEpSXOmM_scTU6Hzw_d4b9KjmOgmxgLhUlQ4hXFhA_mFc>
X-ME-Received: <xmr:qlwQav2E2quj6ShYPo2Ggyn91TfgO8Xrpl8ovXTmHdMjWwyP43yZmW-HqA0mkg>
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
X-ME-Proxy: <xmx:qlwQargznNHXXEFSIkuyq_USe5H0wAPhBVJSQ3wQGvrW4C84--XX4g>
    <xmx:qlwQav0Q6vGaOaQu97ctfou2QxG2ad7owUQcAHzVx2yBqAvSKUXiXQ>
    <xmx:qlwQamcibcUSyR4rL0Kq1iCbCA-YAZBWEbE90Va-f5wRkbr1_mUL4Q>
    <xmx:qlwQaiGIGFAb7FTMrwdj44FhyhR9gcsYiOWrFXt7qdeCyChTCJjCbQ>
    <xmx:qlwQakpTcmTUhwg5-1AFaemuUZptVOLso8tO0fFLIxmOXJjOzxXGTCfX>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:53 -0400 (EDT)
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
Subject: [PATCH v3 16/16] ioctl_userfaultfd.2: Add read-write protect mode docs
Date: Fri, 22 May 2026 14:38:57 +0100
Message-ID: <20260522133857.552279-17-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5580-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 6DB285B5B6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

Userfaultfd read-write protection (UFFDIO_REGISTER_MODE_RWP) is
supported starting from Linux 7.2. It traps every access -- read or
write -- to a present page within a registered range. The new UAPI
documented here:

  - UFFD_FEATURE_RWP / UFFD_FEATURE_RWP_ASYNC  capability bits
  - UFFDIO_REGISTER_MODE_RWP                   registration-mode bit
  - 1 << _UFFDIO_RWPROTECT / _UFFDIO_SET_MODE  available-ioctls bits
  - UFFDIO_RWPROTECT                           install / remove RWP
  - UFFDIO_SET_MODE                            runtime sync/async toggle

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
---
 man2/ioctl_userfaultfd.2 | 209 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 208 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 504f61d4b0cd..0a24a77ca32b 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -25,7 +25,7 @@
 .\" %%%LICENSE_END
 .\"
 .\"
-.TH IOCTL_USERFAULTFD 2 2021-03-22 "Linux" "Linux Programmer's Manual"
+.TH IOCTL_USERFAULTFD 2 2026-05-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ioctl_userfaultfd \- create a file descriptor for handling page faults in user
 space
@@ -214,6 +214,33 @@ memory accesses to the regions registered with userfaultfd.
 If this feature bit is set,
 .I uffd_msg.pagefault.feat.ptid
 will be set to the faulted thread ID for each page-fault message.
+.TP
+.BR UFFD_FEATURE_RWP " (since Linux 7.2)"
+If this feature bit is set,
+the kernel supports read-write protection tracking, and the
+.B UFFDIO_REGISTER_MODE_RWP
+registration mode and the
+.B UFFDIO_RWPROTECT
+ioctl described below become available.
+On kernels or architectures that cannot support this mode, the bit is
+masked out from
+.I uffdio_api.features
+on return; callers should inspect the returned features and fall back
+to another tracking mechanism when the bit is absent.
+.TP
+.BR UFFD_FEATURE_RWP_ASYNC " (since Linux 7.2)"
+If this feature bit is set,
+the kernel will resolve read-write protect faults in place without
+delivering a notification, automatically restoring page permissions and
+letting the faulted thread continue.
+This bit requires
+.B UFFD_FEATURE_RWP
+to be set in the same
+.B UFFDIO_API
+call.
+The async mode can also be toggled at runtime using the
+.B UFFDIO_SET_MODE
+ioctl described below.
 .PP
 The returned
 .I ioctls
@@ -240,6 +267,21 @@ operation is supported.
 The
 .B UFFDIO_WRITEPROTECT
 operation is supported.
+.TP
+.BR "1 << _UFFDIO_RWPROTECT" " (since Linux 7.2)"
+The
+.B UFFDIO_RWPROTECT
+operation is supported.
+This bit is reported only when
+.B UFFD_FEATURE_RWP
+was negotiated successfully.
+.TP
+.BR "1 << _UFFDIO_SET_MODE" " (since Linux 7.2)"
+The
+.B UFFDIO_SET_MODE
+operation is supported.
+This is a file-descriptor-level ioctl and is reported once per
+userfaultfd, independent of any registered range.
 .PP
 This
 .BR ioctl (2)
@@ -327,6 +369,16 @@ Track page faults on missing pages.
 .TP
 .B UFFDIO_REGISTER_MODE_WP
 Track page faults on write-protected pages.
+.TP
+.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
+Track page faults on read-write-protected pages.
+Every access (read or write) to a present page within the registered
+range generates a notification once the range has been protected with
+.BR UFFDIO_RWPROTECT .
+This mode cannot be combined with
+.BR UFFDIO_REGISTER_MODE_WP ;
+attempting to do so returns
+.BR EINVAL .
 .PP
 If the operation is successful, the kernel modifies the
 .I ioctls
@@ -735,6 +787,161 @@ or not registered with userfaultfd write-protect mode.
 .TP
 .B EFAULT
 Encountered a generic fault during processing.
+.SS UFFDIO_RWPROTECT (Since Linux 7.2)
+Read-write-protect or un-protect a userfaultfd-registered memory range
+registered with mode
+.BR UFFDIO_REGISTER_MODE_RWP .
+.PP
+The
+.I argp
+argument is a pointer to a
+.I uffdio_rwprotect
+structure as shown below:
+.PP
+.in +4n
+.EX
+struct uffdio_rwprotect {
+    struct uffdio_range range; /* Range to change RWP on */
+    __u64 mode;                /* Mode flags */
+};
+.EE
+.in
+.PP
+The following mode bits are supported:
+.TP
+.B UFFDIO_RWPROTECT_MODE_RWP
+When this mode bit is set,
+the ioctl installs read-write protection on every present page in the
+range specified by
+.IR range .
+Otherwise the ioctl removes read-write protection from the range, which
+is also how a faulted handler resolves an
+.B UFFD_PAGEFAULT_FLAG_RWP
+notification.
+.TP
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+When this mode bit is set,
+do not wake up any thread that waits for page-fault resolution after
+the operation.
+This can be specified only if
+.B UFFDIO_RWPROTECT_MODE_RWP
+is not specified.
+.PP
+Read-write protection only affects pages that are currently populated
+in the range; unmapped addresses are left untouched.
+Protection is preserved across page reclaim and migration; callers must
+re-arm a range with
+.B UFFDIO_RWPROTECT
+after any operation that drops the underlying page
+.RB ( "MADV_DONTNEED " "on anonymous memory, hole-punch on shmem,"
+truncation of a file mapping).
+.PP
+This
+.BR ioctl (2)
+operation returns 0 on success.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+Possible errors include:
+.TP
+.B EINVAL
+The
+.I start
+or the
+.I len
+field of the
+.I uffdio_range
+structure was not a multiple of the system page size; or
+.I len
+was zero; or the specified range was otherwise invalid; or an invalid
+mode bit was specified; or
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+was specified together with
+.BR UFFDIO_RWPROTECT_MODE_RWP .
+.TP
+.B EAGAIN
+The process was interrupted; retry this call.
+.TP
+.B ENOENT
+The range specified in
+.I range
+is not valid.
+For example, the virtual address does not exist,
+or part of the range is not registered with
+.BR UFFDIO_REGISTER_MODE_RWP .
+.TP
+.B EFAULT
+Encountered a generic fault during processing.
+.\"
+.SS UFFDIO_SET_MODE (Since Linux 7.2)
+Toggle userfaultfd features that may be flipped at runtime.
+.PP
+The
+.I argp
+argument is a pointer to a
+.I uffdio_set_mode
+structure as shown below:
+.PP
+.in +4n
+.EX
+struct uffdio_set_mode {
+    __u64 enable;     /* Feature bits to set */
+    __u64 disable;    /* Feature bits to clear */
+};
+.EE
+.in
+.PP
+Bits set in
+.I enable
+turn the named features on; bits set in
+.I disable
+turn them off.
+The two fields must not overlap.
+Today only
+.B UFFD_FEATURE_RWP_ASYNC
+is a valid bit in either field; any other bit causes the ioctl to
+return
+.BR EINVAL .
+Enabling
+.B UFFD_FEATURE_RWP_ASYNC
+also requires
+.B UFFD_FEATURE_RWP
+to have been negotiated at
+.B UFFDIO_API
+time.
+.PP
+The toggle takes the per-process
+.I mmap_lock
+in write mode, ensuring that all in-flight fault handlers complete
+before the new mode takes effect.
+This allows a single userfaultfd to switch between lightweight async
+detection and synchronous eviction without re-registering its ranges.
+.PP
+This
+.BR ioctl (2)
+operation returns 0 on success.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+Possible errors include:
+.TP
+.B EINVAL
+A bit other than
+.B UFFD_FEATURE_RWP_ASYNC
+was specified in
+.I enable
+or
+.IR disable ;
+the two fields overlap; or
+.B UFFD_FEATURE_RWP_ASYNC
+was requested without
+.B UFFD_FEATURE_RWP
+having been negotiated.
+.TP
+.B EFAULT
+.I argp
+refers to an address that is outside the calling process's accessible
+address space.
 .SH RETURN VALUE
 See descriptions of the individual operations, above.
 .SH ERRORS
-- 
2.51.2


