Return-Path: <linux-man+bounces-5205-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNI6AJ1gnGntFQQAu9opvQ
	(envelope-from <linux-man+bounces-5205-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:13:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 735E7177D9D
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 877843008D00
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 14:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2970F281358;
	Mon, 23 Feb 2026 14:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AEpyorZ8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4AC283C87
	for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 14:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771855983; cv=none; b=tSFXazPsOttb+2O3tA7mUhogCvxKfncqbMVDcfhkgsVZQW04kwU21n2G9O0pnm1PH3I6WyZnVi3gcWWrm2rpiF4woDbKC4m7BXhYJdxrpctCTAJ9kEh9f3l4XVxJJNYdwHAhdcvuhtwuQi7vdHy+mDmbVrfim+IvM33Xq86CgUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771855983; c=relaxed/simple;
	bh=+GBmZiJFzVT0yqcXLQrT95b1eozO2TqMTvGcTLd8vck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gEz8hM+pOk8w0QnLODcvUZnkXTgQIVBWSrw8zIvt/XpS6KG31AvHVYBNK7HVBBJHTotY7NuSE/MfJYYe6JYqDZ0BMqVrPvkFIhmHp8ogNdCNsh+xxaVh0d14IyOxDwLExegJofu8UdRom8hjFopTlJloxcgPKal/rwLWg29DOws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AEpyorZ8; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c6e266a3572so1452842a12.0
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 06:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771855981; x=1772460781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yp6wY7NBb+6SAFfUE2S/I8VG77JzhdKcU1XoCB5jtak=;
        b=AEpyorZ8Nb5gt5rU4c167R7Cb/SjQZLP+n+GoeByzmaKEPL5K1ZlPw6xE4nwzVowwN
         T2OI18UNopoSm5OOsgEs3AFUmfwH2xPIDxkR8C+EbMRSV9zqE3tRyN7hJCaZvjv14fo6
         JhmqWLGrghOgx2PvG0Q71NFQYFhB5WR2Y3vZ2EeimS8OXCDKN2/WoPvHLeRTw741CC5I
         SykZD4SurbS6adP0HL5HR2mt1TeJ5zekLae+XLtfHjoJ9eXAWj72Onxf+epnR7qkNPpp
         U2AoZJWHF7IPAvFM9Ukq/ql8HiXEkjV0VgNTq1EMynwnlNPQsrS34UzGBFNDvHh+Tn11
         78OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771855981; x=1772460781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yp6wY7NBb+6SAFfUE2S/I8VG77JzhdKcU1XoCB5jtak=;
        b=WMHNbRy43rUcEj2+wJqrKrbuKFGgpbtoTsAcHnqMlJ86q2r8r+uyaVnXGlajgD1+VS
         OAS5KH7TlBKw0yq2Zi5+do/K9l8lhzSw6TwkR8GoFHF+BVjpiUpP0sP7UxDqcNg7zALz
         jcLUtUBmRhu7z2ei5P8oy8vd8nPUfhZ4940khJFto6EbEvDzKUph2YEut40Ns62BXESf
         bHdtfZgvqo0bfjpXTtzR4QFeXlQB2xtnmgSpbuyTdyR8s/wKrPWpIY4Yu1C/J2o6IqV3
         91IywlIdHqoTBKAh2xpg9fmwACr1LHqUgvW+cVt0IuCDbjWY1RQOr0csDJmuRpLyWX7Z
         VFSA==
X-Forwarded-Encrypted: i=1; AJvYcCWApohpVQMulZ/NgbWixHDCupajqFYxZPBDaXiLeArB/e+70qxTe336cWyZC4aKGTd7D5Yxrau+Vro=@vger.kernel.org
X-Gm-Message-State: AOJu0YxrI/HJ2qsp2kOXB7RXMkAoTrpvLGPxm+xOkN+eKFxCDXRYUknu
	psqyjMfDNN3cGgKSgOsee45nP9RA3jPLFp3YIXRyOttILb+S1lgEyR2+
X-Gm-Gg: AZuq6aJnFDcmS/wIyAwXUSjNt8MeyUQJedEQU3IUxANHn3+7HUCKwHfWMNkS7HA96M6
	VFSACZ5irU2l4d9c0eBbP8jbe3NId6KVd9XoCvZPWGYPfSEpSb8Ce+PS1H4w0ZbMvfDBmYZSXhk
	bohsnEe6AxHQ7Pmdd8aupekGtL97ADoMMeZCMyqvtuY2eTgDXSAwVs8AguMfe/4L4ymv0NXwOI+
	EAunv8G4RfMKoMxScFrEoEN5/59clT1f46gKE7jyE3K0+iQ2oWWAlGjhb7ITFK7A5H9K5QMCVSx
	s4yC0kNK6+aGvsHRSTKMIbyfGwRC2AIW+nY4POgNsMLzsRK18BVozUvq5kwmgmTdCKBsKCb8zVn
	zPqz6dKwhWlqFZjudJSu31Fv7OojAyefzRqh4QZhWNpmOa8TJcVzqn5m6TSbdylwf67NtPmmIb0
	d+IuQbohMNhIvxSRE1mzzkgjDC86dma/3qwoG5skcfZeTUyak9IqVO6C4XcpQo7t22bQ==
X-Received: by 2002:a05:6a21:4d92:b0:32d:a91a:7713 with SMTP id adf61e73a8af0-39545f49d1emr7077660637.40.1771855980711;
        Mon, 23 Feb 2026 06:13:00 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71a75e7sm7214260a12.14.2026.02.23.06.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:13:00 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: alx@kernel.org
Cc: avagin@gmail.com,
	b.sachdev1904@gmail.com,
	brauner@kernel.org,
	criu@lists.linux.dev,
	jlayton@kernel.org,
	josef@toxicpanda.com,
	linux-man@vger.kernel.org,
	miklos@szeredi.hu,
	ptikhomirov@virtuozzo.com
Subject: [PATCH v2 1/4] man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
Date: Mon, 23 Feb 2026 19:40:23 +0530
Message-ID: <2c1e23c24b64c5466075dcf5d4ac1595c04b4139.1771855680.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aZt6WFt5uATpgPDY@devuan>
References: <aZt6WFt5uATpgPDY@devuan>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	TAGGED_FROM(0.00)[bounces-5205-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 735E7177D9D
X-Rspamd-Action: no action

Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
fields introduced by them. Most of this is based on the commit message
provided here [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=37c4a9590e1efcae7749682239fc22a330d2d325>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
Message-ID: <6146fa1d59006387ad7996f28f5651787125d956.1771855135.git.b.sachdev1904@gmail.com>
---
Hey Alex!

Hopefully this is what you wanted!

Thanks,
Bhavik

 man/man2/statmount.2 | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index f8d2302ef..f5a3721eb 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -56,6 +56,10 @@ .SH SYNOPSIS
 .B "    __u32  opt_array;"
 .B "    __u32  opt_sec_num;"
 .B "    __u32  opt_sec_array;"
+.B "    __u32  mnt_uidmap_num;"
+.B "    __u32  mnt_uidmap;"
+.B "    __u32  mnt_gidmap_num;"
+.B "    __u32  mnt_gidmap;"
 .B "    char   str[];"
 .B };
 .EE
@@ -120,6 +124,8 @@ .SS The mnt_id_req structure
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
 STATMOUNT_OPT_ARRAY	/* Want/got opt_{num,array} */
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec_{num,array} */
+STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
+STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
 .TE
 .in
 .P
@@ -302,6 +308,38 @@ .SS The returned information
 buffer that contains security options separated by null bytes.
 They can be iterated over with the help of
 .IR smbuf.opt_sec_num .
+.TP
+.IR smbuf.mnt_uidmap_num " (since Linux 6.15)"
+The number of uid mappings applied on the mount.
+If
+.I smbuf.mask
+has STATMOUNT_UIDMAP set and this field is 0,
+the mount is not an idmapped mount.
+.TP
+.IR smbuf.mnt_uidmap " (since Linux 6.15)"
+The offset to the location in the
+.I smbuf.str
+buffer that contains uid mappings as consecutive null-terminated strings.
+They can be iterated over with the help of
+.IR smbuf.mnt_uidmap_num .
+The whole range of uid mappings must be resolvable in the user namespace
+of the caller.
+.TP
+.IR smbuf.mnt_gidmap_num " (since Linux 6.15)"
+The number of gid mappings applied on the mount.
+If
+.I smbuf.mask
+has STATMOUNT_GIDMAP set and this field is 0,
+the mount is not an idmapped mount.
+.TP
+.IR smbuf.mnt_gidmap " (since Linux 6.15)"
+The offset to the location in the
+.I smbuf.str
+buffer that contains gid mappings as consecutive null-terminated strings.
+They can be iterated over with the help of
+.IR smbuf.mnt_gidmap_num .
+The whole range of gid mappings must be resolvable in the user namespace
+of the caller.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


