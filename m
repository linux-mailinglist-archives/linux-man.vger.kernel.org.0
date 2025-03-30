Return-Path: <linux-man+bounces-2679-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67089A75A57
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 16:31:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92E4318882C6
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 14:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5955F288D2;
	Sun, 30 Mar 2025 14:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F3nd61sd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663D846B5
	for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 14:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743345096; cv=none; b=qMnOanCAqfvAYPqUQ3DHbhXptL12eSahunVz9WwbsNE6eo35WVzktj2z/ynKsIbLW1ue89umKavbRKJAa10K4gRZq82zGyfH1BQPJB0fh0/lRaeExYL7dZNbD4zy8lKWNwUomKQ+NZrg0riKoaz2gQBMDk165M1VyTWu5T/wB/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743345096; c=relaxed/simple;
	bh=cI8KeSbeuHGnU1xynNJ/4UjhJHemS20Bby6nADRju90=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bwCwI6d/Of5CQ2rIS7LjyMQ9MtxP63YncI0ArjVnPTpeoE8FU2i9t8++Sq2CSzBwWKdwsqgBlw87VYauHvJvkHNWR691ZfbLk2YZ4VaS+0RrNyS6LXCtWE9o+4zvYkgHZ82afE4KNdtQCq5LiIjO9NTVzfOGpdyK3McBA3VNSeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F3nd61sd; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cf848528aso32955125e9.2
        for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 07:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743345093; x=1743949893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h/lYKji7/33oPEoQK9pL9J/c4CIWcMLQMxpupUwkxoc=;
        b=F3nd61sdYm3wW8O29gmad3UDX7vpKCQ+xd43ZeHN2YbNfoLbf7mYnyc41XdBaaP9nO
         waw/JxlqD4zz1Rkm3AQwc9fKTXdwi4dvDs4dgIXYx49Yv+49Xv1uIqZ555Si29eSeVUs
         jwKp9KCaVLk1SHX7vjJXKv+tbZHKDYRNcX5wN/n1791v16jD9gsI+TCrtzklVoEe9AcH
         jvrupWV596s/CYHRqCqHaRauqye11qkR32cTvasC60G/KX3RjzjYlhZK9UTV2NFeZ01f
         QzJZOQUFHMzBo69dySP9Spz4AorZrY8vQhgFzmIpEUjixzePFnQ4P/frJ7dEEOl8Lpjy
         JbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743345093; x=1743949893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h/lYKji7/33oPEoQK9pL9J/c4CIWcMLQMxpupUwkxoc=;
        b=VM/N0k2ZmDVRj+nYZpADNDVTPAmfWD9QE2WZh2EXPwzqwb3G7Lvl9TFQBU2EFMs2vg
         KOqTMpG4d+xjq/Tyg1ehVFhji/rdaVgZJ884p0MEpwtjjl3PzP3mYERGn+WpTYPdkOaY
         Ilw2ZlWPfab/nci+YQCNoFQJ38joJ34VvUgcH/gW+6CF4OtKzU8Qq55xEbiKsrfoBsI9
         iyDDSVb20DvcQ1QNRYcZJWf8gQlYrq8llVojNF5XTgYMbkCDu+ZxNBNt1EULjLEkoNem
         tC5xn22IQT6n/xtYOdrOF6BvMHnTjs8yxHwUYrv9/f2vM5Dp2Mexlc9TIxt/Hqdgyw54
         80yw==
X-Forwarded-Encrypted: i=1; AJvYcCXAkENAPuL8pcRMn4HHfJ0EpMQaivvMP4lMVwXKZcQIucdYLl7ksjFK1TUFLaHed+3ltpXP18y0pdg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsht0wygqSsNy5QIHUAif5RPDQazjnOugPGz0MxbSyln/FtwKf
	T2kwbWDWlkWxJyHdt+rosKdgVHVTurkHXJq6mLxpCAMzKwao42A5
X-Gm-Gg: ASbGncvCYGScWWk1SaS1lQWmyZr3rw06qgIhh/Rju+Oy7kRvj1pox+EXPvT+D2G5NGN
	fdEumdl3AKAvC8MCJpdy8a8btoUOzwrXhsKgyy4NlB0Jtp32ch5/IA5utwxTC9yJNHNuEQIKhNE
	pAJ0Otbww4/E71drtn4rmGJuGKpAvT3ef6b+HTu5qyyTqjWxmwRHsRcqvGvOqMwLp3EfgMszG7C
	yM9NNMiaABne+N9hP76bqwiF/lUcfbvVqchoirFcfiHNu3dfvK7/rNaTUFeCOgjNOQ8aDu6CYBA
	x2EYRubRdMu74wTpGdMf0uscSkNJ5YuvxJ5vRMRzy7VVHMcjlfQAvWDqw1PS9PVov3BkCPE=
X-Google-Smtp-Source: AGHT+IG6djfJunZDoFyZJTbtbnzt1Rf+6Tx1tWg0ZWHidsA5uYv4bPpacNbl/xHen9UKAmZzuNUgVw==
X-Received: by 2002:a05:600c:3b9d:b0:43c:f64c:44a4 with SMTP id 5b1f17b1804b1-43db6227411mr47730275e9.8.1743345092381;
        Sun, 30 Mar 2025 07:31:32 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43d900008d8sm91786615e9.33.2025.03.30.07.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 07:31:32 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	"G . Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net
Subject: [PATCH v4 2/2] TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes
Date: Sun, 30 Mar 2025 16:30:40 +0200
Message-ID: <20250330143038.4184-5-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250330143038.4184-2-gnoack3000@gmail.com>
References: <20250330143038.4184-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Documents the following TIOCL_SETSEL sub-operations:

* TIOCL_SELPOINTER
* TIOCL_SELCLEAR
* TIOCL_SELMOUSEREPORT

These previously undocumented selection modes for the Linux console
are implemented in drivers/tty/vt/selection.c.  The name "selection
mode" is slightly misleading as not all of them actually manipulate
the kernel's mouse selection buffer.

Includes clarified semantics pointed out by Jared Finder.

Cc: Jared Finder <jared@finder.org>
Cc: Hanno Böck <hanno@hboeck.de>
Cc: Jann Horn <jannh@google.com>
Cc: Jiri Slaby <jirislaby@kernel.org>
Cc: jwilk@jwilk.net
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index f2c8d0720..61f1c596d 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -84,6 +84,40 @@ Select line-by-line,
 expanding the selection outwards to select full lines.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.TP
+.B TIOCL_SELPOINTER
+Show the pointer at position
+.RI ( xs ,\~ ys )
+or
+.RI ( xe ,\~ ye ),
+whichever is later in text flow order.
+.TP
+.B TIOCL_SELCLEAR
+Remove the current selection highlight, if any,
+from the console holding the selection.
+.IP
+This does not affect the stored selected text.
+.TP
+.B TIOCL_SELMOUSEREPORT
+Make the terminal report
+.RI ( xs ,\~ ys )
+as the current mouse location
+using the
+.BR xterm (1)
+mouse tracking protocol
+(see
+.BR console_codes (4)).
+The lower 4 bits of
+.I sel_mode
+.RB ( TIOCL_SELBUTTONMASK )
+indicate the desired button press and
+modifier key information for the mouse event.
+.\" <https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Normal-tracking-mode>
+.IP
+If mouse reporting is not enabled for the terminal,
+this operation yields an
+.B EINVAL
+error.
 .RE
 .IP
 Since Linux 6.7, using this subcode requires the
-- 
2.49.0


