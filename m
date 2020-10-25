Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4ECE2980F7
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:20:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414771AbgJYJUO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414770AbgJYJUN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:20:13 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4CBC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:20:00 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id y12so8701161wrp.6
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gowGErC+p0D5NVrW9CUXZiZvqhs7k4hchIaPsvSavWA=;
        b=tfvSOSa7uLUGc0qpCJv8RjvKS0Ahz/1pglQbbjvCbe0Sguaxgjwzvdu7nNR6qM5T3W
         cqzW9LHTNu29GUH6vPPp5xDJ0cgAkwyfE0m/Fx7LGiKbYfynwhupsrkB+g7GxSKhqXRB
         YS6KNwzQGw7TVfTHmH5vvvadQgJU2KJM2kJoUOQbunETKG2Y9NYkBSVxLdiylbZiakcG
         RQJfa/HwGTS0aCAPTWSAwMxDCAqMnUKT0gfrcCBJDEuqfvkx5Z57bb54uz/hUP42V9zN
         3HBp9B72/XVg6jPlzjzJ86+/BM/Dw+AHJKAz7TytCXPc8bBtfyJyUib8Z6d/wo59T0hT
         D+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gowGErC+p0D5NVrW9CUXZiZvqhs7k4hchIaPsvSavWA=;
        b=VkTEIqeV6jo/iw96yC1c5KPOYU4+AsiQ3+GnUtvKetLIOhEo8dMa8BxzI4ZQrT0jwh
         xIktuPdImu1XIpftcbLgif35x9O5g7rQ6BfkxY1lhkX4+h2u+YtD9MQgFdLeglo53PZn
         uOoGDnCzc+/oYysaD2oq8upW+gTMf1HRyZqQKEESzd5OoOD6CRjmDNKnmdDkGhfb01ED
         Lnw8jrsBFC5gGBkyKzEkLqMx1e8duwBUH3Bxuq9Ned5PzCGSzpjKhSvGghmLYGdn3x7X
         NpDC3+FY2c1j/tNe0/lhd/iugVOPo1I/pXQYbzbdl0SwNPVTuEi+knOfvZIvl3nd2jwL
         EGnA==
X-Gm-Message-State: AOAM531Ll31D9WvylpSoWe5MjX8uOfoaud/qIwfVLSvypF/aYPSBWKPL
        BtoT0o5Atz6t/7MeBIqKNsc9nhCofVg=
X-Google-Smtp-Source: ABdhPJzMyQ9FKVqwKuCL8xWIcZdSe3Xti2TkXfFApH3653yMRm1tkBe7Odw4/7SS3wQ21h85pe0DVw==
X-Received: by 2002:a5d:6cae:: with SMTP id a14mr12295831wra.187.1603617599154;
        Sun, 25 Oct 2020 02:19:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id z5sm16329273wml.14.2020.10.25.02.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:19:58 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] circleq.3, list.3, slist.3, stailq.3: Fix return type of macros
Date:   Sun, 25 Oct 2020 10:19:23 +0100
Message-Id: <20201025091922.3233-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 10 +++++-----
 man3/list.3    |  8 ++++----
 man3/slist.3   |  6 +++---
 man3/stailq.3  |  8 ++++----
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 54df3fa20..a70a22079 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -58,7 +58,7 @@ CIRCLEQ_REMOVE
 .PP
 .B CIRCLEQ_ENTRY(TYPE);
 .PP
-.BI "CIRCLEQ_ENTRY *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
+.BI "TYPE *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
 .PP
 .BI "CIRCLEQ_FOREACH(TYPE *" var ", CIRCLEQ_HEAD *" head ", CIRCLEQ_ENTRY " NAME ");"
 .PP
@@ -83,7 +83,7 @@ CIRCLEQ_REMOVE
 .BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "CIRCLEQ_ENTRY *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
+.BI "TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
 .PP
 .BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
