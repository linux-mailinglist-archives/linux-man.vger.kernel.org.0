Return-Path: <linux-man+bounces-992-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6A08CF2B0
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 08:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4DCB2813D5
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 06:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F041854;
	Sun, 26 May 2024 06:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d1VvXjEs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7321849
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 06:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716705768; cv=none; b=j5JA7qUfwxha/53pwxNtM5Kxn7pH6H7wrlWEbit2xjaGVbuNrFnNIQm9p/k/JQMLO0vD1KuS4yt71KJMEf3j0n8ge/z+BIIfNd+5vmiSsKZtzVhTr6vc3q7VcPbT1ZtO/DMgZw4RXM1KxzE2Ij7l2hz5zGOZmC4AS4zTL4SBNho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716705768; c=relaxed/simple;
	bh=tAym/P/2f9fO/ESu56lXhJhmkZ7DjsCeilFZq7i6ft8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PuCv0VdZFV9fwf29EU1t9vnL/jN14Yy6ipfTpfVWfcMznTiS2p0Y2Uz0WUypGdr57OD8VozJpO8dARI1cGJAkorgVeYpEpJD785KOt8UAi5qZNp5HQGUeqFdKbvVyhkNu3QB9oDWjcKzMcwBrtsUKNi2sw6UjtOGwyc/jVYjx1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d1VvXjEs; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-578517cab9eso2649333a12.2
        for <linux-man@vger.kernel.org>; Sat, 25 May 2024 23:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716705765; x=1717310565; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qEqiCzjQIIU2kfvqCxI7eitYrH+fQtezUeWrnlY0POQ=;
        b=d1VvXjEs+XT1wU5F4Ky9NG5U1eg6p2Ej9SMFM3Zj7A2kI4Hd3iEYXiNSc/WpZWXo3K
         uiNE6bMdbs6TckcdMUifPKlbRdJtLjJ9Yif1BwxjksopQaEyq1Jq3FHvuuyZ9rHAcABn
         9SrPQbxEcYxLJHP97uWqBzKDM84pcmYft0kZhphDc7gTu+TsIHDP3fM47wdIa6ejhZNp
         OfuRG1QkCnMp5QI4+OTy3xFWfLBGi3R44NKyochrleV/myfdwn3hwTvQT5O2/B2PE1hq
         ZT26ommlL+m6J8ndTQkxgO2TuoABhHvsiprbYU28qou1I1+YmOfJBwpMEcRko5SEvcCr
         YOsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716705765; x=1717310565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEqiCzjQIIU2kfvqCxI7eitYrH+fQtezUeWrnlY0POQ=;
        b=jaosHm5gg5L/lx+6ENrPjF9mlQfysgN+8EUDUmZ5kbVN9QdHZdcK1n/Lj0Z6UIgOye
         iMml/zXhnllk3jMUXBw6/hNTsaRQrjcA+JVWe54UsZMd7fNKkO+iL0r8bmrQdJtWrO8G
         6F/7/VSaDZwJBtTsIF7rCuwz/k8fJY49WuvtHD7FMFRi+Ptbxc2avyysbZLUFZUVdF4m
         15JPeTo3N8r04aslHqqZNSCOxSpWo+YuQPnpy/VVdGvgDc6hW2W2S0PU8vM2HIBQgpL/
         JGvFADc1YiEbydP2lLh1f2ybOVI5xzXegf9tF6b54/DbrdJdAJWDyKqawbac+Ui7UCoX
         31Fg==
X-Gm-Message-State: AOJu0YzIpT36wujNst6vuzvNSSsM7xsgoopnJd9BvLrvFgSyIs4CFxAa
	/69WgMeHInW9pjn2jn3DIWoI34KrN+URRro7wYPLzmp8gpamJd3M
X-Google-Smtp-Source: AGHT+IEC/YrpYf2POwCXs0Xu0o5gf6rt2+iqWSSxcKhWp6mk98SZZ2xx4iZ4VfDIpAW/vx6q7imzVA==
X-Received: by 2002:a50:9305:0:b0:56f:e75b:839a with SMTP id 4fb4d7f45d1cf-57851970dedmr4007280a12.1.1716705765268;
        Sat, 25 May 2024 23:42:45 -0700 (PDT)
Received: from localhost.localdomain (net-2-37-91-213.cust.vodafonedsl.it. [2.37.91.213])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57852495debsm4101497a12.69.2024.05.25.23.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 23:42:44 -0700 (PDT)
From: Emanuele Torre <torreemanuele6@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Emanuele Torre <torreemanuele6@gmail.com>
Subject: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE  requirement
Date: Sun, 26 May 2024 08:42:18 +0200
Message-ID: <20240526064227.937757-1-torreemanuele6@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Like the unlockpt(3) function, grantpt(3) requires _XOPEN_SOURCE to be
defined before including stdlib.h.

unlockpt.3 explicitly shows this requirement in its SYNOPSIS:

    SYNOPSIS
           #define _XOPEN_SOURCE
           #include <stdlib.h>

           int unlockpt(int fd);

But grantpt.3 did not:

    SYNOPSIS
           #include <stdlib.h>

           int grantpt(int fd);

o/
 emanuele6
---
 man/man3/grantpt.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3/grantpt.3 b/man/man3/grantpt.3
index 94526691b..f2d70ebd6 100644
--- a/man/man3/grantpt.3
+++ b/man/man3/grantpt.3
@@ -11,6 +11,7 @@ Standard C library
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
 .nf
+.B #define _XOPEN_SOURCE
 .B #include <stdlib.h>
 .P
 .BI "int grantpt(int " fd ");"
-- 
2.45.1


