Return-Path: <linux-man+bounces-2952-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8869ABACC2
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 00:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F36D67ADFB1
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:09:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82D271F1510;
	Sat, 17 May 2025 22:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BwiTFIm5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEF884A35
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 22:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747519852; cv=none; b=AbU6cHYhqy8m1wKSvkUT2p9eRJtz66DRH0eRtm7LI9ncgG2kNQNdOmLEKjtxsz6Eoz4czxCwRWlfeNXbr222EcF2MGhz25Cix4fGfhFOBcq7Rq5z0XxT2979uRfz5U5m9gvB1Lt05v2HHZ54pea3GQqn9QsWhpSwZoAh89uxV6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747519852; c=relaxed/simple;
	bh=wC7sVNOkRiO7DRmNgxiAWM2n9f2o28WxabwtYd+Li94=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uSwubNCGL3GS7pt6Petdmu+rRH3gS0YVZXWugD/WvVtJ74KgsPYQgfAtRtBxqMSc+6SHiMkqAgNca8Trn+9sn9YXNm0rO8/XCYzg3yFeAM0kUFEmu/snE3ML13qbxBmASpK4OJYsGzxeWoXO54+mszLfy5jHd8iGmF6fcoYDbcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BwiTFIm5; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso3002148b3a.2
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 15:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747519850; x=1748124650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zy9COtFUklSMXSuyfv2YNbezG5gFM6QWq9GYC33LQms=;
        b=BwiTFIm5GtOQboyUmi0zsEzNNZe1avt+kTnawPn3fEc6YUjC5FL3/1lqNSgoi/+fwP
         atbrtFt/E2HzuB6ugr6SUs+HCpLCTtiExtkEX2ZSmstl43yAMdWftEJ2p2G1Yu2AbInK
         9DvxJGSsyralCIqYSnHm3lvvURZFe7FsLUQVqs+1U4sYPrb9SptMTlnyJWpVwE6GDYQe
         iYsWqYDk4Yq/bTKIIwSbE1dRPdAHiHYodcx2Tr0bELGxKT8J0nlPQfNHb0LmYK16f79A
         FZ3mh3JisjhSU3+vs7ZnVWHihzhGTbkwTVQiivu5wOHkjPauOpMMZ4BaJBJLpFIODHq9
         ODCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747519850; x=1748124650;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zy9COtFUklSMXSuyfv2YNbezG5gFM6QWq9GYC33LQms=;
        b=GsrLc9jtbr0P0TtVHduGBMolQsLMJf2F6jlPrAkV1RhcByzdLaRJ7KYD/fBMpCWzGh
         3psSNPFliotq21xkkApVdYoDCuonx4SiSxF5oilh2ELkO8wFuQIsVvJkHcCICpW3i0eB
         fDnvTDTbdMbCBB0/2ANysvGMiClHS+QQabRczUtadCfFKXe70KfmpC2wPuEdQFIecy7p
         f9EGYF7ZoPeKv5sFoSM/mXaXF5PDXBjmZjCILU4+6BkMkQ307j2a14orhOp6NXsFj94B
         TotD3q9Z94oHO1BySEDmv3EJ18oIkwx0lE6aRnjXtKOCYdwd0gkBVyvyl9whgEhXKP2V
         1BfA==
X-Forwarded-Encrypted: i=1; AJvYcCVijikEoqpXX0Qn2olx2Tlp19gDhB3TwxZjoUXHgD4+3h77pBW2Ug4ThRTOox61QkXQ9UM//J3uHOA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa1F4IoFmigvUZHYSftQwEgjDSOOPRaxH5X6r/tQW+woRlyI9y
	ORVAtbgmFO7SsCjGx58s4Rh3GEnjpCvNvo8iyxRA68F7YBdBgSQApnJFizEfSw==
X-Gm-Gg: ASbGncuTBszLLNf79HrKjr4DkXlX6KtDAj+LaRS7NtKRzRqTX/h7CmPsBwzOnXDIlY3
	zWEoqLnjWQhQ/NpHAk20q2monWQfS813/o6aHXiNdljb5dvBhQgHIpovFQDjyBHcxREzmkMXUe4
	YziHPtYqy7wt/ZNuhstp92y4IwJ3YkAPqSfbUShkOYRTjYqHjYrAfcXAzS4Hku6ONQBCLHzlH2D
	OTDAKuf8ajvSFKFx+ysg9VaHAKxJeTkksH8dGgxqN1JYI2dXAbHj5JZqCJgAqrfarfHhBsM/ahq
	8ZmCHBMmrJud5R8C7BqOM/gniv8bnC2Zsg==
X-Google-Smtp-Source: AGHT+IFIylUPcpSqXaDqS+xfib3vnhEavYy04al/XUP95JC42Fm5EY6R0d/E8R2OxqGN2/bVsJNVJg==
X-Received: by 2002:aa7:9f1e:0:b0:742:aecc:c46b with SMTP id d2e1a72fcca58-742aeccc5dbmr7009288b3a.15.1747519850006;
        Sat, 17 May 2025 15:10:50 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a98771cdsm3757766b3a.144.2025.05.17.15.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 15:10:49 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] man/man7/signal.7: Mention SIGWINCH was standardized in POSIX-1.2024
Date: Sat, 17 May 2025 15:10:40 -0700
Message-ID: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man7/signal.7 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index 72d4aae47..3e21286ed 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -342,6 +342,8 @@ .SS Standard signals
 in the original POSIX.1-1990 standard;
 "P2001" indicates that the signal was added or its definition changed
 in SUSv2 and POSIX.1-2001.
+"P2024" indicates that the signal was added or its definition changed in
+POSIX.1-2024.
 .TS
 l c c l
 ____
@@ -390,7 +392,7 @@ .SS Standard signals
 			see \f[B]setrlimit\f[](2)
 SIGXFSZ	P2001	Core	File size limit exceeded (4.2BSD);
 			see \f[B]setrlimit\f[](2)
-SIGWINCH	\-	Ign	Window resize signal (4.3BSD, Sun)
+SIGWINCH	P2024	Ign	Window resize signal (4.3BSD, Sun)
 .TE
 .P
 The signals
-- 
2.49.0


