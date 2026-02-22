Return-Path: <linux-man+bounces-5192-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPWDJQ8Ym2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5192-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F3216F765
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2789630015A8
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79AB93502B4;
	Sun, 22 Feb 2026 14:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lfQDoHJ7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A173F78F26
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771914; cv=none; b=dtD4Jfwef/5NQXQgE94qUvBFYeRTIvsyNkmtbdDeG35p/hZgRLpMKpWVf5q0RsDxfRtIb6uu1G4+OE+t/SuX56VNJyQPolb8Bt+r+jlVInNk4FDxCLeej1P71RudS+0xIhCLiqbbeJeKJDU6uH/lqfU8cRF23HCBWcQhi6+IWCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771914; c=relaxed/simple;
	bh=eNaKJZHzVjLsGR5iFJQiDFjUe27aQqhzEkgCjMpHl2U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aKAPqylbC+L6T2uf0NpBtm1uhnjMn1fUUHbB7OOv2Vn8O+Ox6DCIMsPH2/i+QpNo17HJ8vYrJAH0wEeQySD0whW+69TfA/6WBcrvo8ZsLo35BhtB5wRHF2htC53O6Jaz5mNkDZooONEsF1hBVoOb9egDSRJ9FRDzCRYEWregOaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lfQDoHJ7; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2aae146b604so25011785ad.3
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771912; x=1772376712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U/8o4ouZ+M7Z2mWv3VNB85vyrkqnyACj8Idb9OrxHCM=;
        b=lfQDoHJ7a/r9pmGF1uSzXnVoXC7zpCEk6fs2EB1JrNNbtCUgqsCkdOsh8e4QUqzeTc
         B+BbCA4HdjtaYo3kE6fVIXlQoHYR58iS3VB9Og9+kRqXVsV+X9pSegz4gnnTblq/wa97
         ozbKKT57GL1z3o//Z0d2HDhodvEkyBsH22zmHBLk/oyh8YatcLsadXLQIheoLlsGcPBV
         vpWaOqUThnLZJAgeGOzQoyrf6I5N3wseZHqvXxI+KOcpdX0Y219qw+uAL266MzvVWdHQ
         jshFCEzgQj3yoZew5ANuT6BhU6glU1P4o0Nr7XRDjmCZoIlBboEcbSkCHuxnmCXPSEf7
         RYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771912; x=1772376712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U/8o4ouZ+M7Z2mWv3VNB85vyrkqnyACj8Idb9OrxHCM=;
        b=S6lGnqf9DoN47gzlcRLJqzEmc4fHiwAiY9XR6TmpNJhjLEIsuaV0JyHVg2Q/MB/QSd
         mS9hn+59AjRE4a5BvH5R+zPQLIQh+JjWzCBrCqz0oy1OtWHtrNiYM5zXFy6OUTLdNx0/
         RvJwdkqmHdjlq6tU5d/lJIpOpKZz79V7azsQCaK/EVBtedQ/XVw3SHJBtHuF0+gk+eaH
         d9MEmNXE+jxhUfSlQCPCKLPMxWSIo2bzwxjqXw5Q2Sv4oLdDyXlpslOqfxhzGrWwbLSy
         H9E186bERH0VwNHMK/+XYMfFtHwVG/JisyQey4hsl/EoGd06AA53j4rOqRS9pZGAsQnw
         GgFw==
X-Forwarded-Encrypted: i=1; AJvYcCVGa8jxxhtXKgWK3h+wcKXbjAw0cOxHKaPPn5Zu1PjF3+QAlRb63ixkTY9Rp1TP8hi9/tCiAI8JEZc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw+R6sr8LXRuwlMSuSh4FRttnT/V9DFqKnbhkSA6wuLDQk7nbh
	S24UHI1WJXnejRkcusclaWYvaxULTY/oF6GjGkSfO3CeDqIRSITbLLqJ
X-Gm-Gg: AZuq6aKNgrYSyCBCz2R7E80RWO/xTyLZwkZ3IQ/GdD4sKmivCctZScGC4hALDFpwkGb
	YdJejwB082Hmvz6HHW9L+spC9GqKDqha0Gs5v69NmKOZBJEpMOKk+P08iewfu72+qy9eG8cuJ+T
	unIVEbMXcCsCq6S0Oc5Xxjh+UO8j1Xb9PUfc1C4CqWmogk/YY1xjsIDRZ6WQNqTdPEqXn5OUiIN
	9rNXVvq7MHGL1M8Fs9M+CbulsRCSn1+O4t9r3pCFhjidB6YCsu7ZCRxQknMxwR/zO9Zic9sf0mC
	OPNtkHsPlgwmgvqQIaTNYVn4Ape1/ZKAFM1pWwACohhQBkr3mFxOxTpND6tEWrf6T32mmztMxD3
	sleyumphjJzcNJnEO3lOniwsKmNCASsl7WcCbThnsb8kSv9Xqh/vVNcx0DZB5ZK1dKaUp6aYqEu
	ndsisxsyp8E4LrSqFyez6U7TT0ANfCzq46wvL1r6yQkYBMHGWhc3YFb9Q=
X-Received: by 2002:a17:903:1a4c:b0:2a0:b4f6:5595 with SMTP id d9443c01a7336-2ad7455a038mr52643795ad.50.1771771912018;
        Sun, 22 Feb 2026 06:51:52 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:51:51 -0800 (PST)
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
Subject: [PATCH v2 03/10] man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
Date: Sun, 22 Feb 2026 20:15:53 +0530
Message-ID: <82e6babcdac48155cdb64c6f4b98c058e6f19060.1771771560.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5192-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C1F3216F765
X-Rspamd-Action: no action

Document STATMOUNT_FS_SUBTYPE flag and the corresponding field
introduced by it.

STATMOUNT_FS_SUBTYPE retrieves the subtype of a file system, useful for
FUSE mounts (example: fuse.sshfs, where "sshfs" is the subtype).

This work is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ed9d95f691c29748f21bc019de9566b698fdfab7>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index c2682646c..29080246b 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -50,6 +50,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_root;"
 .B "    __u32  mnt_point;"
 .B "    __u64  mnt_ns_id;"
+.B "    __u32  fs_subtype;"
 .B "    char   str[];"
 .B };
 .EE
@@ -110,6 +111,7 @@ .SS The mnt_id_req structure
 STATMOUNT_FS_TYPE	/* Want/got fs_type */
 STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
 STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
+STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 .TE
 .in
 .P
@@ -259,6 +261,13 @@ .SS The returned information
 .TP
 .IR smbuf.mnt_ns_id " (since Linux 6.11)"
 The unique ID of the mount namespace the mount belongs to.
+.TP
+.IR smbuf.fs_subtype " (since Linux 6.13)"
+The offset to the location in the
+.I smbuf.str
+buffer that contains the string representation of the file system subtype.
+This is particularly useful for disambiguating FUSE mounts.
+It is a null-terminated string.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


