Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57BB0712A39
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 18:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244177AbjEZQKA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 12:10:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244173AbjEZQJ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 12:09:59 -0400
Received: from smtp83.iad3a.emailsrvr.com (smtp83.iad3a.emailsrvr.com [173.203.187.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EB2C119
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 09:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1685117396;
        bh=/49lUlX+mznnjr9U1EE5yygaQGvAy1apws+7+EObecA=;
        h=From:To:Subject:Date:From;
        b=XfxxEAwAAs5OhNOWsSRMUKCry0V3+CDLgJeo42mCyMaC7ogI2X4w7G+2Cbx2mVv6F
         v2Hr2/omhjuyHsHW1M2rBZWJUywsvBQr9PpM2yg9gGQYWdmS1reYaCtnec7lW54q38
         eTik0glkzrGd7VHyxRRlsNVG+VWgZyOmnY+2cCSU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp11.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id ADA3942D4;
        Fri, 26 May 2023 12:09:55 -0400 (EDT)
From:   Ian Abbott <abbotti@mev.co.uk>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>
Subject: [PATCH v3] fgetc.3: Describe handling of ungetc(EOF, stream)
Date:   Fri, 26 May 2023 17:09:44 +0100
Message-Id: <20230526160944.27743-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526154132.26865-1-abbotti@mev.co.uk>
References: <20230526154132.26865-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: a4678b06-c444-42f9-acd5-83a624db9b58-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As per the C standard, calling ungetc() with the character parameter
equal to EOF causes it to fail, returning EOF.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
v2: Correct English grammar usage for "otherwise".
v3: Move detail of EOF special case to the end of the paragraph to give
    it less prominence, as suggested by Alex.
---
 man3/fgetc.3 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man3/fgetc.3 b/man3/fgetc.3
index 75dcaeaf6..a15d73b15 100644
--- a/man3/fgetc.3
+++ b/man3/fgetc.3
@@ -62,7 +62,7 @@ A terminating null byte (\[aq]\e0\[aq])
 is stored after the last character in the buffer.
 .PP
 .BR ungetc ()
-pushes
+normally pushes
 .I c
 back to
 .IR stream ,
@@ -71,6 +71,13 @@ cast to
 where it is available for subsequent read operations.
 Pushed-back characters
 will be returned in reverse order; only one pushback is guaranteed.
+If the value of
+.I c
+equals that of the macro
+.BR EOF ,
+nothing is pushed back to
+.I stream
+and an error is returned.
 .PP
 Calls to the functions described here can be mixed with each other and with
 calls to other input functions from the
-- 
2.39.2

