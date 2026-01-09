Return-Path: <linux-man+bounces-4733-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D798ED071A9
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 712893019B8D
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331291991CB;
	Fri,  9 Jan 2026 04:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IdBR3fk0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1D2500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932396; cv=none; b=UrYi3NlwVJOdGlh4kuNkqSG7GBriQyEVhr4r/AsdkjBfd+YYqpa0Rxde70XN9ThT2+0jMAabTKr3VF0lxuiDDdcC42nL5WW8k9znEDy+E78kk9XfLU0dNRjPF0uqIgqMStZ86TgSGUqI7mU0ZDd2zaFhmqB67RQUDLIr7Fnw6lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932396; c=relaxed/simple;
	bh=JUCJA0/1QAM00oNHtezBPEUqfXTlJ00tIioVceSeS6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d12jhnEQq0G/8FkzYEefJBhoiPpb7UsQci4AK/aTHVYC66EAW5CugageTDKYrMEa8gte8eosP57+sP6MKbvXg8hM78EvT01CX7bdU0i4u1Tt2gK7n6y2M62gSg/hzLrJ4Yob5VyPe6HXTd/d3K/Y5l5fivnYpusikg1TevBvJLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IdBR3fk0; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c0ec27cad8cso1734284a12.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932394; x=1768537194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gMe9yq9xPbd2SlbZzA5E5/b6IASpqZTl5xEo6EkDkGo=;
        b=IdBR3fk05CFpag5gIW7VB/5mt31iprfAtz76WOnVvtaWiO67n8zqbluyMGkTFfsC2H
         sgb4u9Ib0ftej7aANRAnFtmvs7LRX5741UcJQIDmC31qTky3CSuDFzR1t/bDdPdIBWkb
         HhruyBTPfcq/tEv6Zfbb1dt8oh1w62v4KNdoStPu8FO/uZ8yRlbI38vYzKS+UZ7tRyrS
         klnLKVZlSVgjzSr3xvzqnCTWybwfEg8+qbyvuQvMiTG7tDxpHhTcSFVMAEcYGoXIN39c
         DhaWWC0ZbBoikUiXiZjsbcw2Tfqyj/Mok8EIJaz4soyW1iug9SlDnYJeKCrjTwDFWuo4
         RZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932394; x=1768537194;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gMe9yq9xPbd2SlbZzA5E5/b6IASpqZTl5xEo6EkDkGo=;
        b=flyqybD1aIakO2aHu/fQUAfq+OkfELd/Wk6nru1p/9YPIk2khOMpwoPiYklHXvgm3n
         DYjdPHMFfmXeLljVkebGGqaf3SralVhbNN6rpW61ZJJQRZ5PqcCuKFXkQ5f4v+rZK0Pn
         2J+AOXmRYbLsE8gLxuRFidyxRRxMhfUE80cTF6/58W4CKdXu+M3I/R/KrfWwUVGO4f1d
         Qrj2NGmOu+qAZP2oMxW8MIx5pqy415nOmb5TkQt3MdSFC9GTcn5Li9ubngsDdcWBY7yb
         KCTwpcHPnJNQkidoGcZH/cNpXdiL1WmkA5Dd+PmAukuei1aC0hd/ciLRqW/+bsI/LqoV
         ZY8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU00Ro/mD8HhiZ2c3ZZ8CXTwbp972+dgAdQGyMwDb1xnNnZupu1pKD2PoNpy5+adUQ+KDNCy2AUtbI=@vger.kernel.org
X-Gm-Message-State: AOJu0YysbspYb2J3pC6ePJRsbBwL0ntWBmeWnsQceaDEJvmQO4uFUtRo
	bVLk6rywD1ULjZ4Ovbj+zMOHbaaMMR+2zHyoHy8CWUTRA3VKLxSFHnfD
X-Gm-Gg: AY/fxX4dVkKGvPZaKLf3edJDnelvaFEWrTxJxw5Og10cnjyCpycUDtjyMrdr5wq11bv
	auq+tuoh/mcLqeODXuTEbLIlWQSHzd503o77Lo72nZuM8bP/OpZnyK82YNeEn12iAzYKDHfgMOW
	Ckb7DtohFfe6XNPFcU6NgNaiMC+l2rq0j4U9DUBr8gCGIjm0eyRpBywxhP29aGPRT53W9TFLQs8
	ohex9TMTOjPzLpZoCWzb1iQN1LGUSvkI3s02YxySlbgtYlsEJM1aKMQupUd9AyaQDKHbl8qoWvI
	I4HbOo6EeMcyX9Q2We5pXKbCRB6h5eRVrEamYFCgCoGe3KBp/i3IBF8rNHaogkBt/BN0EwiRAo9
	pTjXMAdR4wvxS/iFVaVpNJvMlxqfnFtciV36ea0lKb5CTpXgSn8rM9Y6sguaUxRCi2kA0m9+2Fi
	RLAiHOHXh4FcFY70td2dfOOb8ufljWuZzfqjYCziO05lHRvEYayStk4GQzS1K4plp14cVD9gCDm
	KhwTW7YifrVVu6fag==
