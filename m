Return-Path: <linux-man+bounces-3114-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7E1AD0F3A
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 21:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFAA53ABBEB
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 19:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64F8A1F1527;
	Sat,  7 Jun 2025 19:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1JwvhpRl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1FB156C40
	for <linux-man@vger.kernel.org>; Sat,  7 Jun 2025 19:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326379; cv=none; b=rybuMIR3ZQnu4T8ASOedURLrHxpTVB+BaAJjsyk65hb3pATExDAUj4N5HikclCM4Fsx4oNF1gwsE4Q0oiBMAveZr7tnAMd/T9vzZzdqE+gYrgOOH/ISx/UW9CvKVs6J2E/NHvSxvZ/jjQVsJvDFttKcMDnP03ZT65Fmt+E5MBcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326379; c=relaxed/simple;
	bh=u6uvnEVjoT6SGSvgXmki9H28oMUCvW7qbEZ8f++80jA=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=ZgEk5m4n5HX7uvDvv9LYIYPbWAsyjiND7fx0SwTtHkakg7fS2nkOBm8mFBTH+17/+dAN5otAvx0rnvMOiZiUB4MoiFkFIcsF1hT2oVMPPMG0nkXNa9ZENirZnaLQWXvOxRUiqtryCrHmmHSzAmntRloQb9dpaEZ55t8qLjnNzF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1JwvhpRl; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c5b8d13f73so346245385a.0
        for <linux-man@vger.kernel.org>; Sat, 07 Jun 2025 12:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749326376; x=1749931176; darn=vger.kernel.org;
        h=mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+j6ykiamQVETk6xR7IgcnaW6IFMvITd8TMi9d3Q+I6w=;
        b=1JwvhpRlRY2zT2cqorFGaoS2a7lvdDISufs2WhADgyfh/Z4c6CuUz5BawDAgtpIUut
         4Z6f2Zdnzc79Zuz6zEZ3u7qF/RvOKRoiFinrDSvEy0i6R/71CtdOKJF2NI/I1AXqNslD
         B3rYbPPLE2hwMfmjQdyp6TAa+SXrhu+OoW3RE+J1MGXJRXfcInJP4up+LMDVmjPy+se2
         n6Xeq7V7tfYUAjHnoo1HxrFmRaxhwaeJQZhDeIfQ9fSPoQWOl5vGTjwMyCuzwA96+OMH
         gLOaMCxIfasnC9LSHB8BQ+pJQNaiP9Tm7H0l2/xs+ge3ohLLO5zXhRwx78EBNwppbUUz
         jTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749326376; x=1749931176;
        h=mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+j6ykiamQVETk6xR7IgcnaW6IFMvITd8TMi9d3Q+I6w=;
        b=WH+4aNM3hSMEWW34KCYEao0rCdYfoqS8JRYTQUAGMhymvbT6YAeXLB7fhwuP6Pgl2N
         xYLGY+4imvopXbtlqMTRwIZ3cHEEcAuiiQLu7pEnIXMhxNkXNrE6PLgrkyAi1E2rtBdH
         BuzKlwX2oNDeGLjNPQPDe99spFj+MYakpmlvxyF4zGIj9kwhDw3PxKJu+CV0O/QpFNJn
         rQ/aAq/hsfpQHtBO5kHgpDbQPyAJEyXe7JYzUAkHbHWb9Eq5tbF/AIbNAjM64GKbNNjJ
         P0OP69zl2JZ1j5ei0KpqONbKsvsMHRyCRWrUnZkyCfgzWj7C3QTkdTtEUgVdBTV8Xa+O
         +QXg==
X-Gm-Message-State: AOJu0Yxhehg6+jvptvWDvqzsXah05lYDksRSCL4b7LgDsBE+YasF1Kcd
	agI1fXSu8CvI5cBOa/LotoOtVMkSAwKw+mMcM5j+igaYYe52cWMFvSzOMLIdD7Lo/VEXdvt27D5
	h4h+2
X-Gm-Gg: ASbGncv5Lgug6Nbj5S48FIPDcaybxrPR7QXx4MvQAg6WvQ07muhoDaPVejrH4WACgd4
	hLhpsNwICqXD/AKKq/QVIPUkCOuXWtB7JCqx24YuSqqmWHYW08IIC3UcDKbANtV01lz1RTUu1R1
	h+YUnC6ekAIkHKDyxOmITXLnWkojP32272EHvHwvHyD10HFcK9GYQAlhZX17kPVOKVeXUyrCG7r
	s0WgzygNFAUNYcP6vQYbIW5qpsTN7uF0ji5OEWHLHtOgUKUDZyLYRJRC35ahT6GNA7KfCgGh7Lr
	ZTJhfZDiAHzI1DkEMU1ctBKg5HpCN13p1GRqk4AEIQDt/qFWStufwBcKYPbaHZq2k9T1FkK1Wy4
	h0LwYAdoz/wLxFMgtI0pRdrOv
X-Google-Smtp-Source: AGHT+IF7EWBC1vTRnG7fZmd/ZJK1QMWb4ht5UW8uSoLf0nJ05AX9fSwWCK4DuhyeBG1GKA1W/utt0A==
X-Received: by 2002:a05:620a:2608:b0:7c5:6a35:81c1 with SMTP id af79cd13be357-7d229932cbamr1287308185a.48.1749326375778;
        Sat, 07 Jun 2025 12:59:35 -0700 (PDT)
Received: from xanadu (modemcable179.17-162-184.mc.videotron.ca. [184.162.17.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d39054acaesm21634785a.92.2025.06.07.12.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 12:59:34 -0700 (PDT)
Date: Sat, 7 Jun 2025 15:59:33 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2const/TIOCLINUX.2const: document
 TIOCL_GETBRACKETEDPASTE
Message-ID: <o5p79351-1ops-on58-3o20-rp142r6s4o21@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Corresponding code is in drivers/tty/vt/vt.c:tioclinux().
New in Linux v6.16.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 man/man2const/TIOCLINUX.2const | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 90984e6b4..86e9ac105 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -271,6 +271,14 @@ Never used.
 .BR subcode = TIOCL_GETKMSGREDIRECT
 Returns target of kernel messages.
 (Since Linux 2.6.17.)
+.TP
+.BR subcode = TIOCL_GETBRACKETEDPASTE
+Returns
+.B 1
+if the application advertised bracketed paste compatibility to the terminal,
+.B 0
+otherwise.
+(Since Linux 6.16.)
 .SH RETURN VALUE
 On success, 0 is returned (except where indicated).
 On failure, \-1 is returned, and
-- 
2.49.0


