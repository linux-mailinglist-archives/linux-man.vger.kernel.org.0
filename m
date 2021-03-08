Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 187BE3316CB
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231296AbhCHSyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231307AbhCHSya (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:30 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C100C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:30 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id j2so12575388wrx.9
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JK1L4fs3CpRZqb4LY3fOvl3jG2qj2bqXz24p1ImaaMY=;
        b=lftmWW2qHswR8rZxGxx55SUgRvNpmgws2BuKM88DtGKZwfxUDcvqZxFcjWbgX5vUix
         GSHWOWMGROKV/KbJDFyv7G05vCm18kBXn6FHKKdStmfQIqSbiv+MQsM+9fbLMpj0spwb
         iRP5OKXNp0XABJKgjczKODDo9u+EazKhAo61UjtnvCoNnwKmbO8ZrzTHEJabdHN0G6to
         li6Est1xrElu2yzrfUlGG01A0/alNWLOI0uFg1qE0GccJULtre/1H6ppjQQGtU2t2sOl
         7TPv+j/eCyeTPJ8L0swms2x8XVygBriDOIk6MQvDwwviYwVZ44g4QYfiLODQfjCbJPnn
         xGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JK1L4fs3CpRZqb4LY3fOvl3jG2qj2bqXz24p1ImaaMY=;
        b=a4wvJBIuNZBbvcVuVLzFBPN0/eRzd2M8WdaXNfxNxKP6OJaaNfDxLxvIRDI+LsuhPi
         /GW0xwdxmXpl76X5IjTFTUeGPAuAKObc2zOpu2MG1D5326CidfJlNxffT3sNQdJtQbH8
         eKUXm0CJr8YEtHyglizjhLAvWAB3uVdHW0G/+axFUYVEXPZurT3gNxnPSpgOf1zE5FJ4
         RF4s8tQ9rrVvAWB5ZXSf8c9P/QROkQKsBYfXo1PLoOPhBOLpMe8aQABuOQoWBeYYUZI5
         wJW59sdautpPR/2Sq1KDOncdsVW9Y4hDmzyiM2lpyf8QUfX2xa5crSdR5ckian9ILkpc
         /vyg==
X-Gm-Message-State: AOAM531vEkvPjffK+2JGlicx50+a3/HJltwWSaWhPc5XIEUtP/eftyvc
        aGSABKDS+GMh6B7TqVl34IE=
X-Google-Smtp-Source: ABdhPJzbEBs3hc4lQpMbZwODtOwZ2XFf22V10cSHmKNvDdHQptvjS/d/Vw3LQjpBCJ3rGZjXM5F+Eg==
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr24150606wrw.183.1615229669238;
        Mon, 08 Mar 2021 10:54:29 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:28 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 21/23] rexec.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:30 +0100
Message-Id: <20210308185331.242176-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in rexec(), rexec_af().
Let's use it here too.

.../glibc$ grep_glibc_prototype rexec
resolv/netdb.h:477:
extern int rexec (char **__restrict __ahost, int __rport,
		  const char *__restrict __name,
		  const char *__restrict __pass,
		  const char *__restrict __cmd, int *__restrict __fd2p);
.../glibc$ grep_glibc_prototype rexec_af
resolv/netdb.h:489:
extern int rexec_af (char **__restrict __ahost, int __rport,
		     const char *__restrict __name,
		     const char *__restrict __pass,
		     const char *__restrict __cmd, int *__restrict __fd2p,
		     sa_family_t __af);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/rexec.3 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man3/rexec.3 b/man3/rexec.3
index 6c46e0e34..56d1a2442 100644
--- a/man3/rexec.3
+++ b/man3/rexec.3
@@ -45,10 +45,12 @@ rexec, rexec_af \- return stream to a remote command
 .nf
 .B #include <netdb.h>
 .PP
-.BI "int rexec(char **" ahost ", int " inport ", const char *" user ,
-.BI "          const char *" passwd ", const char *" cmd ", int *" fd2p );
-.BI "int rexec_af(char **" ahost ", int " inport ", const char *" user ,
-.BI "          const char *" passwd ", const char *" cmd ", int *" fd2p ,
+.BI "int rexec(char **restrict " ahost ", int " inport ,
+.BI "          const char *restrict " user ", const char *restrict " passwd ,
+.BI "          const char *restrict " cmd ", int *restrict " fd2p );
+.BI "int rexec_af(char **restrict " ahost ", int " inport ,
+.BI "          const char *restrict " user ", const char *restrict " passwd ,
+.BI "          const char *restrict " cmd ", int *restrict " fd2p ,
 .BI "          sa_family_t " af  );
 .fi
 .PP
-- 
2.30.1

