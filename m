Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05F1A443540
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234938AbhKBSRj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbhKBSRi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:38 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F885C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:03 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id d27so16689698wrb.6
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dGkdycBkwYFIel+kRCVQJb5DR6Flinc0I2uBgtS8zOQ=;
        b=A1RP3KMnX3I84Mi5vHkA2W+CD2jJFQedU8g/r4mT6yz0QTkAfYtmlVNS3AO6mBJqv2
         MDhQNmmPi07YnjZH1k+HBWhQDZj+WgpL2O1Q7YNQ+P8lYzwiK9JphaZb+PxUuZFkkb30
         WzbM/H8gObqDUnBQB1aJ8UqH4IaLGmkiPmuNGq/sV75vjY4MvePdnu+ve9NcsJxVgg+m
         RQmHYeTYbpMk6mdTQMrzXXJbD7DeYMk9RejRk1G8MUp+KFZRC2Yenxra5QFhG9bY+1H1
         Nimubi8U6gqv9+zrqyzQTseo/wNIIi2SF4rWjHJ7Z32Uzbo5kSVZ5vgldkh3wj00VQW3
         +DYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dGkdycBkwYFIel+kRCVQJb5DR6Flinc0I2uBgtS8zOQ=;
        b=1SiXFZe8n+WzlySl2YAMHFGg45EcqPUpe1MV9qYiAMDR6+/RQX95wHZyPMTst9aHC+
         //VydWkaD/hPJnbG3eMmP1/Lh+eHCupnGSPexZoxMZ9kZ3U4v3MZuvhjDZqHNo+6HAu6
         OfBd+2MI3gIe9wtSwO/MGfjcUM/Ru1L0djC0Sm5donwrHReztMj86gkBElMjIyJ4dBtn
         tvcY1QVX/7ZonYXAmwMLFGRCnwlyG0T1sIcLCS7AzCmGnpXidNDsVKmOKoP5M25or5zD
         IVUeDoiAgGbu7H07h1pl1/4i1rg39JVlyBNt/0DWQE8iBnmY4FznTvIt717aPE1mfyo4
         sbcw==
X-Gm-Message-State: AOAM530VxtPx8T5tX1A7f5laUrGRqvfZ+OVoaH6t9nZuugJRNRHC77bX
        9SmaavaHiIz79AbJOIZcSynPXWzmTuE=
X-Google-Smtp-Source: ABdhPJzw5zMdkJogUjCoRPzIsac4oo4Nv2TU0iFhjEtUHCcocAUwetZyF416zvPyWQQs/VRWVldkqw==
X-Received: by 2002:a5d:6147:: with SMTP id y7mr5230105wrt.217.1635876901752;
        Tue, 02 Nov 2021 11:15:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 04/37] system_data_types.7: Link to the stat structure definition
Date:   Tue,  2 Nov 2021 19:14:21 +0100
Message-Id: <20211102181454.280919-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The definition of 'struct stat' is not in stat(2) anymore.  It is
in the same system_data_types(7) page, so link to it.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index cfccdd0f4..81f8ebdc9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -102,7 +102,9 @@ it shall be a signed integer type.
 POSIX.1-2001 and later.
 .PP
 .IR "See also" :
-.BR stat (2)
+the
+.I stat
+structure in this page.
 .RE
 .\"------------------------------------- blksize_t --------------------/
 .TP
@@ -121,7 +123,9 @@ it shall be a signed integer type.
 POSIX.1-2001 and later.
 .PP
 .IR "See also" :
-.BR stat (2)
+the
+.I stat
+structure in this page.
 .RE
 .\"------------------------------------- cc_t -------------------------/
 .TP
@@ -207,8 +211,12 @@ For further details of this type, see
 POSIX.1-2001 and later.
 .PP
 .IR "See also" :
-.BR mknod (2),
-.BR stat (2)
+.BR mknod (2)
+.PP
+.IR "See also" :
+the
+.I stat
+structure in this page.
 .RE
 .\"------------------------------------- div_t ------------------------/
 .TP
@@ -807,8 +815,12 @@ POSIX.1-2001 and later.
 .BR chmod (2),
 .BR mkdir (2),
 .BR open (2),
-.BR stat (2),
 .BR umask (2)
+.PP
+.IR "See also" :
+the
+.I stat
+structure in this page.
 .RE
 .\"------------------------------------- off64_t ----------------------/
 .TP
-- 
2.33.1

