Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 199A4585709
	for <lists+linux-man@lfdr.de>; Sat, 30 Jul 2022 01:02:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239560AbiG2XCU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 19:02:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232317AbiG2XCT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 19:02:19 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59F557CB72
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 16:02:18 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id r83-20020a1c4456000000b003a3a22178beso1269598wma.3
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 16:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=WeCx6SAQFhkjjBYWlUcPEonGFK1Nd1WtyoLzryZGnGQ=;
        b=fKun0pF0+nvi+gEaEsm4lvo8w7JigPVgcNWSCh8pwdG3CJnLTFl+0k+Q5XUPYc4Baq
         aIZRHCD5gX4uOt9AXlxtE5/tF0/PvVpThu+mmJJEno6sniUjy4KFhqJt6Pi8i0NJiSAF
         0s42kIuoAcjYWxgrexP0Lsr0GWut2Q/j4Qicu4URVdavV3PDrT0Tkm00EdrtyNxtHeqJ
         Gu6zrfa0+w2AW1XO6I52+kD32BTgrK+fSf7RBKYwm4pCKqVMDUdHgJooi0jBjo7Sxs7d
         IJVV2Pk9y8YKDvDWVgQWBwJ6zPzQjATVWoYpxdeTBHooTqCFLLvUAxJImCpLib1CRnd/
         XO8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=WeCx6SAQFhkjjBYWlUcPEonGFK1Nd1WtyoLzryZGnGQ=;
        b=smlmPxG9A6fL+qUqN/w9Dl2NwAjU7UOcAkeeNVjwKWMdV7EMrsoYXY6GmFQooyhFHs
         1HgQLcyagNG0v/iFWJtpxqwscUNyaQoM/oTOxXUH6kHFpC3P0PZfLT4WY5aEYN2Lc51y
         ny7ney91zIUoV/0pHHdMS0Uda0f0h0JcX64riEb1iqLmJ8obo+iV+u7pce23Nzo1B0YI
         nen2UxL6GCgQuRbiyKkMRLxHB4Rk388Xce/UWk+bOtEXIUrtWYaAftBrRmQTA7N6pNM1
         V5Ooc75HjHBbauhb8UA4bCrMAzuyXFj0H5zPbqyk9L7FhLdJM0B6PftwA66fFl3+TYY6
         2L7w==
X-Gm-Message-State: AJIora/jemisqRQjQryL1ILs/yEjtH/bZ3ja1fRyU/SxQlNNqoBAYl8b
        9OnAphB+E5xgCH9r7fFzDDvbYfwO+hU=
X-Google-Smtp-Source: AGRyM1soVf2hz9zRJSHF/JMzVgMvPkt2XBwVM5ntXhqy3p7uDBpttFhX8QxbMWpDexCUgrzSDzwoRg==
X-Received: by 2002:a05:600c:3556:b0:3a3:2a9c:f26 with SMTP id i22-20020a05600c355600b003a32a9c0f26mr4165174wmq.58.1659135736702;
        Fri, 29 Jul 2022 16:02:16 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k13-20020adfe8cd000000b0021e3e73dec6sm5779727wrn.72.2022.07.29.16.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 16:02:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?q?Heinz-J=C3=BCrgen=20Oertel?= <hj.oertel@t-online.de>,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: [PATCH v5 2/2] sockaddr.3type: ffix
Date:   Sat, 30 Jul 2022 01:01:09 +0200
Message-Id: <20220729230107.11954-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220729152737.27770-1-alx.manpages@gmail.com>
References: <20220729152737.27770-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3691; h=from:subject; bh=rBgnVjeXH0a3RekBwGw7Hia+w4+HELHEMv8HGZXLbl0=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi5GawgQSILV0VK4uUsUPpIyMo7ePmMO7F2KkV7qr/ nChZ55qJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYuRmsAAKCRCejBr7vv/bMp+rD/ 9SeWLDxHXy8LYBZcKlyAEgXmFwSNOfYJVTdOMz2eKaohQBQ9cc8HOlH7IUUyZo0kAmLj0n/JUxtmvs HBTVar925colaXdRpo96JJNXKdjo0cybENWIMTGusLY0EYRPOrRCakMUuh2G7UkSutFBZRCnQTJQTn /yup96DL3QJ8K8aTXpZ2mc7j+eQ+ULMd4IJ2D0hNX2DP1lh11ejwrc1tHB63cccxkeI3ZQ/hnuVaPO zJp+fNiv6qtTP0p9DMQ4gXokiQD98I+2NlJXA4mPzD2Qpn7bwgT3EYL6+c+zxSUXCgN91bDqfa5ziQ ge6Z0hZtAs5Q/h5rRHEtuAuXwLm7p6yFuhGwm9zW2+q06kIrBdiqT9j+0Gj3hbNh9KF73I3fVPVn5j hS29oawPnJnZx3yuJbstaF9h6HWIt4qwc4i2BK5t6WeBiwiYAs0anvjHhlXQXFHTrmFi4BctqlxwNn e9MMBkDHl46lbulOnSVtLdo+GNxH/slplIb6ACWow3I3ATVP7GBkiepXP4CsLyxfpH47AZtRanvrOS LIZYQwL1g3XmAnuuWNrvSOuaJ4Oa3kN/hRjt2hR5j/l2EnHSBXnS2olmhAY0GVoEn41MDrQyfHmFnP VVssJLwA2Hw3bby1Eqo32lZbni84nzsEAnOBi7SHEKW5zBopl4KrJSGzVJjg==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
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

