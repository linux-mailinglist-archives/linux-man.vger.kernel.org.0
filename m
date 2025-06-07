Return-Path: <linux-man+bounces-3115-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A986AD0F3C
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 22:02:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF3E8188DBCC
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 20:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C571E8322;
	Sat,  7 Jun 2025 20:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Hdm40KBK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B8133E4
	for <linux-man@vger.kernel.org>; Sat,  7 Jun 2025 20:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326517; cv=none; b=AgnXHmyNptKUQY+TB+Y7d9mLu865Mfvc1Q1SeiWKYyYtwjj/GQH7zLKG33+DwmfsxKCtg8DArRH1PcMR7rx3dbc9l4gjP7RfFExEss1HdBldyAQsAXyFdtz+chXPG2/i3YP9BAWHU+ysuThD/DW9I2/Ufbv0zrXU7rQnWSTWx4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326517; c=relaxed/simple;
	bh=ArnpmSo/mLzBgtvbI5TdZ9DbJMyL18l73A5Pt6a64Hs=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=eL5qEn+/6YW2qHycvZ92TPkozpThEZMDFrGbMtPc4lLiKG2jPTO37aozKeGd49h0jdkl1DUpYlF/uE+dXcdssRpB61FN4qndRqrRdEHMY6vttcxex8tYOSyw0RZrt0tymolZHA3fRsK+H13Z9Dwmyanv+CSt6VaqyiZmJPJaYSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Hdm40KBK; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6f8a70fe146so60482906d6.0
        for <linux-man@vger.kernel.org>; Sat, 07 Jun 2025 13:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749326513; x=1749931313; darn=vger.kernel.org;
        h=mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TRpk4sM+wyKnS9Hf4pUIO97pr/KBToBJzhbHdNyHRa0=;
        b=Hdm40KBKubiOeuCbSi4D+Q6rVHCYw51fORBVONaSKASy3XzgCdh9j/KRUz0YOxRaf+
         2YuKYufia3QNaEQSWMqJx6oCuCpkoPjI9qS+gHJi67hxMfQPUNHwlxzluYFuAP/ERiuS
         /uvTUlYg965J4au8yfWUxJu5p0wAVcj87LySflbFwyJzw7SCaMh0YMpeR4DIlnkxa+yc
         WRycJ8cEnuEXmV1nLgovcpu0SJiynCnUdXCx4xGYLk4NzLruLQ1XkyYcN/MZwocNgQGS
         ozgLLMy3Gc3CSwraIv/7Zx9SMDYOxuJIjV1kj+cXWOAynAFR7gm9zOjTGiCSEotgiRmU
         OHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749326513; x=1749931313;
        h=mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TRpk4sM+wyKnS9Hf4pUIO97pr/KBToBJzhbHdNyHRa0=;
        b=kLcxM9pFmxX0qADJvYJQSX2oGwl/yNlwLbF4PR6nlm6udzRe4nv6qMeBB5/dqYjcoz
         A0PEEpvjU4HV1R8aB7bSZETRQUxGTPi67yYG0inmcuEvWbXINpkt8QBATWNhtUFvU1ZU
         p3hjVyNK2v5ttYcYMKUSc+cmjJf60PnkonbJjSxVOmcang1hbtX6exF4DWdNjisuWS+B
         4EPoSO7wfh9fm9cxMOGyPDQ6SOCntSQTKZe56JYLV/DgpwxmWpAPyLxeI0L89aLxadF/
         xwo8RoqNO9tEbTDmceWudB7YuMEuRXW1Sqaps/zKtA43hqs30Cu0v2Qs65oQ7SZ4CE7u
         Jxcg==
X-Gm-Message-State: AOJu0YyUglvdLXrIBoR4+yymZVRmVrlhsrHV0BUvvrJlCNEPuFI6h9ij
	QPfzzezW8zwykPRz0mF4WnNZ4zX7PqYWUdzxD7+VR6o62s5jNotLCfetjW0E3b9YrIznD+1pEfd
	W/j3z
X-Gm-Gg: ASbGncua0ysHgFT+txnFAwpzx6gVB6YB5NcVfBLToxk4E8q/rozwq6M4Jey/Qb9rr/v
	16kAkN29Pr6d7OvfLuZp6R4nptHUK/vmbaoPpGBCkcnueW3xCUhXS3n+Xaz5cFkhehkbHFi4z0i
	z8FSXUYXA7R5awWLZGvHFwG33Di7IYsxC03EcyeyQ0aTVFZwmRH/fp7M2EZcO6f808Xd6uDM0Ul
	5SpDmuv1Ikx+SPGMjjDrV3qUtNCmtrIDwN6tk/cqVwPw8exfu7zmubRqRZ7wcsWSslxTSM296OZ
	7yweQxsaD71hrIN4np0PyZxedAPeoybWRzOvYa2rAq2yBvsdprImJdx05tPpxdAjvtujpDxs1AE
	kD88+EfSWAsVA24GCQdfS7AY6
X-Google-Smtp-Source: AGHT+IFY+EO670EJdXdesKbs2NcTGFlXyDR5DSfzdKOAtiHVL1yhK6HFxgStCGB+qyeyHuq16Z1vaA==
X-Received: by 2002:a05:6214:2aac:b0:6fa:9ab7:3861 with SMTP id 6a1803df08f44-6fb08fd9ab6mr120138176d6.3.1749326513155;
        Sat, 07 Jun 2025 13:01:53 -0700 (PDT)
Received: from xanadu (modemcable179.17-162-184.mc.videotron.ca. [184.162.17.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d25a609f00sm338671785a.62.2025.06.07.13.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 13:01:52 -0700 (PDT)
Date: Sat, 7 Jun 2025 16:01:51 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/ioctl_vt.2: document VT_GETCONSIZECSRPOS
Message-ID: <4n723o1q-pr52-319q-nsr7-6442387s12s2@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Corresponding code is in drivers/tty/vt/vt_ioctl.c.
New in Linux v6.16.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 man/man2/ioctl_vt.2                      | 18 ++++++++++++++++++
 man/man2const/VT_GETCONSIZECSRPOS.2const |  1 +
 2 files changed, 19 insertions(+)
 create mode 100644 man/man2const/VT_GETCONSIZECSRPOS.2const

diff --git a/man/man2/ioctl_vt.2 b/man/man2/ioctl_vt.2
index afce12936..05b4637f1 100644
--- a/man/man2/ioctl_vt.2
+++ b/man/man2/ioctl_vt.2
@@ -156,6 +156,24 @@ Note that this does not change the videomode.
 See
 .BR resizecons (8).
 (Since Linux 1.3.3.)
+.TP
+.B VT_GETCONSIZECSRPOS
+Get console size and cursor position.
+.I argp
+points to a
+.IP
+.in +4n
+.EX
+struct vt_consizecsrpos {
+    __u16 con_rows;  /* number of console rows */
+    __u16 con_cols;  /* number of console columns */
+    __u16 csr_row;   /* current cursor's row */
+    __u16 csr_col;   /* current cursor's column */
+};
+.EE
+.in
+.IP
+(Since Linux 6.16.)
 .SH RETURN VALUE
 On success, 0 is returned (except where indicated).
 On failure, \-1 is returned, and
diff --git a/man/man2const/VT_GETCONSIZECSRPOS.2const b/man/man2const/VT_GETCONSIZECSRPOS.2const
new file mode 100644
index 000000000..5c2119543
--- /dev/null
+++ b/man/man2const/VT_GETCONSIZECSRPOS.2const
@@ -0,0 +1 @@
+.so man2/ioctl_vt.2
-- 
2.49.0


