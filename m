Return-Path: <linux-man+bounces-1270-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBE8918661
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 17:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 186391C21B34
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 15:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C15E18E77C;
	Wed, 26 Jun 2024 15:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="ntiKi4gI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A6C18E745
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 15:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719417412; cv=none; b=e7q8MOCukbsDVWNzQRXakkyV4GDyiVDrFQfSnGesuQd30dJDAk2ZMbw3HmQbMookYgAdX6eMWP1nYNWvp179hS1LRJFPlz3uKIKgm8rSODenzgDi8Rs+taHVcBLtWScTn3V5iSkrB4rF0tyH5FeZyExsk4BURUn76gkCDKeCysM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719417412; c=relaxed/simple;
	bh=dRmuUwdntKGZRs2g66Sht/s9k6ht1QwVqOYwO4aa7Nw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=CCrfJqwTt70n0wsLQffWXArTLLoxyCdLu3h/OrckpGHnMrUtL1zBG2aTpIxmDn6LWHBK9GCr0w2QnWe4543BGcCv5lJJOodwwgu2QhTk9TDTerxrYSjlvE61Rih/lb/tZA8Z0ReCmJIYvp5EbDtT0gb07J+IBe7Qj1hSlghU10k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=ntiKi4gI; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4463b71d5b0so2199021cf.1
        for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 08:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719417408; x=1720022208; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=LqtrRhJKCCtcDVtGOthUbHs3QGYwiUAnQ6hIsVz4c2I=;
        b=ntiKi4gIgKpeLC2CWmgBZWFdO6eok1Nk0TyKF4m0WRy9zsWZqf5djV0pvX8Yh9hzP1
         1nrnob45+Ew0Xe7AP9o19ek4aJjDITn212jqjd+mWsygYP0ur0Qz27nqQphsfD9JegM1
         /XNZGOXxZv6Nvd5jvVkqPKKMaYDJT0P1CY0zvfzUarKW7xe8382UE0n5Y9UhW+KeM8ja
         Ujmqu6iAVcW/YYLF8F5gvUcZb3JC7thAU3CwqaAb7aLlNmTZg3ijV8U6G947JLsfFc0Q
         pawp2hP4DziLrM/Y7wFCgVXz8Eh9VVurq3qyQKOqHjFDJ6Bj4dgf+F4KfJ3jED/Eavlb
         I2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719417408; x=1720022208;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LqtrRhJKCCtcDVtGOthUbHs3QGYwiUAnQ6hIsVz4c2I=;
        b=kDUdIlV8uhv7xwtl91r7YSeDNGMmJ8SekQoLqpfM+snHVTjoXNYDdoNrsNHXMaYQE/
         kSgYRZk3Db9mAs7lf+Uw9Zt9FGUEiljs0DcP5Ts+4iTLgsf3bFZr5trrQkeGEZ8lFcy+
         +ZFRP6Tfu+meVn/z18qdG8stJathojq6buJTSDfvVIsCE7EAUxzu75ORhJOcCHK93Dfe
         SDPo3wei5kylT4hKMnvhvPKyWgSdzpQcxF/+EAeMgNHJiqid+g0KiY8xt5pOj5pTyt4U
         WctdILNarj1NWn2zIS6U1NyqCa0pEYtIlo4OWbspN0Hob4lzkjTdPzdbFO7g4afpO3gm
         S7LQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcBmuWmr/1QGlAoijm4YVtnl4bRHSZr8Oj3FLA31xiZc5sKxaRW0+iA6VJn4B7J4Dwkoq5EeFMvMUSCMtG0dV8FdyaTC1Z5BiF
X-Gm-Message-State: AOJu0YyXFMErcBN6KCUTyrHcfvpLW5By/+YyCZHHi7E7h163iMIRJyM+
	0pvj+8kBX95XjqAspVPWx1jDlIWy16TT/mjwc5QAApyP8b0eIn/ZZuJBS3ofetQ=
X-Google-Smtp-Source: AGHT+IEfzjTYlNIT4Oapcw0QXUvghcCOsOeLPr6suGKAWcbaL35dtyTTzr9HxyE7BQFzAlLV+Ki0XA==
X-Received: by 2002:a05:622a:607:b0:444:f9e0:9d90 with SMTP id d75a77b69052e-444f9e09fe5mr68138641cf.10.1719417408030;
        Wed, 26 Jun 2024 08:56:48 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4463871ec4asm3657001cf.23.2024.06.26.08.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 08:56:47 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH v2 0/2] man-pages: add documentation for statmount/listmount
Date: Wed, 26 Jun 2024 11:56:06 -0400
Message-ID: <cover.1719417184.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

V1: https://lore.kernel.org/linux-fsdevel/cover.1719341580.git.josef@toxicpanda.com/

v1->v2:
- Dropped the statx patch as Alejandro already took it (thanks!)
- Reworked everything to use semantic newlines
- Addressed all of the comments on the statmount.2 man page

I'm still unable to run anything other than make check, and if I do `make -t
lint-c-checkpatch` and then run make check lint build it fails almost
immediately on other unrelated things, so I think I'm too dumb to know how to
check these patches before I send them.  However I did my best to follow all of
the suggestions.  Thanks,

Josef

Josef Bacik (2):
  statmount.2: New page describing the statmount syscall
  listmount.2: New page describing the listmount syscall

 man/man2/listmount.2 | 114 +++++++++++++++++
 man/man2/statmount.2 | 289 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 403 insertions(+)
 create mode 100644 man/man2/listmount.2
 create mode 100644 man/man2/statmount.2

-- 
2.43.0


