Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E131757E3DB
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 17:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231784AbiGVPjx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 11:39:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbiGVPjw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 11:39:52 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC7F99B9DF
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 08:39:51 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id u5so7037656wrm.4
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 08:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vkYwqZoS+/nAgLmfxSCqb0NbHgn9nrs/KgHCKWi/vGQ=;
        b=hx0mgie3ugwULb+A4OEBaHw0Wg7yNyr9LoSIMS/H9kdIW9iCwwjYzq4DpMhOuymQ97
         mdsQ2ExP9vi/nYaLSalmUDV6uLwpv7EulDj99zQASfn0fVwrx5ovBIsYx7tOq7lUmrxV
         3HzrfsGyYtcB5F/jlLDiznAYSDM/KtFo4Ftn2p5HyAhlUFSZ/Ie/u5AIfGRxF0FO1Krh
         JzoeS8SWox7AEF7Dzz9x0yknr534XvAcmBv7YJMhkvOzYhrBjw8W9kXZpMMTdK8EaN5V
         Hu670VmFcCRwcDbZ6/FwLrRntE+GUyosCBab/RuAwAaeROGDAAJnU0Kq2Gkf7I7DL0uH
         9TeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vkYwqZoS+/nAgLmfxSCqb0NbHgn9nrs/KgHCKWi/vGQ=;
        b=CjEyO8cYEZwPbbpyk79V1nJrQ5TbibBYvatDoStNweSLxp1HIdU8LJlMUQbIsIs/TQ
         TORiCqZgP1S9fp3MPjvoyG3u8wTBDhRdX4hGk8lb1TGDmiNkyaOfaTEqa9JP/9Ojkl6l
         qjL9wxRJt36uD465hX6AnoKO5FVImqvV3uX4YJ33RhjoaTCzFh0JB6TjkwY2X9K1n3tt
         Gs15IiR2Xj05Mio6BvTJTNg6pr5vNWwBGC7Kwkbd2sFOuCROQ9ve5k7Hn/HBCpUYwuKg
         rpdbgdqbVOlL50dckJekQ52k2WI+erS8WfpuPyHHmP1AhtpXBOgc9BorHGqABgQH48f3
         5Y8A==
X-Gm-Message-State: AJIora/WAGmzwsgJJDEZK0cZWERBS24XA1h0gJbareV42yL+m98w04LT
        Z2rZFltAKw9fUdk4oHegMMQ=
X-Google-Smtp-Source: AGRyM1s6JVO9IFelrDFpkBx4HAZ8ZrgoVpUARyuQizJuR+fJX5Y9gMS1N42X8+jOnWIoEsPTaU/x5Q==
X-Received: by 2002:a5d:6d86:0:b0:21e:5b01:423d with SMTP id l6-20020a5d6d86000000b0021e5b01423dmr329586wrs.105.1658504390377;
        Fri, 22 Jul 2022 08:39:50 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id e29-20020a5d595d000000b0021e501519d3sm4787801wri.67.2022.07.22.08.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 08:39:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org
Subject: [PATCH] NULL.3def: Add documentation for NULL
Date:   Fri, 22 Jul 2022 17:31:28 +0200
Message-Id: <20220722153127.14528-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1704; h=from:subject; bh=rZEUdYySIdyAYp0Py5ulohq715AOsQ4yGzM57ZI/7+s=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi2sLDQO8veYPEJphGN6uXSdmYzWTpRH+REAjZGked pzRa1huJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYtrCwwAKCRCejBr7vv/bMpI1D/ 919UnEdsgoazu+FcPchZ79IHgbadCgMQ4zk1EqXn8UQZ1SduaN3o5wMbM4j5WS/I4DoDpLWJOCMnSq sZ1WBol28B5348+Yv0DMH7HkrD70Q5gj/YBzcMcZoK3R5mikHOycG1mpJ9SSN6Z63XkcNy3IwIkH2I OgoFQnu9x57dzE1dpLEP9u472+lTKnPIqq+J/XhaFo4vlH6TctfUaDRyMaHGtaZd2tMpJLuxjJTEmh 63+6jvpFsd8x04hJFyfuTcday5UEvAL/QuJXO9CrcczEi8Bu2SF+xkRquuuWktDsMyQL8Cd6pS8g1j DWlxbKfuYzZK9CdFdxh3DpmKQlEvzfXKtr8cHPMN2vNwxBvFVC/KnLlrsXIbAr1DZ65/mZ3ZwzjhYN QcM+bZmAoxJB5OxfCqxl51kkpH8FgN0RMe/Zb16vHbVlzj9lDk6dZsiQ46RYz3XNA+U7wNkyb6EJsm fERezjEBP0lOIukrSV16lGifnPQTQD5UdzsH8Z6U7OsBpScIg9DHQUhTZJScscdyUcKkDxI7XuUvcf jbvCafPI2oKrdPEMExEM1ges8Z+mzJBIGue33f3VAvxQ4ql0IOP02WXpWPvcfEkpI5RltwG2aQF9xF ImTDJgaxX/6j3JAwy2bIxSvFxzFCHtYWO0LkomrDbLDlYi0BTKijQwEpa1ag==
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

Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi all!

As hinted in recent mails to groff@ and linux-man@,
I'm going to inaugurate a new [sub]section for constants.

I think it should contain constants, normally represented by
object-like macros in C.  But it should also contain other
forms of constants in other languages (e.g., C++'s constexpr
variables), so I'm not convinced by the name 3def.

I'm (very) tempted to inaugurate section 11 for this, following
standard practice of getting a higher number for something not
similar to anything else currently documented.  That would mean
that section 10 would accomodate what now is in 3type, which also
doesn't entirely fit section 3.

But for this initial discussion, I kept it in section 3def
temporarily.

The initial page for this section is non other than NULL ;)

Cheers,

Alex

 man3def/NULL.3def | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 man3def/NULL.3def

diff --git a/man3def/NULL.3def b/man3def/NULL.3def
new file mode 100644
index 000000000..a1dec28c2
--- /dev/null
+++ b/man3def/NULL.3def
@@ -0,0 +1,43 @@
+.\" Copyright (c) 2022 by Alejandro Colomar <colomar.6.4.3@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH NULL 3def 2022-07-22 Linux "Linux Programmer's Manual"
+.SH NAME
+NULL \- null pointer constant
+.SH SYNOPSIS
+.nf
+.B "#define NULL  ((void *) 0)"
+.fi
+.SH DESCRIPTION
+.B NULL
+represents a null pointer constant.
+.PP
+According to POSIX,
+it shall expand to an integer constant expression with the value
+.B 0
+cast to type
+.IR "void *" .
+.PP
+A null pointer is one that doesn't point to a valid object.
+.SH CONFORMING TO
+C99 and later.
+POSIX.1-2001 and later.
+.SH NOTES
+It is undefined behavior to try to dereference a null pointer
+or to perform pointer arithmetics on it:
+.I NULL \- NULL
+is, surprisingly, undefined behavior, according to ISO C.
+.SH BUGS
+When it is necessary to set a pointer variable to a null pointer,
+it is not enough to use
+.IR "memset(&p, 0, sizeof(p))" ,
+since ISO C and POSIX don't guarantee that a bit pattern of all
+.BR 0 s
+would represent a null pointer.
+Instead, pointer variables need to be explicitly set to a null pointer
+when they need to hold a null pointer.
+.SH SEE ALSO
+.BR memset (3),
+.BR void (3type)
-- 
2.36.1

