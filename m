Return-Path: <linux-man+bounces-2129-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA7A9E6816
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 08:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96E44163366
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 07:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54BC41DE8B6;
	Fri,  6 Dec 2024 07:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="htF7/7Td"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE711DE3C9
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 07:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733470719; cv=none; b=RQbuEIoLcZ85EeLNXIb9uQDIDOJl/yAaZrF7Ikyy1fZ6/41rKHDUAmuD2iumyi/gwaBWyVMSC3isXjIRMqUhOKZv9cors6FT99cqu1da34XiO+pTx7xbGJHWjuudrQjvyCAGP/GSmPUABw7p7SgMES0ONpt0vgROtM2o8/Ny38I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733470719; c=relaxed/simple;
	bh=QNykjUmeytuOx0G75pMP0LzTrKz7WPi3BleJRHunwwY=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=oecbR7RN5820x5FPgsIreXnzUVJk3thm8WoSO3Ao4ALjTASt6lFWqzzYMyXhcdnkW78NCAlcvzVCEqaBfDimjmb5x6+sbXpnp3bPdimhWw78nmevT+qYRylv5AMyr1qOVp2EUF+hCJdv4+tLViD0BVTLo2DhAuck6n7MVkoxJKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=htF7/7Td; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--irogers.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e3977f08b5aso3265039276.1
        for <linux-man@vger.kernel.org>; Thu, 05 Dec 2024 23:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733470716; x=1734075516; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=08qPRW9xswRt2OtHroBUTIZrJ7mnuAOFiexcUCiCKeI=;
        b=htF7/7TdmxoF7kK47yxDS3zyco6p2Ap2D3GvIJgHlwSJUXfG2ImQW0QmebYltrtN1G
         Eir3u+XkMsmuTAs2GfQRlMNBKXrt1kbQkL3GqGr1D3F75tBLJKc5p17nwOOmkR9pSQri
         DggKY936cwBSEvWN+psZF2w7n7TEwB5NCMVrUm/IER6RgYIhN6UqD/FbcxOVHCr2jtYz
         44MMzPG6NsnwaIYnT059P0gODf0DY8KDU95egd9GHXq/eBWKVjWGr4IDLRX8ctG9xHCU
         2fPKL2sY3s49CpjoTRPvPsgcf2pYgnVoVHBEWiPKFfeYbGjgLnTgKgX83Qx6DKIH1V4Y
         zXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733470716; x=1734075516;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=08qPRW9xswRt2OtHroBUTIZrJ7mnuAOFiexcUCiCKeI=;
        b=DV+VK8W4FL88FBA5vFD0p9Z4wCkPSQhSVIEbSalQX09CE5HDLk6/x2lWQBYVExqe/5
         Kn2hythSecQCvrQMpt8ApstiSGoEY3fM6lSoRv9aSVkoQWfE1tS6dKNs0JQqOKojMUBO
         VTQudh4tciqJ+sin0G64tucPrvuvHQs/WYWg+euseyeKKrn09w+2A1djvioYKWOkGrlU
         HeWsVtxDCdlLgXz35VGTTaYOroZ4Yx7m5oe1ScGfndEZeBb8/HhM+NVMMdJoXI76iKX+
         R/n/Pvko8T9FBkDSvjL8Pia643wwyvnj2d+6JL0kTWRxR0LqIwGQSXGJxz11eCt5Kd7W
         P4bQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/n4PfSzb3RRqegR9t/7q0NpWqixHTB+cwMB3guX77ePpotz7/1zgYwJPsyqzH7+1qCGCgulLHQaY=@vger.kernel.org
X-Gm-Message-State: AOJu0YzrYyHoJJJXbz0C99a5rp67JF2mvfGS8HmJ89Wrc2yIqXh8UfQu
	LDxsRCiCMUoakHc5EGlyCE4BQ7Vidqy6Ml+APY5IAER+C+TA7QRatOLAES7FNT0zieKvqSGfpB2
	dNFifrQ==
X-Google-Smtp-Source: AGHT+IEDRTiD4aFoP45cgyoosz12ZeHtxiOVt8IhT1Y6gGd2sajlkNmKprLDP9GTdgZBV9Sm7Qm7+AXk6YX4
X-Received: from irogers.svl.corp.google.com ([2620:15c:2c5:11:bff4:a354:8911:79b3])
 (user=irogers job=sendgmr) by 2002:a25:fc1c:0:b0:e33:111b:c6a4 with SMTP id
 3f1490d57ef6-e3a0b073bbdmr902276.1.1733470716612; Thu, 05 Dec 2024 23:38:36
 -0800 (PST)
Date: Thu,  5 Dec 2024 23:38:27 -0800
In-Reply-To: <20241206073828.1119464-1-irogers@google.com>
Message-Id: <20241206073828.1119464-3-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241206073828.1119464-1-irogers@google.com>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Subject: [PATCH v5 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
From: Ian Rogers <irogers@google.com>
To: Alejandro Colomar <alx@kernel.org>, "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-man@vger.kernel.org, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"

Make the sections about eventfd, epoll, signalfd, inotify, fanotify,
timerfd better separated with a clearer subsection header.
---
 man/man5/proc_pid_fdinfo.5 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
index 2797ae216..c4914f1f3 100644
--- a/man/man5/proc_pid_fdinfo.5
+++ b/man/man5/proc_pid_fdinfo.5
@@ -57,6 +57,7 @@ is the ID of the mount containing this file.
 See the description of
 .IR /proc/ pid /mountinfo .
 .RE
+.SS eventfd
 .P
 For eventfd file descriptors (see
 .BR eventfd (2)),
@@ -75,6 +76,7 @@ eventfd\-count:               40
 .P
 .I eventfd\-count
 is the current value of the eventfd counter, in hexadecimal.
+.SS epoll
 .P
 For epoll file descriptors (see
 .BR epoll (7)),
@@ -108,6 +110,7 @@ descriptor.
 The
 .I data
 field is the data value associated with this file descriptor.
+.SS signalfd
 .P
 For signalfd file descriptors (see
 .BR signalfd (2)),
@@ -133,6 +136,7 @@ and
 .BR SIGQUIT ;
 see
 .BR signal (7).)
+.SS inotify
 .P
 For inotify file descriptors (see
 .BR inotify (7)),
@@ -173,6 +177,7 @@ file is exposed as a file handle, via three hexadecimal fields:
 .IR fhandle\-type ,
 and
 .IR f_handle .
+.SS fanotify
 .P
 For fanotify file descriptors (see
 .BR fanotify (7)),
@@ -229,6 +234,7 @@ The mask of events that are ignored for this mark
 .P
 For details on these fields, see
 .BR fanotify_mark (2).
+.SS timerfd
 .P
 For timerfd file descriptors (see
 .BR timerfd (2)),
-- 
2.47.0.338.g60cca15819-goog


