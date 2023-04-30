Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9265F6F291E
	for <lists+linux-man@lfdr.de>; Sun, 30 Apr 2023 16:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbjD3OEW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Apr 2023 10:04:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjD3OEV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Apr 2023 10:04:21 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C3D19A3
        for <linux-man@vger.kernel.org>; Sun, 30 Apr 2023 07:04:19 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f178da21b5so8786725e9.3
        for <linux-man@vger.kernel.org>; Sun, 30 Apr 2023 07:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682863458; x=1685455458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kLp0sf366gA7T+wY0kIyr+3wMFk/fAA2OyTrPqlJye4=;
        b=F0gUXXCz3jdaMkfq1HuzeaWmqhpGOkXcU+1WNyHbaFPCpFdDcP8aF6e/imKHekLFTq
         FHtfn9DgrGGdG53GE86xmzgBbZgAMgfqXcrKa0Jy3wzsNVtHuYY3DkNOLzxwnI2zhHgW
         e7K25HtOEnCYOkf39kqWivpb9zlDYQvuhGCGO0aPBqNa0SMzF81Es7L2zipZC71zBOJt
         rh2mt2DFDrSwG7YbSNVe4d1k5TtJN4whsfu62gOgm5UZ2idB1hMgUsixl1PfWhgt45MP
         VDRCbl57UEXqLf3/lskof9cHMzZieNYgmjBRmhmH0d55NtdcJbOReTM1UFB5J4Jeg1a3
         apyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682863458; x=1685455458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kLp0sf366gA7T+wY0kIyr+3wMFk/fAA2OyTrPqlJye4=;
        b=aYOXaWmroOFpQRgdETzLbK+r7iem1wtEoM1PrO0sWTYrKkawkQxos1KjNi4T5Wp7pr
         GEYjBdHNAM3pv6PT/4ivBtl6F19BOuNoYBYv4IPooaVLGc3gUAfBESs0MHSc5cIhLnjc
         ll6F4LafOOLM2nPQnzcx288pjYlinIhFnYQcvkUau9KAvJsj3oCeIhfwER/MCFEe8jq1
         RpuqURyNKa1XsSrDVV06juTwkUe+QSQ095C9K5FYbXYsGoGVjx06dwRQjq11lISe/t2L
         nq/rYR3aKign0BRbUbV3q7IScWbEn5P5hPVYO8gd3eOqVjCO1GtDeJnDZMDH5tqCsoDw
         VIpg==
X-Gm-Message-State: AC+VfDwrVcAkvltvGfbWv5BETXFRb9ZEQ+rmaguj7P1kPwkdzwsIqAAA
        yWPZW6zslAzDasiyaAXBL3u/b00/ozQ=
X-Google-Smtp-Source: ACHHUZ4AggmdXoEo1RrQe0a+dhx+Y30IkzSn4FbOFHvGo/yMf6x718WqhjsfzvpRkF2oOmC6r+M3Lw==
X-Received: by 2002:a7b:cb8c:0:b0:3f1:76d0:8bb0 with SMTP id m12-20020a7bcb8c000000b003f176d08bb0mr8374589wmi.36.1682863458254;
        Sun, 30 Apr 2023 07:04:18 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id o3-20020a05600c378300b003ef5f77901dsm29816631wmr.45.2023.04.30.07.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Apr 2023 07:04:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v3b] uri.7: ffix
Date:   Sun, 30 Apr 2023 16:00:34 +0200
Message-Id: <20230430140033.5079-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230430122118.t6u57gcbc52xbms6@illithid>
References: <20230430122118.t6u57gcbc52xbms6@illithid>
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
Cowritten-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden,

On 4/30/23 14:21, G. Branden Robinson wrote:
> It's not _necessary_ to bust into font selection escape sequences in the
> `RI` line here and similar ones later, not quoted, whereas it is for the
> `SY` argument.  You can use the `\c` output line continuation escape
> sequence to chain several font selection requests together without
> intervening space.
> 
> .RB "[ \[dq]" # \[dq]\~c
> .IR fragment \~]
> 
> But if you think the source is more readable the way you have it, keep
> it.

I initially thought it would be less readable, but after seeing it in
your email, I reconsidered.  With that, and help of \~, I can remove all
quotes (except in SY).  And now, unbreakable spaces make the formatting
even better.

Cheers,
Alex

 man7/uri.7 | 99 +++++++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 79 insertions(+), 20 deletions(-)

diff --git a/man7/uri.7 b/man7/uri.7
index 19fe70f2f..ab4a2a2e1 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -29,25 +29,84 @@
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
+.RI [\~ absoluteURI
+|
+.IR relativeURI \~]
+.RB [\~\[dq] # \[dq]\~\c
+.IR fragment \~]
+.YS
+.PP
+.SY "\fIabsoluteURI\fP \fR=\fP"
+.I scheme\~\c
+.RB \[dq] : \[dq]
+.RI (\~ hierarchical_part
+|
+.IR opaque_part \~)
+.YS
+.PP
+.SY "\fIrelativeURI\fP \fR=\fP"
+.RI (\~ net_path
+|
+.I absolute_path
+|
+.IR relative_path \~)
+.RB [\~\[dq] ? \[dq]\~\c
+.IR query \~]
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
+.RI (\~ net_path
+|
+.IR absolute_path \~)
+.RB [\~\[dq] ? \[dq]\~\c
+.IR query \~]
+.YS
+.PP
+.SY "\fInet_path\fP \fR=\fP"
+.RB \[dq] // \[dq]\~\c
+.I authority
+.RI [\~ absolute_path \~]
+.YS
+.PP
+.SY "\fIabsolute_path\fP \fR=\fP"
+.RB \[dq] / \[dq]\~\c
+.I path_segments
+.YS
+.PP
+.SY "\fIrelative_path\fP \fR=\fP"
+.I relative_segment
+.RI [\~ absolute_path \~]
+.YS
 .SH DESCRIPTION
 A Uniform Resource Identifier (URI) is a short string of characters
 identifying an abstract or physical resource (for example, a web page).
@@ -96,7 +155,7 @@ .SS Usage
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

