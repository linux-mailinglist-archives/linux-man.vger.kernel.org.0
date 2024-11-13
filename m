Return-Path: <linux-man+bounces-1902-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 052CE9C67AF
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 04:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDBBD285989
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 03:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78285166310;
	Wed, 13 Nov 2024 03:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="J4BiXvk3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67691662E7
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 03:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731467821; cv=none; b=nRGrzCM1wf4gGJY2FiooHM6RKcsA+eIgjGC+BQNlRFhdF3C6AwOpxvGPGhXyepANWzY957e1FuJdIgEVWkY/oPjOmmzF3a+Emyvi8+QBB28tAv2nm2ZsBiTDQc0Koe/TAonpQ5CT+0z6O1915zljmShXkgd6uXPIGfmwQPsRwyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731467821; c=relaxed/simple;
	bh=JBElt/04SVxtzwVJJc8xDVKtRffpaMEP3gXY4w7DeVQ=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=cu0Qm8ssGTpAKoO8Z5v/QA96qAhfGdhaGe41U4s69ABHen6SO9h1guKK7ud0YcrUvHPF3Lqi7UURN/ElE4IXynXM1wVrquwOSm8Yeq7MJpYYDMBMLkWxavChWY3o6Rdo4hiSaBpX4zBhuq31HN3Vmvg69yuWcOjaToyJyMzW+H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--yuanchu.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=J4BiXvk3; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--yuanchu.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e3313b47a95so12308493276.3
        for <linux-man@vger.kernel.org>; Tue, 12 Nov 2024 19:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1731467818; x=1732072618; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Hm2827LF3R8c3fZLBRValKtMG1B3t3KOZHCq9GuWQMU=;
        b=J4BiXvk3Hm5EOsuvV8lm5mhKuseXcD/aKQ5fT++HSl+HzsWUQ1LBuQN19G8qAyk74/
         H4LxT8DqbPZIAvD2pVL8PtGE4OWaUQkHYV9hLdd2QKA3ZmQwgJ3N7l4rQIMvQhiLeEoW
         Fu0xzjSXWzgEEX64QL23CY6vfEBNEL6euV4iPztBlhcqWElnfm23zpixdrgy9QRzCpqj
         5nc2oJWHmpbiK8WXhcadJIEDOTpwzgC6GVkGQFwO/QFIsIYshx3ctJEZXZp8DHsz9rdC
         HSWVRtotEYIOPdlWHANdvoyruATTykcoK3sjvQ1Ogi4KCpt0qqFtVdJye8YFhZ7y4X0U
         g5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731467818; x=1732072618;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hm2827LF3R8c3fZLBRValKtMG1B3t3KOZHCq9GuWQMU=;
        b=NsZZ05STsJT29HLlwWeSox8ANH27RDolaiEfoG36KEWL3CYNGBGhlbW0ofFrUtusWE
         7rPYO6fDfwSR+IUCco/qh5rclZm3X3bTHUick4wE1lv1XQ+stxCgYRffnxqCiKO7dSlo
         Kp6wkudF3zhaWitfVPk9nMNGz4BKv6Fzfrhelw9ZhfIVAUefy5kTlxokWZpDwjXzzU6z
         9nIxZda+eHmZJv/Dknm2QrWaixQS3b878TZc73u0QapSpdAJZ/HcyCuFMGd8f0i7Bhc0
         x+WiHeojypAoKCzYKwrARSKHdakqt3vHilwE4pM2JpBY3PDz2HG6/AZ05hKoA/qHpeHb
         v2Rg==
X-Forwarded-Encrypted: i=1; AJvYcCVDMIBw+Z4NUPTGhM5ztAVTLu0ZtKiq6ob+yUSnx/+MJszcasRB32pUe7+bBR9KlKGPru7yhWky/rk=@vger.kernel.org
X-Gm-Message-State: AOJu0YxQdB2i4hXiFrBvrm/ppmhY+aF/hDE+lGdjISw8kJkV5s7N6P4E
	kCVrBEqGQ6flVKEbQHrACfFthyHnfiIFpoMj7VjZWG5A9aj0KPtndrAyTt4CO9mjPV1TSNQacS2
	7YIXPeQ==
X-Google-Smtp-Source: AGHT+IHS0NtvDUqh3f2MUpSfIcGXiy1RfQgpYIe1wTmZ64GiUnrbjJ/X9HHymyrtufnpz9XJ1d7bNdBgV3/7
X-Received: from yuanchu.svl.corp.google.com ([2620:15c:2c5:11:bb33:513:502c:f791])
 (user=yuanchu job=sendgmr) by 2002:a25:ce0b:0:b0:e29:b6d7:20e2 with SMTP id
 3f1490d57ef6-e337f786589mr30840276.0.1731467818630; Tue, 12 Nov 2024 19:16:58
 -0800 (PST)
Date: Tue, 12 Nov 2024 19:16:54 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0
Message-ID: <20241113031654.3964740-1-yuanchu@google.com>
Subject: [PATCH v4] posix_fadvise.2: NOREUSE now supported.
From: Yuanchu Xie <yuanchu@google.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Yu Zhao <yuzhao@google.com>, 
	linux-man@vger.kernel.org, Yuanchu Xie <yuanchu@google.com>, 
	"T.J. Alumbaugh" <talumbau@google.com>
Content-Type: text/plain; charset="UTF-8"

POSIX_FADV_NOREUSE is now supported in Linux[1].
Updates text regarding former no op behavior. Indicates the readahead
policy and treatment of file pages read with this flag.

[1]: https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@google.com/

Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
Signed-off-by: Yuanchu Xie <yuanchu@google.com>
---
Changelog
v3 -> v4
- Use semantic newlines
- Format with macros like .B instead of inline \f

v3: https://lore.kernel.org/linux-man/20230320222057.1976956-1-talumbau@google.com/

 man/man2/posix_fadvise.2 | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
index ed40b0c0d..11452699e 100644
--- a/man/man2/posix_fadvise.2
+++ b/man/man2/posix_fadvise.2
@@ -62,9 +62,15 @@ The specified data will be accessed in random order.
 .B POSIX_FADV_NOREUSE
 The specified data will be accessed only once.
 .IP
-Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
-same semantics as \fBPOSIX_FADV_WILLNEED\fP.
-This was probably a bug; since Linux 2.6.18, this flag is a no-op.
+Before Linux 2.6.18,
+.B POSIX_FADV_NOREUSE
+had the same semantics as
+.B POSIX_FADV_WILLNEED.
+This was probably a bug; from Linux 2.6.18 until Linux 6.2 this flag was a no-op.
+From Linux 6.3 and beyond,
+.B POSIX_FADV_NOREUSE
+signals that the LRU algorithm can ignore access to mapped page cache marked by this flag.
+This is useful, for example, while streaming large files.
 .TP
 .B POSIX_FADV_WILLNEED
 The specified data will be accessed in the near future.
@@ -127,9 +133,15 @@ Linux returned
 .B EINVAL
 in this case.)
 .SH VERSIONS
-Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
-default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
-this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
+Under Linux,
+.B POSIX_FADV_NORMAL
+sets the readahead window to the default size for the backing device;
+.B POSIX_FADV_SEQUENTIAL
+doubles this size, and
+.B POSIX_FADV_RANDOM
+disables file readahead entirely.
+.B POSIX_FADV_NOREUSE
+does not modify the readahead window size.
 These changes affect the entire file, not just the specified region
 (but other open file handles to the same file are unaffected).
 .SS C library/kernel differences
-- 
2.46.0


