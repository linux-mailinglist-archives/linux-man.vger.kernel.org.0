Return-Path: <linux-man+bounces-1191-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0B9909B05
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 110EFB20F39
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180AC154C11;
	Sun, 16 Jun 2024 01:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lrGnYgu+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730A11527A9
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500771; cv=none; b=fGSG3hpCkuk6kGEPPIi22NDjPz577JiTaKSzDk9IAx4NqcclkUhPMXoltEVLdah4HC8Y+rVaJ25gKy5EM7Qiu10IhTxoG+BYYLlf7qOsx9vf0KQJbsfX9cHlDP6j6Lhvf+YzSur5FD2zR3y1HtNntmKqo2yJ5pLDQqZ5nzA7VPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500771; c=relaxed/simple;
	bh=Eu5deuODxEKB/asBzeH7WM/D0HbG6n7MW/KbkEYR86c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LEOPzu4jyEGF3IHTUx071uN4Q81axKzO9BFn+TsQDMR78KGvBeCM8znd7ufVg8pFHHRnIQX9oiKIU1wNZYmT6IeJc+O0wY/JeGER1trhIAH1WNnFDSf6/K/Yrvlhl+UQuWF2qr+RkQ49vfGLF4WhvPh6ewq/vM4HmbivsoBY8dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lrGnYgu+; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6b09072c9d9so26904956d6.1
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500769; x=1719105569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3pAQQ0GxGYZZOTT/+lvJn/QePhax/PhDbHxwjZawpgw=;
        b=lrGnYgu+0hWcvCcFyr0lIV5vExBsjtALzLxSnoUX728XwPcCNIj9TN5LXBdoMpK+X5
         VMrFVmEKXEtqWB8xwU66mpNP5ccqyUyODVTMCLDZiFrWR4K7O2M+a3QlKHJbDhKxpPUd
         8/fYycdOlYrCZU/yu2kYD9E6yQw+hnF7kG3DWJEbRo+kNXncHBJ4itmsz1YSZCqlfa6/
         wbyKeQW5/0TnMc5OK6ZJSy4Xjal18GDAY0XbJRqccmYQ+qmXqJM+tmgmu+qvw67nTh8g
         fnd3RXuZvzmnypFuvz2oQqSMU/KrRcgrQfSyYps2QCY3/Be/mZjYPnA361zSED6QwiRq
         jvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500769; x=1719105569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3pAQQ0GxGYZZOTT/+lvJn/QePhax/PhDbHxwjZawpgw=;
        b=Qy+7UtJDauRjgJKYVrDS7Rgwq86SbsH1jXGltwqp1Auky/zsCV/zoFifOsZBDY/vVM
         borwtEkSK6W9ines3fcgokDPovmi0OPuUJiHK1vVIo1cEuC4akjX1WYWUywNq7O9TPEI
         5QFzZMz9+L5DpOQK+nScOiQ3ooxJJbGP7U+e8CGozCUPpeK9zkq0cAd4P7SdRZ2tg12f
         Sg7VJ/pIN/XQYxUFySEYDlxuyonUbkJ+KI2z6RwR3xkGFdNme6sNgzOz0sK0zRqqU/so
         ra/kwi4r7VSbVzGKjMgLuEjfS3tbgvliI379T1GxyjII3C8T7i2OGCXR88CfsyEarPR/
         oOyA==
X-Forwarded-Encrypted: i=1; AJvYcCWSlTf9s6cJ16a/3enow7sUmwzVsjAX/fEJBxHoaG2+FxnpyxUZHUqtK/HLXoEwS3s8YPx6s/G++qjFnKG8pTfZweEyu1vkzISz
X-Gm-Message-State: AOJu0Yz4cG4Xy1RzU/yOWfipIO/Kaq/ovoq1eS42ZsTu2Sre2ELv9As3
	auEcp4xSc5WpruQns+7rMGfOHRN8U0aCdIu8iM+pkFf7iZzssmG0
X-Google-Smtp-Source: AGHT+IEa8WM+TwmIS0+VXp4kyhyNxSVC4VjpAzKSreZxCc+qHWoHRN3wf6eqC1M2M+xZQeySj2rf/Q==
X-Received: by 2002:a05:6214:307:b0:6b2:b997:6513 with SMTP id 6a1803df08f44-6b2b9976557mr86120916d6.7.1718500769159;
        Sat, 15 Jun 2024 18:19:29 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:28 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 00/11] man3: fix wrong/non-existent section references
Date: Sat, 15 Jun 2024 18:18:53 -0700
Message-ID: <20240616011920.1627949-1-kolyshkin@gmail.com>
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

Mostly, this is about references to no-longer-existent section NOTES,
but there are some other issues as well, such as references to a wrong
section, or a discussion which is now split in between two sections,
etc.

This patch series tries to fix some of these issues in man3 section
only (I haven't checked other section numbers).

Found accidentally when reading exec(3).

Kir Kolyshkin (11):
  exec.3: fix section reference
  posix_fallocate.3: fix section references
  floor.3: fix section reference
  ceil.3,rint.3,round.3: rm NOTES section
  getdtablesize.3: fix section reference
  readdir.3: fix section references
  setjmp.3: fix section references
  sigpause.3: fix section reference
  stailq.3: fix section reference
  strtok.3: fix section reference
  strtod.3: fix wrong section reference

 man/man3/ceil.3            | 4 ++--
 man/man3/exec.3            | 2 +-
 man/man3/floor.3           | 2 +-
 man/man3/getdtablesize.3   | 2 +-
 man/man3/posix_fallocate.3 | 4 ++--
 man/man3/readdir.3         | 8 ++++----
 man/man3/rint.3            | 4 ++--
 man/man3/round.3           | 4 ++--
 man/man3/setjmp.3          | 6 +++---
 man/man3/sigpause.3        | 2 +-
 man/man3/stailq.3          | 2 +-
 man/man3/strtod.3          | 2 +-
 man/man3/strtok.3          | 2 +-
 13 files changed, 22 insertions(+), 22 deletions(-)

-- 
2.45.2


