Return-Path: <linux-man+bounces-1275-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A545F918E2F
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 20:22:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8E8F1C21470
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 18:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364F9190661;
	Wed, 26 Jun 2024 18:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b="WYR5M80n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2CB190462
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 18:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719426126; cv=none; b=prooqAdzBIf0WvTJMVBZV3Ggjp1dH6wSY9YqbMw+q+J3ou3GzjfhyhV/5qwdJ2kXdc+A2rQE1Ifh9cRbs6zCRelyGuKP0fPnlwf8vDcN4tEBIzeyQeeozVmhqxPU+Ha94DhRHC0k5w8ChC9TlCTdEZ6xdu2Xf9angd1enWTZBxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719426126; c=relaxed/simple;
	bh=3YS7Big+2/C1n1GT5ksDvGFsfPk1yxEJ6lCNmeCFOzU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=i5i2VZzDru+ox5cQVnFW4hDgwrzoHjeGWqwoGXZHfsvEWJ5e3jEXHLNxlnxj4h3u0nqesW6z64qZDa2iWfLC9UaNjJuzO/YhBzrlWvtc0eC/KwkyqZ0CDEZZuH8EtSotSOpzxC+KVIkCZUBLyg+VsnXRyJ6q5p6j2v4CVV9FwQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com; spf=none smtp.mailfrom=toxicpanda.com; dkim=pass (2048-bit key) header.d=toxicpanda-com.20230601.gappssmtp.com header.i=@toxicpanda-com.20230601.gappssmtp.com header.b=WYR5M80n; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=toxicpanda.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=toxicpanda.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3c9cc66c649so3538679b6e.1
        for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 11:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=toxicpanda-com.20230601.gappssmtp.com; s=20230601; t=1719426122; x=1720030922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rj9KENADcu2MwyNzed99Hja88ioeYiKkCX46p9yHNxM=;
        b=WYR5M80nr4Cl6FGWOKTR8s2Fxe2haZYuRpSNVmhitooQlZnEsLBbF5VT/C4BU1DLy2
         pUebS9DHAvH7qEPWzdUcfhv/ygtpvUjLQaEJLktqo2X0ptjBM09iGArcVr8Rfq7nwalf
         diKg32NOP1ymvU/b0UnE+l5D1WsadGPUynzYBeBiUXn52d0KD7RN2a9TAxyZ/HSReqJ+
         a0JaBd2NYnKY4Yx3wclfCrF+f+LeLPeEsokUMi/qLaosu02Vu1SatAjsavxN9XSa0Gpn
         KZvEq8DaU/rWyexWEKBYOTYcq+6GWKI1TzY/Q/JhgoayPxhmxVDx3wZu+sTYA9ST3HOe
         XIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719426122; x=1720030922;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rj9KENADcu2MwyNzed99Hja88ioeYiKkCX46p9yHNxM=;
        b=teiCd1jhXqGzWJJp/NF4wsDMu5JGWs0CG5XEmUC9BAEKInk7Xq6cqPW3b70qLYsVKA
         ddmNn7acP58DKnaCfoaJ3g6iGd78dT5HCunE8du1anurh5Kyx7Ea5Zm+fTd1ThNA8KA4
         5upwUwQGajQUWHduO5MVeb3e4iyzZFYXVhdzD5iGg+ymhGEwGJ3PI/0wbA3JeMjIjML1
         h352DD14GauzDiOQ35SeEzovnGyFjdsIi8j8kua8ImmvdOzQ0O0vlGsRyJiUkwVT8Zhf
         bfdlwGgljB3IG5e0v1TSnHHOReillSqBFS4PdA0NcH8qrTMdGQSLXPbA35hF6t294E4X
         Cofg==
X-Forwarded-Encrypted: i=1; AJvYcCWhxH1mUs10fHMe32nWuNwGi3/qZe0kXzpnjYnqDTrSriffK2hDUDHG4cMx0sUWhZeVbLvxGlprk9Zq/pqBUX9It6g9FBJG66Bq
X-Gm-Message-State: AOJu0YwdXRcRBqgJQs0ioGgNnU3EyLurV82pQbAZuTqT+JAHYOr5V+PQ
	dt3qBZPGJLBhSpVaDzBQrnHJNh19HLln1aHT6P8kEtaqZ7C3wqROi+qM7PpGgApeWgA+0LNpD4u
	S
X-Google-Smtp-Source: AGHT+IFNvf+z97ooYOlFx0M/mpi+HnlcqL8zJDwo6UXEL2Ru47c0XawqIUQ9YOuJe8RkwMIFsyVLpA==
X-Received: by 2002:a05:6808:1806:b0:3d2:2293:9990 with SMTP id 5614622812f47-3d545962d36mr13895083b6e.2.1719426122179;
        Wed, 26 Jun 2024 11:22:02 -0700 (PDT)
Received: from localhost (syn-076-182-020-124.res.spectrum.com. [76.182.20.124])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-444c2caf5eesm69280521cf.96.2024.06.26.11.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:22:01 -0700 (PDT)
From: Josef Bacik <josef@toxicpanda.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org,
	brauner@kernel.org,
	linux-fsdevel@vger.kernel.org,
	mszeredi@redhat.com,
	kernel-team@fb.com
Subject: [PATCH v3 0/2] man-pages: add documentation for statmount/listmount
Date: Wed, 26 Jun 2024 14:21:38 -0400
Message-ID: <cover.1719425922.git.josef@toxicpanda.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

V2: https://lore.kernel.org/linux-fsdevel/cover.1719417184.git.josef@toxicpanda.com/
V1: https://lore.kernel.org/linux-fsdevel/cover.1719341580.git.josef@toxicpanda.com/

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

Got more of the checks to run so found more issues, fixed those up, but no big
changes.  Thanks,

Josef

Josef Bacik (2):
  statmount.2: New page describing the statmount syscall
  listmount.2: New page describing the listmount syscall

 man/man2/listmount.2 | 111 +++++++++++++++++
 man/man2/statmount.2 | 285 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 396 insertions(+)
 create mode 100644 man/man2/listmount.2
 create mode 100644 man/man2/statmount.2

-- 
2.43.0


