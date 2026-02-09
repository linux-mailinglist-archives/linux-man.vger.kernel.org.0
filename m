Return-Path: <linux-man+bounces-5067-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIshI49QimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5067-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:31 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F929114C64
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B3A1301F498
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8002AD0C;
	Mon,  9 Feb 2026 21:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cAo+RXZA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31445253B42
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672138; cv=none; b=aTj9OVkGEaiwW2hwob0HdLvfUbfkoTx+nCYSgQf0lR8reJpNo+y/Vf4HBIO/DzSpouxlSMrFGxqGQHmrPSBiukKDcjGgQz5RffJ5XPKj7DnwNyWUNTdhcW/QPK0beIzpm0NtyZU27K77nUHO9S/LJ+AEJPzHsUkt0VcxXKZdvcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672138; c=relaxed/simple;
	bh=hLphhPXN4kRht9tHEr0kR0hjnjgtqkVvmIdhhrRhQws=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CsmkpFrjwQmY/FWKzNyIEihEF1Jhr6V8oKDUd1S75Mdnh7KE1LFzJGO1zspKmCK7XzZS2wuxZUiKX1RMDQQbXTwP11TJNhZ4/t4/+fjY4/pVwiKRXqupioVGWC8oWoe8JCb0M/9y/vOjDMznvJpFC1k0IylPfcHrCUkb29+Soks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cAo+RXZA; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a79998d35aso35736795ad.0
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672137; x=1771276937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPYUQMsoaCZRY3HclfZK5Tlr7Prst6aINa4zW0vTaJQ=;
        b=cAo+RXZATrD8BwI7Zu/jc3H7lH1hTZpEuG06maNZX8zHBTL+WaZqlSYN1qBHFMwNsy
         oHDBNMz2uppNS9c6x6uHJa+COu9os+nR6wZWI1Qgi/NY/fMgtsLOPcSgxb2C1cdUqteB
         lS/rNYiScJA2OKWHFtuFNeAPTUtlkvenL6PT98kGQzBxjYFYKInreyLqDFP5dt042Rij
         FLAfqsgf2KBv79k4Ku8YvUMDkUiX6o6pKzxLHQDyhNR4bQHmzVIlXeMaDefMlm+bHZbQ
         k2BNQMMU1wK9726IL02pDEwav04ORMnhEukJvPRBW7kecX4StwBS9bnfzN7uhIXSVHBK
         9bVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672137; x=1771276937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vPYUQMsoaCZRY3HclfZK5Tlr7Prst6aINa4zW0vTaJQ=;
        b=KrK0YhVHR4B1QN4tnjvvnLqktUSve8NCQHzaLH1FF6Jq3syCpzomDrDMT3bPJ1Sdr7
         DlQd3MT9LkrdZtaplkCikhdPNBKVNoQlqJwr5WT/+muvE4ij49mpuflRC2uBQeh44WXu
         Bw37MWpdDDsv8Xq4QARTSEAMl7+v5sIiojTs4bLk3F2W8Czjkrpb+J2OnNmNt3SYsSTe
         Zhd3K9jhnkGcqaQkfssBNh/MFEeerNPZFD1CN2w26zFrXcIrLO+z8X7G/YYtG65uZiTd
         GDpS0I9b89YezKWsvpJ4tEccyKv+CBAkp66SqBgs+Ki97nm3Rm2I1QshxrKaR1ShjjkG
         CsQA==
X-Forwarded-Encrypted: i=1; AJvYcCUvIubGawU+tRb5J/MyqVQhkQTuhCQwAEhzcIcNia7t1FADrOzT2sdMLhuFzPozjvFveqDvTZuLt9s=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7bIdF9F07zfXLj2DcnKOha8nAJxZzx+oX+dyqZntuGLsT5aLz
	gXCZzCn5sJ6p6rTCnhrycYA/MqhE7VHeTqoq7culsd9VDKf1vMtvsZuA
X-Gm-Gg: AZuq6aJGldtMKBnNiq0OJTUUqkm9jfng4NFLsXdN4nbelT+0VXFnvBEpO4N2ft7Iryh
	KuscbglT0BUWbIJa2/sM3NHSykFxD7RLBZeNNJ30r/IlWy9VWUxoabgoreFDIGfUBMiRm5EoiRA
	/vtbdhux9PFAJoC8L7GYPLaLnkeRkz4JElABTM/vB9ZvhWm8MbzwdK0bt39Abbgj0gWmDajbrjz
	yVdpAs76R299KqmdLn5m+Fdm8E6nW/QfSZOyUViMm+io1Be9s7VnWcPSqVIYmpELaXA3aWB5p7p
	sBV+pcpbpeDcW3hfMAd5nx/7aAxCHY7yTe0NokfiPRPvJQ6xN7M+cfhxAQMY9JLXKvZkNkNE5ce
	BziMKPtdrm1eB+TLH6Ga6JsqjJK61Y675Lzr/ELdJm/hJh314mO/hr0wEcv0XF1Kyx8ljeziK9X
	ZjxO6xXd3MByUPuXpU8KUPgm44JvUxIS/af4nAGO0gRv4=
X-Received: by 2002:a17:902:f68e:b0:2aa:f9d7:68a8 with SMTP id d9443c01a7336-2aaf9d76c74mr36024755ad.28.1770672136406;
        Mon, 09 Feb 2026 13:22:16 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:16 -0800 (PST)
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
Subject: [PATCH v1 04/10] man/man2/statmount.2: Document STATMOUNT_SB_SOURCE
Date: Tue, 10 Feb 2026 02:47:37 +0530
Message-ID: <99da88a0ded02935d8ae9b5502f8ff24803ebcfa.1770671863.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5067-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 2F929114C64
X-Rspamd-Action: no action

Document STATMOUNT_SB_SOURCE flag and the corresponding field introduced
by it. This text is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44010543fc8bedad172aa5b6c43480e5d2124497>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index b24b4a5fd..dd1f1f17d 100644
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
@@ -266,6 +268,12 @@ .SS The returned information
 buffer that contains the string representation of the file system subtype.
 This is particularly useful for disambiguating FUSE mounts.
 It is a null-terminated string.
+.TP
+.I smbuf.sb_source
+The offset to the location in the
+.I smbuf.str
+the source for the mount.
+It is a null-terminated string.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


