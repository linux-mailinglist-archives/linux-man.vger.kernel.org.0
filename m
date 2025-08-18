Return-Path: <linux-man+bounces-3459-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E73D5B29762
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 05:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A16C3BADED
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 03:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F4E18C03F;
	Mon, 18 Aug 2025 03:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D9iuX20g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157D31386DA
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 03:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755487982; cv=none; b=ZKoAmMV2/LzRVv4hNYqCoA+VFCtnimqUM7fwJO7b3jOzPQD7xhl4Z6pYZKQesDPmZdnos78YPVtiegvRjiTGOqiX61YT/6TAb4CSNLXl12rJ8sN6O3mTww68tLAC48WSV5Ag5gariXx+dsFOZDf6bL9yp9h+21re8VqimnN0T6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755487982; c=relaxed/simple;
	bh=W+hZYL90h0gmC53+3x2qMIL6Ry5jwwvxGEupLEoZ0hw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=etkL101yUVCcUD3guZfUX6+95JxgYyICl3CIuf8bWENmVHj6Dd8ewfFMrKT2RF892I28zEM9XcIZXBYip8lzxSdFBvlkt2d0DyDoFJjCTkBscjsgODn8Bxj5cBtoWLkQ7ZHMwTlB+or30g4tPnIh52XpB4fsIwI6xJxiOGS2tbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D9iuX20g; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b47405591ceso978292a12.3
        for <linux-man@vger.kernel.org>; Sun, 17 Aug 2025 20:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755487980; x=1756092780; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UhVVpIL8KQgmB3a8p0p2eu45wrmc2PrjegGqWgJmjYs=;
        b=D9iuX20g9SUHKB1Qt9Kzj/s2gS4rD/263T2xumwkoBFch8kZ1pncaHJbYgEuCnOmXA
         Z6FSq4v3WR9ErqG17pXU/IDyPNvbnEzL2QRFJ7+3xVLxuUGvz6HQ+5NHP64FFE6pNh8m
         ApGifb+uVI3AaWYLxnZP1S21EVZwi7kvuOJQz7wEYJ0uG/ylACfSzz9SOPxWp/Um433X
         OjciWy4FzUGCrbtKtZ6GTGFhajO2Ai6Z6pJJPdbfVzGsFRrt9S+XhLbTzVceslMArXKv
         /IyvURYGrnwqdVePc4s/oMToZ646PUvTC/URXyqVUHZysQDN/XiTCZt8/GUyldZqO04t
         mmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755487980; x=1756092780;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UhVVpIL8KQgmB3a8p0p2eu45wrmc2PrjegGqWgJmjYs=;
        b=HC5DUR0B+uHra6l3JvMQiFX2pJ4lpm9geJgXB3+2aKGgdho1lBL/HkppCmsfZmhYEh
         4+duxTWLP1q3mjurJAUGaokR6NuDLXhXMCG05W0zsFuiHQlWs8g+mMSEJu1JiU5Np5lg
         IVLJ57yXj/XR9xmOfhPOQh0m6wSucT+t/spkoQNPeYt1wT3lkngNQnJYl99ROTYRFgUn
         TMK78U7XRR3Ru6peebL4HJKjl91QHLWPVL05M5gkVMMEY9PkSv6RDj1e951J93qtw+Vv
         QmbPhqZeeTYGnqhY68w8FXrSNAfNtfqP/3IlelC4uZOx+VvxkpioeR6gum4mvZ8jseU4
         aIKg==
X-Gm-Message-State: AOJu0Yw3BCVC1KkS3BTh5GYqCp3bYtAwAC9PFc2QOojUEqZuAEvO7t20
	Kk5NLLwGTnGr25Fi9Gp1AcFGUIPeMb2nfCGhTsnCKQQG4wHfNOjnF8NM
X-Gm-Gg: ASbGncuTlyQev/l/A7fouTjdFL08Y+e/+rt1Z4yueJOWdaJwFeclOcsITpL0KXEmSC5
	BePBNWGHKU5KEykbDaMMlPi+XvB3fJoK362cxkUNGsVqMw8CPx+c7h6Nm/nqLUs6PPtNp1wd9v0
	Q+1f5ca2xvwsS9d7jin/ekKPwRuU+8mQ44VcJI/LkeNMNYwrxsncTGqCh1v3/RdR2aDYUXhd0rl
	zUFTFPdCCeaF8BlOtKWiMtP5EqZFOLfOCdel4wVjQzuVAwTFSygw8ikAjmX8vde8Jhuaauicvxv
	8EUES/qiNE+JZTHmLHJVFjGqI9lGxMgfeQgLjaC7B9NcUxZpdVsNNKqZIln4EbhpvZ77aZ2kt1+
	3oAtuO+lkVNhnJxz+NS5wQU4=
X-Google-Smtp-Source: AGHT+IG2PdFLitgr+YOw/Akv4XxUebQNkrJGSAlrBScag3jPvtQSS93WNPIsfgOEvRSAgEC9iOVwrg==
X-Received: by 2002:a17:902:ec86:b0:240:1831:eeeb with SMTP id d9443c01a7336-2446d8d2763mr152198815ad.40.1755487980202;
        Sun, 17 Aug 2025 20:33:00 -0700 (PDT)
Received: from pop-os.. ([172.59.160.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d5492dfsm66531875ad.124.2025.08.17.20.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 20:32:59 -0700 (PDT)
From: Alex Tran <alex.t.tran@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH] man3/sem_post.3: EOVERFLOW add SEM_VALUE_MAX to description (wfix)
Date: Sun, 17 Aug 2025 20:32:56 -0700
Message-Id: <20250818033256.54899-1-alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

See: <https://bugzilla.kernel.org/show_bug.cgi?id=219335>

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 man/man3/sem_post.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/sem_post.3 b/man/man3/sem_post.3
index 1df132c89..03b91b9a9 100644
--- a/man/man3/sem_post.3
+++ b/man/man3/sem_post.3
@@ -38,7 +38,7 @@ is not a valid semaphore.
 .TP
 .B EOVERFLOW
 .\" Added in POSIX.1-2008 TC1 (Austin Interpretation 213)
-The maximum allowable value for a semaphore would be exceeded.
+The value exceeded SEM_VALUE_MAX limit.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.34.1


