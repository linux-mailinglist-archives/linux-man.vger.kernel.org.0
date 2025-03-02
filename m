Return-Path: <linux-man+bounces-2562-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDEFA4B483
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 20:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D032188E8C3
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 19:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC0C1EB9FA;
	Sun,  2 Mar 2025 19:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CLfM7pnq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1569C1B4247
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 19:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740944643; cv=none; b=NxSrce7Nd1FXCEORzUTkVZC933ffWM+0IV66M77ovv8di27OaJTFTYvS/eSsTpjcBPau0bBQDzq4Qb2L0vAGIToxPpsjFtK4oqjotDwzXq1Nuhz7BDx0DSKonVGsn8pKJeQe9LcyRD+JFZc+LCD9GpIZcPyyoakDFtN1TiZl0D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740944643; c=relaxed/simple;
	bh=Gm35Kaf2AWnldctE54B5J5q8fC1sBBrljebDMzGjYcs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JuntO8XiOEIgjUMMm914wicbFLqTxXxEUKVeB/AVV82FqDxxBwqCfvIiVfkqUoD0kMxoVo2QfDhMxkjBOZaRHY/LWdHzRBaqJVNNU33/9izW/qfWJ8E1FWlML3tgnFKuKKDM52wvYtWzZPgirwgr8PYZlStFL2Fd6wxtnDTW5RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CLfM7pnq; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-390f69e71c8so1052355f8f.0
        for <linux-man@vger.kernel.org>; Sun, 02 Mar 2025 11:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740944639; x=1741549439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0B2bRqN82Awk/+16Qav1pZHudZnSQW9IQWO0tJqyeKc=;
        b=CLfM7pnqejm55vAJfTyJmWW0ayyIxnDtm4Lr5rQkZEFqWiay89Hh34wsFNA4HuNsVA
         PN4IU0HNDdZLHbo72yjms04FEf0X8vxeaPYmWlKxj5eF1bH0tZTCgwNzKVkuCuG2EtXR
         hWTleMR5z2D/J4aZYCnXlith9OP3O6T5MWjbxkqeR82oOqblCfOyV5jRC7et5KnQDfL5
         El8mkO2fgQWM/mTQR1/NNAZd1BmzHNPnCyLqyPknxwoADe6bjQub2wyqWDe/oayIG44f
         c5TvbHJ0IY8znaQO75AkV9B7TOqWwNecMZNqv01BO3fVgtuicv7Syhv5XZBg5SpVT+MI
         1h0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740944639; x=1741549439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0B2bRqN82Awk/+16Qav1pZHudZnSQW9IQWO0tJqyeKc=;
        b=qkkX8aGBFp63BmFkuejNaeUdSg4l9+t7WqjSIhWF5Wr8qy+94WwNGf/Qn1BmZbDbVh
         i3JcaeG+EGZbtKfWcImXGzQXrc1eR6ug1Tn5xiADSTeYKlKjEPkZ6dgbAXjDBL4DuFjL
         Th92e1NKqz7limZmQ8DwHdtZnzy0EBWxlG8udjrHuM4aj7zZBU1A7ENHueAwidY+I9mQ
         ipv+wOiL4dBM6q57TW9slYDrJzKwdTg83ygYJuEUohj/3J4bqvpZPH1V+LE9vHSvs1J3
         jQOk6mby+/lwb+Sf30/ch7it88ny0XyaXDgc2DM+U9v3VXFiZuOLrTxEapn4SufhGE9Q
         30Gw==
X-Gm-Message-State: AOJu0Yz5xdOYi+GT3nGgcQiTZRYhXMHZsE7mBBnoCuL6cDWMAj2F+8NJ
	/y27HfOn0c5cq4Wz5sSG9bnEULJnvQjU/mx/9UXnR0VGSB0d4x+3
X-Gm-Gg: ASbGncuOWb7enmlgmiJkepbit2Av+fvWiBUaIQV7G25sJRvi2G6EZ9Cbenj1B3874y+
	CgaSo37Lo8Y9ug+cxi/0QIbWjafX18cz0DI1Uf0cTuComQ1B/J0xmUWmsPnTdt4YpTkLgcnDZps
	I+Ehzn9Jh8kSwfMptAYjfYT9mzd0tPkzZiBzSWPxbJG/OZUdkp7dRhGHJd7h3GBCMOnYq6mDCJt
	3GUcuscdHKpfJX6X3ikzxPn2x9TKrbpFvaJGsyWlhwLBCb+XL42Bd+qwIGJnK0IPkD7xj2JBJ5w
	M80axXjNtvjEvjskKHJm+iRQoElpiY8pdNFguOHZPg==
X-Google-Smtp-Source: AGHT+IGYARqj0qSiZaqjtC3uHKQFAX5zO69/iVaLrcD8GTUYMElowzpVywkrR85nboIGL0tQGHU8ew==
X-Received: by 2002:a5d:64a1:0:b0:38f:3e0a:ca6a with SMTP id ffacd0b85a97d-390e164b56dmr12684796f8f.2.1740944639275;
        Sun, 02 Mar 2025 11:43:59 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-390e4844a38sm12292160f8f.75.2025.03.02.11.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 11:43:59 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alexjandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	Jared Finder <jared@finder.org>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net
Subject: [PATCH man v3 2/2] TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes
Date: Sun,  2 Mar 2025 20:43:34 +0100
Message-ID: <20250302194331.5135-6-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250302194331.5135-3-gnoack3000@gmail.com>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
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
index f2c8d0720..f1021ce99 100644
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
+whichever is greater.
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
2.48.1


