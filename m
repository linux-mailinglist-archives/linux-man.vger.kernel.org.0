Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FEEE6EB2E9
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 22:28:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233264AbjDUU2b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 16:28:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbjDUU2a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 16:28:30 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C10651FC7
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 13:28:27 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f18335a870so14553665e9.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 13:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682108906; x=1684700906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDfWHM/P6nNEa1XjW5/WtrlkjEXtQfrXNsFHpzNi76Y=;
        b=BNz/fs651UEi35uM78DaqKkMCaaXyy9oViuvGFaszVxaFUPBz6Tyn91GUZsvQfpMag
         oTLJpvl6DAn+3+I4A0qrpYQf+Dzf4Nn1i/tPKLphWTdATqfoSUGAFNuil3cYxfgHNreP
         0OlwyCZjQL+g+EFyd4zhzmCvDSCoVP77ZSUUW0k5M5BY95mkah2ve8OBIqm8TJTDXi0v
         Vcm5+DlBlykmXiHQS0ghW43dWNlYSz8qlv3BhWGpUrp0dWK4PYd4+7+u7oeqvGRoSdGp
         zp3t0iMwX0OLPCFZgDWqDuSLfD7H/EKIvqxphegJn7iGTUOS7C/YP6NXbwDQjKG6Raph
         wofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682108906; x=1684700906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDfWHM/P6nNEa1XjW5/WtrlkjEXtQfrXNsFHpzNi76Y=;
        b=dTKflZ3b1ofaeqJ0J7GZ3lQtceuFGKBEYt3iJr8oAaO4y6+IN0vOfDu8bg8Gbe4CAN
         mZZJQRHIyJQ6bfzCkRrRoaFsZ194fukKHD26IvunbRGv+xBPL1kixKTk9VGE73WueH90
         6voLXxoscM5aZCX7+/SPJfVXCjgHj7vVV4b7HzNs6Z1533b9jYPDqObsrsAW7s7sCL7X
         Ns/7n/XqrX4ZP0YerLivOymUOYc74o/f8CfroOJyRMnbAfGwtAucdPx9sUL0w/nDa54x
         BqtXdZajOe6XRRxZpzQl79xEmR4h0Ieq03qBLrwbKml9BdXt3qCXu5E2h7xbDsatCrAP
         7Dww==
X-Gm-Message-State: AAQBX9c7wMQKMOx+yCs/uw9IgBrJmIScg/8Onmb+72tqRJVXCMGxZ6li
        GvjrgdsaFsEgsWvA8QO36HxO+BfM5a8=
X-Google-Smtp-Source: AKy350YCNv4XKwjAYNpB6xP09yqF1vMRlXDCqd82hjCbROWJuJnKCtWFkwOHqkNfWXUwJ92PF5VuMw==
X-Received: by 2002:a7b:ce87:0:b0:3f1:7277:eaa with SMTP id q7-20020a7bce87000000b003f172770eaamr2818133wmj.31.1682108906047;
        Fri, 21 Apr 2023 13:28:26 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id o10-20020a1c750a000000b003f191c9c4b0sm2698226wmc.11.2023.04.21.13.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 13:28:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>, Sam James <sam@gentoo.org>
Subject: [PATCH v3] sockaddr.3type: POSIX Issue 8 will solve strict-aliasing issues with these types
Date:   Fri, 21 Apr 2023 22:27:18 +0200
Message-Id: <20230421202718.21831-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <sjomqddm5sik7zufnpozmagkbgnjiu55vbozruh4nsehg7hqqi@hl3jl5yde5pl>
References: <sjomqddm5sik7zufnpozmagkbgnjiu55vbozruh4nsehg7hqqi@hl3jl5yde5pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Link: <https://austingroupbugs.net/view.php?id=1641>
Reported-by: Bastien Roucariès <rouca@debian.org>
Reported-by: Alejandro Colomar <alx@kernel.org>
Reviewed-by: Eric Blake <eblake@redhat.com>
Cc: glibc <libc-alpha@sourceware.org>
Cc: GCC <gcc@gcc.gnu.org>
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

Hi Eric,

I took your informal review as a "Reviewed-by".  Please confirm.
I've also modified the small wording thingy you suggested.

I'll float this patch in the list in case anyone has comments, and
will push some time this weekend (depending on many variables).

Cheers,
Alex

 man3type/sockaddr.3type | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3type/sockaddr.3type b/man3type/sockaddr.3type
index 2fdf56c59..cf8d601f5 100644
--- a/man3type/sockaddr.3type
+++ b/man3type/sockaddr.3type
@@ -117,6 +117,14 @@ .SH HISTORY
 was invented by POSIX.
 See also
 .BR accept (2).
+.PP
+These structures were invented before modern ISO C strict-aliasing rules.
+If aliasing rules are applied strictly,
+these structures would be extremely difficult to use
+without invoking Undefined Behavior.
+POSIX Issue 8 will fix this by requiring that implementations
+make sure that these structures
+can be safely used as they were designed.
 .SH NOTES
 .I socklen_t
 is also defined in
-- 
2.40.0

