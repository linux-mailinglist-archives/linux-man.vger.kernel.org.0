Return-Path: <linux-man+bounces-5071-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKN6N5lQimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5071-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:41 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35291114C88
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE38B3028020
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BAF2EA173;
	Mon,  9 Feb 2026 21:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KmTzK77b"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A13330B539
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672160; cv=none; b=kgpQ53l5VUlZaYK1Uy30fbKA4G+QHT8+miwuCEdynIRmak7aE1T+t7suu17vkAfBHdF+6D9mXgf90CF3MZ72ilQV3jdHq1A/RFpiiAzDCCeqWgkWch9YxKrBl7zkDcrnTPxfc0K0wG7HKeoOE3vuQlMv4CXKmOFYXsfnHK2MgkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672160; c=relaxed/simple;
	bh=6hCf3Jh7K/PGBb/2woH4QWZ5M09YdaKSAxDhwGPtSF4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fdmXj6lhfYoTpfL4PfjjToXBPiegLpob2Yg5xV3/ThlMqXH10veG7jioX7/S6mRkuy8vopPvOgmsiFM2wETv6CkA4r4/yzKgNxFZkIXmgOICs3ad2N/uWAvgBxbEA7v2rz6p4vB7G/4+6970LB7K3ZtUEDdTwgpRHLpTBnoy9UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KmTzK77b; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso558715ad.1
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672159; x=1771276959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dSr16urW7sZdRHTMQrPcIuzpWLm+7n7bzNhLG935N98=;
        b=KmTzK77bTUyYqZgkG6PADzcSlvmsGoxq++PP5k/QfXJpTnITa+Znpfh6IRxxo8aoY8
         5ecHlBIa2tsHAeWwfdl5unpNClkgfG0g5780AWF5jt/P9+2QynF4bgyEZW+QNxX86vKX
         7fG5dkOMZ+IH9jttWpXFyc0azvohyBZ5QlfVepZfHIIolgnXLNR+u6sm7CfY0xwSvq4D
         Lhqzc/O10Gf+nTI4aCDtn1R7UL06TAl+pqRrl/8lKY1ZkWsJgrLyEr+/BlQMdfU2qXmY
         KTG3iIodmwBTEmT6dFgOjHq4v/SQmZYZTNa3mKFXqD0shz+s2+TYQGs4Nsf/84XUxJ9E
         GpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672159; x=1771276959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dSr16urW7sZdRHTMQrPcIuzpWLm+7n7bzNhLG935N98=;
        b=XFp1XBiRRkFgxO5ME774sMRcORmPf9gJ45yI2Hj/YUyV99of8027xarqL+OEQ9jOTX
         aIEL02oID1e1R07A9dGdHoJq9oSY2PG8QMG5QlkxGgedLMtGkVq1ecdHfKQCiL8gXUCT
         xnfivB0m1nTY+5CE6uxSR3yP7tiNW4vLXEDITFP+hAphPPerT6fY5FuPf99S2masI+yK
         2cC+ZuQ2I2o3em41CJb8OuXRERdZfo2wl8OmwYQicQF/G7EB/3Xt3DrtIrHuXnpUM1ig
         gqpohS/277jLejJD/ZhrRT1bYYo3HcknwQQKYUMccpiiRoT7UYgkyadxvFlgqs3C8/J5
         Y5qg==
X-Forwarded-Encrypted: i=1; AJvYcCVa9ny374pej/I+2TBp5UxP0LCNwMbCMgdPYy1b9fUCXAgB5HC/NIxS2zg6P0Dgf+LE0xLhTkiutI0=@vger.kernel.org
X-Gm-Message-State: AOJu0YxxqfC1klnly16qWR6oqFdObahZHMjpq1bstpnh0w7MRJc3Ejer
	C+0PKwkLrYnqJFoiBt/dsaXFMaWPt4N8hjdVG2POma1ED22TCBAYYD9x
X-Gm-Gg: AZuq6aKrBSBK91goQ+SA7Xp+sQ9OZKoslMhSSgfdOWqdZG3g5YKLJKdD8rRkM1OCUg3
	pqoO5AfaJ5csqd62INx48A4h6e71EVQpzZWFjh7kzAefAf676B6Sbt3TAwGqELcEdjyyfwJZZU0
	BXDJBQw9CnPC0IAVaIeHTHdxUgust8lvQfCKVD3JDJFH+ys0UAJ4Xs1ofDcNKXLUor+SII+xrcu
	2oJumAlW8nArYvJQoEmJ2MFBDv4SYCOh+OEB44L3PNjoy/pKwxtagIMH+vRQgW8s1BgcFlHSS0e
	FfiGgPKCW7CjoT9FNO/TEuq6DkBCDcZXVRNGbGwGVZ9A118BVgcOv5P+Rk9WO220j21/LgbxEmv
	2INFzwUxnCqODk+rUCMuyFHHUaTodVQ8L2R2b0Ev3PldEpa0Rx+nStA3fpaVIB254U3jR737kGl
	DGkFJOJrlScNUiUaqkzvYEziQCNe2/XNCUNXyj1Gr3BKw=
X-Received: by 2002:a17:902:fc86:b0:2a0:e532:242e with SMTP id d9443c01a7336-2a951607ae3mr122088855ad.11.1770672158693;
        Mon, 09 Feb 2026 13:22:38 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:38 -0800 (PST)
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
Subject: [PATCH v1 08/10] man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
Date: Tue, 10 Feb 2026 02:47:41 +0530
Message-ID: <8e4837fd0c7d5869a430b7567ce8d6f090cc7a3c.1770671863.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5071-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 35291114C88
X-Rspamd-Action: no action

Document STATMOUNT_SUPPORTED_MASK flag and the corresponding field
introduced by it. It is used to determine the flags supported by the
current kernel. The text is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8f6116b5b77b0536d2ad7482ee42bfe58b8fac01>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 4da55eb38..0b906a334 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -60,6 +60,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_uidmap;"
 .B "    __u32  mnt_gidmap_num;"
 .B "    __u32  mnt_gidmap;"
+.B "    __u64  supported_mask;"
 .B "    char   str[];"
 .B };
 .EE
@@ -126,6 +127,7 @@ .SS The mnt_id_req structure
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
 STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
 STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
+STATMOUNT_SUPPORTED_MASK	/* Want/got supported mask flags */
 .TE
 .in
 .P
@@ -333,6 +335,11 @@ .SS The returned information
 .IR smbuf.mnt_gidmap_num .
 The whole range of gid mappings must be resolvable in the caller's user
 namespace.
+.TP
+.I smbuf.supported_mask
+The ORed combination of
+.BI STATMOUNT_ *
+flags supported by the current kernel.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


