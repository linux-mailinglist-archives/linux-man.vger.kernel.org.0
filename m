Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D690435481
	for <lists+linux-man@lfdr.de>; Wed, 20 Oct 2021 22:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230052AbhJTUZF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Oct 2021 16:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhJTUZE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Oct 2021 16:25:04 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B319C06161C
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 13:22:50 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id g25so752582wrb.2
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 13:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yK5Gm+fT7CHdXo7oAn9kPEc/l84vCob4Uc/ehHZArJk=;
        b=Hr73QX5Vjwfif0k7W4Rfv/iiO4/mfgoyc3E49gJZ6/5J1wWJUscVdCZLdardF+Va91
         GlX4nHP+rZkv2r91uUz/8Mzk31UJOGUfLnsuB+tcuUvRDf0CGdx64Y6OqFUY3TxMTSK0
         BB9Xn8AxB6iNMZv+AjxcdK0gJdk11nKZ3bUpm7lti9F6giU9rFsGOzYTlN2g+gHEruBM
         IItqlGzLIfPXgJLAPUJImSVuAjv+PSprNCmGf8/8kvyg0wB4UbpUSSACc/TITaq9n0hz
         2Cr355/mJwGWbcdjYilsbRxoIQp1XuB2g/V5fg8Sgwn79RPLx+bvZhQrGDMWt5TOcS2X
         dFjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yK5Gm+fT7CHdXo7oAn9kPEc/l84vCob4Uc/ehHZArJk=;
        b=mbMQ/sJrP8i4HB5J1o60HhAaZ6EQsMwWmV60fO7vGrAuxiKTS1iGUF0sFWxj/5pQau
         jJkqqaujt9ATFHb0jtJdTWVNTNJV9+Bd2WN1mR/JGNVgGZYUTrQFFyg/jTX+FkmrXsKn
         NOwMFbeeRBxDSatPff2W5RfMa/wZhzw6iFDAFj8AnN4ptTc49G3R/mIrL4kBClF5Sl4f
         HZN8MqZIzlCAgAHrEQPWe4WgKW/kIxf4lMGazOrRWsl89RehlY2AWh9LXn/2ZzhxqaQ4
         jQEYOrFuYYWG6JQu+gJhZgL7Un6YNzlpk9K/LfRJEHn4EQDVWjWa7GCQIMQT/mrqEO4z
         UmkQ==
X-Gm-Message-State: AOAM530bnZrEaV4qp/CTRlsRKWC0CULkY6HfVJ9WmJP4IHymRkCXTzTj
        3HDx0ABSxvH3tr/nUxXnCLs=
X-Google-Smtp-Source: ABdhPJwIFOc0/R3MDTIJkOmc7jPZI9TMCFtzc2HudhoUZTf7pAU1XrMJZClkzuKN/wtcF07YGj+/0g==
X-Received: by 2002:a05:6000:154b:: with SMTP id 11mr1705520wry.422.1634761368653;
        Wed, 20 Oct 2021 13:22:48 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id n11sm2892949wrw.43.2021.10.20.13.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 13:22:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jens Gustedt <jens.gustedt@loria.fr>,
        Glibc <libc-alpha@sourceware.org>
Subject: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add [[gnu::nonnull]] to <time.h> prototypes
Date:   Wed, 20 Oct 2021 22:22:41 +0200
Message-Id: <20211020202241.171180-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211020202241.171180-1-alx.manpages@gmail.com>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

C2X changes the prototypes of <time.h> functions that accept a
pointer that cannot be NULL, to use 'static', which clearly
denotes that passing NULL is Undefined Behavior.

For example, 'time_t mktime(struct tm tm[static 1]);'.

This change is backwards compatible, since array notation is just
syntactic sugar for pointers, and the Undefined Behavior in case
of a pointer already existed (in the wording); it just wasn't
clear from the prototype itself.

However, that forces the use of VLA (array) notation for something
that is *not* an array.  It is cofusing, probably too much for
some programmers not so familiar with the difference between an
array and a pointer, and that happens more than we would like.
Even for programmers that clearly know the difference between an
array and a pointer, this is at least misleading.

That happens because the standard lacks a 'nonnull' attribute, and
only has that (VLA) way of expressing what GCC can express with
'[[gnu::nonnull]]' (a.k.a. '__attribute__((__nonnull__))').

