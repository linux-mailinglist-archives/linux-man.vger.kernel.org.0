Return-Path: <linux-man+bounces-4173-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 83950BE7204
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 10:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2F3FF35BDA3
	for <lists+linux-man@lfdr.de>; Fri, 17 Oct 2025 08:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C623927E07E;
	Fri, 17 Oct 2025 08:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B/+DH+cu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD3026B955
	for <linux-man@vger.kernel.org>; Fri, 17 Oct 2025 08:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760689154; cv=none; b=e5exhz4bIn5uME6h9AGlwxMCTFFXDkZV0opivfcmrVDM7ZdmUmoungKz+4K64FEMb9B1GEFCCHRFKV40CmXHOBRppK2RTTw5PsdGhiwBq2MBaFKnRtabOlalgtOpUypWDLiJoaZPLra6jNV0h8PeSDqNV/PNCuMHHRuO1teITlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760689154; c=relaxed/simple;
	bh=fjG69EZH3PKlDUYxNR6GGha8meVr8+NXsVqZjM4pC74=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h815CNspvS0/4NeOTMv0hcBY+yZ3zLeTj1tkA6nsQ1LvbVOmPTiKKqh7Knmh7/z0mcdYNB6yxbTn6ZlKLS55zRXA82LX9KP/xFQH5TdTplJUxzB8v6ZwIk+K1DTMvtXa/ctxTbExt978NB7/EGMcVkDm2X3cuhVeSXTDq7aLrQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B/+DH+cu; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-290d14e5c9aso8840065ad.3
        for <linux-man@vger.kernel.org>; Fri, 17 Oct 2025 01:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760689152; x=1761293952; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K4ozeaLG5gFLLCCtOANRgk9zzMJ4tB9PbpcT0wOKcuU=;
        b=B/+DH+culsngyBhWbMUIobazX4VxrH0dgHtgBg22QU9MlevULjjDkeqvbkL5YbPlRA
         17qZcAnmsmZjnxHX301qDbKPoAeV5dM4rLvid4IRNX9hWHm2/sMEk2OL8Kz9/gy+5nve
         a4TTu6826bUqwVLXahQqo7YD1catvPvth3dRMsahVSa6KV7Y0XsASH4J9+vuMou9MccT
         1WvQDHX9jFzXZw8et2IXycxZ3ZcSrKwmD4k+Vo9BaJOYXGcrphPKmVjWWg/bqd2hU1Qb
         2e0xFXCrb/og6KJJdQ8K7k7lF+ZIt8OKw8JSphiZtdZAVW2dJI9EOHsGmrGq2v5uIF+r
         qvVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760689152; x=1761293952;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K4ozeaLG5gFLLCCtOANRgk9zzMJ4tB9PbpcT0wOKcuU=;
        b=AD6l73ixw9PI59HnSriCvzY/BioTDd7TsrxfAI4jEyjsW22JweITPPDJ5RBeEYChTZ
         oeTpcEUtmFo4KPrkm+BzMKGEdE9RoP4RQGCcygce1dJpSplX0gqPmoVQ5c67pqGl8/gX
         5p8qrNCrx8djU6OylhNZx+OZZTOycR+q72RiFBlAvP+hywS4lwVH3qkbwJRZrxDqzD/b
         VpXrS05msSU755ZhFQIm5TNWUmTM4A9oFoKfQ5OmKCZLvqT/1xnMbp/LQchQFk8FiQyY
         3alS1gtCd9N7K4YEMmyVNgRxjRn9dVNarSwZSWd1JzOBilR7hqiVhkZna2wo/azU23HM
         4LVg==
X-Forwarded-Encrypted: i=1; AJvYcCWEWAIwoUrqQgpKCcdoNuJYlh7/rXltGItNPADHqy2/StDJz7oetPDbz80ywNexnX57+PDGDykxBnU=@vger.kernel.org
X-Gm-Message-State: AOJu0YziXZLCURe549ceg5UdsJvpfv6pRqpMxeufulXnwHdHvogA5i06
	HM+nkIpKBuzZeGUjBIyAr5E/iw3TQg0eaEFJ1+9+EyvEh6zrFhtmWc03
X-Gm-Gg: ASbGncuFcvwPHxAbFBziyg606m5XoX19YPegTGt9PppnUbidWaIy2qR1iEvtb9+fAbL
	NyxqTBG0+n00zOTUNyY3B4naGJ7BMezykiXo3SaPIvD6PrJpxWBhIsAXsS+ICfNhdZYjwy0WK/n
	9I92g6xgj+y4im+QHYKSRMIFB92I9+qCl+Gy1oN2zVTB/rBa+Te6efsP0d/6dKwzroyfABMinML
	9tIiQT9wBGLwgIGPAZvrOeXizuOl3JhBUZRnRDUfmqcVm9pJD45cz2LZBY4brCJgdOsD/6qk6gL
	cJZo7QGvw3CB9pRYttSyyeoxdRGbzfRfJd5PMHfO3yrYd/AOORDyGFVEoOvQ8pJQ4QA4xKU2/aZ
	xiYIZL+Td7r3YqnuH2Y7CboOH/ViNx3hu//PqNybTm8oDlzowwWtYpnkxSQ==
X-Google-Smtp-Source: AGHT+IHsfISct4TL/tdQ5lz6CNgk4m53YGcuNFJauKWcSGbXZWFBEjSU50gH/WAW59j12KP6EmNPSQ==
X-Received: by 2002:a17:902:f68c:b0:25c:d4b6:f119 with SMTP id d9443c01a7336-290c9c89ce1mr36843315ad.12.1760689152265;
        Fri, 17 Oct 2025 01:19:12 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::43bc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-290ad977cacsm45910855ad.105.2025.10.17.01.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 01:19:11 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man3/opendir.3: document that long file names result in ENAMETOOLONG
Date: Fri, 17 Oct 2025 01:18:43 -0700
Message-ID: <4266061219d7406c0aa737f8d52108fea7e0f7fb.1760689006.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This behavior can be see with the following example program:

    $ cat main.c
    #include <string.h>
    #include <stdlib.h>
    #include <stdio.h>
    #include <dirent.h>
    #include <errno.h>
    int
    main (int argc, char **argv)
    {
      if (argc < 2)
        return EXIT_FAILURE;
      DIR *dir = opendir (argv[1]);
      if (dir == NULL)
        {
          fprintf (stderr, "%s\n", strerror (errno));
          return EXIT_FAILURE;
        }
      closedir (dir);
      return EXIT_SUCCESS;
    }
    $ gcc main.c
    $ mkdir -p `python3 -c 'print("./" + "a/" * 32768)'`
    $ ./a.out `python3 -c 'print("./" + "a/" * 32768)'`
    File name too long

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/opendir.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man3/opendir.3 b/man/man3/opendir.3
index a9af16269..6a5c7880f 100644
--- a/man/man3/opendir.3
+++ b/man/man3/opendir.3
@@ -73,6 +73,10 @@ .SH ERRORS
 .B EMFILE
 The per-process limit on the number of open file descriptors has been reached.
 .TP
+.B ENAMETOOLONG
+.I name
+was too long.
+.TP
 .B ENFILE
 The system-wide limit on the total number of open files has been reached.
 .TP
-- 
2.51.0


