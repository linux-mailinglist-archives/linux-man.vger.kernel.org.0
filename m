Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A389407943
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232881AbhIKQCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232693AbhIKQCp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:45 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B2CC061756
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:32 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id q26so7347790wrc.7
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YbzFyMWUWXw01FJ4CyujcRsOkWerw8hd3kgDfXzCckI=;
        b=IcuH0Q8tusKA0zElm84VCQLNQubJltQ87rFuN5KQkQFsdX4i1BNa2q1fBABudG/5KE
         IycvNRN9gAMzMGy5miRU2i5nEdYjCnR1lA1/SsE3HdSEvajEC4OGGh7jQRcdDttLpVUG
         qvQuElptXXH3FAKAbBbOZX77bRpg8M+zOMSlP+LeZGtZK0AsO+/yEPxsq5f8QzsNBXNa
         7FqPbKQJ0RW1jUFWByxgHOt+RuCrDomkC1vNI3Y/tcOJk+3ZqPesWVbqM6AU9UUPxxWO
         +8C5DnUsktB8BatDbnI313ka6aLbxYOqP1+AlP7hXXS8IZwwUOCkwNpQ5isCS0mw0nky
         hLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YbzFyMWUWXw01FJ4CyujcRsOkWerw8hd3kgDfXzCckI=;
        b=0PXl4Aw6cDYmEahHeNkw5x6BzojRqyCDtUXXO4EHDg89Yi1HZJwIasQibw9IrgiIsb
         uNZK5BHfDpwAyCBM8bZLazTH72f3SZbBjKFjXMtL8jrDrpAaIJeNlTEOXhEjPq4onQTS
         pAM6u8bmPV8hVs0uUtPs7cvu6EbND4GFcIZJD/Vh4pW4EyVSwfuCEOFhXSIlOZ5kS+aD
         0f2eEGebmKv/zqMwsg7U8zzB+d5OqxREUdziuZzIV5Z8oMxKG587UdekkziF7OvpD28/
         Osy9w6SZpxsBKgmMkEUzglAmWZOGTbMqfbAuHorKOjWqYunD3bk4onTH+BE+JjH1Pr9B
         tPNw==
X-Gm-Message-State: AOAM53200utj5dr5kjZ1UezBOXLjINn6a6Rl4asJpYPqVC0cO77gX1z+
        /vDfrTGdE5tw5lW+zBI3yUU=
X-Google-Smtp-Source: ABdhPJx1p560We5UE59HGenHco5OrfYjphAXZWQJI6VNmAJZ63HfRqfhqsTNlsatTlQLcJ6F33evPg==
X-Received: by 2002:a05:6000:1a52:: with SMTP id t18mr3640441wry.21.1631376091098;
        Sat, 11 Sep 2021 09:01:31 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 04/45] request_key.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:37 +0200
Message-Id: <20210911160117.552617-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/request_key.2 | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/man2/request_key.2 b/man2/request_key.2
index 145aff506..e0d05525a 100644
--- a/man2/request_key.2
+++ b/man2/request_key.2
@@ -12,17 +12,17 @@
 .TH REQUEST_KEY 2 2021-08-27 Linux "Linux Key Management Calls"
 .SH NAME
 request_key \- request a key from the kernel's key management facility
+.SH LIBRARY
+Linux Key Management Utilities
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
@@ -437,16 +437,6 @@ The ability to instantiate keys upon request was added
 in Linux 2.6.13.
 .SH CONFORMING TO
 This system call is a nonstandard Linux extension.
-.SH NOTES
-Glibc does not provide a wrapper for this system call.
-A wrapper is provided in the
-.IR libkeyutils
-library.
-(The accompanying package provides the
-.I <keyutils.h>
-header file.)
-When employing the wrapper in that library, link with
-.IR \-lkeyutils .
 .SH EXAMPLES
 The program below demonstrates the use of
 .BR request_key ().
-- 
2.33.0

