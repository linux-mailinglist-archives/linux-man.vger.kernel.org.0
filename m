Return-Path: <linux-man+bounces-5633-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4N0gHGSeGWq7xwgAu9opvQ
	(envelope-from <linux-man+bounces-5633-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 16:10:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B75386034FD
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 16:10:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FC12302AC13
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 14:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1453E2AD6;
	Fri, 29 May 2026 14:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+YifSkL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A528D33E377
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 14:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780063572; cv=none; b=cZPKiMk+Pw7VFu6Zz+OuBkxvQ7ErwJ/6X/VRroBWISxpP8l+nYbukPCq0Dk0jfRQzhd1f9mfPyHnYwQ6bwiKs2nygIiBd+yZOBhAS6H5hTfN+a0+dj9uhC14k47ZoYw1bJwTdiaDTmsHNX7CWpCDNZSyWg3NxUdRpeYec1ze6S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780063572; c=relaxed/simple;
	bh=9P2QJvpW5UHg624w0paZX0PDPnDP/FTNWNbDoFI1P3o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tFSjS/vdZ9NlrN8BNMCGathi/kY5MG9tSZAE/QuSGPdb1Ezw3d0DiUn3FnTewjBzwvdhXiFUK49Dlpg3zLmPiKjeS/p/4/WpRobdgTPqwaIY9LasMl3Zc1fOHTz86ZqN6T2CJ1xPmCwZn1w6UVvBXaJlNUohXNTAG/za4o4ZY/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+YifSkL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9699A1F00893;
	Fri, 29 May 2026 14:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780063570;
	bh=a69E3VWZkwV++uR/J0ybaVc0ASBC/CgMAkTholPQExU=;
	h=From:To:Cc:Subject:Date;
	b=A+YifSkLcbj/rjftWzmNeXURfK9QUGa9T22tpbpxVtXlDkVKYZq/PrNU6bvsc7VgN
	 +tg2XN/bSwOB28D7I643hmCLHDd2EmldBgVeQ6chTzGTH/cXjIXQWRA5pyxKdiuMJs
	 q38BsPxGww8VGxHKFd4pXJMVvBoZXawzqwSSreahwLT3LnyGUWN/a4rjFT1Md16h6X
	 agsdDhU+3U5y3frePS32cbnxjdxKcZ19VQaxgpkU1w2t24hTDmnDThq5DwO18gvqj+
	 qpUwghfMbtBA6USfUeXuzgTQBwTfMqzc78peReUCiFwI6NgXKbouaGu/enIXqd45S7
	 b2zrEWr/iu33A==
From: Pratyush Yadav <pratyush@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Pratyush Yadav (Google)" <pratyush@kernel.org>,
	David Hildenbrand <david@kernel.org>,
	Daniel Verkamp <dverkamp@chromium.org>,
	Jeff Xu <jeffxu@google.com>,
	Pasha Tatashin <pasha.tatashin@soleen.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Hugh Dickins <hughd@google.com>,
	linux-man@vger.kernel.org,
	linux-mm@kvack.org
Subject: [PATCH v2] man/man2const/F_{ADD,GET}_SEALS.2const: document F_SEAL_EXEC
Date: Fri, 29 May 2026 16:05:55 +0200
Message-ID: <20260529140557.1624507-1-pratyush@kernel.org>
X-Mailer: git-send-email 2.54.0.1013.g208068f2d8-goog
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5633-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[pratyush@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: B75386034FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Pratyush Yadav (Google)" <pratyush@kernel.org>

F_SEAL_EXEC was added in Linux v6.3. It blocks changing of the exec bits
once added. Document it.

Signed-off-by: Pratyush Yadav (Google) <pratyush@kernel.org>
---

Notes:
    I discovered this was missing when working on [0]. I had to look at the
    code to figure out how it was supposed to behave.
    
    Changes in v2:
    - Re-write the documentation by hand.
    
    [0] https://lore.kernel.org/linux-mm/20260505133922.797635-1-pratyush@kernel.org/

 man/man2const/F_GET_SEALS.2const | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man/man2const/F_GET_SEALS.2const b/man/man2const/F_GET_SEALS.2const
index 175025c10..f41e1748a 100644
--- a/man/man2const/F_GET_SEALS.2const
+++ b/man/man2const/F_GET_SEALS.2const
@@ -176,6 +176,25 @@ will fail with
 Using this seal,
 one process can create a memory buffer that it can continue to modify
 while sharing that buffer on a "read-only" basis with other processes.
+.TP
+.BR F_SEAL_EXEC " (since Linux 6.3)"
+If this seal is set, the execute mode bits of the file cannot be modified.
+Attempting to change the execute mode bits via
+.BR fchmod (2)
+or similar will fail with
+.BR EPERM .
+This results in a memfd that is either permanently executable or
+permanently un-executable.
+.IP
+Adding this seal implicitly adds
+.BR F_SEAL_GROW ,
+.BR F_SEAL_SHRINK ,
+.BR F_SEAL_WRITE ,
+and
+.BR F_SEAL_FUTURE_WRITE .
+This ensures that the executable code is not writeable.
+All the pre-requisites to add the implied seals must be met to successfully add
+.BR F_SEAL_EXEC .
 .SH RETURN VALUE
 .TP
 .B F_GET_SEALS

base-commit: 9db8ca91f920b9aba40ed68de6b8da0ca9dbefaa
-- 
2.54.0.1013.g208068f2d8-goog


