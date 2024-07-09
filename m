Return-Path: <linux-man+bounces-1412-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C124492C34B
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1E461C21F90
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 18:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C787C18003B;
	Tue,  9 Jul 2024 18:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="nPPFDcHz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240EA2AEE1
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 18:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720549908; cv=none; b=R9Y03DTEZkFsc9l0L75oNOvGEFvhuXVbBCRYPJp5Pn2YGQ3ssGMbeB8kgFgQjfo7uSnsVoLHCtM2Oaw6k5VimV20DPLVwV//4tJ5f/v+01xGlYqnwAcBn+viMRI4xZCR8IkGJv6ErRkFzrpVwPqa089aGpCLqc7Hrs40Mtrnugo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720549908; c=relaxed/simple;
	bh=HGETCldYbcNCZ1ZFAye6opWeRzpkbfEccNZQmERX9QU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=Ecfb/w46Zg/BAWYwb40nO3f8zFPxmPOjl/aDsbP9wULiPppBQFfpEil3v8h9zac2uUF2yVm0721DeoYgaQJIb6BDMv9Pv74+iLfGmh/qD+jeERr7YjfUZx4Ajyaf7s7gvqw3Y2KaPXVESnVy8fRBHxpJs2EW3DQ6rZbET5uFFkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=nPPFDcHz; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6b5ecafbf88so29227336d6.3
        for <linux-man@vger.kernel.org>; Tue, 09 Jul 2024 11:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1720549906; x=1721154706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sSlJ7ih+2Iyd6DUdnJMEGw0A84G/QfcyKdknN84svD0=;
        b=nPPFDcHzK+RL2TqF5Xnsl77jdJ5EmRvzqfjeD5EzbOnv6lVkCGPnpGvWHR/4la14kP
         Qr0t12rrw7CAwGzXkz59myYLpPE4wNGfqGP10+EMbvny+ChUCwNv/wZ3EXSN2RdY4vwU
         PPWo8xeNh8P5xqp0vPZCqSdG7y9UyoNs1VderD/gcraz8h90BKLvmZ/uEelFFT4mvpek
         +HMSliBWxV1noJcsZtTANtML/uFZ7+E8RAia7phOQMlk0f0wF04ruWTPHfJfxzC9YRBG
         dDoT7yJqVspsBrA2bmv0B0l0+MT7jiFehUW4W/VqAQLSTlJNu0N0pJ2uf3uXKW6KpZm4
         K5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720549906; x=1721154706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSlJ7ih+2Iyd6DUdnJMEGw0A84G/QfcyKdknN84svD0=;
        b=TA1XvcpbniIhwSdGfhAjTLVZCZWcGHmtd3+ar6sWgztvT83ZzJ/C7jr9oS8uknyI34
         Tf5tsRxk0IOoqdNBTbEROek4fh2yNOc3JTOiYqchxZoVMXNREAQyRl6Mj+donMWyYNI4
         Kdd+mba0YhsDxzsYKVzDEx8/9PhS/WVCk2ZSQTV3k7e3JVi4h73rAWd3UTqdMxhIa7X+
         S/T2A+JRHd65n4SLXnJnPOUS6l5Af3mUsrPiX8+Xr/6Scp/BeWQ2SqeJ+7HbU3x5tVGx
         qX6+KwRTLcdXw7yP2GJhP1ME8qLPrxhYFwt5MrfjLuB78bsBGDHVbqLQwCDmMsXQ+uOB
         no8w==
X-Forwarded-Encrypted: i=1; AJvYcCW6IxL9iz809gOQHGT2YiFHsktVvpj6LnVhpA2ieTqjiMUVxafyzqxzbwFjAqj/oqbSfKKDyKQIXLvQE9VnNQDxZwYds/t1r7mA
X-Gm-Message-State: AOJu0Yz22fvcMNZtm9iJuE15vt0p2srHI+UiOhrq+VRNc1q00kkWjuRu
	xSPFUc7QFp38Ns3ftp/LOaiS+1gJnZ3EbMPMScDmYJrkr6LCrwh7ti2q6qH6Xlg=
X-Google-Smtp-Source: AGHT+IHis6LVaz5pegztmv3IhAFqRHqD25McEQwiLb7mYAMUtId8cMUTIgXaSsfz/UzQBFHGP61W+A==
X-Received: by 2002:ad4:5d6b:0:b0:6b5:e663:4d4d with SMTP id 6a1803df08f44-6b61bce676cmr44571496d6.30.1720549905920;
        Tue, 09 Jul 2024 11:31:45 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba8ad29sm11084486d6.116.2024.07.09.11.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 11:31:45 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH v6 0/2] man-pages: add documentation for statmount/listmount
Date: Tue,  9 Jul 2024 14:31:21 -0400
Message-ID: <cover.1720549824.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

V5: https://lore.kernel.org/linux-fsdevel/cover.1720545710.git.josef@toxicpanda.com/
V4: https://lore.kernel.org/linux-fsdevel/cover.1719840964.git.josef@toxicpanda.com/
V3: https://lore.kernel.org/linux-fsdevel/cover.1719425922.git.josef@toxicpanda.com/
V2: https://lore.kernel.org/linux-fsdevel/cover.1719417184.git.josef@toxicpanda.com/
V1: https://lore.kernel.org/linux-fsdevel/cover.1719341580.git.josef@toxicpanda.com/

v5->v6:
- Reworked all of the NULL related comments.
- Addressed the other review comments.

v4->v5:
- Described bufsize.
- Moved the general description of some of the fields to under the field labels
  themselves, and generally reworked everything to be more specific.
- Addressed the various formatting/wording review comments.

v3->v4:
- Addressed review comments.

v2->v3:
- Removed a spurious \t comment in listmount.2 (took me a while to figure out
  why it was needed in statmount.2 but not listmount.2, it's because it lets you
  know that there's a TS in the manpage).
- Fixed some unbalanced " in both pages
- Removed a EE in the nf section which is apparently not needed

v1->v2:
- Dropped the statx patch as Alejandro already took it (thanks!)
- Reworked everything to use semantic newlines
- Addressed all of the comments on the statmount.2 man page

Josef

Josef Bacik (2):
  statmount.2: New page describing the statmount syscall
  listmount.2: New page describing the listmount syscall

 man/man2/listmount.2 | 112 +++++++++++++++++
 man/man2/statmount.2 | 281 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 393 insertions(+)
 create mode 100644 man/man2/listmount.2
 create mode 100644 man/man2/statmount.2

-- 
2.43.0


