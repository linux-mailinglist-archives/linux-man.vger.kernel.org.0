Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BBBD2FC17B
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 21:46:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731595AbhASUqS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 15:46:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390089AbhASUp6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 15:45:58 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C285FC0613D3
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 12:45:17 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id 6so13767026wri.3
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 12:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jG93sgntDdrCBNFAdFwlyfkiti5Y6ledtW8giuRxKac=;
        b=Nk5I4xSH/FlmsiSmtegEvYBCgNhHlD+IIMt72FR8lkhLmtScCbOVdSKMlDy7RWgT6N
         bqdVoBoh37nHTvUWubzQT6RJy4ChFTdfGA4j/0v9KAEXROSvJ+r1lqJbH11QIHXqnhg+
         UGW6tFQ8BPcqaNCq2QfttcVIBtt5JXnUmNh3+WqasPGm7KuNe7jwLlslxsfDf8DKh0ZP
         C7VXCxtEXQTsNCpAYi1v1bW0hkwffyLdR2beZjxWGmPPfkJUKBUSUOaUIsNYIDnj5ynV
         upWl7ppDlBmJiwMrDYnBLXpgcLWx9GtmVWQCId/X4yh9VDdVfTtEWA5NDtevIVbiyEQ3
         jTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jG93sgntDdrCBNFAdFwlyfkiti5Y6ledtW8giuRxKac=;
        b=Wg4GlMPgbjSUhJFVodb8czW3Ssr2wQXyw8qZEEJnc//IwkRAZ9rscXePjMLTNKVpLm
         Wvc63cuYwX/vfva/iaVOggW4dQVhBIpJfH5fAxXGW3Nm3EzHkC/i9QEw8y7XcSahrSHe
         m5BjuoMEETLFsb7XY0uteMr0GofDunCq+33yUgy7frxZtDZhV8VkZQFI4cadxvnlRYg3
         BvZYMebnqs3lv8mjFFaz1eLu4tKVarXAJXfQqk09lFjFHmW2clWLDQjp5MAONsmmhhEP
         vFQjfGy3qsgpn1puJ3PalLBkeXsbJnKU2ErJ2fhJ2Z4hliJRcFARNBx0XGoCaEy3DlWg
         2Kyg==
X-Gm-Message-State: AOAM531P0t7yRXxlUb9SRObWE95DcADvXxF5dPqQwPgyy/3QWLmvuzQ+
        siRcM1P930/OmZ9Q/V+HestwblpzEx8=
X-Google-Smtp-Source: ABdhPJy7D03dAtAc5qYAPXndUqJ5LbADMOjb/qIqaRZ/G2LYVJZah2IZzIiEU4ibo/JnyBWS8ktLvA==
X-Received: by 2002:adf:f58f:: with SMTP id f15mr6073826wro.388.1611089116606;
        Tue, 19 Jan 2021 12:45:16 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id w4sm5661365wmc.13.2021.01.19.12.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 12:45:16 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     roucaries.bastien@gmail.com,
        =?UTF-8?q?Bastien=20Roucari=C3=A8s?= <rouca@debian.org>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>,
        Vincent Lefevre <vincent@vinc17.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] environ.7: Document the valid values of pathnames for SHELL, PAGER and EDITOR/VISUAL
Date:   Tue, 19 Jan 2021 21:45:00 +0100
Message-Id: <20210119204459.401313-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Bastien Roucariès <rouca@debian.org>

The environ(7) man page says:

       SHELL  The pathname of the user's login shell.

       PAGER  The user's preferred utility to display text files.

       EDITOR/VISUAL
              The user's preferred utility to edit text files.

but doesn't say whether the pathnames must be absolute or they can
be resolved using $PATH, or whether they can have options.

Note that at least for SHELL, this is not specified by POSIX.
This issue was raised in the Austin Group mailing-list, and the answer
is that "what constitutes a valid value for a platform
should be documented" [1].

Since OpenSSH assumes that $SHELL is an absolute pathname (when set),
it is supposed that the documentation should be:

       SHELL  The absolute pathname of the user's login shell.

For PAGER, POSIX says: "Any string acceptable as a command_string
operand to the sh -c command shall be valid."

For EDITOR, it does not need to be an absolute pathname since POSIX
gives the example:

  EDITOR=vi fc

and since it is specified as "the name of a utility", It assumes that
arguments (options) must not be provided. Page 3013 about "more", it
is said: "If the last pathname component in EDITOR is either vi or ex,
[...]", thus again, it is assumed to be a pathname.

For VISUAL, POSIX says: "Determine a pathname of a utility to invoke
when the visual command [...]", thus it is also a pathname. It is not
clear whether the pathname must be absolute, but for consistency with
EDITOR, it will be resolved using $PATH.

[1] https://www.mail-archive.com/austin-group-l@opengroup.org/msg01399.html

Reported-by: Vincent Lefevre <vincent@vinc17.net>
Signed-off-by: Bastien Roucaries <rouca@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/environ.7 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man7/environ.7 b/man7/environ.7
index 7d2bc5a86..b30f9a38e 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -113,16 +113,22 @@ The current working directory.
 Set by some shells.
 .TP
 .B SHELL
-The pathname of the user's login shell.
+The absolute pathname of the user's login shell.
 .TP
 .B TERM
 The terminal type for which output is to be prepared.
 .TP
 .B PAGER
 The user's preferred utility to display text files.
+Any string acceptable as a command_string operand to the
+.I sh -c
+command shall be valid.
 .TP
 .BR EDITOR / VISUAL
 The user's preferred utility to edit text files.
+Any string acceptable as a command_string operand to the
+.I sh -c
+command shall be valid.
 .\" .TP
 .\" .B BROWSER
 .\" The user's preferred utility to browse URLs. Sequence of colon-separated
-- 
2.30.0

