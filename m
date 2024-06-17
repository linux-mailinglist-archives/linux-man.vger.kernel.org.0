Return-Path: <linux-man+bounces-1227-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2865D90BF92
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC460283AE2
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D768219925A;
	Mon, 17 Jun 2024 23:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SsrQmtfd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4084B198843
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665856; cv=none; b=c5R9uFV6HgwcOtrna+V/KMOFyTri0UFFhsgrL2k5kg4kYGmwVHlyFUFKnJHexLAHeboW36rVDcWIbFoBN+zylGrGhThtYwU6G+iRhWXRbOIK8E9z3T0io8xKHl2VA/H7/P+jh30xP/EKVqDXiRpEJW59tB2mqUuRaxo8Sd7WSdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665856; c=relaxed/simple;
	bh=mpcmO62Q2MNRYfJHrzRk0NdExR1jL0a19FCxlRKZOWE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I05SC0E6e4vchwnju8m7hixyC2SM/I8OzYzXJs82s4SkWhj8g1z0a0Z25NbUHVx6G/4UbHgqLH+GdbPbXoWgMjtfDnQKiEob5Dzg5bUrs96h/XN9/fh1xqlmSIjaAHoP82tL/v2+/ol+MThvbO6TZ7UNFJv4+LOFXlyPPdviNgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SsrQmtfd; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-797dcb558ebso322040685a.2
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665854; x=1719270654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kPt+OXTViPL65+8R2ZY3yKh0n+WzsxDHxvxZLStTMX4=;
        b=SsrQmtfdH7s0OOk/kYLp+H5dN65v02I+VQsDfzkmYvzYIANNFtfENyaG9yXuQkFm2k
         IXpIfEvk0F5xTvBG+sXGVaWJlkrqKMTxBgKAIX2TjYs9QQ5LMBxYe11mhbFfPI/DvyPU
         wWMixRjUchLq9ZZI8P99iUDxzd8JqluDYf03bGHW0R6qGASi+aX32ghN7p3saR5oAzTY
         nrBfPZPNIwK+i567ou8LCRPUVA7+RXaC+kWx5+84qp91w+Hm3kj8nEN3qWe+GnZx2RY2
         +VlZ0sD/sVBR9Sa/DV/qMRJ1Te7nLPpTj6eNhQ/2MK4c4MFSv2a1pQnUlhEhqtMU1ybR
         Qn2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665854; x=1719270654;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kPt+OXTViPL65+8R2ZY3yKh0n+WzsxDHxvxZLStTMX4=;
        b=rboSO+fCLZjrl3+owonwtQvINwh+RkHzgY/tXxhARR3vGMMZfQvuvRrtE+sT26D5ZI
         SdR4vwKO7akWEKP/Dtg53o14YVfktRk1rfReg0ByyrwT1ia3Ebi/EjG77gXtM2WQd8Lr
         Q0mkvtAtWnVUSfpbH4MiWw/EXKP+lfs+DNb9xlrRDd486to1nye4M9WH9wQMetBM+qwp
         +S6dv1SSxbApTyYEhISNtSvjUPVspj9cBP/kJXCqfAxLqkAcEH8ZofK0oNpBhMco5SDD
         wFJSJFNCyxqM4w+hE1lz0sp/1i9WupPT6dZFLLUptlYkZgtwun9xqLwXGhoWbXCMxUu7
         mv1A==
X-Forwarded-Encrypted: i=1; AJvYcCXn9zw5EiyBFbMgoH0fzJ+YonhhYMwTGL9inX4KZmxXIG+HLqFjE5Ko/HSzriW0ZPYrX6qS5caLNufGa7My9vMHHV3DvwHPc0SL
X-Gm-Message-State: AOJu0YzCoQEW83Hs2qy0TM6oYPfwo2xvHCTKgMIHp+ZDOsfhjMNqtAJy
	0/7u+SPRvD0iZFiIzBWGX0jGkYwCOBRooS7okV3jj0FnV4RWthR8
X-Google-Smtp-Source: AGHT+IGGpr3F8v8ndQhuE3rt3iHw38na6NB6YHrw/RGOTJ+/z1K09m1K9HTv3rAeBCF076Ap+unPvQ==
X-Received: by 2002:a05:620a:2416:b0:795:5024:72aa with SMTP id af79cd13be357-798d243ad94mr1344778585a.38.1718665853903;
        Mon, 17 Jun 2024 16:10:53 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:10:53 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 00/16] man2: fix wrong/non-existent section references
Date: Mon, 17 Jun 2024 16:10:12 -0700
Message-ID: <20240617231035.1766780-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections") results in many wrong section references.

This patch series tries to fix some of these issues in man2 section
which I was able to find.

*** BLURB HERE ***

Kir Kolyshkin (16):
  cacheflush.2: fix section reference
  clone.2: fix wrong section reference
  execve.2: fix wrong section reference
  gethostname.2: fix section reference
  getpriority.2: move info from NOTES to HISTORY
  gettimeofday.2: fix wrong section reference
  ioperm.2: fix wrong section reference
  kill.2: fix wrong section reference
  mkdir.2: fix wrong section reference
  mmap.2: fix wrong section reference
  nice.2: fix wrong section reference
  open.2: fix wrong section reference
  readdir.2: fix wrong section reference
  semctl.2: fix wrong section reference
  uname.2: fix wrong section reference
  wait.2: fix wrong section reference

 man/man2/cacheflush.2   |  2 +-
 man/man2/clone.2        |  2 +-
 man/man2/execve.2       |  2 +-
 man/man2/gethostname.2  |  2 +-
 man/man2/getpriority.2  | 32 ++++++++++++++++----------------
 man/man2/gettimeofday.2 |  2 +-
 man/man2/ioperm.2       |  2 +-
 man/man2/kill.2         |  2 +-
 man/man2/mkdir.2        |  2 +-
 man/man2/mmap.2         |  2 +-
 man/man2/nice.2         |  2 +-
 man/man2/open.2         |  4 ++--
 man/man2/readdir.2      |  2 +-
 man/man2/semctl.2       |  2 +-
 man/man2/uname.2        |  2 +-
 man/man2/wait.2         |  2 +-
 16 files changed, 32 insertions(+), 32 deletions(-)

-- 
2.45.2


