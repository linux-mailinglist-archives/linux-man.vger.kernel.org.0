Return-Path: <linux-man+bounces-5064-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHZJKFBQimmbJQAAu9opvQ
	(envelope-from <linux-man+bounces-5064-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:23:28 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2840E114C4B
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49057303F053
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E185E311597;
	Mon,  9 Feb 2026 21:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cl22V16i"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F9D3101BF
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672121; cv=none; b=KYsVx8FeCIzGKO2JbdtndNc4HQEO8GEFsVkmm9wkY8LAaVcPtIaJrRkJ/knCECMcSLFWB9oHYtxLPGuPp2P/53i8Ma1Vxm1PN81AZ8NlECGpM4YMFKuQ0gb1u9ETzs2WbB9O+t9/CHeA/Bp0iHcpHf2mrNdSdjO976Q2QL8b6d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672121; c=relaxed/simple;
	bh=oomHEi79RQaZ6mifEIfj0z0CmfAjot7Asb1FCviu0EM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bbc4wsfZo4Oj3GR4kshLJlEcpi6E/BrKhso0Xp0w9kl1zU3xDSlNfw2wHN4FWiNE05oRMAPWdPcQGKNRSsXUwiD4Knx/5LxImiFlUg9HSGGpAcaCdmdMZ9ujznhSJttj6WphXFNcgi0JxzUVGKf9JqZfpp4AWWN8aC8M/8wdpBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cl22V16i; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2aaf5d53eaaso9000225ad.0
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672117; x=1771276917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lmu8/DTIAyA4Lmg/LCTSDBfYZaHc8yuVw8UgfFnk8kU=;
        b=Cl22V16ixc6t44Vf9CEgeYFWXTu3BLnkd+jbyypQ38nVj1/7u1eqUIpQoIUpxHkJ+f
         3fbG5ue5WdTxosC1nyIohf1+NBhTrmtl6mJtBjFqLkdLrM+TeiUVAou9KH2mH3q4gm9S
         jyygxTbOO1yNWQXhA+NmCEDwsCoC15hTNRA2Gi7ZzkD0kXENr5DD39eZYYESlQwC9QfQ
         BMK9Hq1XZBRPm5B0u/EO+Wm8vPYFEI0CKFhcZ/mqJMHRntS0U4gajq7En2poFWBRgVSs
         DGKARjy4a5syRfcVYM+3SqqKAvd7/oLpxTmck3f5Nwc2g+rvfEWn5mr4hoyYUkRZgQPW
         xhCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672117; x=1771276917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lmu8/DTIAyA4Lmg/LCTSDBfYZaHc8yuVw8UgfFnk8kU=;
        b=anL7/pahT3LpVHO1s5HPu+k2nplXe/pnVjfDaNPUPZ2khSWTBnUx7a1mSaL3qO78dZ
         vHBcKQFxbe3XQb8932uGTWH7g0DXAUkEzawiISdQLosd5QyvZUKlSHXFob65T6wtqcK/
         zHt9ejWLaZ1zMjqHP8eJ8nBJ+ma7eUZe9DdFgIzvg84C7dbphDViYDFMk78luGK8e/bx
         VZIIs+BGAWfB1GnUt7ytpTqDFnA47BKPu+EaAKWtFDL3mldXBSxrKGFpGpw+VWKs1p9q
         0fRo2qOZhhgpG74Si+EjGP1J4iVVDASO5H64oycdgV8hakIWlWYVzKltHT2NLaVjCQW5
         Wk4A==
X-Forwarded-Encrypted: i=1; AJvYcCWx7w8iK8H8JmYe3bu2H1EKkBXI2dvDdXyUOBE/lICRdvqO19zaC3BMT5bW8NxnwWPi7aWfdMDhvok=@vger.kernel.org
X-Gm-Message-State: AOJu0YyJzZ5Sp49ViqlQGr810iSWrmitKCNl0OxOK1MVL72oIfBlM3zf
	XpLOe/NTnXM0BmcREUD/1K+42pcPxZjBYk2Shj1KQgPU0UF+PbYSNMhL
X-Gm-Gg: AZuq6aKKOV4R/o/TIMICbCfFYs6K0RfK9AsXyKOR919mnR/lqBcAROk2NgVxbeFzW0L
	mpV9NjAW4p8zIMfg6XXfcpyYWmYxdmSfI0+kGNvhFOwh/oHNIvCb1gu4NVHgEvjaSs75l9E7hWF
	JDs57ouGbcmxDsnveGE+msk1uAh55oemBCYiNlxdBcOrZzxTikhXrH6x6oJHS/hmBXKk/VNvQHm
	hXmJEl8tvoaryAOTP9yXXqr3lH3DZ54tVp8i53wv2Dn3aCWFox1lyGn+N6J6LErXi1l2kTwqiUc
	r6pliGf1QX0Sh8miNxPCgK1sBxSwLr8/b2nFWZVTJXbS4ZK12+5kvwKfA0x+uDp3D0m7MgRAqFC
	DHgRmHLkcqc55FijJO0KoKgxUain675hXv4BR5+2hM7mtRz422sGnUi0BHLbGRfXPL/7Z6zdCXl
	jETDpchla74e3b/uePKQLj19wKQ8OltSK14/1f0Q2JXOg=
X-Received: by 2002:a17:903:38c3:b0:29e:c2dd:85ea with SMTP id d9443c01a7336-2a951633a66mr130115105ad.11.1770672117140;
        Mon, 09 Feb 2026 13:21:57 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:21:56 -0800 (PST)
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
Subject: [PATCH v1 01/10] man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
Date: Tue, 10 Feb 2026 02:47:34 +0530
Message-ID: <5cf41ebf2abbcf767807be999790e0e5a6bd5865.1770671863.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1770671863.git.b.sachdev1904@gmail.com>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5064-lists,linux-man=lfdr.de];
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
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2840E114C4B
X-Rspamd-Action: no action

