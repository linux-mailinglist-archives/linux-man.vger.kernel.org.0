Return-Path: <linux-man+bounces-5196-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABF1LikYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5196-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E3C16F790
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EC518300B283
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1CD434F270;
	Sun, 22 Feb 2026 14:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kENP9Reg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83F12253EC
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771937; cv=none; b=ao24CKURS+B+/ZxGInPG23gfsfyAErm/b78A7RyLIzMiDEwQUIF+DKKPG75gRE9YfDwrSOfvNDXEoE9r1eLYckdKoEbwmQALso7hNe2AyCEspC5fTFI+1FV05TiTV1+wT7yjiIvIbhlsQaPbh30S4R97W1q957frYQxZTmNHSnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771937; c=relaxed/simple;
	bh=yFuupBrihZxiF1kjQmm1MEduLvEO3HQFToGSME9zFVk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KAywFOKYjLiV3KVGDblRvWlVHhdUMGb8PQeEFiut7DVLY5lqDue78X0aL+4xmb+kopayfcu6bvw/3syIMciMduNILpUA381VLeBQw7w4WYoP1ApyG2kHexpQIalPA4AdaOiZZVxWkM5rwlVz8GiV6w90izKvUrGLDVxASpyW224=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kENP9Reg; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-c70942441ebso2384841a12.1
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771936; x=1772376736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+/37+JRZ7xpjPyRaFYugDJwVSoOqKGvhxXOmszLk8o8=;
        b=kENP9RegzBiy6Bw9o7pJyp3Y6LrCNZWabOJDY27+sUES3oNglf3TMd3PKcjoLqi/Er
         gKyOse3WR0mSJk/K/LthXqh+Qx33wqEaQBM+JeH/D672lbGQ534gOJ3thpWJkMVxRA22
         wknblLE+buE2KKGdbl+wwkF3oFg4jd9mZqeXWHZLRBrZugGYF0DGqdHjpSsVrBNDxaXj
         phWNetZeRxUSRtnDLDQSaVFhAxg54MHPNxvED9SNdjX6dwI0DXVnhCndKsxvYkfjJsjc
         98yHLB5gPQXApEPzTMk51ycDz7NK/eE/5JrjnyfUbPzYEfB/ZUbCPDxoaZdmzQQqM119
         1aaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771936; x=1772376736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+/37+JRZ7xpjPyRaFYugDJwVSoOqKGvhxXOmszLk8o8=;
        b=TpsNqkP9+3a9P9zIP92hoC4tbbwsAn50QWGXLDNwhRlgIniffEu35PkPY1AbS9GYjv
         Urx/+jLqmNmApUWMXSsiycIKAUPZUGTL9zExpGuo5PmfBV5CF4ApvZMwR6hnjykV8m64
         yuU8QvjrvuVRAc3xTG+AqXcSq5vx6As4myiZlscNPYJlTLVCDv28bRj3mcC2nuGVEszD
         hW5i/ZNC/Ubc3w5O4PqZk/UVD+troLKjz1LLZ3SSRd/Guow0cEFq3C6iz81QNSS1zFqb
         0UWMFSnZ3d/amg2FmnRl21E9gxEvWNPj9irR41ggdKYfTN1EZbQ7/5MQDOzkKyCbQ3Xh
         4AYw==
X-Forwarded-Encrypted: i=1; AJvYcCVOhLP3hbxX5bqBqRSCIW3TCClWqdB8Q/KUrUcPqTEin6sWaIrLLxS4Kc00YgefESBaCGq/2jDlIIE=@vger.kernel.org
X-Gm-Message-State: AOJu0YxFCj+aB4WswTlHKOZyMH61WN6OpYktjV7ncSGIkazO+/KjF3VA
	UuDlO3eFhnheYmhDb4L9exOl1zE6Pq6n4f91In7nAu/SonkzZIsuE/hB
X-Gm-Gg: AZuq6aIK8oN9Yg8z4ZP7M0OttcCa50TbmgR/fwo35hsUe/P/y5y2XInmV9p+4ep3Ckw
	+7tx5nXqjF/SQiEpi+0luaCn0lSGhhv75uP+j7HJNYxyqQdzX3A6n+V/45vngh/tKxRu/nqDvOv
	+IUhT/Cce16O8LouamofyDKe8ZxxGyuXudk6FGLswqft0z22ZxOpWaSilmyJ99zqm5/OJytTOA8
	oyFgsmMF6/Bcewnowtn5e06kN2V7F/226VdY1XJvOsR5tOLUCKN5qMfWpNh/yLSqw8rMfA6qHRB
	i7ocW6NcnTtkBoExbRfLVmcGMRnRd0qsKxAMGC8E1LRqt/t0Av2MVF3Mb5HmvMrp8cYr1Gou90n
	6wDhOvDIMjjT0MQVsiiIv72bZ8vyYPNAaSllponCNloWcCWPzXjdqHxGAXeo2JtrjoFoqIqyUIU
	IEoufzAnnR/w/zj/cTVd3olL6wUfri8f60NiyEsaMA2AjQpq9DNcf9VF8=
X-Received: by 2002:a17:902:c409:b0:2a9:5b48:2b38 with SMTP id d9443c01a7336-2ad742a50c4mr49514275ad.0.1771771935954;
        Sun, 22 Feb 2026 06:52:15 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:52:15 -0800 (PST)
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
Subject: [PATCH v2 07/10] man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
Date: Sun, 22 Feb 2026 20:15:57 +0530
Message-ID: <6146fa1d59006387ad7996f28f5651787125d956.1771771560.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5196-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 34E3C16F790
X-Rspamd-Action: no action

Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
fields introduced by them. Most of this is based on the commit message
provided here [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=37c4a9590e1efcae7749682239fc22a330d2d325>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index c4200d76e..e24827ad4 100644
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
 STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
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


