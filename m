Return-Path: <linux-man+bounces-4193-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D076BC0A09E
	for <lists+linux-man@lfdr.de>; Sun, 26 Oct 2025 00:13:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6F2B24E0449
	for <lists+linux-man@lfdr.de>; Sat, 25 Oct 2025 22:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222082C1587;
	Sat, 25 Oct 2025 22:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SP0ozh/C"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD631C1AAA
	for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 22:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761430404; cv=none; b=DSeeEvbteHy3vrfJUBCXi86eTCQFOtT/hYuspMjVlVpr3gIKfuRO/8q72DIrQCb1BHj5dW8K06lMwPBN0mVME9po1OH1ePQ+Xko/R2scS7w58oSnej0Lj70YxElUSioyoLWNzZfffg+izGMgQ0t8T/XK7Pd4THDY8WSs6ebJCoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761430404; c=relaxed/simple;
	bh=nIE7/9CYU32MMeEQPhwwXpX2PVT7ZTr+tlPqBKL2LG4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jQsIwjhKdbHzgP4z5JNTt5qqwmXZiBQeEBTyIrgddQ0RRcb3MyACnZYjKJjyY2+j7okUe/dRCB+OBGKElSzv7QdzaGJIzhGbzf2Wzk232yJhW/bi5BkZkNiD3yo6xPT96CrUHNvvkvtb/pMxcwp66DG5plnVSUIg3QbPy1yUQ9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SP0ozh/C; arc=none smtp.client-ip=209.85.222.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f195.google.com with SMTP id af79cd13be357-89ec3d9c773so247476585a.2
        for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 15:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761430402; x=1762035202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Xe8drbjj7WKXdxn+WDnoBR5odcC0dBLgQUMtAvS4AI=;
        b=SP0ozh/Cq8ApevMDBCa7kdvM+P0V6VDtT26BqTBcJvvCR1/uraNIUWnoT0h60q9D9P
         9eDJmpJLQ01Bjg0DnEUmJRviISsg/tZofsQv5P2E8zQCavwWvPcSomdDTJGRUd/iyrma
         aWlq9Bdt6LLisVIW4Kx2gxW7i7qYIDscOmfrgHheCZ+jaoMh8BKcVJGS+OmIFi8lMXBW
         C+h2mypBTJ/DR3o1yVYJAq0t9KcC/GkmG3rKMKPigsPQYE5y0kvkq/PY+bKLi2ugd+nw
         qldoK/kfg/BeDtdDqC9QbjucOrEnAimGoXfOlM6rsQ6MFaTd3epcbKoChXdwHd2o7qVT
         6jcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761430402; x=1762035202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Xe8drbjj7WKXdxn+WDnoBR5odcC0dBLgQUMtAvS4AI=;
        b=CY5dplFt1cP3TBtf8mdM6K0bBQqcXGCUpEiPLPR58LEi6E0P4gvdmYibb6pMj+rt7t
         QtnZ+s7Ppdk5gByWwWhVjIzSELZul6XkzFscXcxUrvFfG3mwJ4GOxnZCP5baX2lxpxRo
         heG6uUD5emawASIgicjsYkwYg5E56qIjtQMu9ZW7ISw8Q2sBHhcO04/ZaFD7/nvs94fE
         prhqQavN4jfD6Q9C1y4/IXY+0UYZPV0+XYR87LJ60GTvO/ek1W4M7kXr8x0SQliMLiXI
         Nlva8hUJ1hxqbysxx+PS2AOnBvMRVNAUrzQRm96NYECyLlILxjVA78eEXRrkG4O1XV8E
         pnYw==
X-Gm-Message-State: AOJu0YyIpnlSOuhGEfBuZtewVzJe2u4gwebhgdZObgMFJjQpehd4mAOa
	Bc/2huoi+3EQVybvUjTsJasyph8zf77PYsFsA1D7n8Sdns2eSwsAmGRbxZMly1kp