X-Google-Smtp-Source: AGHT+IGUOV4yRocgK3P2kza/dTSUnDSWgwB6Sz3J/DLwvFnhaqJRBo6Oi07qOO/ZOa1GT41ESteTEA==
X-Received: by 2002:a17:902:db05:b0:2a0:835b:d17f with SMTP id d9443c01a7336-2a3ee4ab681mr80540055ad.54.1767932393764;
        Thu, 08 Jan 2026 20:19:53 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:19:53 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 00/12] man/man3type/*: Update simple history of types
Date: Fri,  9 Jan 2026 14:18:54 +1000
Message-ID: <cover.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

v2 applies Alex's feedback and reformats the stat(3type) page's history
section by listing the structure's members' different origins in a way
consistent with other man pages.  I also added a separate patch for
splitting stat(3type) and its members' listed standards for nicer
logical ordering.

Seth McDonald (12):
  man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance
    of itimerspec(3type)
  man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of
    mode_t(3type)
  man/man3type/off_t.3type: Change VERSIONS to HISTORY
  man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of
    off_t(3type)
  man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of
    sig{event,val}(3type)
  man/man3type/stat.3type: SYNOPSIS: wfix
  man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
    stat(3type)
  man/man3type/stat.3type: HISTORY: Split stat(3type) from
    st_{rdev,blksize,blocks}
  man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of
    st_{rdev,blksize,blocks}
  man/man3type/stat.3type: HISTORY: Specify initial datatypes of
    st_{blksize,blocks}
  man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of
    timer_t(3type)
  man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of
    timespec(3type)

 man/man3type/itimerspec.3type |  2 +-
 man/man3type/mode_t.3type     |  2 +-
 man/man3type/off_t.3type      |  4 ++--
 man/man3type/sigevent.3type   |  2 +-
 man/man3type/stat.3type       | 22 ++++++++++++++++++++--
 man/man3type/timer_t.3type    |  2 +-
 man/man3type/timespec.3type   |  2 +-
 7 files changed, 27 insertions(+), 9 deletions(-)

Range-diff against v1:
 1:  48b823b1a965 =  1:  48b823b1a965 man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance of itimerspec(3type)
 2:  90f54d80c479 =  2:  90f54d80c479 man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of mode_t(3type)
 3:  c1498253ab68 =  3:  c1498253ab68 man/man3type/off_t.3type: Change VERSIONS to HISTORY
 4:  6b062b0d6afa =  4:  6b062b0d6afa man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of off_t(3type)
 5:  6919cafeb4e3 =  5:  6919cafeb4e3 man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of sig{event,val}(3type)
 6:  84a9e467d506 =  6:  84a9e467d506 man/man3type/stat.3type: SYNOPSIS: wfix
 7:  0611f62eeedb =  7:  0611f62eeedb man/man3type/stat.3type: HISTORY: Update first POSIX appearance of stat(3type)
 8:  9d3a705508aa !  8:  623290de35e6 man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
    @@ Metadata
     Author: Seth McDonald <sethmcmail@pm.me>
     
      ## Commit message ##
    -    man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of
    +    man/man3type/stat.3type: HISTORY: Split stat(3type) from
         st_{rdev,blksize,blocks}
     
    -    The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
    -    structure first appeared in SUSv1.[1]  They were added to POSIX.1-2001
    -    when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]
    -
    -    [1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
    -    Version 2, Chapter 4 "Headers", p. 830.
    -    [2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
    -    <https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/stat.h.html>
    -
      ## man/man3type/stat.3type ##
    -@@ man/man3type/stat.3type: .SH STANDARDS
    +@@ man/man3type/stat.3type: .SH DESCRIPTION
    + .SH STANDARDS
    + POSIX.1-2024.
      .SH HISTORY
    ++.TP
    ++.I stat
    ++POSIX.1-1988.
    ++.TP
    ++.I .st_rdev
    ++.TQ
    ++.I .st_blksize
    ++.TQ
    ++.I .st_blocks
      POSIX.1-1988.
      .P
    -+The
    -+.IR .st_rdev ,
    -+.IR .st_blksize ,
    -+and
    -+.I .st_blocks
    -+fields first appeared in SUSv1
    -+before being added to POSIX.1-2001 XSI.
    -+.P
      Old kernels and old standards did not support nanosecond timestamp fields.
    - Instead, there were three timestamp fields
    - .RI \[em] .st_atime ,
 -:  ------------ >  9:  a33e91f7c1b7 man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
 9:  e13690db2fb6 ! 10:  3ffb01f7c196 man/man3type/stat.3type: HISTORY: Specify initial datatypes of st_{blksize,blocks}
    @@ Commit message
     
      ## man/man3type/stat.3type ##
     @@ man/man3type/stat.3type: .SH HISTORY
    - .I .st_blocks
    - fields first appeared in SUSv1
    - before being added to POSIX.1-2001 XSI.
    + SUSv1,
    + POSIX.1-2001 XSI.
    + .P
     +Initially, SUSv1 specified
     +.I .st_blksize
     +and
     +.I .st_blocks
     +with type
     +.IR long .
     +This was remedied in SUSv2.
    - .P
    ++.P
      Old kernels and old standards did not support nanosecond timestamp fields.
      Instead, there were three timestamp fields
    + .RI \[em] .st_atime ,
10:  eb28bf22aed9 = 11:  d6fc0ff67155 man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of timer_t(3type)
11:  d25e140aaabe = 12:  9b6fedfdc71e man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of timespec(3type)
-- 
2.47.3


