Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3844A6D896F
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 23:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234174AbjDEVTh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 17:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234115AbjDEVTf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 17:19:35 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45BEE6585
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 14:19:33 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id v6-20020a05600c470600b003f034269c96so12515161wmo.4
        for <linux-man@vger.kernel.org>; Wed, 05 Apr 2023 14:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680729572; x=1683321572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ueeeIj2GXTilyh1vp+gNP5VsvO7TETLArnAbj81KJKU=;
        b=RxOMrN2lxOEyJDXt37EqBlX6jlXzWhZdtoGsm8TYr9uWp3K86Z1THJ1is5BjsG09JW
         t3veZXvDWB8qRdFHnD9LcugWxCeuHns4tnNefBHLrDtuhMLGTiEZGcFQ/3rYdS1OifTv
         7Izfq9dd+bw4Lci2Fi6GXrLa0QqCKKXb4ScWlQG0bG+FeTm4fet8T1vm1CsuObHkgmPd
         tbuIvkiRmAEvQd0OBUf9MXRp6PK+wHxdyG6LdOJrmf6Gk9xQHp15bs7GdWZjc5Ysrr/z
         XbZOwIs1EJgs8DXzf4aEBuMcXalF0Ihy4L/dcFE2cBxTRXk2Q8Iwn/2QOWOpgK44mokV
         V5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680729572; x=1683321572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ueeeIj2GXTilyh1vp+gNP5VsvO7TETLArnAbj81KJKU=;
        b=lK599NQj3JayU/if8hkUJu/6A9GbQQU9oebEPWwptuyHXAIg7OzdsIFk9gIx+4tQD0
         3bNGujk3fS9ZnDapbjtl5BKIhPC9JKDdc1HN7BgRoUdeprRR48d/fF2RBtcnMtvEAEf3
         fq5NF67CzwOVE0uD7deu+uJ5t973gOx7PtDOqk4pzWHN0JoXzyBDjGlSDk7eoHRgpCRj
         6pkH+hh+NAA3jYrjVKeWlOM0rMyoGOBnCOy1ToIal5Z4+jbQRccm826LUIzHvVAQK4OD
         B/ORxdZUorvNhwZI1+SZq+6XULbvTyhlILpHyZPHvpsU0FjWqJA7Zppz/3vHBC3tcmEv
         MlMw==
X-Gm-Message-State: AAQBX9cZL4rrt8QAoQaIn0ZB/U62R/6ra+L/wufecndeJSoFZqpwrOC+
        yFr9Ko8T6C7HbiaPpS/7SaIrLfUDJUk=
X-Google-Smtp-Source: AKy350adHpTEL/LO7+QbM1A4vRW+iGoXW9jJMUBtGNjeG9UWuXdYSeZGj9fG2hnrNLbEDtCViyNsEA==
X-Received: by 2002:a1c:f617:0:b0:3ee:672d:caae with SMTP id w23-20020a1cf617000000b003ee672dcaaemr5677502wmc.36.1680729571593;
        Wed, 05 Apr 2023 14:19:31 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id h18-20020a05600c315200b003ef6708bc1esm3414677wmo.43.2023.04.05.14.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 14:19:31 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Mingye Wang <arthur200126@gmail.com>,
        Siddhesh Poyarekar <siddhesh@gotplt.org>,
        DJ Delorie <dj@redhat.com>, Sam James <sam@gentoo.org>,
        Florian Weimer <fweimer@redhat.com>,
        Andreas Schwab <schwab@linux-m68k.org>,
        Zack Weinberg <zack@owlfolio.org>,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>
Subject: [PATCH] malloc_usable_size.3: The returned value should not be trusted
Date:   Wed,  5 Apr 2023 23:19:26 +0200
Message-Id: <20230405211925.32070-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It might very well return a value larger than the actual usable size, so
writing to the excess bytes is Undefined Behavior.  There's absolutely
no promise about the value, except that it is no less than the size
that was once passed to malloc(3).

Link: <https://github.com/systemd/systemd/issues/22801#issuecomment-1343041481>
Link: <https://inbox.sourceware.org/libc-alpha/20221124213258.305192-1-siddhesh@gotplt.org/T/>
Reported-by: Mingye Wang <arthur200126@gmail.com>
Reported-by: Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc: DJ Delorie <dj@redhat.com>
Cc: Sam James <sam@gentoo.org>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Andreas Schwab <schwab@linux-m68k.org>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: Wilco Dijkstra <Wilco.Dijkstra@arm.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/malloc_usable_size.3 | 33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/man3/malloc_usable_size.3 b/man3/malloc_usable_size.3
index 754b255de..f96f1abb5 100644
--- a/man3/malloc_usable_size.3
+++ b/man3/malloc_usable_size.3
@@ -13,20 +13,17 @@ .SH SYNOPSIS
 .nf
 .B #include <malloc.h>
 .PP
-.BI "size_t malloc_usable_size(void *" ptr );
+.BI "size_t malloc_usable_size(void *_Nullable " ptr );
 .fi
 .SH DESCRIPTION
-The
-.BR malloc_usable_size ()
-function returns the number of usable bytes in the block pointed to by
-.IR ptr ,
-a pointer to a block of memory allocated by
+This function can be used for
+diagnostics or statistics about allocations from
 .BR malloc (3)
 or a related function.
 .SH RETURN VALUE
 .BR malloc_usable_size ()
-returns the number of usable bytes in
-the block of allocated memory pointed to by
+returns a value no less than
+the size of the block of allocated memory pointed to by
 .IR ptr .
 If
 .I ptr
@@ -50,17 +47,17 @@ .SH ATTRIBUTES
 .sp 1
 .SH STANDARDS
 GNU.
-.SH NOTES
+.SH CAVEATS
 The value returned by
 .BR malloc_usable_size ()
-may be greater than the requested size of the allocation because
-of alignment and minimum size constraints.
-Although the excess bytes can be overwritten by the application
-without ill effects,
-this is not good programming practice:
-the number of excess bytes in an allocation depends on
-the underlying implementation.
-.PP
-The main use of this function is for debugging and introspection.
+may be greater than the requested size of the allocation
+because of various internal implementation details,
+none of which the programmer should rely on.
+This function is intended to only be used
+for diagnostics and statistics;
+writing to the excess memory without first calling
+.BR realloc (3)
+to resize the allocation is not supported.
+The returned value is only valid at the time of the call.
 .SH SEE ALSO
 .BR malloc (3)
-- 
2.40.0

