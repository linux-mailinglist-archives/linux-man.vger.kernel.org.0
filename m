Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7B172F036B
	for <lists+linux-man@lfdr.de>; Sat,  9 Jan 2021 21:27:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726006AbhAIU1Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 15:27:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726001AbhAIU1P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 15:27:15 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07F06C06179F
        for <linux-man@vger.kernel.org>; Sat,  9 Jan 2021 12:26:35 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id a12so12261088wrv.8
        for <linux-man@vger.kernel.org>; Sat, 09 Jan 2021 12:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WExaGSpqqHAiMHGRB38lOndCyQzZ1zBSkrWh+U1F1y0=;
        b=Cxvaa5jKM5T2HXoQyE+VGTzKrGXK7YLCaIUDPpP/nO/vyvrK+pvpp5ixdrQSEuwUms
         cxTW23Ht2euERLIeLI+JEtKV20RmGSlp3ErlsAp73AOByMj2duz2USri5y0d/IFMbUj8
         muYO4fzTb/3nHoDsckE3m1FX258Zn5aJI8/AoXP3i9Z5XsH2ScmdGHIogOgKSc3pnllX
         CYzwAU87345tb4PNB2C9CYdNW/cDkL9R/IE3DVqCNG4vu3jBpqYvckKytFfVp6dL5OWC
         SrZABAy5sqU4OQuJ6RvsO0JDc9EJVKix1x+CwW01oUyiFUs9kxRnzFmocz9qcaAdKlC8
         pXpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WExaGSpqqHAiMHGRB38lOndCyQzZ1zBSkrWh+U1F1y0=;
        b=PJtb1g1EQXdjqhC16pbnnvlh/V0Gp9EsZ89FuUnVOvLzXBNuu5PXnd3y/Tu+z99xFm
         xAoEfP64mkveWg/09xO9u2aeSZ8S9Oj1mYfgXXj4Xb0YdqwDchOQaXwhMXHQK5zqyUgh
         8BlQaFX4CHwifPrKZ65gF9q1v1OxWjPkyJ/cbpoWlYKhmi7Oo1cMFoVaJGHJ58fr7jim
         QwLcqOg/tdlY76o0V6QR4vUG1k6H37GNsDSkTroFpdkxRxD1IdibrJeBclcqKn3hftXi
         JKpbkGFD6+or/eBitJTwTUbRnHJ/LSYJ1AqFg85Yc2vS8c29J3SmxpC79zMELK8j9/3R
         UhRQ==
X-Gm-Message-State: AOAM530N/H7+kQqj10u1tn/sxciByr6pRT3Gz6S7aIms0SPwtXZUcxyL
        ZSYr5iqCqHIbSwp/AzF2o0o+zJ14u0Y=
X-Google-Smtp-Source: ABdhPJzjzTT4c+OgTqM57Iy+ojuQN7JXD5zEKA2UvHHyM5ekbDx+2M9G5DAlQAcoqt1XUGXKhykqSQ==
X-Received: by 2002:adf:8503:: with SMTP id 3mr9503703wrh.56.1610223993804;
        Sat, 09 Jan 2021 12:26:33 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o8sm18409995wrm.17.2021.01.09.12.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 12:26:33 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH] posix.py: ffix: Correctly format URIs
Date:   Sat,  9 Jan 2021 20:58:41 +0100
Message-Id: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.30.0
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
       ⟨http://www.fwi.uva.nl/~mes/jargon/h/HackerWritingStyle.html⟩,
       for more information).   Older
       documents  suggested inserting the prefix "URL:" just be‐
       fore the URI, but this form has never caught on.

Enclose URIs in <>.  It is especially important in this case, as
the URIs are followed by '.'.
From "" or <>, I prefer <>, as they are less used in other
contexts, so they are more easily read as URIs.

This also fixes the extraneous space that was used to separate
the URIs from the final period.
In some cases, the period ended in a line of its own.

Also enclose them in [.UR/.UE].

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hello Michael,

This patch is for man-pages-posix.git.
I found that the link in uri(7) is broken,
but I found that same document here:
http://www.catb.org/jargon/html/writing-style.html
I'll patch uri.7 to fix that link.

That was a very interesting read.
I got why you tend to use "xxxx (xxxx.)" and not "xxxx (xxxx).",
the latter being _much_ more common in Spanish (and other languages)
(actually, I've never read the former in Spanish).

Regards,

Alex

 posix.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/posix.py b/posix.py
index 55e401a..27f6207 100755
--- a/posix.py
+++ b/posix.py
@@ -337,14 +337,16 @@ for file in sys.argv[2:]:
       "Electrical and Electronics Engineers, Inc and The Open Group.\n"
       "In the event of any discrepancy between this version and the original IEEE and\n"
       "The Open Group Standard, the original IEEE and The Open Group Standard\n"
-      "is the referee document. The original Standard can be obtained online at\n"
-      "http://www.opengroup.org/unix/online.html .\n"
+      "is the referee document.  The original Standard can be obtained online at\n"
+      ".UR <http://www.opengroup.org/unix/online.html>\n"
+      ".UE .\n"
       ".PP\n"
       "Any typographical or formatting errors that appear\n"
       "in this page are most likely\n"
       "to have been introduced during the conversion of the source files to\n"
-      "man page format. To report such errors, see\n"
-      "https://www.kernel.org/doc/man-pages/reporting_bugs.html .\n"
+      "man page format.  To report such errors, see\n"
+      ".UR <https://www.kernel.org/doc/man-pages/reporting_bugs.html>\n"
+      ".UE .\n"
       )
 
     text = "".join(lines)
-- 
2.30.0

