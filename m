Return-Path: <linux-man+bounces-1248-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D50D290DAC1
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 19:35:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 817D61F22F0E
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 17:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266A013D528;
	Tue, 18 Jun 2024 17:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q6/fnuVF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6C950246
	for <linux-man@vger.kernel.org>; Tue, 18 Jun 2024 17:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718732137; cv=none; b=tE/TBSR/EZ2BjJfrB52hJucrAW+TIXGwH5ppaaCoHJjiywrUO5pElYQR6xGfHYUO5bgfnu2tKsvFYxio9NgXmwYQjri6+32BrUig+HLUHefvhzELb1+WvLtYr4yOBTDZ8VVGZx2S+0cagJGhuSIutDmBC4TjtMtOd4X+eQjidDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718732137; c=relaxed/simple;
	bh=MwyA8NGt3OnGvGAydHBXHLvJ5ldULZS4R+bvyatuIvU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eqPfzQMDh63FJQc16nuop0VeQUVVaSWZJOFJvRt3xXAHFAG7/6GvXdsFK4nrBjTrTs6Or3AvWcpne83c9GslCjtpnvmHushTp0pdV6aSt0Rw4bRX3KFntRcjGZBXyP1aewqezx8dGP2hrsBaXzmQG8zi/yl6HW+Ajt9Nn9rs9Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q6/fnuVF; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3d21b3da741so3155717b6e.2
        for <linux-man@vger.kernel.org>; Tue, 18 Jun 2024 10:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718732136; x=1719336936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e08GyXtS3tkrbIJwFIDmM7RSYQ6ISdLCB62gYcmQI0Q=;
        b=Q6/fnuVFKy3KGTMZK+eu3B0j2bGV9cEmALCKsz1B7VG9gH0RdUOAdt2KClr4yZWULA
         u9hG/wwDtHRHdxcj9KS1rI+eD34CnFBZyLHew4DZt0D/lgMsn7k5K/GP8wTllBsmIFSO
         KObnKc3ENPZtJTtSy1/lPdP/JvwnfiaROmKjqVDtNcus1o9gGFAUad/VsdUtR8nee0H2
         aTjQ/AgYXnMQvjuySYXXzQFuMd5MrxQJL/S16lvt1QUu1ywZK1iau3Z45tnTB2vROEf6
         ByI45snuDsl7RN6Wmv0Cf9kQxh7eOpw2myoB05zW98JXJ7ZeBUB7dfLp7jQmMx0tkqM5
         0izA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718732136; x=1719336936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e08GyXtS3tkrbIJwFIDmM7RSYQ6ISdLCB62gYcmQI0Q=;
        b=jPleLRYAIUKRNe1oOhuwO8QYMHs5LjccoMsblbO/a2Dj0QeZRwSdgJjXk+nVmGwyHG
         Cf4ajW7EIXZ0KHtSZpamtxuCzkhgPAsfEInr3GFr1hqQhZRrZG5fnyb2ru6Noll/WQnl
         ucGHYdwNB4HSvKBHlQqwCJp655elYmfZTRLoF7X7D9cwit947IEWkGpzgyRiC3eUJY79
         xnM2pFRXQ9O2AOmLuBw3ktbrmhPszJi28KtIcpUa/t6/E0FMhWo1zi3FrZNMZgvBy5e5
         hTqbX+HpHjYr0VHG17PvQG/mmr+SA/d+x8BLXFESHArRgKsy9BWkjDfarVClojIFrfhb
         oRyA==
X-Forwarded-Encrypted: i=1; AJvYcCUSEhfVsYijH551fCymQMOAtoWceZCjq88so4e/NA2zejddsae0ulcBJ5GPcc2GnlEt5gJEv7T7h2oASbDg8AEaA5nlC8VLT89v
X-Gm-Message-State: AOJu0YxlpA0csEk3G+aW4vTnTDQWnZZZq3X9hy9CMtyHQjDbgeyKVZTd
	NUWm/WQqbPAgU4hvKNlCWnJHa8hywwvJl3Hcbbab+HwO+D4nqiovKF6BzCu5
X-Google-Smtp-Source: AGHT+IGXD1JtD7ODy62QMLZuq4drSZZAFxsgNj7aD6nzBW2gYL8FoGpbVmCbvwwckjdDtub3UIDcZw==
X-Received: by 2002:a05:6808:2205:b0:3d2:4793:985b with SMTP id 5614622812f47-3d51baef15amr475771b6e.54.1718732135617;
        Tue, 18 Jun 2024 10:35:35 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-441ef3d96e8sm58213741cf.1.2024.06.18.10.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 10:35:35 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 07/16] ioperm.2: fix wrong section reference
Date: Tue, 18 Jun 2024 10:35:21 -0700
Message-ID: <20240618173524.1797697-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <57pe6whtqdzwyqr223w2uhmdfi5dqyrulslrcc54fwun6dofyj@6tl6uan3vf23>
References: <57pe6whtqdzwyqr223w2uhmdfi5dqyrulslrcc54fwun6dofyj@6tl6uan3vf23>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> Permissions are inherited by the child created by fork (2)
> (but see NOTES).

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), the relevant information is in HISTORY.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/ioperm.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/ioperm.2 b/man/man2/ioperm.2
index a2cde4721..5b6550e46 100644
--- a/man/man2/ioperm.2
+++ b/man/man2/ioperm.2
@@ -50,7 +50,7 @@ .SH DESCRIPTION
 .P
 Permissions are inherited by the child created by
 .BR fork (2)
-(but see NOTES).
+(but see HISTORY).
 Permissions are preserved across
 .BR execve (2);
 this is useful for giving port access permissions to unprivileged
-- 
2.45.2


