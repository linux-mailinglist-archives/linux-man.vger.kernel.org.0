Return-Path: <linux-man+bounces-4778-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5DFD0D076
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 07:15:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE1523026BEF
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 06:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5073E23817E;
	Sat, 10 Jan 2026 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UL/jlyIT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C62205E26
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 06:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768025754; cv=none; b=tGkFVe26gjEYgqz4uFTogZDmMURfwuvgspRmFoQ63jcsRCLr21rTI7YWqxxfG89aqSH5vSds6WuFJikDzje7fAwwofMy/slOWApA6HzVO7UuP3aCs4FC9l83k/3fLgq0B11gARO9HSDunp5pVag0LVSyaFbsdxQoGiRHxDjGWR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768025754; c=relaxed/simple;
	bh=LzHQqQop0MArG4JCv1D8BwIr4/ggT5FBUPvX3lSqOyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jOgKejDykfHNJ7W092c/C5zafpTUjEoLUiSWZjX7TC0DRSCfV4/QHfV3l2VZ4SHq3eyaM4spK2o0hUxqUH5eEovNeEXbfNfwxGvClzp4KJvucOAsSy9IIYNZczXK7riMMdPVNH9zhiKA10B3YwjULu1GZqgXxUPO1f1kG3JQzeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UL/jlyIT; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-29f2676bb21so44124195ad.0
        for <linux-man@vger.kernel.org>; Fri, 09 Jan 2026 22:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768025752; x=1768630552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=O3I7eeTfVNLxDgNekznycXgmn17DBymOOmYr0KWFtAc=;
        b=UL/jlyITDQuUi8ZT3xSqg0mU36s3eNQHC5gt0X2wwPaOKyPH1gdznSpYtgxT0NXGQ3
         vudBRAq9V0/kcdGiirPaeG1ZPf4O/Zra7kUGN1/v0MTZEej+vFjxLoMcj/RNrdCdIxAI
         LQMaJOnK2Kr/pvDQgl53YuGtvLIa3zutYezUdekPRwGFiegH+G66qYVHre4Qid5fj+v2
         /lejkJ3n0oQWv9RkP1Lc6MSnME8c6clb7aykvMIMXKl9tzMbgddEglGUtCSCy05sji4B
         7WDiMwF0rX0XiPZtEL4EhsHW00+TKQiU8538n5mW9bAP5ufQm1ofs2geLfEkODUhwuHi
         pUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768025752; x=1768630552;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O3I7eeTfVNLxDgNekznycXgmn17DBymOOmYr0KWFtAc=;
        b=hyXyDZX2WKTyh5qNGNRq7M4pSjoWopfeiGHqnsQZI1GKsmS2NRIGy2i5wZBwpCGedc
         sSZLOCv5XP/UdM8ZV27ZYwkpm4ecWbFWAdxmqdp7Lti51pM4/kX9wk++AEHZvj6YEuWS
         3lX3ZrPGwdcbAc+Ezv6J7bSxYIz0REYmFjDMe9DFJ2uKO2jpyX0xEDsBVDlesnw6ZXPH
         mDPcg82byVJL2yDGBD3KP0zn+bzf1a/nX38LMqAW3CX984GptVVXpndnJG6ohG18AFaY
         nJ6bgoJ1a02jdvacO+e2O28ErvJV/KwXfcbRTLlpkK0JxuTragrLcTk8oJ+AGeFy6xHB
         ApOw==
X-Forwarded-Encrypted: i=1; AJvYcCX1uxyui17LPnlz+1pd5cZtbU6Po5sRb12oCRu8JQn0a5Em9iYOw+Wzs36Rt0uyW1oRH/Bagq1cD7Y=@vger.kernel.org
X-Gm-Message-State: AOJu0YyOd8DEl9MHYZuVzZ5wkO+bxs8zROf95lGccHiugGUzQUGGElfG
	4E/yEXEGu7SQXgnx+xdThTZUGSeXK///nfPmSSNUMrJHyvRBaUpz/UDcxt45MLvX