X-Gm-Gg: ASbGnctpBafGi7LfGZwgxJG1JzxbUfOqEV87vmt+duJMotj39DYhlLdBvLkFe0X0E42
	XJhac7VYpEvnavZfPmPCQKMJ0hYSkwPJCGL5Gs8oB8paANYZguE1OXmxDNXyj5BMjAbvf5M0q1I
	H+nCjIXmZydt8P0caZmUlaCOt4hFfPZNj3CKLyNNinCzgM8QBh9tnleXB2s6ZVNhXMrTMKDzmRD
	z0IUhnQoxfJOKQbsc/euVtPheboINQWlJvVK+4q1WgR3S+THPDN9hhrHUmcb9gy/1dXjqZ1bG0u
	D91ZCfLJ+aQOZeWh9Z4j0ncklWCi33hyuupzW6ewRGrFppQ5VXh7yyGbi2rJ+UB9ZZwYFRwvhkI
	Wj1BY3FGg7Z/lPuP1jYMjhDWdlLoY4+TaGBBRikC61T7WiUQmO66OmQPLGfQlkpNC3U3EEqpE9W
	aRe2uvTY7hTFdKypgYbky8QACaP3FMQY+6nozYu9lwrtDZUw9xbO7pPx35SbGRkXzr6QaP7g==
X-Google-Smtp-Source: AGHT+IG+3HS+/25U2Zt5Z6h2B5iUJN614M1qpiWLLtvWnNGeKv62++RnlrJr2kgOjIj8Qd2Ymeapzw==
X-Received: by 2002:a05:620a:31a5:b0:89f:3bd5:cade with SMTP id af79cd13be357-89f3bd5d9demr360471185a.46.1761430401792;
        Sat, 25 Oct 2025 15:13:21 -0700 (PDT)
Received: from secra.localdomain (pool-71-255-240-10.washdc.fios.verizon.net. [71.255.240.10])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f3497793esm214373085a.1.2025.10.25.15.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 15:13:21 -0700 (PDT)
Received: from secra.localdomain (localhost [127.0.0.1])
	by secra.localdomain (8.18.1/8.18.1) with ESMTP id 59PMDLTH045119;
	Sat, 25 Oct 2025 18:13:21 -0400
Received: (from secra@localhost)
	by secra.localdomain (8.18.1/8.18.1/Submit) id 59PMDKfD045118;
	Sat, 25 Oct 2025 18:13:20 -0400
From: Wes Gibbs <wg21908@gmail.com>
To: linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
        Wes Gibbs <wg21908@gmail.com>
Subject: [PATCH] Subject: copy_file_range.2: glibc no longer provides fallback after 2.30
Date: Sat, 25 Oct 2025 18:12:58 -0400
Message-ID: <20251025221258.45073-1-wg21908@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Update the documentation to note that glibc no longer provides a
user-space fallback for copy_file_range() when the system call is
not available, as of glibc 2.30. Applications must now handle ENOSYS
themselves.

Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=220489
Signed-off-by: Wes Gibbs <wg21908@gmail.com>
---
 man/man2/copy_file_range.2 | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
index e9e9e9945..5146c0d11 100644
--- a/man/man2/copy_file_range.2
+++ b/man/man2/copy_file_range.2
@@ -202,10 +202,16 @@ that was also backported to earlier stable kernels.
 .SH STANDARDS
 Linux, GNU.
 .SH HISTORY
-Linux 4.5,
-but glibc 2.27 provides a user-space
-emulation when it is not available.
+Linux 4.5.
+Before glibc 2.30, the glibc wrapper function provided a user-space
+fallback implementation when the kernel did not implement this
+system call. Since glibc 2.30, that fallback has been removed; the
+function now fails with ENOSYS if the kernel lacks support for
+.BR copy_file_range ().
+.\" Fallback introduced in glibc 2.27:
 .\" https://sourceware.org/git/?p=glibc.git;a=commit;f=posix/unistd.h;h=bad7a0c81f501fbbcc79af9eaa4b8254441c4a1f
+.\" Fallback removed in glibc 2.30:
+.\" https://sourceware.org/git/?p=glibc.git;a=commit;h=50c6ee3e74e08b8205f18dfb2830e9ec1bcf2ad4
 .SH NOTES
 If
 .I fd_in
-- 
2.48.1


