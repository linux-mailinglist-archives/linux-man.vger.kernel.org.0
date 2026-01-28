Return-Path: <linux-man+bounces-4980-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBUtOVQYemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4980-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CC2A27F9
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56F3E30530FB
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3BC22576E;
	Wed, 28 Jan 2026 14:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bZjjdxmh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC39219303
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608927; cv=none; b=gAqL05BJzx8I7I1GRI5OFVfB7Zwn+DdsA0c6cwuo2jASgbS1Qc9ROej8cmm2FZHphLH4czhAVtMHFq4UqAvmJw6lN7UZaGA/1Du3IUNVHO93duQ9jyhTFab/EhXq6ypfh7zGQn0YG2Q+Kufm6rCvElqNnD9qDPBNMriK+Buvfic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608927; c=relaxed/simple;
	bh=74qea4LyBLWnDbrEoMXVrL+szzbRBJx5zgDEFGKBNFY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VWcE1X4GwjpatFSbjNdH7gwnIqiJi4TyU6/D1soogQ3SWPD2jZuGyy6k0ihZ6uKiEZf/Vta88LE3CVuarXrN408BHLshrSZ+PaRn0+9m31pAIvcjCi0Ue+uAlUoq80hDOJ/E8AqMXoQIvMf+ukovnMW9QoSBMbG4/UH+o1LHGBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bZjjdxmh; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a0c09bb78cso8387445ad.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608925; x=1770213725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GUltr69CfyimcHaPzEwvJ+5f5uLikGHZZ82F8UFcuW8=;
        b=bZjjdxmhJ6921WhAtrxqKp5tXI/5kxDBzPoKO/4k7QOXFnXblZelXMFjagGKGDNat0
         RF01pjoUGGiinFcgXEkal9PTjD+QCLFLefvkZ7+uuspU54fow/Isp124NTXG8NM0R2QT
         NdzRS5pGUgRJ4nZsuoMH0bCcN6fmPutxXm//JX8x29sCg8eUwnoWsV1es+xbtbn7mwFl
         YgYBoVo5f39yifMEU72y5VHgQPVrKdORbJjxiwPTSIV36+Ym9RspkNka16yvNqSRlYpK
         dvv6afPig8lYcflEgCxvYyH0Be4fpAxkRDNhUrUSdnj11w5j83+sV4xYbzhRLPt6Pxpc
         stoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608925; x=1770213725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GUltr69CfyimcHaPzEwvJ+5f5uLikGHZZ82F8UFcuW8=;
        b=Sm7nc8YPnIF5+jbqCRWFqEYlAvKap9ha6HHplhFYJejCeHRb6tLNr335SbvM7Dc3kG
         OiyXGhS5lk53ouISnWvdXzSGvl7hwg/w8vlfFeGNwvfzeg2phfe36tJbfT3p5OKt0yyO
         u5LzrdgM7S+A06ZWiY3iGu5h1A4IUXDqCFyjZU0zG5XxkbNfURClEwbnLeSwNvktTsYL
         qp/wDGz3tpQg/CbrE1hePbS6T3sD/aKnIqbIYStjUOVfWcbQ+GvB8n222Up5Xsdsc9ml
         J7duBpRCFtEzAyyXbpGjURVOit6uITMhFvK5h2lj0QYCNbyCrKDplNTIYtnojJNGAZZ2
         JgRA==
X-Forwarded-Encrypted: i=1; AJvYcCWTlZwyl4aZomMx54RL4/WJ9y/gWdvAOyMzYeTtIo3RMd3g2XrakjHOq6CVeialZaMq5nVOxUU5WKE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx21sZY3xCstLyzkSc67skaVvIfGiS9S3ov7D8D2S2bmdzUSQLh
	qFrtVmgfctKy4a11XiHmPxPFLAeaG7WHvC31sqV6DdiMrTGLOKRDtDS8
X-Gm-Gg: AZuq6aKeozwK6+zIDPm2blyb6Ed86G2rebYvXjw/ZiD6zYWUeu17up0R4OisblTLpg7
	MXtGxOE9damUV3oXfzK0x5wtXCn6QxdiS08OPUbA87RoqMO2iCG6HJ8JHlyDqZR4ryywNmCS/6f
	2n+xC6/hcYf0F0rzJvW4zp+5NKGgUGW30EVj+ryXfekJiFFaxuNESMfpBFjdYxYJKK8Yv1FcmNQ
	CYuNu4w+mukfICsfr3qBhuAJvO9rp1O7ym6Zx9XlrI+jfuofqMpe6VdmirianREPa07ymmNpUsQ
	la9VlKZXLS/yqx7w2mDDr71nyPm65kESYedzncfvzdrnnSHeex3l60hpmFgpME6ncqeCRBS8s3S
	whPIm4I7KxafhM6IbFNKv4WMG+69tWMAybu12vnv73X75EpirBqG8LccpgjJBw1a03ecU//kHZx
	Pvwg57q1uAfBUFeuwhfPRZqDUK6QVeh1Ncv/8iQIsSeKY=
X-Received: by 2002:a17:902:ef49:b0:2a7:5952:f53c with SMTP id d9443c01a7336-2a871344d3bmr48702795ad.23.1769608925150;
        Wed, 28 Jan 2026 06:02:05 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:02:04 -0800 (PST)
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
Subject: [PATCH 4/9] man/man2/statmount.2: Document STATMOUNT_SB_SOURCE
Date: Wed, 28 Jan 2026 19:27:33 +0530
Message-ID: <156ef411301ea7df166190a2be942033ad9ed9e1.1769608658.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4980-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 86CC2A27F9
X-Rspamd-Action: no action

Document STATMOUNT_SB_SOURCE flag and the corresponding field introduced
by it. This text is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44010543fc8bedad172aa5b6c43480e5d2124497>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 462f6060e..8d390fc53 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -51,6 +51,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_point;"
 .B "    __u64  mnt_ns_id;"
 .B "    __u32  fs_subtype;"
+.B "    __u32  sb_source;"
 .B "    char   str[];"
 .B };
 .EE
@@ -112,6 +113,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
 STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
 STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
+STATMOUNT_SB_SOURCE	/* Want/got sb_source */
 .TE
 .in
 .P
@@ -269,6 +271,13 @@ .SS The returned information
 This is particularly useful for disambiguating FUSE mounts.
 It is a null-terminated string.
 .TP
+.TP
+.I smbuf.sb_source
+The offset to the location in the
+.I smbuf.str
+the source for the mount.
+It is a null-terminated string.
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