Document the new mnt_ns_id parameter to struct mnt_id_req and the
STATMOUNT_MNT_NS_ID flag.

req.mnt_ns_id can be used to query for a mount in a foreign mount
namespace.

STATMOUNT_MNT_NS_ID can be used to retreive the mnt_ns_id of the mount
being queried.

The mnt_ns_id parameter description is based on this commit message [1]
and STATMOUNT_MNT_NS_ID text is based on [2].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=71aacb4c8c3d19da053363a5fe7538a8af082d56>
Link [2]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=09b31295f833031c88419550172703d45c5401e3>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index cdc96da92..f5c4da122 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -23,9 +23,10 @@ .SH SYNOPSIS
 .P
 .EX
 .B struct mnt_id_req {
-.BR "    __u32  size;" "    /* sizeof(struct mnt_id_req) */"
-.BR "    __u64  mnt_id;" "  /* The mnt_id being queried */"
-.BR "    __u64  param;" "   /* An ORed combination of the STATMOUNT_ constants */"
+.BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
+.BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
+.BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_ constants */"
+.BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
 .B };
 .P
 .B struct statmount {
@@ -47,6 +48,7 @@ .SH SYNOPSIS
 .B "    __u64  propagate_from;"
 .B "    __u32  mnt_root;"
 .B "    __u32  mnt_point;"
+.B "    __u64  mnt_ns_id;"
 .B "    char   str[];"
 .B };
 .EE
@@ -59,6 +61,9 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 To access a mount's status,
 the caller must have CAP_SYS_ADMIN in the user namespace.
+In case of accessing a mount in a foreign mount namespace (specified via
+.IR req.mnt_ns_id ),
+the foreign mount namespace should be child of the current namespace.
 .P
 This function returns information about a mount,
 storing it in the buffer pointed to by
@@ -102,6 +107,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_ROOT	/* Want/got mnt_root  */
 STATMOUNT_MNT_POINT	/* Want/got mnt_point */
 STATMOUNT_FS_TYPE	/* Want/got fs_type */
+STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
 .TE
 .in
 .P
@@ -130,6 +136,13 @@ .SS The mnt_id_req structure
 as one or more bits may,
 in the future,
 be used to specify an extension to the buffer.
+.P
+.I req.mnt_ns_id
+can be obtained from
+.B NS_GET_MNTNS_ID
+.BR ioctl (2)
+operation and is used to specify a foreign mount namespace in which to query
+.IR req.mnt_id .
 .SS The returned information
 The status information for the target mount is returned in the
 .I statmount
@@ -232,6 +245,9 @@ .SS The returned information
 relative to the current root (ie if you are in a
 .BR chroot ).
 It is a null-terminated string.
+.TP
+.I smbuf.mnt_ns_id
+The unique ID of the mount namespace the mount belongs to.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


