Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DB442F07AB
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 15:59:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726250AbhAJO71 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 09:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726263AbhAJO70 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 09:59:26 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87273C061786
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 06:58:46 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id g25so9506830wmh.1
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 06:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5KWT1iDVVtAoN4v8ozzF2c9ln9c2LmoehYGidadwfPs=;
        b=diV6a+6u41+/a/vygfL5y+ndcMw+901EaqgJSw+i5ZcCvjA0u68NFAksEVvFAt7Awu
         myp+SVC/9lzUXxe2G5lS0UFXQrJkBhIILdqSvWFPP1hJ+eCgDf5en5L+TElGipnaDx5T
         rDfufd+mSisCsVvjLTGmsFmNQ9ybk4Nq5p5DEYIA/EV2p+GtbG+kL0H3wydhvm7TE2J6
         TJNH4HI+fv+gr60K56QD7aIug5Lt23Yczq5diF2eDAkbdZJWIa0W+xu1a/CgAYxOeJPL
         ryS/9Wu8f5/rsh2S3fAqlHIcO+VrNURk++Yjyda0IrrHT2l54HUTPMcrrhWZ/M0LoO34
         q/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5KWT1iDVVtAoN4v8ozzF2c9ln9c2LmoehYGidadwfPs=;
        b=KUbHL7okvnujdp2SG7W5SLOAN9zgV8sXZuZxqssVwwXnMqtuYwoaOaE5zf2qEtEC5N
         yv2yd1n0IJszpF11MOxqnJ3FHbWVvF14QoQSESuw9VQNou/A9ZxTR09K4Ls3Co9MuNHr
         r1BEYwbHvDMONM/0Zc/gTNzMrzcnwl5ceK9x2f7KVUlsD+LbRxAR7CqHCa5Ef6LtGQ5a
         KDDxSZhTTtcZr7YJei7UvzUrfF7ROP7aOsYnyYqGypDbq9LwPyyiz9W2G9OXgTNeSoAy
         8H/r88W4WyAmOSujICI2eDLbVBY0IvO2UT0bAS9rCDNvF+A/n7Y4frwuzcEzzzZiToCo
         XR6A==
X-Gm-Message-State: AOAM532S0c5nMOyUzRuXA4wtA7/1j1NfKUKROweJbqVY/CHXoelxuz2V
        ushLTC1C8LcfTgdptoToctM=
X-Google-Smtp-Source: ABdhPJwKh6Z9Vbh6qhxjcq2+YSToptt+/H1Wfw8cQTOe0g57BJyv+vfqUw7KCuLemSMiLAZQ+xXGyQ==
X-Received: by 2002:a7b:c0d3:: with SMTP id s19mr11050404wmh.167.1610290725291;
        Sun, 10 Jan 2021 06:58:45 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id b10sm19756676wmj.5.2021.01.10.06.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 06:58:44 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] posix.py: ffix: Correctly format URIs
Date:   Sun, 10 Jan 2021 15:57:46 +0100
Message-Id: <20210110145745.4360-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
References: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

$ man 7 uri 2>/dev/null \
  |sed -n '/Writing a URI/,/^$/p';
   Writing a URI
       When  written, URIs should be placed inside double quotes
       (e.g., "http://www.kernel.org"), enclosed in angle brack‐
       ets  (e.g.,  <http://lwn.net>),  or  placed  on a line by
       themselves.  A warning for those who  use  double-quotes:
       never  move  extraneous  punctuation  (such as the period
       ending a sentence or the comma in a list) inside  a  URI,
       since  this  will  change the value of the URI.  Instead,
       use angle brackets instead, or switch to a quoting system
       that  never  includes extraneous characters inside quota‐
       tion marks.  This latter  system,  called  the  'new'  or
       'logical'  quoting  system by "Hart's Rules" and the "Ox‐
       ford Dictionary for Writers and  Editors",  is  preferred
       practice  in Great Britain and hackers worldwide (see the
       Jargon  File's   section   on   Hacker   Writing   Style,
       ⟨http://www.fwi.uva.nl/~mes/jargon/h
       /HackerWritingStyle.html⟩, for more information).   Older
       documents  suggested inserting the prefix "URL:" just be‐
       fore the URI, but this form has never caught on.

Enclose URIs in .UR/.UE,
which encloses the URIs in between <> (or similar characters).
It is especially important in this case,
as the URIs are followed by '.'.

This also fixes the extraneous space that was used to
separate the URIs from the final period.
In some cases, the period ended in a line of its own.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 posix.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/posix.py b/posix.py
index 55e401a..60271cc 100755
--- a/posix.py
+++ b/posix.py
@@ -337,14 +337,16 @@ for file in sys.argv[2:]:
       "Electrical and Electronics Engineers, Inc and The Open Group.\n"
       "In the event of any discrepancy between this version and the original IEEE and\n"
       "The Open Group Standard, the original IEEE and The Open Group Standard\n"
-      "is the referee document. The original Standard can be obtained online at\n"
-      "http://www.opengroup.org/unix/online.html .\n"
+      "is the referee document.  The original Standard can be obtained online at\n"
+      ".UR http://www.opengroup.org/unix/online.html\n"
+      ".UE .\n"
       ".PP\n"
       "Any typographical or formatting errors that appear\n"
       "in this page are most likely\n"
       "to have been introduced during the conversion of the source files to\n"
-      "man page format. To report such errors, see\n"
-      "https://www.kernel.org/doc/man-pages/reporting_bugs.html .\n"
+      "man page format.  To report such errors, see\n"
+      ".UR https://www.kernel.org/doc/man-pages/reporting_bugs.html\n"
+      ".UE .\n"
       )
 
     text = "".join(lines)
-- 
2.30.0

