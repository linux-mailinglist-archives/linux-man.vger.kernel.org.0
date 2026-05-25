Return-Path: <linux-man+bounces-5592-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHWtL85AFGo3LQcAu9opvQ
	(envelope-from <linux-man+bounces-5592-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:30:06 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 482255CA82F
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:30:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9EA93021736
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 12:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF2E38228E;
	Mon, 25 May 2026 12:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="GzPfphZ1";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="KKYeTWHK"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E36C37F758
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 12:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712118; cv=none; b=Ljgb9JIUC3soRcgHCkWu0krEvWvTEeIS0qB2UEiCTyR17po2goxndOywHX3WOjw9Rm/wmgIkZkqwf+Ovofc196vwWksyerkW4Bqlg2+dou8BzEbL3Pw9KfD4tgOmJztZiGg0edB+40pEr/lroPx+0AirkVEMhczqHVYhWPgX0KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712118; c=relaxed/simple;
	bh=MTi4meM3sVaZj1KXdTARHT4e7lK0ZTQhn/NCfjC/t/A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r7nqZY+ocC7NSn338Zf5BYentrBP5IcJUXXiK5DO+55dfLuh1lWPWBWZKNMOsQmUq74MLO0nQAS2/xsNJWfqr2LP68/qEMylVlRdUT646q54AmjKpJLUDNnbqNFX7lDQznOaFzm2l9z2Prb/jBZH4sZNhdM6X93Nhoy0xxopFNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=GzPfphZ1; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=KKYeTWHK; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 2C34C7A00CF;
	Mon, 25 May 2026 08:28:36 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 25 May 2026 08:28:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779712116; x=
	1779798516; bh=8vrDBOvq2+kJrD8P3sLIJ9hYixXyIjwZZDl/w6KrqRA=; b=G
	zPfphZ17cEjIw9pOIPpRFsWBG8PZWepxNWWaVlWbb7Z2ZrzJgGsrnJGnwvIhGIwo
	+Fp5oTZB6dPeGS9L3J4owSy8N1gOEbfu40Hbo9zXGjAnJOSmRJYW6yJu47scwK+O
	dCL+dTECmpzjYf41RwlpdFivJCxiYD3UnkL+ZizSOFkYHRbvhulDUkVEwCQU+EoL
	M5Ys1BgC4MNo+7+lrLzXigTIygm4uQ4wk0GhjZysiOZXBjLOZOEYK5cRg4U2jACd
	sUiYNGZjXrgaexRJinmQltzE+3pEVJKqmK7MjmZStujh2/f60QHy2n5E52Iq/mUS
	/mmwuSQ/lAekoYkSiUl1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779712116; x=1779798516; bh=8
	vrDBOvq2+kJrD8P3sLIJ9hYixXyIjwZZDl/w6KrqRA=; b=KKYeTWHK/CGRz/KH0
	2Hndxs/dxYnj7yh7e5adDD0F1i/9kZKHsEnbE8DOk+LXipKlqcMZTmth+bynhkn0
	VXDdJb+cidRUG+E+4lhqr20RvkkhX+tfZn1TeROsS7CkNjDSTRRhpedx1AAqsyL+
	9G77uxUVh60yZmBnOk3faB4taeGk4enggkKp3CmpwvWZBEJ/QfstIHxKWf1ah67B
	6O5PMVO1uGrqt9FxGO78yHjICOcHxMx0DmQPZ/hdIOio1fk2hLMdD8/RippdR4vG
	0a49z9NrNy9n47VvPJvuneVlQAyJUXIpOZ+8/oUR3jTc4tQBiM6+LOeCugBwH0m8
	eecgQ==
X-ME-Sender: <xms:c0AUarBtKkvwyBsKRTnFCjc7XdgvH8oYl7mvPA9TfRIB5ynpPnKH4Q>
    <xme:c0AUatMMg1E-0c6iPJdA97At7tvaIDjXJqdCF-XogtT0IZpQ-NUCf-9uayvA7rLae
    HYhAqBZPTT9pT4gMg69CA4uw8EKnKy1CfQKHEM5aHct1xQjeALYBQ>
X-ME-Received: <xmr:c0AUajAJS2_fuFobhOmZyeAWpvsKPFrRSC8xhQM6LqyPNETKpO02XDB-nxonVQ>
X-ME-Proxy-Cause: dmFkZTEXp0cswLCLQnYU3cXjMRaX4wSfvTakw6a4812iXlP/oYHwvc//N0ENwYUIk99T7x
    XiejX3G5k75GRyBPaFULLW72flrMcjfWHJnueXxI0+t/vzZigKbjfvj1c2p4zGrVrqwvRX
    o6NFf4BdpVI+wJUcYURMDEwR/eLb6d5Km8AyI/46j92EpY4y2EApCdG2yHIg9iBYOrg+QE
    ju86lW7VRBKwT5veKrdL4qmk4nsbBFr8tBxHsk2R1jxZkkGJs2c7dL1Ou2HQsGtvgbhc+S
    +h80ESmF+sd1T9PmUfB7cHNrunygJYY9di8lZA0q53vnoxmbm0Zfn+RZevx0zkisuyDCoB
    W9Ng6yRowEOw6be8maducO9OEHTQP3JBQ/VQ6qgpjsb2anWMll7BchQ3RcJp6Goeamc2mO
    0djE9YdcLfMCGhFiTxWO3qNcwWq4izwUlSqP6UUUNt/ukKl7jyHY30fsxuf9oitCxhQPbB
    IqNdgSzzxNFFOF27wVnI2DpOpMt5tpdF7aN0OQeXbwMx5mEDx8h/CRpwoOsQrT/bsbmnKi
    9GmAObrn4b2xMiWplDLel/mqoAhesTaWfog3sPQbtF4JSCaQwKXWeITmEulhbXCb87bz6l
    xNuv1JGjtpHq4ar5qYWjwC26v/vprv4qacRlTa0kkKtq0WRCWsF51AkEfrSQ
X-ME-Proxy: <xmx:c0AUam7hkUGeY2uuDu5gsNaeAEXwCS_wgePd7rYg6ik6seODrZ1srg>
    <xmx:c0AUal5HEAqmXC7zhE9wbR8dlmQv1Mw_27cADw0YPFUtkEfutADmbA>
    <xmx:c0AUagRAdcuWFj-3erPEgA8c3Zjv8IC3336PJ_X7H9M4nL1u5vNe2g>
    <xmx:c0AUal_qkTZBxllqFGFnL-Ykiue8rR8Co29o9d5_hTbdypVXAiwuMA>
    <xmx:dEAUalYqdAPfvQHekxnytBjN-pFztXFoMAn9E-1I3VcgZ9Yi7ee4wa1D>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 May 2026 08:28:35 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>,
	Kiryl Shutsemau <kas@kernel.org>
Subject: [PATCH man-pages v1 5/6] UFFDIO_REGISTER.2const: Document UFFDIO_REGISTER_MODE_RWP and 1 << _UFFDIO_RWPROTECT
Date: Mon, 25 May 2026 13:28:15 +0100
Message-ID: <20260525122816.1956804-6-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260525122816.1956804-1-kirill@shutemov.name>
References: <20260525122816.1956804-1-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5592-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 482255CA82F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the new registration mode bit introduced in Linux 7.2:

  UFFDIO_REGISTER_MODE_RWP   Track every access (read or write) to a
                             present page in the registered range.
                             Cannot be combined with
                             UFFDIO_REGISTER_MODE_WP; both modes share
                             the same per-PTE marker bit. Anonymous,
                             shmem, and hugetlbfs ranges are
                             compatible.

Also document the matching argp->ioctls bit, 1 << _UFFDIO_RWPROTECT,
which the kernel reports only when the range was registered with
UFFDIO_REGISTER_MODE_RWP (which itself requires UFFD_FEATURE_RWP to
have been negotiated).

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
---
 man/man2const/UFFDIO_REGISTER.2const | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/man/man2const/UFFDIO_REGISTER.2const b/man/man2const/UFFDIO_REGISTER.2const
index 50064c954b81..07b2a1c9dfc5 100644
--- a/man/man2const/UFFDIO_REGISTER.2const
+++ b/man/man2const/UFFDIO_REGISTER.2const
@@ -72,6 +72,17 @@ Since Linux 5.13,
 only hugetlbfs ranges are compatible.
 Since Linux 5.14,
 compatibility with shmem ranges was added.
+.TP
+.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
+Track page faults on read-write-protected pages.
+Every access (read or write) to a present page within the registered
+range generates a notification once the range has been protected with
+.BR UFFDIO_RWPROTECT (2const).
+This mode cannot be combined with
+.BR UFFDIO_REGISTER_MODE_WP ;
+attempting to do so returns
+.BR EINVAL .
+Anonymous, shmem, and hugetlbfs ranges are compatible.
 .P
 If the operation is successful, the kernel modifies the
 .I argp->ioctls
@@ -109,6 +120,16 @@ operation is supported.
 The
 .B UFFDIO_POISON
 operation is supported.
+.TP
+.BR "1 << _UFFDIO_RWPROTECT" " (since Linux 7.2)"
+The
+.B UFFDIO_RWPROTECT
+operation is supported.
+This bit is reported only when the range was registered with
+.B UFFDIO_REGISTER_MODE_RWP
+(which itself requires
+.B UFFD_FEATURE_RWP
+to have been negotiated).
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.54.0


