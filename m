Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5950767560B
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 14:42:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjATNmK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 08:42:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjATNmJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 08:42:09 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E95AC41EC
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 05:41:55 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r9so4898061wrw.4
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 05:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=29UuMZbFNvAJQvZZe7CsOFMjH1IuDxTbGoCRBb8noJk=;
        b=FaV/FL0zfM/aV1W+bXmTP6oQ9vmBK1lk/93CVutbul57DXdM+bUnmP02Wax88REXUu
         DlkuoLtXeixgPmIADINo51upLGF9pF0cxAaPMNg4X5P3GS89GGCkTQx+DRdzdt+WukUx
         hZsV7zQn/qVtN394bfDun+MAdzcbYzntzOaFBFw5RpMI3JwCDoJuwetMocHExDf9LAZ2
         +weCdYPRpC+vWNKZ7gNbWmF01jFQb3gQwFN5Bx97Ab+GPk2qwvcGNCUlCnu4ohJuVw4d
         miHUQS1rUG3HZFat4+6eyMhQfaRdeik2mKlryqqWz0E48H7gFJjfeERfqawHd3NqWeWX
         i3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=29UuMZbFNvAJQvZZe7CsOFMjH1IuDxTbGoCRBb8noJk=;
        b=ESxTwpZ7ZivOEU7fbu41BnXZ6feixgPIZO3Lhy3OTQ7prteIVp23BfHJ3V4/ILIbna
         YKnLFZnvjcMc2eOtsqMzIJcOqqJikH/rMwCQEV87SMYH4e+ezYXiBeF3R8rO1jpIKK5V
         5SxZT/m2JoTuU3Wlw/qapxcXYrDAsmwUUYXYUXS6s1Qgl32HWft98Q3DeR5BQ+yHtyXx
         sIw31hLlOXG+0/P+VnPq60EZ5URsWLlTWXoveV++XQYjjDDy0GhVQqhzP8JtHC2ATw2r
         zi7LXQdEEhF8luw8XuV0c1yKAKTVd0OkY2/miceEB+XVzJkzvPOquyCIljyogAUgHFvY
         KWRA==
X-Gm-Message-State: AFqh2kpiZO8tvJXutQ6oaN6VFrWdy9U/UdDD1AYyCl/MMWibolrGhqCV
        wvnlkOeG98qBMtc9tZQvLP0FYV1cktw=
X-Google-Smtp-Source: AMrXdXupUEqDWbAhBuMtoZ0Ji1r5xJLJxZJsjMBmra/KJgiy1IagQS4sgll+5a5lNWwTsRlxRynnJg==
X-Received: by 2002:adf:e947:0:b0:2be:579b:158 with SMTP id m7-20020adfe947000000b002be579b0158mr2002457wrn.39.1674222113523;
        Fri, 20 Jan 2023 05:41:53 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id s18-20020adfecd2000000b002bdfcd8c77csm14112625wro.101.2023.01.20.05.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 05:41:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     libc-alpha@sourceware.org
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
Subject: [PATCH v2] socket: Implement sockaddr_storage with an anonymous union
Date:   Fri, 20 Jan 2023 14:40:44 +0100
Message-Id: <20230120134043.10247-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3417; i=alx@kernel.org; h=from:subject; bh=hFEQe++dPCjfYJneXg5K84jfa3ctoJSsSNor/f7bY8A=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjypnaFBhXmoYAsyzmL4KbiBJQKg0m3nkMYkxUZiNP VZ51XeWJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY8qZ2gAKCRCejBr7vv/bMiPCEA CgtaHuHaSGUBnktWIp5b6qK74n4octdb7J6TKojrr+B95wRWNMHll57WI6UE5AVqSQuA/l5zefSvsZ j56+no3HX634mxezBBntnLVPjh9G8Op6lriF3YyJCqlfXO+cmgoGWsnAfjV8qdSX4wnFqrtKf9B3YB EnhBALsLcUJzvSXG1orfQfmQAg/kgJpSMVz53GmXbhh2pNxbvlGWhSgV0fIAltM/hlSVU/wa2ZiqEt GA1WlxuwRkzRL9Da2uCGwfO9v3mrisnSJtlsDiToHlDMXFxl0qCVi6WP2QGMP7FiVg4kqkDoe4lRrv MDtaXoRFSnjxtZMB3jmDbN3K3WSXzNPvAgbkX9/NCRgFJCOJmw0GDYaongoRL/FYazsBloOf88YflL kaf5wvsEvLb7EKuwLdDHaGvI+7LHPpAX1m7Nc900QJHrBlzwavBLqBQ1twoAs5rte536N7SXqUf+fA uYjBkO7XtIq/biw3CVD6JGTkjoUOM5KvgZK6qVol7Z4VPlVZEzHVNlajSVzO/OedK6QWDRxIxs8SgJ yA5Xyb+cFJ7legllCqDCF5jWw3sgNWARiVEqtX2UKqX9hhceae1s5GiXnbs3KgeoAE9JHcdgXHcStv B5vv35Jv+guV3uonw1pLGaGJWmJwiCGBKA6aeP5THuvO+djcrjhKjZ3iqzgQ==
X-Developer-Key: i=alx@kernel.org; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
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

