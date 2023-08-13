Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCF3177AB21
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 22:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231357AbjHMUUB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 16:20:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbjHMUUB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 16:20:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0269010F9
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:20:03 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8CAD56273C
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 20:20:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B09C433C7;
        Sun, 13 Aug 2023 20:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691958002;
        bh=nR3CwWcWWqEl3rnGJ9wqfXylGghnEdHXRiynADAd3pw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=InaFzLxQtAkTlsWoIAIX1DIfWb9kIDIQMXOs4KDYIdhzlmvIIl6OEiMSRH4R1k/Wx
         3f+FLoj13OMdIH5pPC2zbRko+PPCNXCHYK3svSFzgKxtM2VV/AvTgGXdnR8Ntt6uml
         8EaulS31bmI4BrJs8rKRveyymmyLPYIjtSAo/jqOaJjhCHMms+Qku2QCHs0NxXhrbW
         rJvLSWI8eXguNgC2BFP3hAFAgBy54n/vc+g6wpVo3q3cpBdEE9OMMc2I6GUZRt/pat
         i8ViQSvrbh8fY4v6Yl3XBCmskJUtg+j1ZwUvPkTnVEuCeq2Fots1ZiS3/J5s1o8Fzz
         EfC8DhKOu4aLg==
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Shani Leviim <sleviim@redhat.com>
Subject: [PATCH v2] strerror.3: Change strerror() reference from MT-Unsafe to MT-Safe
Date:   Sun, 13 Aug 2023 22:19:24 +0200
Message-Id: <20230813201923.55796-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Shani Leviim <sleviim@redhat.com>

The information in this patch was obtained from a glibc upstream patch,
commit ID 28aff047818eb1726394296d27b9c7885340bead

According the patch above, for glibc versions >=2.32,
strerror() is considered MT-Safe, and the man page should be changed accordingly.

Signed-off-by: Shani Leviim <sleviim@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Shani,

This is your patch rebased to the current git HEAD.

Cheers,
Alex

 man3/strerror.3 | 31 +++++++++++++++----------------
 1 file changed, 15 insertions(+), 16 deletions(-)

diff --git a/man3/strerror.3 b/man3/strerror.3
index 8b36d6487..73199ef85 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -72,11 +72,12 @@ .SH DESCRIPTION
 is
 .BR EINVAL ,
 the returned description will be "Invalid argument".)
-This string must not be modified by the application, but may be
-modified by a subsequent call to
+This string must not be modified by the application,
+and the returned pointer will be invalidated on a subsequent call to
 .BR strerror ()
 or
-.BR strerror_l ().
+.BR strerror_l (),
+or if the thread that obtained the string exits.
 No other library function, including
 .BR perror (3),
 will modify this string.
@@ -101,12 +102,12 @@ .SH DESCRIPTION
 as an argument, this function returns a pointer to the string "EPERM".
 .\"
 .SS strerror_r()
-The
 .BR strerror_r ()
-function is similar to
+is like
 .BR strerror (),
-but is
-thread safe.
+but might use the supplied buffer
+.I buf
+instead of allocating one internally.
 This function is available in two versions:
 an XSI-compliant version specified in POSIX.1-2001
 (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13),
@@ -231,7 +232,7 @@ .SH ATTRIBUTES
 T}	Thread safety	T{
 .na
 .nh
-MT-Unsafe race:strerror
+MT-Safe
 T}
 T{
 .na
@@ -246,6 +247,10 @@ .SH ATTRIBUTES
 .BR strerror_l ()
 T}	Thread safety	MT-Safe
 .TE
+.PP
+Before glibc 2.32,
+.BR strerror ()
+is not MT-Safe.
 .SH STANDARDS
 .TP
 .BR strerror ()
@@ -301,13 +306,6 @@ .SH HISTORY
 .BR strerrordesc_np ()
 glibc 2.32.
 .SH NOTES
-The GNU C Library uses a buffer of 1024 characters for
-.BR strerror ().
-This buffer size therefore should be sufficient to avoid an
-.B ERANGE
-error when calling
-.BR strerror_r ().
-.PP
 .BR strerrorname_np ()
 and
 .BR strerrordesc_np ()
@@ -318,4 +316,5 @@ .SH SEE ALSO
 .BR error (3),
 .BR perror (3),
 .BR strsignal (3),
-.BR locale (7)
+.BR locale (7),
+.BR signal-safety (7)
-- 
2.40.1

