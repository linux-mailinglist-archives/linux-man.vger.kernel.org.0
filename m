Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02CE26597F0
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 13:03:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbiL3MDM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 07:03:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiL3MDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 07:03:12 -0500
Received: from mx0.riseup.net (mx0.riseup.net [198.252.153.6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B450A63B2
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 04:03:10 -0800 (PST)
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx0.riseup.net (Postfix) with ESMTPS id 4Nk3mt2K8rz9sQG;
        Fri, 30 Dec 2022 12:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1672401790; bh=TMcSDyxZxbUW5c1DxP01U/Bn2Y5bV68Ft057AsRFsW0=;
        h=Date:From:To:Cc:Subject:From;
        b=OuAZVyGowUGk3/oLsKefpY0I72/oYLubDt0etd8u3zlchhybiKUWGrsh2W1EocOAN
         YN+2muPoBLJzXcm2lEEjPL1aTb5WPsOAZz0F7YOh5Hrz8NPSB9JG8xJjjXNbIJPL9O
         uj9zbmPplCcMiafsMWN0keH9vF2MUGTgweMNDS/U=
X-Riseup-User-ID: 3DF9E2F333FBEF1CE06AABE9FE7E850D89E424C3F04922A92A703ED75ED10FE0
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4Nk3mr3LP3z1yRB;
        Fri, 30 Dec 2022 12:03:08 +0000 (UTC)
Date:   Fri, 30 Dec 2022 12:03:02 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [PATCH 1/2] bpf-helpers.7, open_how.2type, string_copying.7: tfix
Message-ID: <20221230120302.kzclmkh25r46lh4o@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Typos found with codespell.

Signed-off-by: Samanta Navarro <ferivoz@riseup.net>
---
 man2type/open_how.2type | 2 +-
 man7/bpf-helpers.7      | 6 +++---
 man7/string_copying.7   | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2type/open_how.2type b/man2type/open_how.2type
index 702cfe50b..f42d190a1 100644
--- a/man2type/open_how.2type
+++ b/man2type/open_how.2type
@@ -20,7 +20,7 @@ Linux kernel headers
 .B };
 .EE
 .SH DESCRIPTION
-Specifies how a pathname should be open.
+Specifies how a pathname should be opened.
 .PP
 The fields are as follows:
 .TP
diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index bb491bf3b..f61792c7e 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -3728,7 +3728,7 @@ Nothing has been written
 .sp
 \fB\-EEXIST\fP if the option already exists.
 .sp
-\fB\-EFAULT\fP on failrue to parse the existing header options.
+\fB\-EFAULT\fP on failure to parse the existing header options.
 .sp
 \fB\-EPERM\fP if the helper cannot be used under the current
 \fIskops\fP\fB\->op\fP\&.
@@ -4068,7 +4068,7 @@ Current \fIktime\fP\&.
 .INDENT 7.0
 .TP
 .B Description
-Returns the stored IMA hash of the \fIinode\fP (if it\(aqs avaialable).
+Returns the stored IMA hash of the \fIinode\fP (if it\(aqs available).
 If the hash is larger than \fIsize\fP, then only \fIsize\fP
 bytes will be copied to \fIdst\fP
 .TP
@@ -4104,7 +4104,7 @@ ctx. Providing an \fIlen_diff\fP adjustment that is larger than the
 actual packet size (resulting in negative packet size) will in
 principle not exceed the MTU, why it is not considered a
 failure.  Other BPF\-helpers are needed for performing the
-planned size change, why the responsability for catch a negative
+planned size change, why the responsibility for catch a negative
 packet size belong in those helpers.
 .sp
 Specifying \fIifindex\fP zero means the MTU check is performed
diff --git a/man7/string_copying.7 b/man7/string_copying.7
index 7b386cf67..cb5246e1b 100644
--- a/man7/string_copying.7
+++ b/man7/string_copying.7
@@ -253,7 +253,7 @@ or
 .PP
 To copy from an unterminated string within a fixed-width buffer
 into a character sequence,
-ingoring any trailing null bytes in the source fixed-width buffer,
+ignoring any trailing null bytes in the source fixed-width buffer,
 you should use
 .BR zustr2ustp (3).
 .\" ----- DESCRIPTION :: Measured character sequences -----------------/
-- 
2.39.0