The historical design of `sockaddr_storage` makes it impossible to use
without breaking strict aliasing rules.  Not only this type is unusable,
but even the use of other `sockaddr_*` structures directly (when the
programmer only cares about a single address family) is also incorrect,
since at some point the structure will be accessed as a `sockaddr`, and
that breaks strict aliasing rules too.

So, the only way for a programmer to not invoke Undefined Behavior is to
declare a union that includes `sockaddr` and any `sockaddr_*` structures
that are of interest, which allows later accessing as either the correct
structure or plain `sockaddr` for the sa_family.

This patch fixes sockaddr_storage to remove UB on its uses and make it
that structure that everybody should be using.  It also allows removing
many casts in code that needs to pass a sockaddr as a side effect.

The following is an example of how this improves both existing code and
new code:

void
foo(foo)
{
    struct old_sockaddr_storage  oss;
    struct new_sockaddr_storage  nss;

    // ... (initialize oss and nss)

    inet_sockaddr2str(&nss.sa);  // correct (and has no casts)
    inet_sockaddr2str((struct sockaddr *)&oss);  // UB
    inet_sockaddr2str((struct sockaddr *)&nss);  // correct
}

/* This function is correct, as far as the accessed object has the
 * type we're using.  That's only possible through a `union`, since
 * we're accessing it with 2 different types: `sockaddr` for the
 * `sa_family` and then the appropriate subtype for the address
 * itself.
 */
const char *
inet_sockaddr2str(const struct sockaddr *sa)
{
    struct sockaddr_in   *sin;
    struct sockaddr_in6  *sin6;

    static char          buf[MAXHOSTNAMELEN];

    switch (sa->sa_family) {
    case AF_INET:
        sin = (struct sockaddr_in *) sa;
        inet_ntop(AF_INET, &sin->sin_addr, buf, NITEMS(buf));
        return buf;
    case AF_INET6:
        sin6 = (struct sockaddr_in6 *) sa;
        inet_ntop(AF_INET6, &sin6->sin6_addr, buf, NITEMS(buf));
        return buf;
    default:
        errno = EAFNOSUPPORT;
        return NULL;
    }
}

While it's not necessary to do the same for `sockaddr`, it might still
be interesting to so, since it will allow removing many casts in the
implementation of many libc functions.

Link: <https://lore.kernel.org/linux-man/2860541.uBSZ6KuyZf@portable-bastien/T/>
Link: <https://inbox.sourceware.org/libc-alpha/0f25d60f-f183-b518-b6c1-6d46aa63ee57@gmail.com/T/>
Link: <https://stackoverflow.com/a/42190913/6872717>
Link: <https://software.codidact.com/posts/287748>
Cc: Bastien Roucariès <rouca@debian.org>
Cc: Eric Blake <eblake@redhat.com>
Cc: Zack Weinberg <zack@owlfolio.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Igor Sysoev <igor@sysoev.ru>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

v2:

-  Fix incorrect cast in commit message.

 bits/socket.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/bits/socket.h b/bits/socket.h
index aac8c49b00..c0c23b4e84 100644
--- a/bits/socket.h
+++ b/bits/socket.h
@@ -168,9 +168,14 @@ struct sockaddr
 
 struct sockaddr_storage
   {
-    __SOCKADDR_COMMON (ss_);	/* Address family, etc.  */
-    char __ss_padding[_SS_PADSIZE];
-    __ss_aligntype __ss_align;	/* Force desired alignment.  */
+    union
+      {
+        __SOCKADDR_COMMON (ss_);	/* Address family, etc.  */
+        struct sockaddr      sa;
+        struct sockaddr_in   sin;
+        struct sockaddr_in6  sin6;
+        struct sockaddr_un   sun;
+      };
   };
 
 
-- 
2.39.0