X-Gm-Gg: AY/fxX5IFth72EQ+XsoKDDDOBsjhNsCwHACaLBSndbUWwU7cxOwmnH8t1LRwBf+Dtkq
	cIrFNBKUT/cKmBwPcw23uBW094RqVbp096fdqRHN7Viee2tyc1Hf+7RrslU1koBg6ttMJ4ZhoFU
	UHc87+vnrat/NunpO9aB7toumks/zfvC+miBwdxy3VPWfkgNVgiIc4X9z9YgnlX45gde1WEr9MN
	IJ98gEXq4Em9cZ/yovlJz4LJRLBuDbp8XEzPb+bP87NIzELGXgs/535qbyQlR9QuPKiDr1V+dO5
	9nuJluVFwmDjdpqMoH/5DvaPhZmBoOmqhG0KYQxe9gxIRJnmLEHoll+M43r3YGvSxQRqamLEvFR
	uOPDjoHbUWBFNy5n9zCD8Xjhx4EdK37nvL8wclD9VOIYLD8gqnhFlH8VA8hGfuKLdFlj1rOibIu
	SjohofVRpDVrlAmqktDgzp76xXNjW/yxj/8aVku93v1/pO4Szg/BwA31eneFSdaPGKZf16w06FS
	XOmDfWD1x4AgS9ynw==
X-Google-Smtp-Source: AGHT+IG8I6+nkwRQeHXQwE7RPzLAH8fNNXPskLFiis+++KSaH2rYocWQIiAmZxESifZYHfrDeM4W/Q==
X-Received: by 2002:a17:902:cecb:b0:2a0:8972:d8ca with SMTP id d9443c01a7336-2a3ee491c20mr111849015ad.35.1768025752005;
        Fri, 09 Jan 2026 22:15:52 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce8d-7313-a81a-a88c.ip6.aussiebb.net. [2403:580b:5de8:0:ce8d:7313:a81a:a88c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8ddfsm119807885ad.74.2026.01.09.22.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 22:15:51 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 0/3] man/man3type/*: Update simple history of types
Date: Sat, 10 Jan 2026 16:15:17 +1000
Message-ID: <cover.1768025095.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767931376.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This v3 should be almost identical to v2 (sans a reworded commit msg),
except it should (hopefully) work.  I think the reason v2 didn't apply
may be because I just resent all patches, even those already pushed,
rather than only sending the non-pushed patches and using the --base
option for git-format-patch (which I now know about after rereading its
doc).

But regardless, I've tested applying these patches onto origin in my own
worktree after fetching and it seemed to work.

Seth McDonald (3):
  man/man3type/stat.3type: HISTORY: Split stat(3type) from
    st_{rdev,blksize,blocks}
  man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
    st_{rdev,blksize,blocks}
  man/man3type/stat.3type: HISTORY: Specify initial datatypes of
    st_{blksize,blocks}

 man/man3type/stat.3type | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

Range-diff against v2:
 1:  48b823b1a965 <  -:  ------------ man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance of itimerspec(3type)
 2:  90f54d80c479 <  -:  ------------ man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of mode_t(3type)
 3:  c1498253ab68 <  -:  ------------ man/man3type/off_t.3type: Change VERSIONS to HISTORY
 4:  6b062b0d6afa <  -:  ------------ man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of off_t(3type)
 5:  6919cafeb4e3 <  -:  ------------ man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of sig{event,val}(3type)
 6:  84a9e467d506 <  -:  ------------ man/man3type/stat.3type: SYNOPSIS: wfix
 7:  0611f62eeedb <  -:  ------------ man/man3type/stat.3type: HISTORY: Update first POSIX appearance of stat(3type)
 8:  623290de35e6 =  1:  f09dc86eb395 man/man3type/stat.3type: HISTORY: Split stat(3type) from st_{rdev,blksize,blocks}
 9:  a33e91f7c1b7 !  2:  e4503345e46f man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
    @@ Metadata
     Author: Seth McDonald <sethmcmail@pm.me>
     
      ## Commit message ##
    -    man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of
    +    man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
         st_{rdev,blksize,blocks}
     
         The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
10:  3ffb01f7c196 =  3:  5f6bf068bb5f man/man3type/stat.3type: HISTORY: Specify initial datatypes of st_{blksize,blocks}
11:  d6fc0ff67155 <  -:  ------------ man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of timer_t(3type)
12:  9b6fedfdc71e <  -:  ------------ man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of timespec(3type)

base-commit: 753ac20a01007417aa993e70d290f51840e2f477
-- 
2.47.3


