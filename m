Return-Path: <linux-man+bounces-3162-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E6AADFC55
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 06:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB83E3B9AAB
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 04:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E681ADC98;
	Thu, 19 Jun 2025 04:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="djKhFEcx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595EF3085D4
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 04:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750306952; cv=none; b=dS4oNEnnJlR/jvaU5vuqCDaf+c6si7f6UEvBdfTSiGn6ALpBbQ1dWvlJ4M8KPtkcueBjnTXAWFs66f1UDQNTWirFCuUn71y4B3h3Z0ENnxR28kuDpNIqnYpqa/rnaksHF5uEzULyUcxAzTe7u373zoSF9xlyDe2j6/X5ccsj/u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750306952; c=relaxed/simple;
	bh=PkUqahq4LxCycYAy9wy2Mgzn8bGlpEK9VlcEK1OdQbE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J5QFEQmvuLO52K+SSl9mUhEd9dyLployxo2KJGgKe30/8gYyMVlWzbjaTsHSguRa3z7WksRo28xCsN1pYjCT/Vu8+5QRvSd61CX7ePIWtxuLe2SwRZ6Zy4UdN7uIm8SThy60dL5BhZT18mkfaBvIi8yuzyL0AE0UqBkwCUGuPK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=djKhFEcx; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3122368d7cfso184467a91.1
        for <linux-man@vger.kernel.org>; Wed, 18 Jun 2025 21:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750306951; x=1750911751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gtp67R2MHXCeWlaHFlxolNukY3XlKdZP0TYAKH2CfAY=;
        b=djKhFEcxv0YanlRRng3sCoHBVx5jZzM/U20hrNBn+roD+qlbCBlLdRkHYuk3Xv+Mjk
         SbmCxH0qTOhH0qYwd6oSuoqjSRjOu8bnN3YXdj9K907P8PEuBfkSLZNKjS9vvfbVK1Lz
         w8PLtNAmcmMeSQE+dKfFhVia9PZ13jgQtNe4/O4SQf8Q8QfcgZ4q3b2yfcuOuK9lKthS
         9SITnn8JT7xPxiofx7nBmS2eTcQYzPniVChPR9vdNzMU2gqsDX3h8nmwfUOy1CyNMRIr
         GlbqYfBUwxC4fp4a7cOqDfJmb1/RVrmZnH9170ffUrX1HfTF6v3vHA6EDzciyZPjvm0/
         uxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750306951; x=1750911751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gtp67R2MHXCeWlaHFlxolNukY3XlKdZP0TYAKH2CfAY=;
        b=XpFAa3lm0bRx0k1GTGLvEErgX+KchCwY9a3192PiXLEsRNN1ne0Heqf5rzOOEtj8jq
         AHbkCmhKB9I6aA2kYETIhJa3Gy7A13fA4Msia43KjN8f4qglL7a+Neo6zZd/WxrxoCxe
         k5xttbx7VtDErhd0nUtldKA8aXyi72CYlWRAroHdaJODif9lWSV6xXfCbC0awlUWv+v0
         UBbNKKYXekIE3zl359ycMBkHb9Z2Nme4YnV5S0Aa1Ml6OB993EZ3I5pm9pjP86z6MRA0
         V1boeze3LntEdf6pHC8eaxni6xYsw8deRXUb+aAHWk/NZJWsl3C9xkb1WmJ8mUePJSWr
         +Dow==
X-Forwarded-Encrypted: i=1; AJvYcCWfwN3cbf8BznP4Sf+TEvc98UroBkkGubKl8OhXqh+NauCFBpdLBPYzSMdj1Aqw24yUOTb4uvrh3J4=@vger.kernel.org
X-Gm-Message-State: AOJu0YzKIyDgb1Gzmpko/i3UXHrzVH3jJ6TpHgkrhb4Rhjv327SeuZdN
	zUnbnmzxvKXYkXJfQTslAgIZUDOrvjnTbE5gGG2j6Jv+JAZVnBpxs+uv9HgFcQ==
X-Gm-Gg: ASbGnctOPdPedZQcbEvf8MQ84kHjKJkNTbDO4ghLKoCGLRGEsiA+H48Z7bUpLbb9fk/
	QfJ95uVzUcSBLTUbC78YorygFWLXNFM9QBfsoAVVLKAoAG3v3zRiSvQlcrgaA1Vym4HgoCmg1FW
	eDI4PtEi7hb8K8rCyyK6s8NbMXprQOgIWO+mLNcwPbZCN+zqKH8Vza35+5881s7d14WdTXoFFPC
	Iv2aLI1gOlAQ5MaNNy+CGLSBZqXK+9HnwYcwfuFv39I+FQSoPR2bj+Ylw9+oloJE8qsPmY7tGyY
	hvx65k+5hxlZpUKt8R0wGAKs3Cy6VMYMudBFfg440Bh3Iw==
X-Google-Smtp-Source: AGHT+IG8G+nMtxAF54nHnW9+avDhIacOngjZ0tqKY9ei5YJPvvstO3zXluypYuItDuXW1YiIHQdh+g==
X-Received: by 2002:a17:90b:4a4a:b0:311:eb85:96f0 with SMTP id 98e67ed59e1d1-313f1deb681mr28086803a91.29.1750306950601;
        Wed, 18 Jun 2025 21:22:30 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::de7b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3158a24377fsm1007495a91.20.2025.06.18.21.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 21:22:30 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 2/3] man/man3/ftime.3: Declare ftime with [[deprecated]].
Date: Wed, 18 Jun 2025 21:22:10 -0700
Message-ID: <5924c3b09d8e373be6ac1b5ca663b8ad7d106d93.1750306917.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This function was marked as legacy in POSIX.1-2001 and has been removed
from many systems, including glibc.

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/ftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/ftime.3 b/man/man3/ftime.3
index a34b15888..8ae808ec2 100644
--- a/man/man3/ftime.3
+++ b/man/man3/ftime.3
@@ -13,7 +13,7 @@ .SH SYNOPSIS
 .nf
 .B "#include <sys/timeb.h>"
 .P
-.BI "int ftime(struct timeb *" tp );
+.BI "[[deprecated]] int ftime(struct timeb *" tp );
 .fi
 .SH DESCRIPTION
 .BR NOTE :
-- 
2.49.0


