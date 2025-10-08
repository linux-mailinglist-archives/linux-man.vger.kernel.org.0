Return-Path: <linux-man+bounces-4079-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF49BC3248
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 04:01:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91C5E188C315
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 02:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A7328D84F;
	Wed,  8 Oct 2025 02:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LBGy6fnl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC013261B99
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 02:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759888858; cv=none; b=TJgqxY28pCvSbE5tQ1Q5YqE1Zw5+sH1BFr/RQXd93hUdkf/O2SnaaV7dkMGvZzu8RxWXfFyZEdkbZPi3s0MJalQXCg+KxJLjTFL3dkigqddT6TByrC62yJsxcAfkXFCboFLuIhSpQ4jpap3kLgfg7ciIfVIgo8puLhKS2Aijke0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759888858; c=relaxed/simple;
	bh=oFysb9iWx4H9eRsj4tiJ1wbCTOL7T6CYz5IduhxXEis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XJPeSdHhfwfvsXLhabDlbdN/ky2HR55spLSa/dnlU5SFwiJD6SPem3xGKGX9dMQNa+iq8KvLN4BQLrrNnNt7Bh6pnAQIxPcvZ+lGTTf+8494j3RboUyIjGWPAc6ePte/a17e2f12JFl6E5peKjugXAuEUuMOOR+xpzDnEsP9WdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LBGy6fnl; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-856cbf74c4aso861664685a.2
        for <linux-man@vger.kernel.org>; Tue, 07 Oct 2025 19:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759888856; x=1760493656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k60q2ZlXUDhPltR4e6+3hg0gIBalQw0yqlXZUufQJnQ=;
        b=LBGy6fnlBAp/xquIhXEqY3Ka6Guyiu7l2cgCpaqmBk/7cS6cIBjqZi6Z2LyK3J8DvT
         9ppUxVGHXhz/v/bJCLHUsyrI4uBJcUJXcWxzhqxFkqNB7d7qyCRdD91E+eIsrqVuyN3B
         0P86O1KB7TofiNRQbZCrui+LPzOtRJynGQyZBTx2N8BTwviO8KHRJFaXRx2uGTSp633d
         GDkkwWW0Ly8mR1u5pfQbvQlb41TY8jR3t5NgMfl7Guf0Zt2GVVavKP0Of+9/GaDSQ82w
         UVy+Xp8C+u9q0BsfawmICDXlYVPYLDF5zKN1RbgoBtqxhNcRT5UD9nJSNbUNxF5mSyaL
         ZOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759888856; x=1760493656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k60q2ZlXUDhPltR4e6+3hg0gIBalQw0yqlXZUufQJnQ=;
        b=SoB8wABS+q+gjX22gboYAtxuG5nbIkpT7jtFTUyArph9yielnvLgp7lqGIgTfxTSAL
         j3zXeY5ixkd7RF9gF5BbMUwaMkNhkJgZmTxy1Dumk+XpcNWSSTFhychIEn5LiI0CSM5u
         NrgJCQwKkmRG8xxgtkw3cpwKWwHjKRBJUfTV2tEreknooXcyfLZm1te3UuQwKOlrULhR
         ubTtL4mZ4JYkBKTCvoyeRSZ2bReRW3zrtjCmP5o8dy6XnhIRIC60rwKKoFffovpApSgc
         00O2DH01WyTwyBI4ne3iF1DJlycPrMdis1azwGv0O47e2glZa0loeB4KMDn0Utu1uqbm
         nm2A==
X-Forwarded-Encrypted: i=1; AJvYcCW23zQZ1g3wsZBsl2sJ6POcbO95Khh3pY8HKlfO5wMvRdI5QFuKh10pN9NrsSbNjR5G2PB2CrKr4qk=@vger.kernel.org
X-Gm-Message-State: AOJu0YxQF28AI0V9JtZP51luHtD1suUApOpWSr/QZVEMshmQ9PKPG1TI
	zut2fQnHGrQZTJNKIKE4Lzz/HyoYWsikevRN/wVC3YBMwT8TGCB5LvCv61gUNp9Xj6M=
X-Gm-Gg: ASbGnct/8Wp4OV1GqwZiWkXA2/6XflANf/rWUFNFruFCWbrjNRj65mwSJif3GgWEwBf
	dxV7SAK0DZRTvcC1UXxBDWjypMpiSKxGk+Fozhc8EwF/6jSI2OoDL4Nv+8hbZ4jK587YAkO+RtK
	kriv1FjmOiKHUUT6Yjk07J7nir5OXiIAPwnieBZvNfCloKIJTXxPxypzUtxuRToikQnfsQLh5vx
	8YoAULuvNTLWYkBBopBafQkWA51611FrWDf0jDA48wPsJIpfsV+H5P0s13jMEMfowWU6J8NxRr4
	3wgqVUwLCdCI7SeU9d+S5fROl10j2iq2EGwHSJB5bEaxQk22VSCvGKXTtY2QsFwkEOX94sqpV5U
	upl5mvNjTDpQFRRMxgsQh/ohDkmNDf3yFkQv2iF9tQ0HhtmohMq0J5FZUhEqear6BdiNM0MZlpY
	KqWQngieloin/0/VYPv3wMwdrGAFEe
X-Google-Smtp-Source: AGHT+IFLCbHacSb/z+GTNZnC7+w7rXKpNjEJLaVPOwrQ92inplRxABRn8Nj3rgrC+UCvFc1hdaAl/Q==
X-Received: by 2002:a05:620a:44c4:b0:877:bc0f:985b with SMTP id af79cd13be357-88353b339c4mr316035985a.49.1759888855531;
        Tue, 07 Oct 2025 19:00:55 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-98-203-182-20.hsd1.wa.comcast.net. [98.203.182.20])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129f41sm1621920085a.3.2025.10.07.19.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 19:00:55 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH 3/3] pidfd_send_signal.2: describe flags
Date: Tue,  7 Oct 2025 19:00:30 -0700
Message-ID: <20251008020031.1215030-4-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251008020031.1215030-1-kolyshkin@gmail.com>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
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
index c4a9ce40e..70eaaa34f 100644
--- a/man/man2/pidfd_send_signal.2
+++ b/man/man2/pidfd_send_signal.2
@@ -78,8 +78,55 @@ .SH DESCRIPTION
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
+.BR PIDFD_SIGNAL_THREAD " (since Linux 6.9)"
+.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
+Ensure that the signal is sent to the specific thread referenced by
+.I pidfd.
+.TP
+.BR PIDFD_SIGNAL_THREAD_GROUP " (since Linux 6.9)"
+.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
+If
+.I pidfd
+refers to a thread-group leader, ensure that the signal is
+sent to the thread-group, even if
+.I pidfd
+was created to refer to a specific thread.
+.TP
+.BR PIDFD_SIGNAL_PROCESS_GROUP " (since Linux 6.9)"
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
@@ -103,7 +150,7 @@ .SH ERRORS
 .TP
 .B EINVAL
 .I flags
-is not 0.
+is not valid.
 .TP
 .B EPERM
 The calling process does not have permission to send the signal
-- 
2.51.0


