Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41A9468B09A
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 16:30:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjBEPa0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 10:30:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBEPaZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 10:30:25 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A4C94C19
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 07:30:24 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id o18so8373161wrj.3
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 07:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VU2zRmdDezhcg1tV1N9BKQByb+mc/HyDCQKGJKdaU84=;
        b=arx8QtOGmpoe6rV90tNrx7vWPACawsz29P6Kqt8R5+NZOZsyFEtdU3trpn3y8AcfeW
         iSqpP6oMpZ0whAEc/2DUeP7Wo0dkZekKU77MRxjSessmDuzGXwuknVN/w0p11/FeUgYc
         GxDkrHeo8JC/94vKcFTLlahrV8+IpUl4OhdKoVIlwkRU1gSoAq10x7aVy0ad2ZtHbd/t
         /NbSlJfjQpmTGMc2z0j8SWkrOZzbJ0ARCzUGzLrzCI2c3bBSeK3i5MlOq8BIWAla+sSZ
         0zGp5sYg/pkCDB/s+kGASif8fFUqW1Pu8uxxk66erc5aQwp/lTdq2cH3g389cTip+YOA
         E8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VU2zRmdDezhcg1tV1N9BKQByb+mc/HyDCQKGJKdaU84=;
        b=iytAH3lBnAvU9DQkWPR2/ziFijg0eQmK4jMPqZwv2BGD8/JPM7qkAJR561apGpKNWn
         bnq17aLiHVlCpCW0NUrJPiRaSlmYhdTMnm8MlD8wNB+Nh8hSZyulNJ8EJ5jJxrlHXt+6
         36s8TJJZmiQmky3hK/lhFsJCWDuDoFRui4KV9iin/5HyWRLrhdvEmvky3FzpIjXnHwnI
         EIP//ZZATOqC1CuhWtcwgfmnI1wFtxe7vGJDLHCZTdOoedNAxXJA+KZ17Ms9s9bwpefJ
         6CRln4k9WcAQd6dJYma381gNY8HaGCd8rdRDVqJB9pxPBzK3b/JX8Tw4Ae9bB+Ig6i4E
         +5yQ==
X-Gm-Message-State: AO0yUKVryJwcVeMb3JF/5qGHEsmadwIMM67lWyqdC6ii9trtIES1b2zr
        YMKRvo/Paj3KqLBK5mpfzeT0ZV7C2T0=
X-Google-Smtp-Source: AK7set+rgr7+PGBq2xt/PZzkQly23B8lUXXcYEW7+VW3rRHwzwwVr32JNpl6/Rb5sIPaXvXpCZrpIQ==
X-Received: by 2002:adf:dc03:0:b0:2bf:f2f2:7d64 with SMTP id t3-20020adfdc03000000b002bff2f27d64mr14041504wri.33.1675611022881;
        Sun, 05 Feb 2023 07:30:22 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b12-20020adff90c000000b002c3e89039casm914150wrr.12.2023.02.05.07.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Feb 2023 07:30:22 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
        glibc <libc-alpha@sourceware.org>,
        =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>
Subject: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed using a union
Date:   Sun,  5 Feb 2023 16:28:36 +0100
Message-Id: <20230205152835.17413-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As discussed before, and Bastien and I seem to agree, ideally we should
define the following types:

    struct sockaddr_storage {
        union {
            struct {
                sa_family_t      ss_family;
            };
            struct sockaddr_in   sin;
            struct sockaddr_in6  sin6;
            struct sockaddr_un   sun;
            // ...
        };
    };

    struct [[deprecated]] sockaddr {
        sa_family_t              sa_family;
    };

    union [[gnu::transparent_union]] sockaddr_ptr {
        struct sockaddr_storage  *ss;
        struct sockaddr          *sa;
    };

And then we could define APIs like:

    int bind(int sockfd, const union sockaddr_ptr *addr, socklen_t len);

Link: <https://lore.kernel.org/linux-man/ab492040-2058-bcbe-c920-a9088a20f071@gmail.com/T/#u>
Link: <https://inbox.sourceware.org/libc-alpha/20230120134043.10247-1-alx@kernel.org/T/#u>
Cc: GCC <gcc@gcc.gnu.org>
Cc: glibc <libc-alpha@sourceware.org>
Cc: Bastien Roucariès <rouca@debian.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Igor Sysoev <igor@sysoev.ru>
Cc: Rich Felker <dalias@libc.org>
Cc: Andrew Clayton <a.clayton@nginx.com>
Cc: Richard Biener <richard.guenther@gmail.com>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Joseph Myers <joseph@codesourcery.com>
Cc: Jakub Jelinek <jakub@redhat.com>
Cc: Eric Blake <eblake@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3type/sockaddr.3type | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/man3type/sockaddr.3type b/man3type/sockaddr.3type
index 319a5e552..239e836fc 100644
--- a/man3type/sockaddr.3type
+++ b/man3type/sockaddr.3type
@@ -120,6 +120,26 @@ .SH NOTES
 .I <netinet/in.h>
 and
 .IR <sys/un.h> .
+.SH BUGS
+.I sockaddr_storage
+was designed back when strict aliasing wasn't a problem.
+Back then,
+one would define a variable of that type,
+and then access it as any of the other
+.IR sockaddr_ *
+types,
+depending on the value of the first member.
+This is Undefined Behavior.
+However, there is no way to use these APIs without invoking Unedfined Behavior,
+either in the user program or in libc,
+so it is still recommended to use this method.
+The only correct way to use different types in an API is through a union.
+However,
+that union must be implemented in the library,
+since the type must be shared between the library and user code,
+so libc should be fixed by implementing
+.I sockaddr_storage
+as a union.
 .SH SEE ALSO
 .BR accept (2),
 .BR bind (2),
-- 
2.39.1

