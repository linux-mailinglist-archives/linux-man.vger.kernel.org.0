Return-Path: <linux-man+bounces-4652-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE35CF6F87
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC789300FBC9
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B7D309EE2;
	Tue,  6 Jan 2026 07:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GkKHRi5+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908FA307AC2
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683398; cv=none; b=ABEzaF461r/VZ5QqZmfj3rrgOqMLHb9Ha/Rd4JunvrHpaxHvCN49LZYbO3RwkwRzf7TPtQVqe9XaGl7vH5d/l7gOsAxqNFyv3RtBFZ8Av4d+3SHLza+T48QJYVKsctNnGH1+IolQdHSnnZ1AM3rL54+megLavzbjCmRSC75PsJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683398; c=relaxed/simple;
	bh=TRW0B4Ne2VS797m5kasbntrCFvOJOroTyIRge8AVfw0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D9DP0t2YwQIT9/clmCtNo9lbLwmhE5AzPXRXxUaPvdbcHfItwQxiuML0AIcvdHv/VV5CDdJ1gBRJm4nv7lN1znquNh0NmpUQ5ht5kqB04+O0y9z3crgorIP2h8L8Hlq8YzQny9J9Q+uwnOvtqq5/DVrEUD3rIUJJp8yaEWjBOJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GkKHRi5+; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-803474aaa8bso374929b3a.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683397; x=1768288197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YoYKJWKHMp7gYYyM1ZPdFqgaAFMgZQJ3E0twuoiagXA=;
        b=GkKHRi5+sNxIWO9ZaACkF+73N0C80IsDLp8yFAx0g6NReia0BfdF5N+UOTfMD/MMgG
         piebyjFclm4014+X+dMzsE8gFOuMH58EQzpYZYwfTe6wE3zFm9rQcXpCx2aZGUicuYVK
         OXP9Aqi5MMrDHgzOJ/7CDhPBheS/7DV2d7FheT/6OmKeLhYrcyeYx0zOaD6Sg/BeT3w+
         1mgFUpo78wijshUEl30HoK8OaERFZFdoE0ToHjuqkCAGK85AxxeHzzipT5UIfsB4ANr7
         dt7P1Hud6tj/YBQZwUyo5OWATyRkB6mYDBdGsw3oRMWlTb3C4JTv8B3hnbBf15BQYh0I
         WR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683397; x=1768288197;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YoYKJWKHMp7gYYyM1ZPdFqgaAFMgZQJ3E0twuoiagXA=;
        b=JASjGroTjwkJR+ZHm45Qjj9oTIfxQ2SGfSrLZH8D0Of5sbm2sE3NCbNP0T1CTb3af/
         ZgsE9N6s1ywa4i0vrEt0UUvf5RdIm7x5MRozF8ykGsw+ikmk5UMcLS7PGOUhWDo1tk4f
         5wCcWOxHytO44YKVcLTrE2pEdG6dYa3Ae3hqtG+9XzHz/BAVgZ+MI+ufs8pjhqgdGMiJ
         mRdlnyonzvTbB0436sRQTX8t+TvX3iCnkdLAYbFgH+ZSOyt+SRuAQjWkCbs/5RhLfm8C
         Wg0Ze8szAZBAq8mvc8BKLD7LBhplcYB5ggo+nDcL1psuI36wo5Mzf086dji6o8W3PMZj
         +LBg==
X-Forwarded-Encrypted: i=1; AJvYcCWNVqokT4ZzsvptZRiG/WQbpmcanxACCz4/TJ2TQVSLPmHHK1jcoW9aWU9GBmwW2EDLYzT7LsD0Ibc=@vger.kernel.org
X-Gm-Message-State: AOJu0YxEt1MXdle+yvK20XB95OupqOA/CfoT/agWNRm8TbxE5fee/ikO
	mmxg1TzRNiWGKI9fkuAeHZdFdof8ZWHjFYYC8Fj7rYoNpFXEU2xQ5AlwmpbQVxK1
X-Gm-Gg: AY/fxX6EQ+nAkQfjgiIBgQ/nKZcKSIQB2anA6YKAXM/nxntrT4dHCRjtEzhhNJ46c3Y
	/R9zARuDPMUn1nRoMEmXezdvMg2K0jznfxI3xxgB4OGaaCsmZ79KUy7mACd1jFqsXV2LhXuRDQ1
	qOs5NDglP5xZq0hu+kkIGcJKI/tE+/dFTHG5Tjb/ERoX9SayuzW4eBff2hu1+vpiL8EzEd33Lxy
	tIjDVwUCrUywxd6G+2kVE2zojZdDcvlC5IaAmdz7Q0ejpQqdrnfVPQUCcmug7HmAVs0M2TFj2Z7
	+xGt4P1ltgBZJQep1jL85Ms5H4HaHeMBQdoPTe5Wd9zx9JuDpYGbAEEEROjsVP3iYs4kF34MZxB
	36BhjEXZT+WNxDl+sD/7Wi7y2tJAauT/+z0h5nHL04H2f9nMyNzya5PxVHxlBFgSr9St3NatAw8
	cwsc6KvLwx5TfYTG0ifufkI7eG4PIJUDToSd2/QJGNCUyFnt6I2dq6KyfmQSx/8gdLz3Y8Vm8Rg
	/BvC28Nbz9qIp/T
X-Google-Smtp-Source: AGHT+IGXxGXJGN+21W9H8Tom3fNc4iThyVh+P0eanYI33WKJ2pIkh1yViwgmfS+Dhd5pmnt3973l5g==
X-Received: by 2002:a05:6a00:348f:b0:7ff:8316:22f8 with SMTP id d2e1a72fcca58-819444db6camr1634102b3a.21.1767683396838;
        Mon, 05 Jan 2026 23:09:56 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:56 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 11/15] man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of [pug]id_t(3type)
Date: Tue,  6 Jan 2026 17:08:00 +1000
Message-ID: <d32b6148d2a987e686c40c3e6ffba0e25fe8c2ab.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

pid_t(3type), uid_t(3type), and gid_t(3type) first appeared in
POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 2-1 "Primitive System Data Types".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/id_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
index 34ea0029b5de..c4b87642c755 100644
--- a/man/man3type/id_t.3type
+++ b/man/man3type/id_t.3type
@@ -46,7 +46,7 @@ .SH HISTORY
 .I uid_t
 .TQ
 .I gid_t
-POSIX.1-2001.
+POSIX.1-1988.
 .TP
 .I id_t
 POSIX.1-2001.
-- 
2.47.3


