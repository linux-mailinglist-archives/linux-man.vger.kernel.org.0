Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C99138CFB4
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 23:17:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbhEUVSf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 17:18:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbhEUVSf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 17:18:35 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52E75C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:11 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id n2so22390481wrm.0
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ya0zmu/qS1M3iRoKVBQ3NWAOQDCebtmtnFH1xvgql0A=;
        b=iHEVcqxbnkR8bmImC9zXg77z2v1WoSOLxUcHBthkTTwKaZrNj0eoN9CfF8XpU8BN9k
         ro9s/pKQ591n8/R0INTVnz6rTVNSe3U6GZ18KGbxTeVdvS/f56QJruWJRz6RFVJGFT6A
         hUpX7LVZ6SUpOV5drVo6Pt8ZDm4vo0SGg8Tc1Rkv/t8fCHSoZlO/l2FH/RPyH6a3NiBs
         mtZXmepijdaK3SgHj/veDrABe850SD37EfQyLPPSgmNX4d8PY+ceM6yI+6w+rMweg70p
         SiHz7DC//3XsejeuQAzdwPRqGX4735FjSNOjQavbauF7WbkwdECQXxmr+c+bRbxI+k8s
         BVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ya0zmu/qS1M3iRoKVBQ3NWAOQDCebtmtnFH1xvgql0A=;
        b=eFVKu3pKHjw9HTDveAJjwtcFne1DrFe49WAd3U9FkB2mv9PbvlRcuxxco6Ukl6+frd
         woBUHdQcW5CpJVdTnZv1aNv5MgcGDyyQ2I0NrVzSRUeuU1oBjneL1wIVgZBsw8mZQz0F
         tqPyPX8qAOkVJrOTzJbYa22inRsidK89aQKnUR0BtMGOXHPCZiPjNGYpYwtvWmF4t2VZ
         fvAc1YkyrUg3GeiJPO8ty9Xqi9am4DgqMWPfwiB+XSz7dEtOcJxKDB5eQ8LSCJ3/Yuhx
         soLOZkhVN9+ST+QlSTXbW3ZkrUSewFLSwNA2X3qjEWqMNy4+LLPHv17a62lFbntlja8q
         aCbg==
X-Gm-Message-State: AOAM533tAfG9xjrFtMNg1gT+HjOzuql375x8/Qa05YglNgzTeXOO3mCa
        YqswPtu50e27JK7G/gG4N9DIfy9K5tizAQ==
X-Google-Smtp-Source: ABdhPJz9+2ul+HsmpsLncwcZHJQD+dIEYFHJ5ZA6HeaRsbEU/FTQtq9OdABoQP7gM4esn9hHpcbifQ==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr11481330wre.157.1621631830000;
        Fri, 21 May 2021 14:17:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm3944489wrq.0.2021.05.21.14.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 14:17:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 4/4] request_key.2: Add LIBRARY section
Date:   Fri, 21 May 2021 23:16:54 +0200
Message-Id: <20210521211652.49949-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521211652.49949-1-alx.manpages@gmail.com>
References: <20210521211652.49949-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/request_key.2 | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/man2/request_key.2 b/man2/request_key.2
index ea23e7ed5..c49d05e46 100644
--- a/man2/request_key.2
+++ b/man2/request_key.2
@@ -12,17 +12,17 @@
 .TH REQUEST_KEY 2 2021-03-22 Linux "Linux Key Management Calls"
 .SH NAME
 request_key \- request a key from the kernel's key management facility
+.SH LIBRARY
+libkeyutils
+.RI ( libkeyutils ", " -lkeyutils )
 .SH SYNOPSIS
 .nf
 .B #include <keyutils.h>
 .PP
 .BI "key_serial_t request_key(const char *" type ", const char *" description ,
 .BI "                         const char *" callout_info ,
-.BI "                         key_serial_t " dest_keyring ");"
+.BI "                         key_serial_t " dest_keyring );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .BR request_key ()
 attempts to find a key of the given
@@ -437,13 +437,6 @@ The ability to instantiate keys upon request was added
 in Linux 2.6.13.
 .SH CONFORMING TO
 This system call is a nonstandard Linux extension.
-.SH NOTES
-Glibc does not provide a wrapper for this system call.
-A wrapper is provided in the
-.IR libkeyutils
-package.
-When employing the wrapper in that library, link with
-.IR \-lkeyutils .
 .SH EXAMPLES
 The program below demonstrates the use of
 .BR request_key ().
-- 
2.31.1