Format structures with tbl(1) to improve alignment in
proportional-width font text.

I also reordered the types in the SYNOPSIS, to be consistent with
C syntax.

Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Heinz-Jürgen Oertel <hj.oertel@t-online.de>
Cc: Ralph Corderoy <ralph@inputplus.co.uk>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

This page clearly shows that using tabs would be hard.

Although having different alignment for every structure doesn't convince me...


 man3type/sockaddr.3type | 127 ++++++++++++++++++++++++++++++++--------
 1 file changed, 102 insertions(+), 25 deletions(-)

diff --git a/man3type/sockaddr.3type b/man3type/sockaddr.3type
index 9367158e1..9c7a5afff 100644
--- a/man3type/sockaddr.3type
+++ b/man3type/sockaddr.3type
@@ -16,55 +16,132 @@ Standard C library
 .nf
 .B #include <sys/socket.h>
 .PP
+.BR typedef " /* ... */  " socklen_t;
+.BR typedef " /* ... */  " sa_family_t;
+.PP
 .B struct sockaddr {
-.BR "    sa_family_t     sa_family;" "      /* Address family */"
-.BR "    char            sa_data[];" "      /* Socket address */"
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+sa_family_t	sa_family;	/*	T{
+Address family */
+T}
+char	sa_data[];	/*	T{
+Socket address */
+T}
+.TE
+.RE
+.nf
 .B };
 .PP
 .B struct sockaddr_storage {
-.BR "    sa_family_t     ss_family;" "      /* Address family */"
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+sa_family_t	ss_family;	/*	T{
+Address family */
+T}
+.TE
+.RE
+.nf
 .B };
 .PP
-.BR typedef " /* ... */ " socklen_t;
-.BR typedef " /* ... */ " sa_family_t;
-.PP
 .fi
 .SS Internet domain sockets
 .nf
 .B #include <netinet/in.h>
 .PP
-.B struct sockaddr_in {
-.BR "    sa_family_t     sin_family;" "     /* " AF_INET " */"
-.BR "    in_port_t       sin_port;" "       /* Port number */"
-.BR "    struct in_addr  sin_addr;" "       /* IPv4 address */"
-.B };
-.PP
-.B struct sockaddr_in6 {
-.BR "    sa_family_t     sin6_family;" "    /* " AF_INET6 " */"
-.BR "    in_port_t       sin6_port;" "      /* Port number */"
-.BR "    uint32_t        sin6_flowinfo;" "  /* IPv6 flow info */"
-.BR "    struct in6_addr sin6_addr;" "      /* IPv6 address */"
-.BR "    uint32_t        sin6_scope_id;" "  /* Set of interfaces for a scope */"
-.B };
+.B "typedef uint32_t  in_addr_t;"
+.B "typedef uint16_t  in_port_t;"
 .PP
 .B struct in_addr {
-.B "    in_addr_t s_addr;"
+.fi
+.RS 4
+.TS
+lB2 lB.
+in_addr_t	s_addr;
+.TE
+.RE
+.nf
 .B };
 .PP
 .B struct in6_addr {
-.B "    uint8_t   s6_addr[16];"
+.fi
+.RS 4
+.TS
+lB2 lB.
+uint8_t	s6_addr[16];
+.TE
+.RE
+.nf
 .B };
 .PP
-.B typedef uint32_t in_addr_t;
-.B typedef uint16_t in_port_t;
+.B struct sockaddr_in {
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+sa_family_t	sin_family;	/*	T{
+.B AF_INET
+*/
+T}
+in_port_t	sin_port;	/*	T{
+Port number */
+T}
+struct in_addr	sin_addr;	/*	T{
+IPv4 address */
+T}
+.TE
+.RE
+.nf
+.B };
+.PP
+.B struct sockaddr_in6 {
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+sa_family_t	sin6_family;	/*	T{
+.B AF_INET6
+*/
+T}
+in_port_t	sin6_port;	/*	T{
+Port number */
+T}
+uint32_t	sin6_flowinfo;	/*	T{
+IPv6 flow info */
+T}
+struct in6_addr	sin6_addr;	/*	T{
+IPv6 address */
+T}
+uint32_t	sin6_scope_id;	/*	T{
+Set of interfaces for a scope */
+T}
+.TE
+.RE
+.nf
+.B };
 .fi
 .SS UNIX domain sockets
 .nf
 .B #include <sys/un.h>
 .PP
 .B struct sockaddr_un {
-.BR "    sa_family_t     sun_family;" "     /* Address family */"
-.BR "    char            sun_path[];" "     /* Socket pathname */"
+.fi
+.RS 4
+.TS
+lB2 lB2 l1 lX.
+sa_family_t	sun_family;	/*	T{
+Address family */
+T}
+char	sun_path[];	/*	T{
+Socket pathname */
+T}
+.TE
+.RE
+.nf
 .B };
 .fi
 .SH DESCRIPTION
-- 
2.36.1