@@ -91,9 +91,9 @@ CIRCLEQ_REMOVE
 .BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "CIRCLEQ_ENTRY *CIRCLEQ_NEXT(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "TYPE *CIRCLEQ_NEXT(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "CIRCLEQ_ENTRY *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "TYPE *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .PP
 .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .fi
@@ -266,7 +266,7 @@ and zero if the queue contains at least one entry.
 and
 .BR CIRCLEQ_PREV ()
 return a pointer to the first, last, next or previous
-.I CIRCLEQ_ENTRY
+.I TYPE
 structure, respectively.
 .PP
 .BR CIRCLEQ_HEAD_INITIALIZER ()
diff --git a/man3/list.3 b/man3/list.3
index 4c07a1fab..cbe8b8d1c 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -57,7 +57,7 @@ LIST_REMOVE
 .PP
 .B LIST_ENTRY(TYPE);
 .PP
-.BI "LIST_ENTRY *LIST_FIRST(LIST_HEAD *" head ");"
+.BI "TYPE *LIST_FIRST(LIST_HEAD *" head ");"
 .PP
 .BI "LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
 .\".PP
@@ -79,9 +79,9 @@ LIST_REMOVE
 .PP
 .BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ", LIST_ENTRY " NAME ");"
 .PP
-.BI "LIST_ENTRY *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
+.BI "TYPE *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "LIST_ENTRY LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, LIST_ENTRY " NAME ");"
+.\".BI "TYPE *LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, LIST_ENTRY " NAME ");"
 .PP
 .BI "void LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
 .\".PP
@@ -264,7 +264,7 @@ and zero if the list contains at least one entry.
 and
 .BR LIST_NEXT ()
 return a pointer to the first or next
-.I LIST_ENTRY
+.I TYPE
 structure, respectively.
 .PP
 .BR LIST_HEAD_INITIALIZER ()
diff --git a/man3/slist.3 b/man3/slist.3
index c0182f804..b514f3576 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -57,7 +57,7 @@ SLIST_REMOVE_HEAD
 .PP
 .B SLIST_ENTRY(TYPE);
 .PP
-.BI "SLIST_ENTRY *SLIST_FIRST(SLIST_HEAD *" head ");"
+.BI "TYPE *SLIST_FIRST(SLIST_HEAD *" head ");"
 .PP
 .BI "SLIST_FOREACH(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
 .\".PP
@@ -77,7 +77,7 @@ SLIST_REMOVE_HEAD
 .PP
 .BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
 .PP
-.BI "SLIST_ENTRY *SLIST_NEXT(TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.BI "TYPE *SLIST_NEXT(TYPE *" elm ", SLIST_ENTRY " NAME ");"
 .PP
 .BI "void SLIST_REMOVE(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
 .\".PP
@@ -270,7 +270,7 @@ and zero if the list contains at least one entry.
 and
 .BR SLIST_NEXT ()
 return a pointer to the first or next
-.I SLIST_ENTRY
+.I TYPE
 structure, respectively.
 .PP
 .BR SLIST_HEAD_INITIALIZER ()
diff --git a/man3/stailq.3 b/man3/stailq.3
index 2896d27c9..01b6107b5 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -62,7 +62,7 @@ STAILQ_REMOVE_HEAD,
 .PP
 .B STAILQ_ENTRY(TYPE);
 .PP
-.BI "STAILQ_ENTRY *STAILQ_FIRST(STAILQ_HEAD *" head ");"
+.BI "TYPE *STAILQ_FIRST(STAILQ_HEAD *" head ");"
 .PP
 .BI "STAILQ_FOREACH(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
 .\" .PP
@@ -85,9 +85,9 @@ STAILQ_REMOVE_HEAD,
 .PP
 .BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "STAILQ_ENTRY *STAILQ_LAST(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.\" .BI "TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
 .PP
-.BI "STAILQ_ENTRY *STAILQ_NEXT(TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.BI "TYPE *STAILQ_NEXT(TYPE *" elm ", STAILQ_ENTRY " NAME ");"
 .PP
 .BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", TYPE *" elm ", TYPE,"
 .BI "                STAILQ_ENTRY " NAME ");"
@@ -303,7 +303,7 @@ and zero if the queue contains at least one entry.
 and
 .BR STAILQ_NEXT ()
 return a pointer to the first or next
-.I STAILQ_ENTRY
+.I TYPE
 structure, respectively.
 .PP
 .BR STAILQ_HEAD_INITIALIZER ()
-- 
2.28.0

