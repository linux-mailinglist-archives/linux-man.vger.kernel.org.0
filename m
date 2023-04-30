Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 242096F2739
	for <lists+linux-man@lfdr.de>; Sun, 30 Apr 2023 02:26:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231149AbjD3A0s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Apr 2023 20:26:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjD3A0r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Apr 2023 20:26:47 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D36311711
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 17:26:45 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f315735514so98263685e9.1
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 17:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682814404; x=1685406404;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MrJVQN/Nd69OvWt2KMXkhx6+NMwPkqK7t70dhc67dtE=;
        b=KIx+YD02oOXGmp73+bCIAhytMBOn3tI+9nA6fH+2qJMkg43xN7oYaA2LyQ65UUNqj5
         xht2TIfbeQl0ygPKPnQtQcyUWJZc7SUa/qfVZ1wXIK5HqSo/NcuvhvbqzPHSeZPKW0HP
         D8/LEMQ2BcH1MiWBDS7WqxMLOaiMWWb53tcPciakMvIMn8I0EMq8MktuY7RaMfQOQlYr
         k4hLT5cwwM1CoJC3ijUWd2BU5pahpLyU72dEmLtD5TIy2kQEoMQzZjRaw9J/MSJvKWlj
         pAC9CsDCk2E9v0ch6O2dzbms6S+7FLVFSX9C9n+NGFJDpvbmkvUc6sVTczJ1K2+eX1fs
         PW8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682814404; x=1685406404;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MrJVQN/Nd69OvWt2KMXkhx6+NMwPkqK7t70dhc67dtE=;
        b=jEopjXDUPqJwKE7TZbjp223mMxRG11aytu4kj5A+nttFH8mNm8RAzs2GvVGD8V888j
         SgqFlGVlHJT3a69sze6t2Zjs2WFXKm/f7kK/R9MCexWrCJFDHSbKrfU8ni4RnyJlqlYa
         TlaM9+WihGwgBr/WgQY1LSzZzIqpTR/IBLPBtwXCqtVtLg03U2MIjL19X5EVOKRudWNA
         LAIlY80Z37otr7RF2+gPs9YU/m6KJV1NGB02bjTiAlu1AcIq76+/+wgTjcgtWNNuzUDY
         zcsTO22ufoLHJy5WY/M+UodRAoUdAWEZTNDfyF6im8qtyDrWgA+n15aSo96wm/UJrb3A
         u7eQ==
X-Gm-Message-State: AC+VfDxv+KVDc9Vy+lx4DJvK1SBs9onMVsNhZda/bmuec0mR6qJS5cKr
        ZfZ1VHpwwer3MkU18Z/B7Od5J7qf2a0=
X-Google-Smtp-Source: ACHHUZ4r/5vgNRvpmepN3sr21RvooTvxhqbrRV6kszXBRzZKLVeIl03z3pp4FPlPahmZAhPAilfzfw==
X-Received: by 2002:a7b:c841:0:b0:3f1:92aa:4ea6 with SMTP id c1-20020a7bc841000000b003f192aa4ea6mr7336964wml.7.1682814403910;
        Sat, 29 Apr 2023 17:26:43 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id l18-20020a05600c4f1200b003f07ef4e3e0sm41015891wmq.0.2023.04.29.17.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Apr 2023 17:26:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2] uri.7: ffix
Date:   Sun, 30 Apr 2023 02:26:39 +0200
Message-Id: <20230430002639.181485-1-alx@kernel.org>
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

Reported-by: groff(1) (`make build-catman-troff`)
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

This time, it's a bit more properly formatted, with I and B where
appropriate.

 man7/uri.7 | 83 +++++++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 63 insertions(+), 20 deletions(-)

diff --git a/man7/uri.7 b/man7/uri.7
index 19fe70f2f..068fd7124 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -29,25 +29,68 @@
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
+.SY "\fIURI\fP \fR=\fP"
+.RI "[ " absoluteURI " | " relativeURI " ]"
+.RI "[ \[dq]\fB#\fP\[dq] " fragment " ]"
+.YS
+.PP
+.SY "\fIabsoluteURI\fP \fR=\fP"
+.IR scheme " \[dq]\fB:\fP\[dq]"
+.RI "( " hierarchical_part " | " opaque_part " )"
+.YS
+.PP
+.SY "\fIrelativeURI\fP \fR=\fP"
+.RI "( " net_path " | " absolute_path " | " relative_path " )"
+.RI "[ \[dq]\fB?\fP\[dq] " query " ]"
+.YS
+.PP
+.SY "\fIscheme\fP \fR=\fP"
+.RB \[dq] http \[dq]
+|
+.RB \[dq] ftp \[dq]
+|
+.RB \[dq] gopher \[dq]
+|
+.RB \[dq] mailto \[dq]
+|
+.RB \[dq] news \[dq]
+|
+.RB \[dq] telnet \[dq]
+|
+.RB \[dq] file \[dq]
+|
+.RB \[dq] ftp \[dq]
+|
+.RB \[dq] man \[dq]
+|
+.RB \[dq] info \[dq]
+|
+.RB \[dq] whatis \[dq]
+|
+.RB \[dq] ldap \[dq]
+|
+.RB \[dq] wais \[dq]
+| \&...
+.YS
+.PP
+.SY "\fIhierarchical_part\fP \fR=\fP"
+.RI "( " net_path " | " absolute_path " )"
+.RI "[ \[dq]\fB?\fP\[dq] " query " ]"
+.YS
+.PP
+.SY "\fInet_path\fP \fR=\fP"
+.RI "\[dq]\fB//\fP\[dq] " authority
+.RI "[ " absolute_path " ]"
+.YS
+.PP
+.SY "\fIabsolute_path\fP \fR=\fP"
+.RI "\[dq]\fB/\fP\[dq] " path_segments
+.YS
+.PP
+.SY "\fIrelative_path\fP \fR=\fP"
+.I relative_segment
+.RI "[ " absolute_path " ]"
+.YS
 .SH DESCRIPTION
 A Uniform Resource Identifier (URI) is a short string of characters
 identifying an abstract or physical resource (for example, a web page).
@@ -96,7 +139,7 @@ .SS Usage
 permit the authority to be the following format, called here an
 .I ip_server
 (square brackets show what's optional):
-.HP
+.PP
 .IR "ip_server = " [ user " [ : " password " ] @ ] " host " [ : " port ]
 .PP
 This format allows you to optionally insert a username,
-- 
2.40.1

