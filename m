Return-Path: <linux-man+bounces-5278-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE1AMkqiu2kLmAIAu9opvQ
	(envelope-from <linux-man+bounces-5278-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 08:14:18 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C372C7224
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 08:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 676AC3081BC1
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 07:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C58439DBF4;
	Thu, 19 Mar 2026 07:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WYuxFyUz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B595B3630A2
	for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 07:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773904426; cv=none; b=jlde49lm8Nnn/Ss+ayqwEwPUTdwNwU0+oRcgpYBRq136ZHyyMAqq14nt79lJh8oREgFqWFqOBoH/IPiTVVlvTMrdRDPPlFZTAEm47UZQxSTZgJPhPHcHt7bNhZ66VQXRk2YEQtjZioYn1WockL7/j8r/zksriv9cz6NvFuhWhQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773904426; c=relaxed/simple;
	bh=tkTs1gtAJDZhzvAVrF0FQohKuKSt3sVyorwlRe4etac=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y1LkvmW1yyTnRA9lBCF36I6wdP4UH8wWrFg3Hk5XoLycsMd9Ze4JpuG3GGaeWGccod5bXFI1OZuxH1vVPaejfKn0b7M/ad3dcBAF6wFIhScGM7CjQir1dFuEXtmcAHumdo57EXTydzfvUOn6TveAb42X6VQ3e9C5Gp94Vkaxwns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WYuxFyUz; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c73c990a96dso225816a12.0
        for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 00:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773904425; x=1774509225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mTi0zyH9OJSgr25Ih+unkvbvFfmtDELfkr2/MWjFrSc=;
        b=WYuxFyUzVOLGG6VpgSp4UG4jhuWuVw29jd31SNwJrj5OMoBTlyHqVX0NKRPFRruIn8
         J379L+1PEmNaoq3lSjmAZhO1OILinxS0wFXDZ+Tc/hRbTgmM4sxAS088y9Ni8f1IxwVH
         BpFfPs6CYEwJTXHXbNc4yTCRvJdaF6kpOB+3vqWuub5BYQ0km9VLYNDrY+x+OrI8ELai
         Sdl0vGuoxjx+gQ/gl1iEgoptl+gNSO/z8/3AnE1mozefejvoqxfzQz5tRzlfhjQOC1wh
         9V5HNj8UpRrHYUUtNWVty8cG/w/HQEZ3V5MIa99qqcJgAoopN+xnBJGrYRu1s2Aob9iI
         ySmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773904425; x=1774509225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mTi0zyH9OJSgr25Ih+unkvbvFfmtDELfkr2/MWjFrSc=;
        b=rY06unBssZ5lqnDOLou72AN2AP6q6/+oCQco3DW7034+1oXtSdqf+nbGvJiK9mEvPg
         Rxr9Oavf/RrfUDdyoWLZH1lay5UYszRCbQOCBOwtNeT9jPLeumCKxAc11kR+cjzqTcMt
         xxBHiPwlNqPfAuEK4fICcDoFg6y12aoE1sz/DGULzu8zmW8Ow6zDgl/FCnccgS7s7kiN
         qiRddZEzhLBGKvRG6+Yq29OEuLGsjghf3D85Oz5KkXIXIqWP8RNXCTcVcnXYWolfzIg4
         41CV1QTGD6FUQDe5sk/mlroMeuoV1Vx/1LeHBcvGlsQEjVFJk5SbbaWULxHV9wpbkEyE
         2O3A==
X-Forwarded-Encrypted: i=1; AJvYcCUTsx6MGupUfxdudAj7hEx/OtGl/AHg2OEy5v1U9F0PNBAqe2oomthpnbC0FSjDdVaouFQdpsnS9xU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yze/ijejEcH+4qX1oBfcu/MYXCu4n5FQn670ARR45vajdCCZSeC
	wa+nrRKG8Ia5KrTF7o9y61KyUCJko5zPnAm5SbDeMIUS6+zSBimyh297asmhHiIzorw=
X-Gm-Gg: ATEYQzyXlPa8DHED27nAMuuvd7y2j/03ZUlLHq1uGCEXDHtJWYQ19IwGaSOfxhcz9EM
	SWe26U1d4lvIMBxXeJugtr/r/7Y0M+TnWGyFOjKc4IH2wdLTB6nP3cu4Ki94uX/Md0JVms2bEj2
	AW+FEc9byZ+sGAbWihX9rMc68yQgx1iLmJ/5kgPfurqv/XWL8NFnsFruFkTv2vywWT+86uWRfUR
	sSmhDsoWyeWBYxjYV7yTEftaLCnwZ6v6mZtoIrDsVj8eTTkV1tUNHmNFGRd16evzMPzBK8vhtrJ
	1BztylvYG+cQChJYRFhHf+ab+6XesQ8GPXddIz5RJh0s2Lp0pYER7ud7MI65E7Smrb37vFY8NNu
	RZ0sUPdPmD09cLKGUdZrrr400x3D+dy+7CsGtp7zUVQyXkw+hUdoKqf0QNXsmzmZbk/gLhYuAvA
	QkQLcbBdLsY2S00y9Cx5aG0HNKi6OxTTKtNpb1esQ959LiCCiEE/6CObkz/8oGSQUw
X-Received: by 2002:a05:6a20:9c89:b0:398:6ea8:21f7 with SMTP id adf61e73a8af0-39b99d0132dmr5812218637.15.1773904424940;
        Thu, 19 Mar 2026 00:13:44 -0700 (PDT)
Received: from fedora ([2405:201:3017:184:8df:188f:bb44:232b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e0b31fasm4583442a12.5.2026.03.19.00.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 00:13:44 -0700 (PDT)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: alx@kernel.org
Cc: avagin@gmail.com,
	b.sachdev1904@gmail.com,
	brauner@kernel.org,
	criu@lists.linux.dev,
	linux-man@vger.kernel.org,
	ptikhomirov@virtuozzo.com
Subject: [PATCH v2 1/2] man/man2/statmount.2: Fix STATMOUNT_MNT_{UID,GID}MAP documentation
Date: Thu, 19 Mar 2026 12:39:11 +0530
Message-ID: <8e3b0ce5a322e253ddad52e10875ce37c9c005cd.1773904035.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <abnzrP7a2ci_dG4j@devuan>
References: <abnzrP7a2ci_dG4j@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,vger.kernel.org,virtuozzo.com];
	TAGGED_FROM(0.00)[bounces-5278-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.645];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 34C372C7224
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In case of idmapped mounts and statmount(), three cases can occur:

1. The mount is not an idmapped mount. In this case, smbuf->mask will
   *not* have STATMOUNT_MNT_{UID,GID}MAP set.
2. The mount is an idmapped mount but *all* its mappings are *not*
   resolvable in the user namespace of the caller.
   In this case, smbuf->mask will have STATMOUNT_MNT_{UID,GID}MAP set
   but smbuf->mnt_{uid,gid}map_num will be 0.
3. The mount is an idmapped mount and *all* its mappings are resolvable
   in the user namespace of the caller.
   In this case, smbuf->mask will have STATMOUNT_MNT_{UID,GID}MAP set
   and mbuf->mnt_{uid,gid}map_num will be greater than 0.

The current documentation fails to differentiate between case 1 and 2
and incorrectly states that STATMOUNT_MNT_{UID,GID}MAP will be set for
non-idmapped mounts.

We can verify that the above is the case by looking at [1] and is made
explicitly clear by the comment in the implementation [2]. The case for
STATMOUNT_MNT_{UID,GID}MAP not being raised for a non-idmapped mount can
be verified by running this program [3].

[1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=37c4a9590e1efcae7749682239fc22a330d2d325>
[2]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/namespace.c#n5489>
[3]: <https://gist.github.com/bsach64/674264ec69e592f906b2713c9f95060b>

Fixes: 9968ead5 (2026-03-05; "man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}")
Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 42ca902d..78b6e9be 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -356,7 +356,8 @@ .SS The returned information
 If
 .I smbuf.mask
 has STATMOUNT_UIDMAP set and this field is 0,
-the mount is not an idmapped mount.
+then uid mappings applied on the mount
+cannot be resolved in the user namespace of the caller.
 .TP
 .IR smbuf.mnt_uidmap " (since Linux 6.15)"
 The offset to the location in the
@@ -372,7 +373,8 @@ .SS The returned information
 If
 .I smbuf.mask
 has STATMOUNT_GIDMAP set and this field is 0,
-the mount is not an idmapped mount.
+then gid mappings applied on the mount
+cannot be resolved in the user namespace of the caller.
 .TP
 .IR smbuf.mnt_gidmap " (since Linux 6.15)"
 The offset to the location in the
-- 
2.53.0


