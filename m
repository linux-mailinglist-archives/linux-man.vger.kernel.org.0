Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 869B36F2614
	for <lists+linux-man@lfdr.de>; Sat, 29 Apr 2023 21:47:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbjD2TrC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Apr 2023 15:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjD2TrC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Apr 2023 15:47:02 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E512E1997
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 12:47:00 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-2f9b9aa9d75so591398f8f.0
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 12:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682797619; x=1685389619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WPvs94loXY2l+GrcrN/buLPnHizdInbCUv9qv0Tg2HY=;
        b=CStqdEKjLr3tksvPKJ2i1VkocRYWLAEE8du5xe+BiuhCMN6ZbTzy36itBOVKKEfIVH
         oVJidZwA4jUFvRX9TOw8BjnfZgbJkIUdn8ho5p/KlSzT5UzL7lmHaHDB8F8qRWxkPlPW
         6D9XX6ZW+RqpKD62/pSVbRhsT2MsSOEz8lxUPp5TNYObHXkuhjEwRuDqys83xKIlvAjl
         BVFLaR+cCzxGu+8ugNdtfKRDuomam9D7+yEUyOdsOm8bx2rAnWe++m7+dj+cYgF3bqnb
         Ub6ZjA1XNLfxZEIpqRYm/sZFeQSSp+XPmYbMDlOCyPJFybbMBMLWVzMUQ89mBKOSXGZl
         ojFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682797619; x=1685389619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WPvs94loXY2l+GrcrN/buLPnHizdInbCUv9qv0Tg2HY=;
        b=QaOTVtgx7r/O2GXlrIRqhK50Wq+f/8Z7P8ATqzXBt9wz7ejbb2O3j2Utyfq/ecoSft
         XJcWGcL42kR4cqolIwYd9FwA3UFauhqL+GLuvcZxn/P/xqyvl1X7mq7D+wJdPVFNQdCh
         TfRXoT0NeXxhwMevHgzF1jEdMRH0jpl7gAERkcaPe/RuL9/9zdOftmH+XRPtFvNuzANP
         RTpyBwruDTZeMz+/X39VbotRFaMurblQ4BFcpsq/uFPKrKzamdh/Wv3oEL2aoFnuloPI
         qsdbblD7RHpllDkt3RY96t28DwxSG6GVrBRgiYcQc7opR3SQxIcONgRuXzsG9XhYt08q
         Lr5w==
X-Gm-Message-State: AC+VfDwLxTWD1k4CH+6sxUeU96iL+Cg7KVNFjj3Pxg4ts+29TxJkNiir
        JtIy2jcvfrM6IUmjtNXjIW9rNLzkOAs=
X-Google-Smtp-Source: ACHHUZ6sDY1a1e4xWef25gU12+EkDl/xcad/myp2AGH1m3wnAnrORDeMnAIYhi3c1UidBIXNzmJHxg==
X-Received: by 2002:a5d:458c:0:b0:2ff:f37:9d0f with SMTP id p12-20020a5d458c000000b002ff0f379d0fmr6633644wrq.57.1682797619346;
        Sat, 29 Apr 2023 12:46:59 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id t15-20020adfe10f000000b00304832cd960sm14390596wrz.10.2023.04.29.12.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Apr 2023 12:46:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] uri.7: ffix
Date:   Sat, 29 Apr 2023 21:46:43 +0200
Message-Id: <20230429194642.174362-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man7/uri.7 | 51 ++++++++++++++++++++++++++++++++-------------------
 1 file changed, 32 insertions(+), 19 deletions(-)

diff --git a/man7/uri.7 b/man7/uri.7
index 19fe70f2f..51cf6b4e4 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -29,25 +29,38 @@
 .SH NAME
 uri, url, urn \- uniform resource identifier (URI), including a URL or URN
 .SH SYNOPSIS
-.nf
-.HP 0.2i
-URI = [ absoluteURI | relativeURI ] [ "#" fragment ]
-.HP
-absoluteURI = scheme ":" ( hierarchical_part | opaque_part )
-.HP
-relativeURI = ( net_path | absolute_path | relative_path ) [ "?" query ]
-.HP
-scheme = "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
-         "file" | "man" | "info" | "whatis" | "ldap" | "wais" | \&...
-.HP
-hierarchical_part = ( net_path | absolute_path ) [ "?" query ]
-.HP
-net_path = "//" authority [ absolute_path ]
-.HP
-absolute_path = "/"  path_segments
-.HP
-relative_path = relative_segment [ absolute_path ]
-.fi
+.SY URI
+= [ absoluteURI | relativeURI ] [ "#" fragment ]
+.YS
+.PP
+.SY absoluteURI
+= scheme ":" ( hierarchical_part | opaque_part )
+.YS
+.PP
+.SY relativeURI
+= ( net_path | absolute_path | relative_path ) [ "?" query ]
+.YS
+.PP
+.SY scheme
+= "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
+"file" | "man" | "info" | "whatis" | "ldap" | "wais" | \&...
+.YS
+.PP
+.SY hierarchical_part
+= ( net_path | absolute_path ) [ "?" query ]
+.YS
+.PP
+.SY net_path
+= "//" authority [ absolute_path ]
+.YS
+.PP
+.SY absolute_path
+= "/"  path_segments
+.YS
+.PP
+.SY relative_path
+= relative_segment [ absolute_path ]
+.YS
 .SH DESCRIPTION
 A Uniform Resource Identifier (URI) is a short string of characters
 identifying an abstract or physical resource (for example, a web page).
-- 
2.40.1

