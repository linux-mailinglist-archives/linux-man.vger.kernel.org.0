Return-Path: <linux-man+bounces-1377-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAFD92AE15
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 04:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD0E01C2201A
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 02:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C40C43AAB;
	Tue,  9 Jul 2024 02:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gjSXfdCA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76EA40861
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 02:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720491231; cv=none; b=l7V+2s/CnI5BcsvFgl56EAIr3gjhgskTbRPGDXxGA48kgDFZlCw9heQvLweKA9h4dxdlD19s7yxn0CXaLlUZgXSYfMqNCMliAq2e4G+6TESuY/62cpa4z858LEzSFBV6a0y53jxWLu324jmna1Xl9af+Hhup8hNhtuROdeOrFQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720491231; c=relaxed/simple;
	bh=5w7qyoaVV1wJROwkD71rdqvx+kA0F7+vJvcRlUxWrfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q9RY+LEPpur1lDROvXshU/fNTXRe1+b9jpScy4jP2vFmfoORk1ZXbA6fVUjqDVWLw4rzS3eL5n6Pd97LjMMaDPvA2hmmctWbp0kH6JtW2qFPtbGX4y3EYzoBhBoy1wuPNNP/BN9kWoxiGg91JZRlR5bB4pDA2p+YbBcB3IZoYa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gjSXfdCA; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-79f178e6225so58455085a.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jul 2024 19:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720491229; x=1721096029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cvkTCgyA+T3kGGiAlkQWXwJEs2s2emkGbiWkpIatj0=;
        b=gjSXfdCA/aaGQt/CKdZKTJfYSPpp/oj392mnqXLq/PGzSteaj4+IVNd3JNvMXNOJVp
         sRiliyVr9l3uMVEZKuDBU5kN32OlPODa9tGTJaE2mymT5ka2v5pjaofPYXkXrnJTkWSG
         nP18FV27Eom2LtqtPoPdEkQkt9JFX1j4YuFzo18jkEpzvfSVOtcIUqTZO63FICMSET/N
         Gd9ZpHmNs78/wln5u5/gb8JYU1CW+GKn1CbUdCfNRBQWPEsOlmSjFxYN63euUisc6jj0
         nrJ39ejLNqkJRYMS0eAckUX/Rp7ylpsb0snhjhOQMDBifssYSSCl+G1Ql2r6f1HsuXmN
         BGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720491229; x=1721096029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cvkTCgyA+T3kGGiAlkQWXwJEs2s2emkGbiWkpIatj0=;
        b=g+5LrAChqKGofoUtcpAq9BzxhwdTVXVqkGLnkUpn7Ca70kSWFhfV4eaNypmDKiH+CZ
         lesQLaezEil3NCdImxXgjpIQXuMp6fyAQVObpTA5+UkvNl8Knn8yT8DaVXE4ByWPH2eH
         G2ELdQEb7DsZbGrRFuIwaFb+cVSxNJ1Cha0gLcmElI8WC4+m5fgQUDwmWCl3WkU95neL
         bj9YR2V9dVzeF1IYGSTYCt1a9sfeGIp/4t+OHh5XT4P5CuSicW5FTtSXfnvqZ6SQFBMl
         8Omx+cnMAKA8uxnbSUILUt4QIyiUrm6TTwHpYJ4tgJwY80etiKKdhKu2FsmeY+UVNUvL
         Ty5g==
X-Forwarded-Encrypted: i=1; AJvYcCUVfk6/CBqLis1PYmK5PBYHQIcLM5GjbhfO33Qtk0e8J6IxPOvA8BNWne58lI1f7Xwnve5sISQJSV9yxINYL0FGZ6fsF4wCyzCd
X-Gm-Message-State: AOJu0YztcIfo2g78xFjjosuCA+RfSkTbbk2iRax0Paa+QTCdK6d5T9JV
	BiRNbFo7kRaJZxlhVdY2mhEviecB2x3jXgdClKwLkesUPCrGw5Jm
X-Google-Smtp-Source: AGHT+IGC/G1gktygnnPCZI24bDVxg/Jr87/PXkGyJlW0wSkt4v5M5VnAGEpV4L5lNrzwUjJWcHzzyg==
X-Received: by 2002:a05:620a:cf7:b0:79d:7014:920e with SMTP id af79cd13be357-79f199f5fb1mr128064885a.7.1720491228708;
        Mon, 08 Jul 2024 19:13:48 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f190a18a7sm48826185a.109.2024.07.08.19.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 19:13:48 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH 3/3] pidfd_send_signal.2: describe flags
Date: Mon,  8 Jul 2024 19:13:34 -0700
Message-ID: <20240709021335.158849-4-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240709021335.158849-1-kolyshkin@gmail.com>
References: <20240709021335.158849-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Those flags were added in Linux 6.9 (see [1]), and are documented in
[2].

The text added is a modified version of [3], removing some repetition
and adapting from markdown to mandoc.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e1fb1dc08e73
[2]: https://github.com/brauner/man-pages-md/blob/main/pidfd_send_signal.md
[3]: https://github.com/brauner/man-pages-md/pull/2

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/pidfd_send_signal.2 | 53 ++++++++++++++++++++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/man/man2/pidfd_send_signal.2 b/man/man2/pidfd_send_signal.2
index c7aecbf96..11d81dbe2 100644
--- a/man/man2/pidfd_send_signal.2
+++ b/man/man2/pidfd_send_signal.2
@@ -77,8 +77,55 @@ .SH DESCRIPTION
 .P
 The
 .I flags
-argument is reserved for future use;
-currently, this argument must be specified as 0.
+argument allows to modify the scope of the signal. By
+default, the scope of the signal will be inferred from the
+. I pidfd
+argument. For example, if
+.I pidfd
+refers to a specific thread, i.e., the
+.I pidfd
+was created through
+.BR pidfd_open (2)
+passing the
+.B PIDFD_THREAD
+flag
+or through
+.BR clone3 (2)
+using the
+.B CLONE_PIDFD
+flag together with the
+.B CLONE_THREAD
+flag, then passing
+.I pidfd to
+.BR pidfd_send_signal (2)
+and leaving the
+.I flags argument as
+.B 0
+will cause the signal to be sent to the specific thread referenced by the
+.I pidfd.
+.TP
+.BR PIDFD_SIGNAL_THREAD " (since Linux v6.9)"
+.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
+Ensure that the signal is sent to the specific thread referenced by
+.I pidfd.
+.TP
+.BR PIDFD_SIGNAL_THREAD_GROUP " (since Linux v6.9)"
+.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
+If
+.I pidfd
+refers to a thread-group leader, ensure that the signal is
+sent to the thread-group, even if
+.I pidfd
+was created to refer to a specific thread.
+.TP
+.BR PIDFD_SIGNAL_PROCESS_GROUP " (since Linux v6.9)"
+.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
+If
+.I pidfd
+refers to a process-group leader, ensure that the signal is
+sent to the process-group, even if
+.I pidfd
+was created to refer to a specific thread or to a thread-group leader.
 .SH RETURN VALUE
 On success,
 .BR pidfd_send_signal ()
@@ -102,7 +149,7 @@ .SH ERRORS
 .TP
 .B EINVAL
 .I flags
-is not 0.
+is not valid.
 .TP
 .B EPERM
 The calling process does not have permission to send the signal
-- 
2.45.2


