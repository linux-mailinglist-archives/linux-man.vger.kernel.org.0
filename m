Return-Path: <linux-man+bounces-5198-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I8XGzEYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5198-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 205EF16F79F
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15792300C25B
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70A534F270;
	Sun, 22 Feb 2026 14:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T2KloMgL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FFE2253EC
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771949; cv=none; b=H7hSQmZxn7GGvz97x6J4W9HSY6Ti72FgwMd5JfCczXYywC9j1pkYmNCnS2ORfHGS1enqz2ifMdrkE9KCbQ0xNuCHzECmxDHULjFSIUjh0blXmMz7sin9iWGU3dQr9aDhXAZwQayag8mFudRuW+/Sbx4RuMABzukxBUpzTPQwtFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771949; c=relaxed/simple;
	bh=kKjyvHUC5v8vWa/YHr0RQAdziLu06dmCVlZYZMTPHoM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uJ1QoTbauniQ2EQFcfZBkFsY/aQvB7iqSEWhdiCZfF251WgDI1s1WrvnVzIUxB9fHNFYNfTonElDRzSmkYQlKucbS7oeUSE2UamPDYP25HgH15cuou337hiux13skxPCwoa5GJLLi2+Goq3R5JRw1hl4vTX6sIQyhvum8qNbv5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T2KloMgL; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-354c67da885so2829086a91.3
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771948; x=1772376748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YsOj0v0eTtK3fzZGClU5FV4gGHVzGUwcaCvRGwVlI2U=;
        b=T2KloMgLgr7az2qaUfyZl4Oq2jagO/wbYthu2Y1ACj5dLX61os9iFvsZsM0wVvqsXC
         mTDGB+sqZQrNjRHG8rdqvP/394fl7Faq40Qx56TPNTfH0duchZybVXghjznFG0mceFZY
         r7h3VQPHdd1u/+W1dZ0qbx+yUjZtGpdKieRkOgk8cXtiTFg/P2AkxH1kHNkRazlFfyk4
         0wnby2qguicgaTQOsKZRKu3a14v/MilET9+FGTLVXsBDrBHqYrB23chFnvukSZ9CI6q8
         kdSROVS6EJ9uejjLkq4NINwLOKAxMRwXfg7k7hU6K/c2giO7Mstw+nSyhJmem4bOnEHj
         7dwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771948; x=1772376748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YsOj0v0eTtK3fzZGClU5FV4gGHVzGUwcaCvRGwVlI2U=;
        b=cv2842F8Q0Jc3y3WzXee6zBHUxDDuYIUopUBsk0rsdlTWYbG/Ev6j7ivbrFx3YdpzR
         c95CYIfBalKh/UYmxjBrwVm92THdAzpMTJlvtH8JYGvpsBBFY9h+XMIgWyFHgJAUI1aX
         vh5wBJ5SvbQJWtqQEvtEZuCNNY8T73cJ3CqFpAZKmS1gqaatVpW4hKBc45pcIGuWmRaB
         SkSzpELQTKI41Mu0eKcC1dcgdEHupI+uOG6L80vd2Cl0imXj7GJFLnH0gbMNvLEdhF9z
         hLtTXGgSc32K9Fv0tKIBuisH0vJ78SRuwuuR90IEHB0SQyrtwnpAZyYFMsS9+TDLulXx
         uUxg==
X-Forwarded-Encrypted: i=1; AJvYcCU/E0GetwiE+XijDOUOa7RWgtbzqplu8KU/BDwW4iN6PIfYW7ov/mqxqXS0EA+2OH1IpYGBUrZqcKs=@vger.kernel.org
X-Gm-Message-State: AOJu0YyAxP2dy2QZpEvB9I/8Fclf9zltrMyPMnAWf7kz1o+HHCZKUrKb
	ar/FWyLVRbUi4iPuklqGGHFujIOb9I8b5o7lZbuioPS9hm1eNyEQ6ULp
