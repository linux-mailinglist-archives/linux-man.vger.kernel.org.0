Return-Path: <linux-man+bounces-4655-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B8CF6F93
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4BE103004E09
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA93D29E110;
	Tue,  6 Jan 2026 07:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QRWXfWMM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C90309DDD
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683405; cv=none; b=e2QZvCl0oLs4x5e//mClqPnIDqfo2G8XwL4ImmMy20CvloxrZiN7GQ5KmZ1C8QSwT2s/fN2lMeLNhrk6vR491X8yroW3S/xwjUiSW41AgGZX7lGwPd+XhR5pnX9ier8LkOnQtmtpMgyUCOMYECtroTymgOZAbHNp75HTvBnyhzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683405; c=relaxed/simple;
	bh=JdebJ44f6qx6pACZSZ5QQAHppLlrJ1S6MN/SfBD9uJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bGe1CR06rWS3Ogw3RrCPTzVJzZtIgbyHrD/4nIaLO6dAPfdJN7cPSs77DS1ir+iKiE35T5BFnmwTCXAQ0czXUhkFtY2WeYZpOWCHqDs7D1i3Cx93Wx7NcdzyhsxpS6rPcKwoBiJhG+9auDIrozgdXohmnhNFj4l6WRNT0VeeyZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QRWXfWMM; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7acd9a03ba9so746450b3a.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683404; x=1768288204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N2jWLm+8zw1Oy7+1yYuSjGOQ8J8QZV1F8Di2TpOdE+A=;
        b=QRWXfWMMtBMI36Kh0yJo74RiFGWtJrcPshcE92vluPn5jOE+IV1dQM3NXx4lFHnk7d
         3tVgTY4est1V9PcTTZakgneQ70qlU0pSgR1m5l8lrqlVrKdLWNQBshWkQlTwg0YV3KGG
         EHgH+fPwisOe52Ayz1dyN/1RUXswCzUjV7xfm6mCK044M5K5zIuJawh1b+VrTofgMbOj
         OG4pnPYjP5D1YdB/yvODwKXSkgeAl8MMHf+93/NdPiFxnBPbS+Kxj7sCP/xuf0lu37rU
         o0MM7BCucIVabz6O/dFH/884RSrapgzrl8NFkzWdyHaF6GuUQF+pskkUy11fr7qaWnKX
         N4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683404; x=1768288204;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N2jWLm+8zw1Oy7+1yYuSjGOQ8J8QZV1F8Di2TpOdE+A=;
        b=PrKeuyvN925MOEBFYLgRiyGT1aYBw2/LeA1UxrGwoVoa98cbcyEylICT4hztangD6u
         1+dbJajNqlFIoIsLoWfzS0dPYgaIptj1v6TQQ9h8bdYeuhXx/gTXJu8RcKGBZP+UAeWS
         VCyyRwdS0SRGc/5rN+FciBSzq2dnCPRfd9xcefzs9pC0nvWP/0EVYJYaLt7skq/J/lqf
         kmuOhE5DV6hO0ASDoj8SBNyF+vX0AAsgKc/AKkUwdRvQqpKTsqM5f3oj4rl+bu0t4dlk
         Rn2yYOuh7Ifqt6QU4bQniMqmEkaD78cHF0oHdMAuPkmu3XUFaRlRo7s7IJE1ELfHlL6K
         ogLw==
X-Forwarded-Encrypted: i=1; AJvYcCVI4a2mUaLhpSoLhaTuGqFaPNG42QkGjKUeUxRtHvxBeA95lxxr8pPLfCMfPHfKkvESojNFOSxtqqo=@vger.kernel.org
X-Gm-Message-State: AOJu0YxlFTpE1hzR1KUOa9ho+fkjHQSQ8Qz8HykcvKmS/zyNZnSBD87a
	guN6Z5DkciQZoy4w/JFMRuXTBq/sltBx3fcAGhsNIERKdvr6W2k2+/1uNqwo+O5q
X-Gm-Gg: AY/fxX6TM7PGnwdfclxtxFs71J7JnSpTFudR1Mz2uwXbJz5av+pVUAWE3mIco0J+lzN
	4dOHD88krO5/gEwlcV5cy1MyLxSAuKo+IXHII+dXeBwS1mJxyTF+rtadRkZfeLqnWN6P8atOBGw
	CjazSdXM8t6fTLmm2j7i3XlNuYCKSNAJsG9gnbAgTZ0cHN3437ugbiNbwRXYBKropOKge2WsM3t
	nbeERiFD5FNpfRf09ccn5CTcE51cr232kpc1IEXH4n2CBA3ayEqRSGtc5WlyOGKQugPYBt+8KUk
	PBs4dayv1qfSA4ThmQGqMFdBxk/+vgz5y/yAQR3nyIQVgs1fEONfBxq76WJspwaRM1+X8SlBuPG
	4QgMr6bfKlHQTL2LtMJbDZIGBdsBAMBloak9tWh7GKwtH92oUd5QCZ1+j6pNtTWfG6vXcGiL84Q
	R1MZHMTHqZZMDEJg89Mu/kZtMtZfqAArv0apgeVxmfbjcmFlgGIfZnanwwTGcGUZgC65iGPjrON
	NzEX0xEE6GTU0L3mGCXMiDuqf4=
X-Google-Smtp-Source: AGHT+IG+yL5zyVr6toHAvF1TCdWwt914UwLHUhTkvVOwxYKFpgwp5AsdL0px+QckCVJ2Rm9ivjWJ0w==
X-Received: by 2002:a05:6a00:e87:b0:7ff:97b3:59bb with SMTP id d2e1a72fcca58-8187daddd95mr2204539b3a.16.1767683403680;
        Mon, 05 Jan 2026 23:10:03 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:10:03 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 14/15] man/man3type/intN_t.3type: HISTORY: Split types and macros
Date: Tue,  6 Jan 2026 17:08:03 +1000
Message-ID: <903b6a6dee42c404176b4658aba98950deab9fe9.1767675322.git.sethmcmail@pm.me>
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

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/intN_t.3type | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man3type/intN_t.3type b/man/man3type/intN_t.3type
index 8f68aeccee54..5078d0040cfd 100644
--- a/man/man3type/intN_t.3type
+++ b/man/man3type/intN_t.3type
@@ -156,6 +156,16 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
+.TP
+.RI [ u ] int N _t
+C99,
+POSIX.1-2001.
+.TP
+.RB [ U ] INT \f[I]N\f[] _MAX
+.TQ
+.BI INT N _MIN
+.TQ
+.RB [ U ] INT \f[I]N\f[] _C ()
 C99, POSIX.1-2001.
 .P
 The
-- 
2.47.3


