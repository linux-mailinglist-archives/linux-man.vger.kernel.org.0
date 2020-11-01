Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31B062A1E61
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 14:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726437AbgKANz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 08:55:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726402AbgKANz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 08:55:57 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D2AC0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 05:55:57 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id a9so11504277wrg.12
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 05:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VEDkG6msf+Bdt89g0aAspLoZA26Wzx7Gu5Y7RTFF22o=;
        b=TThPMgYCjuFwjLTh96N+x2kkOaJChSZxLfp4i0eo3lZ4fvEaOOO37S06cRT0Dhw8oW
         TMoYTuNvs+VsFMCUB6/8SXR2bIl8psuL/2GtKCqwl1NELJYI0Llcqmvw8s3u2R13iIvB
         Ekm5oiRVbi3O95HlXIlYGNDHp010glwg20Kz4laN9lkc9S3ymcPCfX6argoLIiz87naP
         qcQD1rVdnII2HvZjCOdjVBCShBxPMZjeTpdFNDQoocX1j11QWzhLkRVBdffp0zUZ4a0F
         edZ8h590i/wN9c6NknI2WJwRRGJyVB3L1YlGExJTUkDJuzpI7ZEnj8XqgEtfHsKSfnak
         DA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VEDkG6msf+Bdt89g0aAspLoZA26Wzx7Gu5Y7RTFF22o=;
        b=r+Pe1mBlcu9HtUrx+lS8OHx+oWKSG8UwAnl//nJop+IearJ8+f4aiP+qMyapnHhnVl
         vLpKr9TTgGG58GaHnlQpbjZnmZY/xQFWvAuV2jlpHtpgwaEYzsvwVZMG+Pg61Rz3CemK
         6Do3Xj8Ff4ODcqrNApU4UBfl9zy8lQjaiz5kdCxQVnsykY0FOVysbGHQnFKPDyUkXrZZ
         bJjoNrM71K1obSRbanzsgFLtt8/uFKXT1qv0XSVgTYTsc3iit9FRGbIvZWHfxjXep8kN
         WQnzJjKK1eIC14KEIGXN3ouiAQHk1u7qprTf1mmYWZdLy+63OqDXXGoLzFN85ZCCe9cq
         gibQ==
X-Gm-Message-State: AOAM530X+272XdiRRZ1ZMx21m9y+ocDi5iaC7RrnS3rqZ8vURXIaQ+KV
        L+p8c5K44YqLgmV/8nwC1Xo=
X-Google-Smtp-Source: ABdhPJxmHHfgqUT9+tly8gHoku8j4CzM78nNWuWbKohd9KBB2zVF9x8kudcLntRTmbu1/9r4EiWxtQ==
X-Received: by 2002:adf:f4d2:: with SMTP id h18mr14053610wrp.99.1604238953428;
        Sun, 01 Nov 2020 05:55:53 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id v67sm11980808wma.17.2020.11.01.05.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 05:55:52 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] io_cancel.2, io_destroy.2, io_getevents.2, io_cancel.2, io_submit.2: SYNOPSIS: s/io_context_t/aio_context_t/
Date:   Sun,  1 Nov 2020 14:55:42 +0100
Message-Id: <20201101135541.84225-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux uses aio_context_t for these syscalls,
and it's the type provided by <linux/aio_abi.h>.
Use it in the SYNOPSIS.

libaio uses 'io_context_t', but that difference is already noted in NOTES.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/io_cancel.2    | 2 +-
 man2/io_destroy.2   | 2 +-
 man2/io_getevents.2 | 2 +-
 man2/io_setup.2     | 2 +-
 man2/io_submit.2    | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index 68129896e..ccf252594 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -11,7 +11,7 @@ io_cancel \- cancel an outstanding asynchronous I/O operation
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_cancel(io_context_t " ctx_id ", struct iocb *" iocb ,
+.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
 .BI "              struct io_event *" result );
 .fi
 .PP
diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
index e7cdf0203..e9c93b652 100644
--- a/man2/io_destroy.2
+++ b/man2/io_destroy.2
@@ -11,7 +11,7 @@ io_destroy \- destroy an asynchronous I/O context
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_destroy(io_context_t " ctx_id );
+.BI "int io_destroy(aio_context_t " ctx_id );
 .fi
 .PP
 .IR Note :
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index cf616593b..10dfbc005 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -12,7 +12,7 @@ io_getevents \- read asynchronous I/O events from the completion queue
 .BR "#include <linux/aio_abi.h>" "         /* Defines needed types */"
 .BR "#include <linux/time.h>" "            /* Defines 'struct timespec' */"
 .PP
-.BI "int io_getevents(io_context_t " ctx_id ", long " min_nr ", long " nr ,
+.BI "int io_getevents(aio_context_t " ctx_id ", long " min_nr ", long " nr ,
 .BI "                 struct io_event *" events \
 ", struct timespec *" timeout );
 .fi
diff --git a/man2/io_setup.2 b/man2/io_setup.2
index 7b07b51c1..f9860fda5 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_setup(unsigned " nr_events ", io_context_t *" ctx_idp );
+.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
 .fi
 .PP
 .IR Note :
diff --git a/man2/io_submit.2 b/man2/io_submit.2
index 7fbc9d7ae..22bdd31fc 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -12,7 +12,7 @@ io_submit \- submit asynchronous I/O blocks for processing
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_submit(io_context_t " ctx_id ", long " nr \
+.BI "int io_submit(aio_context_t " ctx_id ", long " nr \
 ", struct iocb **" iocbpp );
 .fi
 .PP
-- 
2.28.0

