Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59FE56D0C9E
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 19:21:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232301AbjC3RV0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 13:21:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232318AbjC3RVY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 13:21:24 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33D656194
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 10:21:22 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id j36-20020a05600c1c2400b003f04057c152so146336wms.5
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 10:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680196880; x=1682788880;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fPmrkxP8lA6mm8xNGo07bPYOfkrPR6g3BToZ+bsCS3c=;
        b=m02NEY4m0MsQBHmg6HVo0I865xOXoUm7zYocyK4yplShm8R13zIPKMTcg/6BkSSSMr
         fktfULG3scExIKbDaDY118Sm9xa2TiANG4qhpfeZ0r0enku70HrM9f4rFtgpy802m3J8
         QKmHn1DFgr1TjxyhRkCmJ+kR7OG+EOd/KPIedzxH5wukU8KuVvGK9A5LJgFkmJDXiP5B
         eSxNtYAffbXX/+WLi7gH9Cqy3bf8n2dodfIF+tw2ohDZXbsLjNJHdEUlhdufczUWuRO+
         eLGHwHp51DtACs7gBHJ1XdnUQid9FyRknaeAO1G7gysTk/xzErj8G5lzYqO+y2HM9dRr
         uvpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680196880; x=1682788880;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fPmrkxP8lA6mm8xNGo07bPYOfkrPR6g3BToZ+bsCS3c=;
        b=BBGwqN9+ffnh5Pxg09WuHyffDD3OP/ZWq8t6XZwrF9VcZI20lc+sCJ2eltmqW2rwa7
         DW0wZ3sU4VZvEZRrNvSxFj/aZ2fT0JM3o86ziWK+XKP+AorPA5mQQXnztnZM/7gtIfnO
         iEec9QmWyRFj7L5+b3Oju+D03bZpbv6jJg88q58eZKZLTYgTgdS84AF84In0UaQd1NKd
         X91hqGDff9mCqvWdQrnJr21ODaeH9OZUppgbDdZ+PbIhVgkrlKBlOR7gcwbwwRBA3pDh
         F3WobExCW241qZ8cQQHmTgyoXdggeYwV+lmMzU4M7xDpqBTA01GkVL5dSXDJVJygkOFY
         U/oQ==
X-Gm-Message-State: AO0yUKXWCb4OZUehGSsamCFgTv4t99+pLYcz0II5G66UIF38OwuDOw64
        tovWJ04mUlxGUFhapbenR3DuqoLLZSU=
X-Google-Smtp-Source: AK7set/LoFCPP6hxq7r0EarZskBt24yWXwiE2OSQy9Pm50xlhelnA6s2EadV7BvR8tUsQhYHtccBEQ==
X-Received: by 2002:a7b:ca4a:0:b0:3ee:555:ea60 with SMTP id m10-20020a7bca4a000000b003ee0555ea60mr20698202wml.8.1680196880497;
        Thu, 30 Mar 2023 10:21:20 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id j19-20020a05600c191300b003ee1acdaf95sm6976067wmq.36.2023.03.30.10.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 10:21:20 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
        Eric Blake <eblake@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>, Sam James <sam@gentoo.org>
Subject: [PATCH] sockaddr.3type: Document that sockaddr_storage is the API to be used
Date:   Thu, 30 Mar 2023 19:13:11 +0200
Message-Id: <20230330171310.12330-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

POSIX.1 Issue 8 will fix the long-standing issue with sockaddr APIs,
which inevitably caused UB either on user code, libc, or more likely,
both.  sockaddr_storage has been clarified to be implemented in a manner
that aliasing it is safe (suggesting a unnamed union, or other compiler
magic).

Link: <https://www.austingroupbugs.net/view.php?id=1641>
Reported-by: Bastien Roucariès <rouca@debian.org>
Reported-by: Alejandro Colomar <alx@kernel.org>
Cc: glibc <libc-alpha@sourceware.org>
Cc: GCC <gcc@gcc.gnu.org>
Cc: Eric Blake <eblake@redhat.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Igor Sysoev <igor@sysoev.ru>
Cc: Rich Felker <dalias@libc.org>
Cc: Andrew Clayton <andrew@digital-domain.net>
Cc: Richard Biener <richard.guenther@gmail.com>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Joseph Myers <joseph@codesourcery.com>
Cc: Jakub Jelinek <jakub@redhat.com>
Cc: Sam James <sam@gentoo.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi all,

This is my proposal for documenting the POSIX decission of fixing the
definition of sockaddr_storage.  Bastien, I believe you had something
similar in mind; please review.  Eric, thanks again for the fix!  Could
you please also have a look at this?

Cheers,

Alex

 man3type/sockaddr.3type | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/man3type/sockaddr.3type b/man3type/sockaddr.3type
index 32c3c5bd0..d1db87d5d 100644
--- a/man3type/sockaddr.3type
+++ b/man3type/sockaddr.3type
@@ -23,6 +23,14 @@ .SH SYNOPSIS
 .PP
 .B struct sockaddr_storage {
 .BR "    sa_family_t     ss_family;" "      /* Address family */"
+.PP
+.RS 4
+/* This structure is not really implemented this way.  It may be
+\&   implemented with an unnamed union or some compiler magic to
+\&   avoid breaking aliasing rules when accessed as any other of the
+\&   sockaddr_* structures documented in this page.  See CAVEATS.
+\& */
+.RE
 .B };
 .PP
 .BR typedef " /* ... */ " socklen_t;
@@ -122,6 +130,20 @@ .SH NOTES
 .I <netinet/in.h>
 and
 .IR <sys/un.h> .
+.SH CAVEATS
+To avoid breaking aliasing rules,
+programs that use functions that receive pointers to
+.I sockaddr
+structures should declare objects of type
+.IR sockaddr_storage ,
+which is defined in a way that it
+can be accessed as any of the different structures defined in this page.
+Failure to do so may result in Undefined Behavior.
+.PP
+New functions should be written to accept pointers to
+.I sockaddr_storage
+instead of the traditional
+.IR sockaddr .
 .SH SEE ALSO
 .BR accept (2),
 .BR bind (2),
-- 
2.39.2