Expressing that NULL pointers shall invoke Undefined Behavior in
the prototype of a function is *way* more readable than having to
read through the whole manual page text, so ideally we should also
follow the standard idea of expressing that.  But we can make use
of more advanced techniques such as the GCC attribute, which help
keep the information that those pointers are actually pointers and
not arrays.

From the 2 different attribute notations, let's use the "C++" one,
which will be part of the standard in C2X (unlike __attribute__),
and is also shorter, which helps keep the SYNOPSIS short (mostly
one-liner prototypes).

See <http://www.open-std.org/JTC1/SC22/WG14/www/docs/n2417.pdf>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Jens Gustedt <jens.gustedt@loria.fr>
Cc: Glibc <libc-alpha@sourceware.org>
---
 man3/ctime.3    | 26 +++++++++++++-------------
 man3/strftime.3 |  1 +
 man3/strptime.3 |  1 +
 man3/timegm.3   |  4 ++--
 4 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 0620741e9..42021a588 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -40,23 +40,23 @@ localtime_r \- transform date and time to broken-down time or ASCII
 .nf
 .B #include <time.h>
 .PP
-.BI "char *asctime(const struct tm *" tm );
-.BI "char *asctime_r(const struct tm *restrict " tm ,
-.BI "                    char " buf "[static restrict 26]);"
+.BI "[[gnu::nonnull]] char *asctime(const struct tm *" tm );
+.BI "[[gnu::nonnull]] char *asctime_r(const struct tm *restrict " tm ,
+.BI "                                     char " buf "[static restrict 26]);"
 .PP
-.BI "char *ctime(const time_t *" timep );
-.BI "char *ctime_r(const time_t *restrict " timep ,
-.BI "                    char " buf "[static restrict 26]);"
+.BI "[[gnu::nonnull]] char *ctime(const time_t *" timep );
+.BI "[[gnu::nonnull]] char *ctime_r(const time_t *restrict " timep ,
+.BI "                                     char " buf "[static restrict 26]);"
 .PP
-.BI "struct tm *gmtime(const time_t *" timep );
-.BI "struct tm *gmtime_r(const time_t *restrict " timep ,
-.BI "                    struct tm *restrict " result );
+.BI "[[gnu::nonnull]] struct tm *gmtime(const time_t *" timep );
+.BI "[[gnu::nonnull]] struct tm *gmtime_r(const time_t *restrict " timep ,
+.BI "                                     struct tm *restrict " result );
 .PP
-.BI "struct tm *localtime(const time_t *" timep );
-.BI "struct tm *localtime_r(const time_t *restrict " timep ,
-.BI "                    struct tm *restrict " result );
+.BI "[[gnu::nonnull]] struct tm *localtime(const time_t *" timep );
+.BI "[[gnu::nonnull]] struct tm *localtime_r(const time_t *restrict " timep ,
+.BI "                                     struct tm *restrict " result );
 .PP
-.BI "time_t mktime(struct tm *" tm );
+.BI "[[gnu::nonnull]] time_t mktime(struct tm *" tm );
 .fi
 .PP
 .RS -4
diff --git a/man3/strftime.3 b/man3/strftime.3
index a24ea720b..715b30edb 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -41,6 +41,7 @@ strftime \- format date and time
 .nf
 .B #include <time.h>
 .PP
+.B [[gnu::nonnull]]
 .BI "size_t strftime(char *restrict " s ", size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm );
diff --git a/man3/strptime.3 b/man3/strptime.3
index d6595d4bf..c1b334d87 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -36,6 +36,7 @@ strptime \- convert a string representation of time to a time tm structure
 .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
 .B #include <time.h>
 .PP
+.B [[gnu::nonnull]]
 .BI "char *strptime(const char *restrict " s ", const char *restrict " format ,
 .BI "               struct tm *restrict " tm );
 .fi
diff --git a/man3/timegm.3 b/man3/timegm.3
index b848e83e1..18b6e4847 100644
--- a/man3/timegm.3
+++ b/man3/timegm.3
@@ -29,8 +29,8 @@ timegm, timelocal \- inverses of gmtime and localtime
 .nf
 .B #include <time.h>
 .PP
-.BI "time_t timelocal(struct tm *" tm );
-.BI "time_t timegm(struct tm *" tm );
+.BI "[[gnu::nonnull]] time_t timelocal(struct tm *" tm );
+.BI "[[gnu::nonnull]] time_t timegm(struct tm *" tm );
 .PP
 .fi
 .RS -4
-- 
2.33.0

