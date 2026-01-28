Return-Path: <linux-man+bounces-4982-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKC2BvkWemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4982-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:02:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 06866A26DD
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 63D713004DED
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 319FA221F06;
	Wed, 28 Jan 2026 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IU+odrCU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57D021ADC7
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608943; cv=none; b=KgI1AJpfT3rSueD5fhpviZy6Z9bBktqbI9BiVbzQxmfltGKmSCc/m64PHiDmyxUXNd87N3gqXzB8VkSerEXitfpLyGdof52anmB39hPFOojJSuJmgbwoc4NmSHEtv0PegVbuA05ZPVObbE2sYtmgw/EZXS2n0Ig5MYD2EzemoTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608943; c=relaxed/simple;
	bh=hg3dze/I52MUS62c02QglYCK+BJ38AD4pFWrIXPQR60=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VMzgYqYO3W2QVA8aFLUDVc+YJCFlzDqvnrkDgLcFQqXGK+67SeLtr8ZTgIoc9l0oxtDXcOYDzqOVTdBUzqKuoT6z9uGgB6Ci73nPYJ/+fwpcDL2BXd4tWMWOwC3xgayoUy0CSX2tawU93lh4/J7DuSJ5hNWrXbp48HMkSujtbts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IU+odrCU; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a7a23f5915so46013185ad.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608941; x=1770213741; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KljyJIEPvjTVewfxnvnKfcVWXcgl6CWl7zvYnVyl4qQ=;
        b=IU+odrCUYYyy4ZYNdtm/LFY1HkWSH76YRJxbM+92DsRWRQ69GpuZhUUa/tQgTCZqd6
         3lfYgIzAqW9tfDku0nZEP88ssI2JuC6N52KstEnC4Tz8lgWKGfHHQRHhNx9z4fqbGgTl
         IIX1XWwwyaAx78vaYGnZnz5BpJ4jer4nVClyJt5rqAz8zmDfi/isFFxijU0wYac0Wfgx
         yU4ByWhV7kokRF5IVOmbbTJeLNeTCBJBIB713SBuOR9lu6daNN1QgifbprnmMlL8MZQD
         esr+crmj9MxmLaNQ8cjf2g6rpa3/hfgmgv1R+PxCSI7cwqjtppz3c0TWJhiIk5dZRuIk
         r61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608941; x=1770213741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KljyJIEPvjTVewfxnvnKfcVWXcgl6CWl7zvYnVyl4qQ=;
        b=FyYycCOSMhTBWEt07Cb/fk7rIhItPlzGloLgmtv31BZSEIwcnPHkglGagEP45nsIPj
         jJfjmjMaQ/BQZ8klP7OnAgl96JwU+dSpNwj5tnp3TIMI9Jp9HtvTcv5BHYVBVm65tx6/
         bbgA0JSHCvltZYE08l/JPmLZerJQNjYxivThy95m4vr3wgLOyh+vZewvbMqYGYL3WxSf
         YmtkOI4jLbZWuV3bZuniQlD7ubj8tpAOwEQ5MTUCeyhSEKI2IOKTBWu7OzmPfDiE+Mj9
         E6wM+0JFNeprdSbJtZXtCJaVuLAxPuPsHCE6nSlay6TbsRs2evtTSm/NOhDKFBRwkMpW
         YWEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUc7e3fNbPuyIIFQhnJHYRl3Sh/sgd38NzCy4jCqiM77sqPt0VauSxcMYfa1Sv76N3rmofrlc3YKL8=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr90JCOVfHpl3nxoD4AVLPxIDZAvHVwAujCiiIgOAlOkDzvAmO
	uK/hDIs5QflfdTv3rqzes532YWtawYMCoYol6rykYBbbFXpKl2Uy0Bf7
X-Gm-Gg: AZuq6aLDKDpufNP2wFS/M26gO9R5kDGNGnZf9HDvcz/PzzAvqUt0boV8tlhcI/Hs+Qt
	1yy/s1K7oxY04A5Pqms43pbWUmHFX9MfUwPlqx6o+x6dL8SNDdvlVBNKH/SQOK3jIUQ70SaqJYR
	UthNiEzMM53h9ATwraVryPdxMRAcaveUlnpxfz7UbC2qn1K3fs8FjEP97PaI3Ny3Xpvrm4GFBOM
	+pOulvi+dmfnlqR6RJ2ukCZCbv0GvsGxe+4sJ+mV4KOBSV8yCpavRkYOtldGCpXJ/v8709tf+CT
	Cs5SvIem9yqFokgTR8wEJFn5k0iYulEkcN1raIO9P9CIgsoKMLZOrBnOJlSdeExDdxTTGbtJTmA
	JNQh8ktpHHux6gnb9J+A0IAoNGsHNAg85Or/FeuVKIFL4RqIa+EwCRmRs4sZ90aWbmHqrUhTSFl
	8ibAcOLGaaqOBt2otlm0llX6wcpaurYzvwYtCQOKhl4rnrmSoBEnM0yw==
X-Received: by 2002:a17:903:1a6f:b0:2a7:5095:c92a with SMTP id d9443c01a7336-2a870dc6c2bmr57620675ad.31.1769608939327;
        Wed, 28 Jan 2026 06:02:19 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:02:18 -0800 (PST)
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
Subject: [PATCH 6/9] man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY
Date: Wed, 28 Jan 2026 19:27:35 +0530
Message-ID: <60fa4a70cdd5f9591a20a17f21bc26c3f208814d.1769608658.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-4982-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN_FAIL(0.00)[74.135.232.172.asn.rspamd.com:server fail];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 06866A26DD
X-Rspamd-Action: no action

Document STATMOUNT_OPT_SEC_ARRAY flag and the corresponding fields
introduced by it. This text is based this commit message [1].

Retrieves only security options separated by null bytes.

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=aefff51e1c2986e16f2780ca8e4c97b784800ab5>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index e9e1f28e7..4dc312ec8 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -54,6 +54,8 @@ .SH SYNOPSIS
 .B "    __u32  sb_source;"
 .B "    __u32  opt_num;"
 .B "    __u32  opt_array;"
+.B "    __u32  opt_sec_num;"
+.B "    __u32  opt_sec_array;"
 .B "    char   str[];"
 .B };
 .EE
@@ -117,6 +119,7 @@ .SS The mnt_id_req structure
 STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
 STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
+STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
 .TE
 .in
 .P
@@ -293,6 +296,17 @@ .SS The returned information
 They can be iterated over the help of
 .IR smbuf.opt_num .
 .TP
+.I smbuf.opt_sec_num
+The number of security options set on the mount.
+.TP
+.TP
+.I smbuf.opt_sec_array
+The offset to the location in the
+.I smbuf.str
+buffer that contains security options separated by null bytes.
+They can be iterated over the help of
+.IR smbuf.opt_sec_num .
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


