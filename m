Return-Path: <linux-man+bounces-5279-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DJCGkyiu2kLmAIAu9opvQ
	(envelope-from <linux-man+bounces-5279-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 08:14:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1299A2C722B
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 08:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD2E6308A279
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 07:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48B763630A2;
	Thu, 19 Mar 2026 07:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lnbihDq5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC539DBED
	for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 07:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773904432; cv=none; b=fLNF2r2xcgCmNTvSCdhELbrAb35iMTjylmpwSqgD6s/uut56SAC/M1qiQbSRFj3cWVYF+j4VLqy2V+k52WmSnknD28Zle9TC/uUe2dDDEOEzyCVF1bnMA6rzYCayBHbGbBm5Osy9AE8U9YmpBqlWoNJzc9oQ/mZkBe/MsC5R+J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773904432; c=relaxed/simple;
	bh=KJnSjjvDT74umyqQezpHGb1vBfI1kL2Cz9KWIJkjwOs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yd23PtTTxUpsnZbJwffzAkIC/HrdPbB9iDahjj9ULJ9aIYU3uTtcnnjRtRPvNV/kwVnkiFn0iyjix/327T5LPVtJ8+kmc+Xo12iwLzYmqqv+BEdabZfaTtHmrDjwUG6+Qam3VYnIkuRYWK10+n5QGVWlhfe1ag0R06Gk6+irxew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lnbihDq5; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c7358a7a8d1so467739a12.3
        for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 00:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773904430; x=1774509230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqLC/Q/6AnbyfZxBHKNRJpt5IAyIo5oHhTfkj/Bf6oU=;
        b=lnbihDq5Q7NkKcKBfJWsf6Mn8RNnXyqFpDb0x6tTk8KeBBhxu4Qjtlanuc5DGyCNGc
         3yrlJlh5eN/D2UguLIfYc6v4J3b4emgetL0IbNE9IL9agaSrtQoIuI0LTGbslQO67/Y+
         5cpgdSrRU+F1iDZWJjN1oR4kyOK/ya9ePmIL2OuQmOqwdbLpOu1/t1NXic+C4MqVDBbb
         bmFo34Vrl/cbRHIbF9xiVRnlxniKbdLdaGMhMi5BLGmK9NW4Js59uY6/dgLtyW70uzDY
         2WwhX0tCjx5yOzHVyagiaE8u+FsH+7BUgBv5u/Mi4W+vU/lwTEwXb/yNukUKBnZp6raD
         49WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773904430; x=1774509230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AqLC/Q/6AnbyfZxBHKNRJpt5IAyIo5oHhTfkj/Bf6oU=;
        b=CHJ7wiVpGTxnyYzUkWHXJ7JB0BGp4zwHyn+NpL3XzyWUUcehj0qkcZHOBj09IKQooB
         KQ59L6hHguD+5u70Fhs9xnvnLwI/ASixLv3BbmXinoH3rpUpPEU/c0xYvuDT7dYXZLn/
         q84+lMChO3jVj1KnwEZHjyIIq0xN6w6uxLpemKNIRFH5SMTEMCW5/NO/Nz5r/4Pc4sbb
         yllgpjH9ZsCG9OjEZzpjzUMMyoqlLQcU7Lf3LeRH+JRyzGAsvztQYTlJwAXL0iZDrcmQ
         ERk80LLkFjXBbTalJTN7kB0A6ygT5o/lOsvJD+TxTMkQgwCLLDLcF3aFYqQts3PAb/C3
         8ZmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwbLQxjbhCahMfvfoD2t1ptnWZ51FXyfUGsW6/bn0N+XfZzpTiV0zaWZ1MfaijucktCuWvwEo832c=@vger.kernel.org
X-Gm-Message-State: AOJu0YwRlGtMUT85ZarAAYd5jSJ938e477XmEfBjY+SXm/CKLWAHZOMf
	y3OShW6Q91vmL0mUG8zSTlght5KCwGfK049sCwif7jNz29JdGuACZL4q
X-Gm-Gg: ATEYQzwe7G52ob7emZsWC6+fNoCMKemXlvHhjpUnG5sNxO/T0rR5L668MfkUhRQxIhk
	x/FjNcktvozaNT0NzvbmHl4Srgumpdb2ODVaZ/rMfMtqBA0dfGbG3l861KVm+h7aJ4JjWzIrdp/
	S8X7W8K1Ia9TzS1C4RGm3M1QHD7JmjsiPQ+QWNfkP5jBaMl4m2No3oTjIXjuue0MSCKArMK+PZL
	vni9kDIWo5U2FpCihCezvLLZ9Oan9DSGbS0Hd1ncpSKRTgGs78qYAPw/+nkcLqi0Khd8zl11prb
	gyugLrQcDZDitY1PRLBtrowhWBs3LricHjoPbn1m2J5ZPYaTCMdRlI5zFMXQyuyeoULOI9cx+RO
	5Cc0h7UHx6Qgjms5c5JSm5idwcWiTvxp3vjlekodLjOyaQA8EjU9op+y6FS4UFK4Ou9jqyx36gd
	Qz8WTgfao+8nInYH7sLpspXK5c6D7T4sLvqFG7aBcgzNuyoFJfglFJFA==
X-Received: by 2002:a05:6300:2289:b0:398:7667:b2e6 with SMTP id adf61e73a8af0-39b99d01a1emr6352918637.5.1773904430388;
        Thu, 19 Mar 2026 00:13:50 -0700 (PDT)
Received: from fedora ([2405:201:3017:184:8df:188f:bb44:232b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e0b31fasm4583442a12.5.2026.03.19.00.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 00:13:49 -0700 (PDT)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: alx@kernel.org
Cc: avagin@gmail.com,
	b.sachdev1904@gmail.com,
	brauner@kernel.org,
	criu@lists.linux.dev,
	linux-man@vger.kernel.org,
	ptikhomirov@virtuozzo.com
Subject: [PATCH v2 2/2] man/man2/statmount.2: Fix incorrect naming of STATMOUNT_MNT_{UID,GID}MAP flags
Date: Thu, 19 Mar 2026 12:39:12 +0530
Message-ID: <4f6135c8b84b8b291a7145a72f216e77f8cf0103.1773904035.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5279-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.597];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1299A2C722B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

STATMOUNT_UIDMAP is actually STATMOUNT_MNT_UIDMAP and STATMOUNT_GIDMAP
is STATMOUNT_MNT_GIDMAP.

Fixes: 9968ead5 (2026-03-05; "man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}")
Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
Hey Alex!

Found another mistake while replying to your comments!

Thanks,
Bhavik

 man/man2/statmount.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 78b6e9be..b6d9dc2a 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -355,7 +355,7 @@ .SS The returned information
 The number of uid mappings applied on the mount.
 If
 .I smbuf.mask
-has STATMOUNT_UIDMAP set and this field is 0,
+has STATMOUNT_MNT_UIDMAP set and this field is 0,
 then uid mappings applied on the mount
 cannot be resolved in the user namespace of the caller.
 .TP
@@ -372,7 +372,7 @@ .SS The returned information
 The number of gid mappings applied on the mount.
 If
 .I smbuf.mask
-has STATMOUNT_GIDMAP set and this field is 0,
+has STATMOUNT_MNT_GIDMAP set and this field is 0,
 then gid mappings applied on the mount
 cannot be resolved in the user namespace of the caller.
 .TP
-- 
2.53.0