X-Gm-Gg: AZuq6aLP2iveSXt9NcXQCe114R38l0Vjqfa2n1pMdatkhuKu8lwMnvkyHvr2d3PJVfi
	4nCvzNuO8X7q1syezF6+BkAXqF66ThjwxVSCbluHrnWJLrRww5hfnl7cuvku7vhGAUnvkR6m14V
	TPFpuBn+odX9JGfY9F4blpvWYZu7c90o/jjOBK+mCpvSf9UJJpG1JeuVeC8Tp39s+EM8J0qhfUT
	Uu5n6pPgQFs2CKK3RGPwnWTcLLH73bAWqt15E0lbEGsg+z+DR3NZEnK8kikqm8IqClZ3nyCqhuF
	eeH3mkCNIDnC4fwiIT5D/C9b72A6qjWEQCxoQrRsFZZyc9/zUTOz7ePiuatYgNlbLzLe/8+WZLo
	mX9HelK4jQ8UINgX50zlcCLvsRr1vmaHCcdrVfP70+RMS8KznLYvAj7ukYgqc8VG1uL6UU8Yvrq
	rlM63gENoY1DfhTtmYIEzK8nSovimkay0irD3VBbjH0GJWSi1HQBFAyrk=
X-Received: by 2002:a17:903:124f:b0:2a8:afbb:44fe with SMTP id d9443c01a7336-2ad74542b34mr61196775ad.43.1771771947889;
        Sun, 22 Feb 2026 06:52:27 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:52:27 -0800 (PST)
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
Subject: [PATCH v2 09/10] man/man2/statmount.2: Document req.mnt_ns_fd
Date: Sun, 22 Feb 2026 20:15:59 +0530
Message-ID: <6577568b31ba8700214af1696d740d3b6aa1869d.1771771560.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1771771560.git.b.sachdev1904@gmail.com>
References: <cover.1771771560.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5198-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 205EF16F79F
X-Rspamd-Action: no action

Document the new mnt_ns_fd parameter to struct mnt_id_req.

req.mnt_ns_fd can be used to query for a mount in a foreign mount
namespace.

The mnt_ns_fd parameter description is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9020d0d844ad58a051f90b1e5b82ba34123925b9>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 7951c8391..0b3a65bb3 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -24,6 +24,7 @@ .SH SYNOPSIS
 .EX
 .B struct mnt_id_req {
 .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
+.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in */"
 .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
 .BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_ constants */"
 .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
@@ -74,7 +75,9 @@ .SH DESCRIPTION
 To access a mount's status,
 the caller must have CAP_SYS_ADMIN in the user namespace.
 In case of accessing a mount in a foreign mount namespace (specified via
-.IR req.mnt_ns_id ),
+.I req.mnt_ns_id
+or
+.IR req.mnt_ns_fd ),
 the foreign mount namespace should be child of the current namespace.
 .P
 This function returns information about a mount,
@@ -97,6 +100,16 @@ .SS The mnt_id_req structure
 it should always be set to
 .IR sizeof(struct\~mnt_id_req) .
 .P
+.I req.mnt_ns_fd
+can be obtained from
+.B PIDFD_GET_MNT_NAMESPACE
+.BR ioctl (2)
+operation or by opening a file descriptor to
+.IR /proc/ pid /ns/mnt
+and is used to specify a foreign mount namespace in which to query
+.I req.mnt_id
+(Since Linux 6.18).
+.P
 .I req.mnt_id
 can be obtained from either
 .BR statx (2)
@@ -372,6 +385,13 @@ .SH ERRORS
 .I req
 is of insufficient size to be utilized.
 .TP
+.B EINVAL
+Both
+.I req.mnt_ns_id
+and
+.I req.mnt_ns_fd
+were set.
+.TP
 .B E2BIG
 .I req
 is too large.
-- 
2.53.0


