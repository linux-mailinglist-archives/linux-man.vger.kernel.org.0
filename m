Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 257B232412A
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235745AbhBXPnV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237408AbhBXOtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:22 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22811C061226
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:01 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id w7so2004397wmb.5
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7fUYoZlXXDhKw0+AQZG3y/uzoVru9eLXHq8JSmUPuTU=;
        b=NJUpWtTn0x35RGoPOEPZwt173rqRtkxOyQaGOcLbOoePVJTBQsYfWUELv+O2AYwrsf
         WoQ0ujd4+sfMARCHCab01qYOTZlP/U7paIG9b0KV1+KPR6EmIG39cGA71hQeJOKpEn/g
         8Riii8T2HRiyNAFigRe++hFTJOBCcnY6QotG5DHgfqwh8trCMVXUoqXOqnsbDQrgIouf
         4Qd2Qs/58sORRWNsKawHr9Y6yqSj1mSpFmAH5vmmTNJ6E+A0mg39tef5P0/2gfwFGSAZ
         6HBPTxGl6VNQ5WYiBcXCJv0c4DKb1KXboeQyT6Yk2eiNh1rQO/cg/q9XqLatMREPLFXj
         TSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7fUYoZlXXDhKw0+AQZG3y/uzoVru9eLXHq8JSmUPuTU=;
        b=aSTq+E7JR/3pkCL/f8paODwzTyvMryjRvLOYwaA7WKHBz8ASJ2b/yRQbfq5KyrYPmK
         Hr4b022QWR6lI2tYxJzxQr+NFZ2NqmQX7vWLCC1xqJ1kNrb3ejkC6uNWbiDuHwS28com
         D4Nf6lasVuVuJ5j2ua9Zwaz6ggmcXoRgwZko9YwsJhF5055DpGGV3EAjwYSTg3muPVqz
         bKtQYqe+zdHR1W8NcBTutr8c+veC6SX7G+1LzCxLt6SpzbxOtG8BeU1/A4lXMZczhPT9
         M/ggIIBsr44wCgoFdPf3+nfBFdFploKpF/YZkXqd6Mcvpnm8Qv0qDaEHrbnc0uxdHUhZ
         UrJQ==
X-Gm-Message-State: AOAM5327BpHPlIGHyHL7X0Z9Fv5ofNoPdl+37nW1bGH5dbO8SgPTHibG
        4f3X0qao/daHuzYXXYxdnLM=
X-Google-Smtp-Source: ABdhPJxgm2hJ1JvsRlKgzGbwoohGqWQPpi7wOvKsMJBsY8CNWyaz6fxuJY437oRb5/TCJLZQmbH1/w==
X-Received: by 2002:a1c:29c4:: with SMTP id p187mr4169277wmp.8.1614177839962;
        Wed, 24 Feb 2021 06:43:59 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 06/20] ctime.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:57 +0100
Message-Id: <20210224144310.140649-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of asctime_r(), gmtime_r(),
and localtime_r() shall be restrict.  Glibc uses 'restrict' too.
Let's use it here too.

ctime_r will be covered in a future commit,
as the glibc implementation differs from POSIX.

......

=============================  asctime
timezone/private.h:501:
char *asctime(struct tm const *);
time/time.h:139:
char *asctime (const struct tm *tp) THROW;
=============================  asctime_r
timezone/private.h:502:
char *asctime_r(struct tm const *restrict, char *restrict);
timezone/private.h:522:
char *asctime_r(struct tm const *restrict, char *restrict);
timezone/private.h:711:
char *asctime_r(struct tm const *, char *);
time/time.h:149:
char *asctime_r (const struct tm *restrict tp,
                        char *restrict buf) THROW;
=============================  ctime
timezone/private.h:503:
char *ctime(time_t const *);
time/time.h:142:
char *ctime (const time_t *timer) THROW;
=============================  ctime_r
timezone/private.h:504:
char *ctime_r(time_t const *, char *);
timezone/private.h:712:
char *ctime_r(time_t const *, char *);
time/time.h:153:
char *ctime_r (const time_t *restrict timer,
                      char *restrict buf) THROW;
=============================  gmtime
timezone/private.h:512:
struct tm *gmtime(time_t const *);
time/time.h:119:
struct tm *gmtime (const time_t *timer) THROW;
=============================  gmtime_r
timezone/private.h:513:
struct tm *gmtime_r(time_t const *restrict, struct tm *restrict);
time/time.h:128:
struct tm *gmtime_r (const time_t *restrict timer,
                            struct tm *restrict tp) THROW;
=============================  localtime
timezone/private.h:514:
struct tm *localtime(time_t const *);
time/time.h:123:
struct tm *localtime (const time_t *timer) THROW;
=============================  localtime_r
timezone/private.h:515:
struct tm *localtime_r(time_t const *restrict, struct tm *restrict);
time/time.h:133:
struct tm *localtime_r (const time_t *restrict timer,
                               struct tm *restrict tp) THROW;
=============================  mktime
timezone/private.h:516:
time_t mktime(struct tm *);
time/time.h:82:
time_t mktime (struct tm *tp) THROW;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ctime.3 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 9178c809a..cd0ccc98d 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -41,16 +41,18 @@ localtime_r \- transform date and time to broken-down time or ASCII
 .B #include <time.h>
 .PP
 .BI "char *asctime(const struct tm *" tm );
-.BI "char *asctime_r(const struct tm *" tm ", char *" buf );
+.BI "char *asctime_r(const struct tm *restrict " tm ", char *restrict " buf );
 .PP
 .BI "char *ctime(const time_t *" timep );
 .BI "char *ctime_r(const time_t *" timep ", char *" buf );
 .PP
 .BI "struct tm *gmtime(const time_t *" timep );
-.BI "struct tm *gmtime_r(const time_t *" timep ", struct tm *" result );
+.BI "struct tm *gmtime_r(const time_t *restrict " timep ,
+.BI "                    struct tm *restrict " result );
 .PP
 .BI "struct tm *localtime(const time_t *" timep );
-.BI "struct tm *localtime_r(const time_t *" timep ", struct tm *" result );
+.BI "struct tm *localtime_r(const time_t *restrict " timep ,
+.BI "                    struct tm *restrict " result );
 .PP
 .BI "time_t mktime(struct tm *" tm );
 .fi
-- 
2.30.1.721.g45526154a5

