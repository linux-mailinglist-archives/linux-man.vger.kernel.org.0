Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50014326FCD
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbhB1Aur (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbhB1Aun (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:43 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C16F4C0617A7
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:24 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id o16so11021056wmh.0
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZWwgOH9Mt5PpY1WI7cU0vV/G3pkvURDQOWhyCWFr+78=;
        b=QTImEa0xHVu5tUzkfCYRdlfT/jN6aVLbUhBZnNDgF7bPQ8y/UtVuAULTpnfdiQU4CT
         WK4Vd8wRrL0QMQDsEKB1B/pPqsqlclXuJ71yfq1sVHq7808Y+F6EtEz0MPEm6POv9LGw
         2iGqCZmXvv2s6PV9nrnIZqo6QQo5ElC/qMdbPIcgm5YF3bN6kkOzIV+gJB1r55DbhbzG
         mK6WA6YtMRsDM5TtmBdfziulK1W27fEeQsvjg9peYWs5br51cXpyB3b9NzgOeOPv4jTd
         72BEiWhm3VYSI52aJ/F5iiqWI5DegJH60Bq7rDJgHKvAmK4I8iuDpyE0p6rlOmBI/+Pf
         bxPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZWwgOH9Mt5PpY1WI7cU0vV/G3pkvURDQOWhyCWFr+78=;
        b=Bd0pVs5l4U57FhX87vVkYTZii+W7KbGVRnr6F+9s3x7jU3vrPzXCV2k/iTryOPtlyj
         CvTnT7HS/km945YGelGzEBwX3FfOtqSUvLS7noG8p/CtUooAZOP/CeiFiFvx5uQayMDV
         JoYE8PvVjb62VqPFz7NzE9uNoKpuftFvfP9hZjbM95iIPA4ZTwdduN7uYyIIS+q5R9Ag
         pEBKmiBh6/pDEuTU7qkbS7rOaP6Z2nor3lkQ/tjZfqWizh0jn6KTzCUpFReM2F7GtN31
         pPQcyVaqGTnD3FHqyFi4qfb64aLXUblHt9F6o6S0X6/AVMD44nVGOOc46b19EaN3hn7N
         scog==
X-Gm-Message-State: AOAM533dl6+JGac+Z8RcW80C7QRwASAVa9LSHHJBfKQRsqzQa0nnaHMD
        yljyAuzAvuyWekATGXKZLQk=
X-Google-Smtp-Source: ABdhPJyuo+R7XBb1cdSXVBGcfh/ZA5cPXDSlfvxKOgNeHumOeKpaqSsVzyFBP0Llgunn5S9vEx1nTw==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr9159003wmj.81.1614473363599;
        Sat, 27 Feb 2021 16:49:23 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/14] gethostbyname.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:11 +0100
Message-Id: <20210228004817.122463-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in gethostent_r(), gethostbyaddr_r(),
gethostbyname_r(), gethostbyname2_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype gethostent_r
resolv/netdb.h:165:
extern int gethostent_r (struct hostent *__restrict __result_buf,
			 char *__restrict __buf, size_t __buflen,
			 struct hostent **__restrict __result,
			 int *__restrict __h_errnop);
.../glibc$ grep_glibc_prototype gethostbyaddr_r
resolv/netdb.h:170:
extern int gethostbyaddr_r (const void *__restrict __addr, __socklen_t __len,
			    int __type,
			    struct hostent *__restrict __result_buf,
			    char *__restrict __buf, size_t __buflen,
			    struct hostent **__restrict __result,
			    int *__restrict __h_errnop);
.../glibc$ grep_glibc_prototype gethostbyname_r
resolv/netdb.h:177:
extern int gethostbyname_r (const char *__restrict __name,
			    struct hostent *__restrict __result_buf,
			    char *__restrict __buf, size_t __buflen,
			    struct hostent **__restrict __result,
			    int *__restrict __h_errnop);
.../glibc$ grep_glibc_prototype gethostbyname2_r
resolv/netdb.h:183:
extern int gethostbyname2_r (const char *__restrict __name, int __af,
			     struct hostent *__restrict __result_buf,
			     char *__restrict __buf, size_t __buflen,
			     struct hostent **__restrict __result,
			     int *__restrict __h_errnop);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/gethostbyname.3 | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
index ac1758ca0..d2c456072 100644
--- a/man3/gethostbyname.3
+++ b/man3/gethostbyname.3
@@ -65,18 +65,27 @@ gethostent_r \- get network host entry
 /* GNU extensions */
 .BI "struct hostent *gethostbyname2(const char *" name ", int " af );
 .PP
-.BI "int gethostent_r(struct hostent *" ret ", char *" buf ", size_t " buflen ,
-.BI "                 struct hostent **" result ", int *" h_errnop );
+.BI "int gethostent_r(struct hostent *restrict " ret ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct hostent **restrict " result ,
+.BI "                 int *restrict " h_errnop );
 .PP
-.BI "int gethostbyaddr_r(const void *" addr ", socklen_t " len ", int " type ,
-.BI "                 struct hostent *" ret ", char *" buf ", size_t " buflen ,
-.BI "                 struct hostent **" result ", int *" h_errnop );
-.BI "int gethostbyname_r(const char *" name ,
-.BI "                 struct hostent *" ret ", char *" buf ", size_t " buflen ,
-.BI "                 struct hostent **" result ", int *" h_errnop );
-.BI "int gethostbyname2_r(const char *" name ", int " af,
-.BI "                 struct hostent *" ret ", char *" buf ", size_t " buflen ,
-.BI "                 struct hostent **" result ", int *" h_errnop );
+.BI "int gethostbyaddr_r(const void *restrict " addr ", socklen_t " len \
+", int " type ,
+.BI "                 struct hostent *restrict " ret ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct hostent **restrict " result ,
+.BI "                 int *restrict " h_errnop );
+.BI "int gethostbyname_r(const char *restrict " name ,
+.BI "                 struct hostent *restrict " ret ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct hostent **restrict " result ,
+.BI "                 int *restrict " h_errnop );
+.BI "int gethostbyname2_r(const char *restrict " name ", int " af,
+.BI "                 struct hostent *restrict " ret ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct hostent **restrict " result ,
+.BI "                 int *restrict " h_errnop );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

