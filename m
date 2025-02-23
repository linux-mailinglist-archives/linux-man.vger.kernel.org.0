Return-Path: <linux-man+bounces-2509-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FBAA411F3
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 22:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DEAA7A2555
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 21:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54351D89F8;
	Sun, 23 Feb 2025 21:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Us/SIZ9q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF1315666B
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 21:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740346646; cv=none; b=mMHCJ+oPpcmZSErbgBk7brUbc78fxfJcJXoVdxJlD6vKD5VxUpc9QXYH2M350hLofO6aMygrFiwdm+5zAFmC47tbi8P2+MzCxQxSc/dZHdOg87w36tsUYb2R+tpNshZXQdTxuUNda8ULazo/E8I2q51ayqFAn0GBV1HDxyBwSQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740346646; c=relaxed/simple;
	bh=8bRFVW5xidARxj8pVMXUlbUuq91+SWk29PWFbT/6AZg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cnuPsUZfGVZ72IuFW15CfmQle61iYKrp3OVKMZOJxzyOaIn6mI3Gqjl0gEuQIjrq89Rv61NhJZAEeC5WfRj2fMp0RmfHHCuauwpZ7UXXrzYf0xG5uXynsONSO9uc4+aKuHy39f3bPSYG3HJVcfzODbah9pDtT0SDR3iiS6zjjAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Us/SIZ9q; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-439ac3216dcso19798045e9.1
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 13:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740346643; x=1740951443; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDbYqbNiKFpQyDrgi35qdepULg9/tsi/unsmkz3eTu8=;
        b=Us/SIZ9q+7NTaRl1xUehJLCUwdxbAEqF1XZNnZB84qEsDFz/foG3neNZexVB4RT73o
         lULqtmaXY7Ujz5aaMMY9nnnRptZJRF6z0/GeOsAUF4PrnBuqQii4oK1JyoW/OgB8o+sn
         q4LGxlmvRRA8nSPEgIlSl0LV52L3pEbdW2/O8DiIC1mH6op08KiMQPGPX73ogJaqpCRl
         tazpaW37tG2EzkEXyGvBq/rR07Tadxuwv4hJVUd587/sxMfIJcXS+pMQDVapM1FedMBH
         RJAZ8kkMwBq19pSMpEVvI1NIMeugEjmvQ+X11UGtZecRj81vsgTqNnJg27CRpicXxaNW
         dEbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740346643; x=1740951443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDbYqbNiKFpQyDrgi35qdepULg9/tsi/unsmkz3eTu8=;
        b=sm+j+93J4B7DSbI7jiwtD26tShGgcrusztFXsDWD+3acvpkmDu3Daqbg5JBf6wYrsn
         VbS8kcq2Pfckn4ml8jTrgy1aki0d2Ag5gfuJpKFhHkYkzOfJh59PztPCY95hDpvVBunh
         0VXxG2TY7uzoC6a8NrCTAjzDYSO2zzlS0WKNtXdjCCMcsmQpXK0Oys6+bpxF+VS5xxs0
         4ORXzVXMtPxL64lDUJV+VgJMriIzTxh3xTfknVOlmrWk7HqaovFRJj52i90HxD5OW8GZ
         nisM0Puu2enLbEdvoP+WBfgZmLOY+WdrGnyXwR6h0oO+Blhbd19GGsV7ID2fRykdDLcU
         qvmw==
X-Forwarded-Encrypted: i=1; AJvYcCUUEdVHJVS5n2MI0JtgR43zy4CYVOnHR3m2YVc3qTwHAa+EMK1UOUyhA2xj2KjkQi9sA4y0FQed+VY=@vger.kernel.org
X-Gm-Message-State: AOJu0YyO5x2+XEeuL6YtprVypCAnickocQQtHohL9lLFBqz5wge1tJ8Y
	2By9R9vrbtjBSC39Yz4+z7S2HIlv9+lZE9NmjsbAYJI5FOyB8XTO
X-Gm-Gg: ASbGncvRReXr+6DbohT8rQsxn85XIFHzhbZmYUDpwXtro/tV9DLqg5Dl2FRK39jmOdS
	6xzBMkV4cOkjR4caVQXooTxCvkUkicmf8dnjZKTiNuVQ+A3BbVwXzuYzT1NOtFRerlT1a+C4UU3
	7a+s7KIlipR44J5lA8fnlo5HWgRIFy4pVio1E8rxQbYWnbeFkvpvsF6uN/VnQFbW5wJxmRzvmAs
	aOyd1Fdoz9egE/soefA4tIrrQLg/J8DH5SBIqYT10BNj4B127NCbXbRAWsAlCh5p358QjgwCkn5
	Iz9ey5P13fOWedzIs4y5EMA=
X-Google-Smtp-Source: AGHT+IH+yc7EdrDDJvDHXv0tpsZGeBnXoWxrWLShESt3vwK8iYEBS1jxbs+B3Wo0qWvdUME0KBjq3A==
X-Received: by 2002:a05:600c:19ce:b0:439:a1c7:7b2d with SMTP id 5b1f17b1804b1-439aeae05fbmr87401025e9.4.1740346642785;
        Sun, 23 Feb 2025 13:37:22 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-38f258b4335sm30354053f8f.15.2025.02.23.13.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 13:37:22 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	linux-man@vger.kernel.org,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net
Subject: [PATCH man v2 2/2] TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes
Date: Sun, 23 Feb 2025 22:36:42 +0100
Message-ID: <20250223213642.10042-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223213642.10042-1-gnoack3000@gmail.com>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
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

Cc: Jared Finder <jared@finder.org>
Cc: Hanno Böck <hanno@hboeck.de>
Cc: Jann Horn <jannh@google.com>
Cc: Jiri Slaby <jirislaby@kernel.org>
Cc: jwilk@jwilk.net
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2const/TIOCLINUX.2const | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 5db3f6ea6..3aa1c7eb2 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -82,6 +82,35 @@ and saved in a kernel buffer.
 Select line-by-line.
 The indicated screen characters are highlighted
 and saved in a kernel buffer.
+.TP
+.B TIOCL_SELPOINTER
+Show the pointer at position
+.RI ( xe ,\~ ye ).
+.TP
+.B TIOCL_SELCLEAR
+Remove the current selection highlight, if any,
+from the console holding the selection.
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


