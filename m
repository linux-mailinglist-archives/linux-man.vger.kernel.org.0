Return-Path: <linux-man+bounces-4978-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDDlN9sWemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4978-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:02:03 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2510CA26B9
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A09F3004DC1
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC15234964;
	Wed, 28 Jan 2026 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OZ7xINb4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3318F221F06
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608913; cv=none; b=LStfH28RZ1JiRAWZZ1coAlqZD9jUo7cStzPfcNavclH8J1nFpt5GhG7R6mITrA6Dn21Oni4V2+GS/pkzTXF2P7MAcn7Z7jKecNUGe3VoibHCJnI2vu3WxjrNIGWKPvSz2auFtRSKmgH3LEtksgP+Tdb1zRLJ6aRWYwDIjxlfjb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608913; c=relaxed/simple;
	bh=eoSKh/ocFnhYLQzkWdKxGIM1RG4E23EL+VpGX4/Fmf0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kczoBf7H2sAWxM3C9PSD4G4M6MOjmEsMt+obJkiCIYYvygUKp8GMaFayQfoZ2zNUVkBlxcq8wizdCMGpoR3NhjQnkTzNyoqA0Dthcax0LkjmqAPvauOjz2N5/8P8uj9qV6GO0SoVOWnbDCKDpP+yDmf9cP0iJgYPU4vPiBCLf4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OZ7xINb4; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a76f90872cso36262365ad.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608911; x=1770213711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W59NVKYmr41ENdKqLRGJ6Kumo6SlySsluyGp4wDEWow=;
        b=OZ7xINb4jwB31DiJqoKep3X0A5xk8eq6CBi2lf3fVcmRtliq3AkyunX4MZOEqJCx25
         hUHFv0oQ07DNZdinvSAdfXHDBUCIZx8v+2IpelIgB55+TaZnmAjqrhK3OoJ/hbH1VHir
         e/01iGbhS4ensWMqxA9kX7QLXgbgJ9yo07iTUGM61Nyw1bNeU267VFwlNKSdp9A2nyR9
         zePMbWRCN/bC61u91CoUWPPjBdB8XtnCPUHu8EspfOlQQhSFaDonFWmigUp4fFbbCJti
         +vUgEsiLhl0ASE7oZxyQIXZwRbRtmXn3NF7c2b2HBvXRu5Wjg8yvxrEc5ZxGABh7m2EB
         QBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608911; x=1770213711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W59NVKYmr41ENdKqLRGJ6Kumo6SlySsluyGp4wDEWow=;
        b=qIzImyUXrAqsggflkn5JGKvSRoBnPpma3dJNQ7/1DoDDUvLLnM8sWANf+vfjlDr4Wa
         6rVP5vKZtC68r714pn3+Rp2LGTMu6iSkxV2632YvSmZLBZ77ttL9tzIGpDMDdJft/G49
         hw4LlEhIuenkCq9ID2K9H0H4J4WzelFfzWnuke7+5MlRKg9aJ33iHGdiowaXrXddi8I8
         GPqap1ZrbDFAqXs1hhZQ1llUzivl1uws63q2EI/lJuOU7OEkUMPH1KNvC9Olbs2ocT/h
         8GvpYRcAVj5Df4r43v9+6/2wx5gTXrSIew/AsL6ngNYmw4sVJLMdVx/9DT5CRIATlfzX
         S1CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHqKW5RpPKB+5MTSP/7P7w41Tu5BQtt5hjeF5lx/wK6LitAvlcRRVZ9/QnzacjGqK9V5ByKNHtFY8=@vger.kernel.org
X-Gm-Message-State: AOJu0YyFrJfC/8LDEgNpw/CQjVGFyTRvtgc76fyS04cNRjlWE9OQXfi8
	4kLHn+rDfNz/kwaLybere9K0NtYdLwAcnZEyJztTjNFVcrrNxvwvekMz
X-Gm-Gg: AZuq6aJVCeo689DNyx+Vg8ulGtn7FejXUTl6bQnD7PsgTYwq004NBjAK0TGT8b02x4J
	/ywUoFDtS5/bpAnP4eMz++lWjeucqv8Tm7mOjwhC/4SHgKeVAQWaGoD33xYp3DzJvJZE1nqA71V
	6cyadkmog+CaMprB000TYVwVVZ1LJG6cnrOF8WJtzWO4BTsmQp1t2LopouoIbxRJnlO3WwT7DmI
	F7HHIZPTRCjaHxY2TPJiyZlVa/mxDHsD/gFWiLJwF84Qm5d8jfBsz0UPyL1deFxHU/DQlw9gLxM
	PKqhJ/NDm97Lfbc+h20/Ch8Z6Puq3zziI00u6V4HKX9qKxx4f1A77zLc2Rv0Xzd3MSnGF0ggffX
	HH3BbhY+i0pX4sGZaY+ksDcBklmAmTHjnxWkDF9EOCTYjEe+gQUnscljKdPCxirPkP8MnMi4SAe
	1Mj22OLtm1tRR+EZhL5XjfLROlpRCgNgA5ipxA0/P3S/k=
X-Received: by 2002:a17:903:2b0e:b0:297:dabf:9900 with SMTP id d9443c01a7336-2a870c3e2damr53919515ad.0.1769608911177;
        Wed, 28 Jan 2026 06:01:51 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:01:50 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bhavik Sachdev <b.sachdev1904@gmail.com>,
	linux-man@vger.kernel.org,
	criu@lists.linux.dev,
	Andrei Vagin <avagin@gmail.com>,
	Pavel Tikhomirov <ptikhomirov@virtuozzo.com>,
	Jeff Layton <jlayton@kernel.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Josef Bacik <josef@toxicpanda.com>,
	Christian Brauner <brauner@kernel.org>
Subject: [PATCH 2/9] man/man2/statmount.2: Document STATMOUNT_MNT_OPTS
Date: Wed, 28 Jan 2026 19:27:31 +0530
Message-ID: <c3f2fc154b75dce8958d96beea9f22cbeb7016aa.1769608658.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769608658.git.b.sachdev1904@gmail.com>
References: <cover.1769608658.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4978-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[bsachdev1904.gmail.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2510CA26B9
X-Rspamd-Action: no action

Document STATMOUNT_MNT_OPTS flag and the corresponding field introduced
by it.

STATMOUNT_MNT_OPTS is used to get all mount options on the mount
separated by commas. Similiar to how they are displayed in
/proc/[pid]/mountinfo.

This text is based on this commit [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f9af549d1fd31487bbbc666b5b158cfc940ccc17>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 8cf6775ff..8ff01075d 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -31,6 +31,7 @@ .SH SYNOPSIS
 .P
 .B struct statmount {
 .B "    __u32  size;"
+.B "    __u32  mnt_opts;"
 .B "    __u64  mask;"
 .B "    __u32  sb_dev_major;"
 .B "    __u32  sb_dev_minor;"
@@ -108,6 +109,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_POINT	/* Want/got mnt_point */
 STATMOUNT_FS_TYPE	/* Want/got fs_type */
 STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
+STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
 .TE
 .in
 .P
@@ -160,6 +162,13 @@ .SS The returned information
 structure,
 including any of the strings fields that were filled.
 .TP
+.TP
+.I smbuf.mnt_opts
+The offset to the location in the
+.I smbuf.str
+buffer that contains a comma separated list of mount options, similiar to those in /proc/[pid]/mountinfo.
+It is a null-terminated string.
+.TP
 .I smbuf.mask
 The ORed combination of
 .BI STATMOUNT_ *
-- 
2.52.0


