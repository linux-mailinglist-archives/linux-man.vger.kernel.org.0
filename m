Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA2396755F2
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 14:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjATNgo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 08:36:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjATNgn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 08:36:43 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93689798C4
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 05:36:42 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so5867176wma.1
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 05:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=im4tULGSbk0cK2gDmgYZZ3rxmc5Gk6ACWTMimWXDUjE=;
        b=GTqzyy0da1tH9Oqx1lfAS7/JOysc1faQ1egHfTwFjYJlYB12bMp0Mbgim2aq39C2Ka
         TL3NnCZ/8NPEvnZTY4UDMe70uTl5tnmjAjiN9Lq2hsRSVJROv0z5PfwyxdKJb8/pSOHa
         W4oQEw4jlaX3ACjUl//CugZ3YjwruzQMBeP72zl8cK0WAo4Uvi1sNAZ2rKbZBsO6fLuP
         dgTqhYUwWsWxlGDNQgOBDCoLTovSOWLlzPKGOQdMo1XS1QJq5sqg+AUYh8cfJU4u5bg7
         eDxNsreFjpQzdL9Ccajv64edMD0DNOwF7SYDLO63U0jC8arZeXlZnOFN4+Ss7tmRUeyb
         v+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=im4tULGSbk0cK2gDmgYZZ3rxmc5Gk6ACWTMimWXDUjE=;
        b=LIvtqwe6I23qAAwS+9mnuuktXtKUTAkZjj1W4eE+WcNTo7WFUgfQp0Z+gNl03vwgCU
         EIfSXv347vKry9DgTqErgr9OUj6qaFpoG6c8oXP6N1lezYEGC4flMl53JAE5+U0E5+Bg
         htOIG2Ar6dckSgd/lQyOF/DP+l6/fKnpfrDTpxS3GjV+4rmn4Q4UGw85vRj46Jcn2/eW
         uw6BNJcseNW19trfYVPnnpTEU4r08iCTIKyMaVdAqSBE7TKdl0VRmYh6M9/lHReRGzUY
         Tm0rgI1LjufsMM7SXGHHEbF87WF1NT1oEw9x4oOyR2qbK8WpT+bqkQwVIwQen0Qsb3XQ
         NAxw==
X-Gm-Message-State: AFqh2ko/xl0Jork7shdYtK0vkM6+qFAoYs6ymDkLePOTH1KNDkVsRQuW
        sY7UJpisLjcoHVwv5+N7jiER+v9QfIQ=
X-Google-Smtp-Source: AMrXdXtUwXfbcLJ8EJj2V28MJoX11oBMtoSIXLUQ/V4ybVQkDguxHG3wGc4gJi5w5xX3A+zAKjflWw==
X-Received: by 2002:a05:600c:1508:b0:3d3:5166:2da4 with SMTP id b8-20020a05600c150800b003d351662da4mr14270357wmg.8.1674221801185;
        Fri, 20 Jan 2023 05:36:41 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u8-20020a05600c19c800b003db0647645fsm2459138wmq.48.2023.01.20.05.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 05:36:40 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     libc-alpha@sourceware.org
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
Subject: [PATCH] socket: Implement sockaddr_storage with an anonymous union
Date:   Fri, 20 Jan 2023 14:36:28 +0100
Message-Id: <20230120133628.10070-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3617; i=alx@kernel.org; h=from:subject; bh=s/ktb7BitczomHPAFZb4g83BzjUpnepIyiXKkjr0Hpg=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjypjBR2NppXGx+efCqCl9mhzUcFRCMnvh3OlCGlFw namE5LeJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY8qYwQAKCRCejBr7vv/bMvZrD/ 4kmwrNpPiJPvaVWD7iMXsKC+MnMnEUHhAnsCvVYhChxCF+xOOI+CIjBBnfQWCqobWuO4y5efktjaqH kV//fIYngOPyBkXT3Pq04YnET6YIIt0h732G6/foFVNtfXEvTJ8c/FnsyigjFXxCrqEA3gjdegVMwH TUkKt68ySneBMDbWJ4d0oiz9BmT8CavyN84CggNdnZs1ZQxXk/ODBURyV+u+rqCxGx3WPJkFv1LQFQ KKuwaX0CW6N4WJhkVQeyhDMwX5UVF0Ad5aSsayYnO1tDwBVEnqZIuSFt308Y8BT2UyjxGbzh4V6v6/ w2s7sN5zO5ilWucHfg5u4ciPXDTKrBmh/tvlIf8HAs6qmclMtdvOjwnPTA01DbFtR1NVvFRU41stPF RiBvv6ZRyrBmY7xIsZxsOYPupoK2JcHgbDNLQu7jp7lw5yx7HCS1cpSw08i2llCwuLjtFtJzAvjLLB Tx4BOhEkFatfXm5fIznehs1gemr+dciEC4mYtDcZI3E6bS8MEHujzPJ3gcjI2+LfLiRwcYE0RA+rFF n3vmss8yZtWo3mHuB9PUqh3ppHxYLfqRsojAXWKtPa4k/w12Zrb4+wIZjD9qnjfyyBX+wR0VXyJMZ3 amxNuptLncQuLSTYqF/qb0O5iVr+xyIIwnV4RfjozTg1NJlZdRnuX+ARyxxg==
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
    inet_sockaddr2str((struct sockaddr_storage *)&oss);  // UB
    inet_sockaddr2str((struct sockaddr_storage *)&nss);  // correct
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

