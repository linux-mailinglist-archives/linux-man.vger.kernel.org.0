Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C56A9377871
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbhEIUVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbhEIUVS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:18 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 134A1C06175F
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:12 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id l2so14433274wrm.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cppW1TuMVdKNuuwdYFi01fCEB1ceaPLP/QRgl/UFIg8=;
        b=i4Gw1oIF5DYsCPsdN9Hi+wWjArZ1JY/XLWfxlHl7QajqrPUk3UtWGznrdT9PXjLZ4k
         Y2877PAWgmRII+CFd5sAGplhEwU0sdBA2r2oW5PhResJYdAsZXxvGtm+CTiOI81bcC1S
         ev80agXqY5Q2bQJcx1mw986VrzaXltaFOW+lIAnIa8QaqcN+Rr6Qasa58kqxOqNZeyJe
         dRfOsC7YAXm+yGISPsxtz1/BeTKAD5QqrYq0Gr1aAWnqJ8/eZa3UoJAvaimc5rEdSNmK
         KSCvmgnLynGI3O4g99EuXp/lpdRdO5VGl3yKd3YNpQsWmpgp/ryB5aQyBogYfXlMhPbM
         bs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cppW1TuMVdKNuuwdYFi01fCEB1ceaPLP/QRgl/UFIg8=;
        b=NMVS5aizgNeb/zveRCmKffBLcCbY1cwTNJC6AAKwl3wcfcA1G0vag7qOPq7OdUEod3
         DC+MpDNUFjRy/7o49CUDu1LA6kHyZy5W7FliWXTiee6B0RRWVX49JHzpYpoyoc+SX3ll
         R+cLrVkEhCRImqLMv1H4DXUTLmTHQtsvtw+rz+N2Gg923AwvZVbMnybjafkdwBWNXAye
         niXDAYukVO/1W4vIMww9LTZa+Eynqw8bZn3vFB0gnzxa/OAx+hLtZcotjSW3z1QE3QO/
         vf5GwEOUf71dHVEtkCq6LHMNbhv4L6zlNpcY/G71wB0Y71s8gs1FheJBKJzXhWyNzVS4
         qIUg==
X-Gm-Message-State: AOAM530xzFuVN/YxUSHllyOuEb874OmxulpeW0oHD/iewKLE5UnfmUrO
        jDOkPIZLXXEA6xJeaTz30pA=
X-Google-Smtp-Source: ABdhPJw7GikH9hrlFXe8TVbrYC9CG+k6+5QM4qAU4Q2DR+BEUljP+7oV5XmzlMzALKPWRNAx1dj6jQ==
X-Received: by 2002:a05:6000:108b:: with SMTP id y11mr26619921wrw.166.1620591610871;
        Sun, 09 May 2021 13:20:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     "James O. D. Hunt" <jamesodhunt@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 10/17] getopt.3: Clarify behaviour
Date:   Sun,  9 May 2021 22:19:43 +0200
Message-Id: <20210509201949.90495-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "James O. D. Hunt" <jamesodhunt@gmail.com>

Improved the `getopt(3)` man page in the following ways:

1) Defined the existing term "legitimate option character".
2) Added an additional NOTE stressing that arguments are parsed in strict
   order and the implications of this when numeric options are utilised.

Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getopt.3 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man3/getopt.3 b/man3/getopt.3
index 921e747f8..e88321ed0 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -126,6 +126,11 @@ Then \fIoptind\fP is the index in \fIargv\fP of the first
 .PP
 .I optstring
 is a string containing the legitimate option characters.
+A legitimate option character is any visible one byte
+.BR ascii (7)
+character (for which
+.BR isgraph (3)
+would return nonzero) that is not dash (\(aq\-\(aq) or colon (\(aq:\(aq).
 If such a
 character is followed by a colon, the option requires an argument, so
 .BR getopt ()
@@ -402,6 +407,24 @@ routine that rechecks
 .B POSIXLY_CORRECT
 and checks for GNU extensions in
 .IR optstring .)
+.PP
+Command-line arguments are parsed in strict order
+meaning that an option requiring an argument will consume the next argument,
+regardless of whether that argument is the correctly specified option argument
+or simply the next option
+(in the scenario the user mis-specifies the command line).
+For example, if
+.I optstring
+is specified as "1n:"
+and the user specifies the command line arguments incorrectly as
+.IR "prog\ \-n\ \-1" ,
+the
+.I \-n
+option will be given the
+.B optarg
+value "\-1", and the
+.I \-1
+option will be considered to have not been specified.
 .SH EXAMPLES
 .SS getopt()
 The following trivial example program uses
-- 
2.31.1

