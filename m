Return-Path: <linux-man+bounces-1375-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C542892AE12
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 04:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70E461F231A5
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 02:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3255A433BE;
	Tue,  9 Jul 2024 02:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e3BD5XuE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DBA40861
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 02:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720491229; cv=none; b=get6ksyJOwp1QPmSI7urcQMoXR6nb+OmTllK0n50mXGisnJtDi9lW8q+rf3J20huIr6hV28tlNOEyX6Ic4lDyFYMzdBAO2I3wXL5kty45Kxo6d9L0P00r+dWf2CdTGIptdxnBUGZVtLL4NC44uHj5NP0izNCWckHaNAoWppe7jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720491229; c=relaxed/simple;
	bh=urJAE2/ugHsWO+mkljtbnWJWYz+UIerKyLR3cv/1PAU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QC7jAZP9Eo2Iu4XiltkJ3ZFgES2IixpywGl11B4zPKOtAdkiDnYA9YVT9MP3GNvWduf7rHcrUmFIA0TaOCuM0j+ceh5u4EC5RD+wFwsVovoO8Nj6vPpf2q0fa1ed4lC1wl7nJWl4iD9SDsf2AKsIoFxsQJ6+CrrrQ5Yz8PviI60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e3BD5XuE; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-79ef810bd4fso229308785a.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jul 2024 19:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720491226; x=1721096026; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1jNrN4DiRU7n0PGchvSLJdgG/2wDZIoOtjWeVBBVRRQ=;
        b=e3BD5XuEU7p2PNVhyFQhalDNXUF03UUPT0p585WAX4CBTuEHEqTIHGlpDevzPJbibl
         sWl9eO0pZ7RQWIcRWFtiV1Wd77dXCeSTEDRdwdQMVP7UWefEuxW1Elo3n9GCxdTtVkqv
         yp72EVkkOKycb1FXsh1PILbKtQb2lf4MzHM7Ezt3wnVGLrd5rmBibDe8yUx5o+Vh1bmG
         V7qoRufNdar4fiCp28jy8zw7syS7Fy1izOGA825aKc3XaFlUm08HT9qllfOT9xGc9LTc
         k+GV3JUFkq34OiVDNzYUM+0GLQ38ZZmXA6v+XRY7vXcAHGUSCts7K8YWVubmCClq7kMN
         lr5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720491226; x=1721096026;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jNrN4DiRU7n0PGchvSLJdgG/2wDZIoOtjWeVBBVRRQ=;
        b=QlaJgo1yc5rP+E/8pRzQyAIu8Toglv2Y+TiRwJZgjF8NnwQCqrEeyr3tgl2iV+b5Xe
         Vrt1XSueFwKUNeZgzhlgfrmDjrRjzFhY5knpG9oonnRQeduHRABnb8ZzytsPjFNOlllZ
         /L1TGo9DVErrfe/Qgouzz++jcSSlogmTEw6VnEa3QDsz5EVNDNTO4o//9xNof49vk1oU
         lz2k6HOcr84FnbHhp31dKTXKQl4aDmvdSbfnyKoc+LJNOE4X4JmBE9OEmxcKyzj6c31d
         t/KmXlMQix/i9gER7bGn7zFvo7a2+xpdSbdJXUf1yEJSncDlJty1negsAaipGYyBOjJ7
         OFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8nt5Q3Z/u6gX1By1C/k7DZlP5BpSqt0PV2uOe7CyXzbQNS2DVipsUgOs+IKScYoA3d1vkTEd/oMWmm6Dof+W9yYzlCAx9TISI
X-Gm-Message-State: AOJu0YyG8Fc2Xs/f72WTMR+eEro/tm31Wbc3IHCYqsepdXUrKQtBfodk
	Ptj3tdtqI4FWbq1T6n2NanhHFlKF+esJYDxUqH7hMGbeuOz00hIG
X-Google-Smtp-Source: AGHT+IGT/lmeW9Ir85o0QiKqD8V6+DJs1V5leaFLLoYnOT4tyDVEUd9jWlDgBtJ3F35xiH74G6NiXQ==
X-Received: by 2002:a05:620a:14a7:b0:79f:666:4fed with SMTP id af79cd13be357-79f19bf83famr120316385a.70.1720491226317;
        Mon, 08 Jul 2024 19:13:46 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f190a18a7sm48826185a.109.2024.07.08.19.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 19:13:45 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH 1/3] clone.2: document CLONE_PIDFD | CLONE_THREAD
Date: Mon,  8 Jul 2024 19:13:32 -0700
Message-ID: <20240709021335.158849-2-kolyshkin@gmail.com>
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

Available since Linux 6.9 [1]. Documented in [2] (added by [3]).

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=83b290c9e3b5d95891f
[2]: https://github.com/brauner/man-pages-md/blob/main/clone.md
[3]: https://github.com/brauner/man-pages-md/pull/4

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/clone.2 | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 90ab5cadf..e3f6364f6 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -895,10 +895,16 @@ .SS The flags mask
 .BR clone ().
 .RE
 .IP
-It is currently not possible to use this flag together with
-.B CLONE_THREAD.
-This means that the process identified by the PID file descriptor
-will always be a thread group leader.
+If
+.B CLONE_PIDFD
+is specified together with
+.BR CLONE_THREAD ,
+the obtained PID file descriptor refers to a specific thread,
+as opposed to a thread-group leader if
+.B CLONE_THREAD
+is not specified.
+This feature is available since Linux 6.9.
+.\" commit 83b290c9e3b5d95891f43a4aeadf6071cbff25d3
 .IP
 If the obsolete
 .B CLONE_DETACHED
@@ -1416,14 +1422,6 @@ .SH ERRORS
 .I flags
 mask.
 .TP
-.B EINVAL
-.B CLONE_PIDFD
-was specified together with
-.B CLONE_THREAD
-in the
-.I flags
-mask.
-.TP
 .BR "EINVAL " "("  clone "() only)"
 .B CLONE_PIDFD
 was specified together with
-- 
2.45.2


