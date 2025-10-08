Return-Path: <linux-man+bounces-4076-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD762BC323F
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 04:00:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8FC274E3D72
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 02:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C342D1F03D8;
	Wed,  8 Oct 2025 02:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zt5akbgT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73534BA44
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 02:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759888845; cv=none; b=neKNqTfgAaV2wRp6FjVc62RtYS7q9GBBZE9N+WE4+iggj88WjToV1ArvxzVjSPj3V8UzIJb4vQ5HXe9NvlUf7y8XZDEMgEPac5l2MkP4umsECgfq09feeELW6m4FnD3w0XVuNzoYu/1ameDgt+z6/G2rJdt5UHmUxXOlnn6Cb/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759888845; c=relaxed/simple;
	bh=2PsNaDuMhBMScSKwvMHBZPA2JJPtFDdafW49WxkZs5I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bkpu1zmf2vBdwjW5HUu6MDVD6ZcbI/jL+0X9k4JoqHQvJKvUqaT3nuApxYrL0mUT/L37rRe+NIphbN2M77iG2mk8gAW6j5CdGveIFmMBjUXjK4zJ6NyWOiCmpU+kDsceqxbWS2aYzHdipFDwhkQrraUUDFS4Z31gmxb0gKKHCjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zt5akbgT; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-87db3aa478fso294780185a.2
        for <linux-man@vger.kernel.org>; Tue, 07 Oct 2025 19:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759888843; x=1760493643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kNg0bipiGlmcv/0UPPh7uyEBGNBOqxqy5NZC0Q8AZFA=;
        b=Zt5akbgT3f3wGrDFq7qA4Wx4h+MzyIlK4fiO+MRYLn8W8fNJm+JKE2ktnyd6b0CuW7
         IfgkTf117QYNNq3vTabhTguQZDHDAG00bUYLUfohAhpbsc0CTXLZ/pVHs1MrGcA7CnL/
         jcfqnvQz411G5+z2P5dd/bQ2hv0MdmtaRUYzfHLD589f1xX/L+51i3s0hSIKiM89SveB
         Z6mHmt/8O5vYBKEkgQKJgkTciu+jXGRRxBB9tylifPoVLx46wuF1MR3K8Us+6VpudbHq
         HKCx7iKe4uqGs3vFD37K6WORmF8R/t54r1COoJ3WvNVXALPnwecuKEZlNslSMcGeJXWA
         shdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759888843; x=1760493643;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kNg0bipiGlmcv/0UPPh7uyEBGNBOqxqy5NZC0Q8AZFA=;
        b=MpHjmJr9mjSxon7BNUmGUD2TbvMQUUSfw2PtlYMrmxxxPk2J0NyKsrpNShkAFMpbfP
         CyRdUBzZR9yIt7Kaxf9kAwud+YKNtyM+95hmIqVIqhKXtyTzxZutcXaaHN5I7dvVqM+q
         vwRGgBFV+kLloKzyFhyBXJulcoGfWoKN6vnwTsS12olyFxN4J0md4fb8UFE9+pTawLZz
         x9nO/uTtXUQzs9bLzEUUKDn3KfeKweifvQdk3wOuXeXLehp8b40mPDo9doJt4B7lWK5I
         5OZ5pJa3LlYskeoZMC8EUL9UD6PJtJXSweHyJkrP9B2vbWI64lbWydge0c2dW6I45NuN
         o+Rg==
X-Forwarded-Encrypted: i=1; AJvYcCVR04V9/6KjaeIgumL3OultcSNiuoUNhBcC+8zUpI9AgeOy6AqOB/TyokuzxDClkiyDBmUeOuHrJYM=@vger.kernel.org
X-Gm-Message-State: AOJu0YxlROfgeZmRS6of4PhOZYkWP9aAG8BVxa+csFdEsMSuc1rEWjo/
	nbSlfH+c63Qkdp9P7Dqgk/MKtbWzya+tjIvlEQPHkvmUYiLi36pmzpz+
X-Gm-Gg: ASbGnctj/Lc4kPvf8UJn+13Cl2OtnlmWz9xmbJCh5ai1Ts5eV4NetfT6MaJsEQ0NRoQ
	+tKn90We94oowZmbpIjVXq1c873uaaslARxiS0d1lJNmniXJvwzIYIF/VkOQ4zc5Yh5JM9L808O
	BJU8CgIqF96IoQ/UrGj2/fRnNk8HkVXahsH/5SmxLmPTyEESVKzWb4iCVr1pzayUkTExRhU3Vmo
	i4FvPnxDWAGTqm3fPzT1w49mHJiMNqy8abefwp5QY3/FXrgAY9eGR7BMabIea+rQghIfoue+7rW
	7wECs6ggovGbQAwm4kMxddZtbQPhx0J1zPReoBLbaK/ylDE4AlydX4ab7yU7DVEihYT3pcizFRb
	kHI8tFKdPJ95rF7EaNFlXBLGLSbZ/Bv60VJBxqMbS3Dp4MurCaPQo3zeXyFSTUW/5K04uRCaV7x
	oFQH1XsE8VLmGD920muQ==
X-Google-Smtp-Source: AGHT+IE4gbvX2chXQTabjvNbivKB9fhNqsaTuVpvWcsiLjg0oBw+wzbUnxp1LdREzEIhBV6VZk0/zg==
X-Received: by 2002:a05:620a:450e:b0:85f:89:e0f7 with SMTP id af79cd13be357-883502b698bmr286292185a.16.1759888842738;
        Tue, 07 Oct 2025 19:00:42 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-98-203-182-20.hsd1.wa.comcast.net. [98.203.182.20])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129f41sm1621920085a.3.2025.10.07.19.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 19:00:42 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH v2 0/3] man2: document Linux v6.9 pidfd-related changes
Date: Tue,  7 Oct 2025 19:00:27 -0700
Message-ID: <20251008020031.1215030-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux 6.9 added support for PID file descriptors related to threads
(rather than processes). This adds the appropriate bits and pieces,
mostly taken from the https://github.com/brauner/man-pages-md project,
but also from the kernel commit messages.

For v1 of this patchset, see https://lore.kernel.org/linux-man/20240709021335.158849-1-kolyshkin@gmail.com/

[v2: added EPOLLHUP to pidfd_open.2, addressed Oleg's comments on v1]

Kir Kolyshkin (3):
  clone.2: document CLONE_PIDFD | CLONE_THREAD
  pidfd_open.2: add PIDFD_THREAD and poll nuances
  pidfd_send_signal.2: describe flags

 man/man2/clone.2             | 22 +++++++--------
 man/man2/pidfd_open.2        | 35 ++++++++++++++++++++----
 man/man2/pidfd_send_signal.2 | 53 ++++++++++++++++++++++++++++++++++--
 3 files changed, 89 insertions(+), 21 deletions(-)

-- 
2.51.0


