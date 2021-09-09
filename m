Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB3740462A
	for <lists+linux-man@lfdr.de>; Thu,  9 Sep 2021 09:29:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352530AbhIIHaR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Sep 2021 03:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350551AbhIIHaQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Sep 2021 03:30:16 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D75DAC061575
        for <linux-man@vger.kernel.org>; Thu,  9 Sep 2021 00:29:07 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u16so1078785wrn.5
        for <linux-man@vger.kernel.org>; Thu, 09 Sep 2021 00:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gdKxlbVo2+pJ8HwwhqI5Cm/0d5A7ov/Gc/DF+jBIYmM=;
        b=Cj91Hdl2KbaLHHo8BOPDA+tuQn4tbuF35GKfyXD0jf7JD+amAUjI28f0okjKuxZ+VM
         gKBUU6LgeISOPAyLUjauRNx+BckKbd73z8K+0lyhyhY3p7IAF2KgD3vfeo6m8nKtihUQ
         D5ZKcWaP+IVH1rWfTowipChM1NRPeFGj8NaR9qrbclDs6cwBYN2AWKP7Vn8HOQsV0KZV
         L6kM/3gddXOHYU0MftHB2rS0+1MujVnXCrByphgxv4cA66bQ7QorX2w0wjMtngol7ea0
         ehFhYXDNBWeCADTQyZMQkDpRae5FBrNBHpSKB3zAbdelwfWJbt2CArzGRBiRpD3DHD/V
         hXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gdKxlbVo2+pJ8HwwhqI5Cm/0d5A7ov/Gc/DF+jBIYmM=;
        b=qwUq4opQCNsPkVsmggFsC9Uly/esc6PhiHI0uNU9jaUQM/lZw1V9hqDzqhXI3x6jB9
         1lsiz06rkipR35tivJsDFxJe/0A047ZgPh1kryo5V2CeDyYtAfDcHlk3BGhK71mDkvpX
         GufdVd1MrADSwqkQB5QhDv6ZG9MbdCG2ew9WxjJ/KYJxP0zDjGBv8ZwDeZgTI5tTqc4G
         8GiAk9HT3WaZaMNBylD0Tf2DFdub1rIGbwGoXWL81AsPT+SsMHWjRVLt5CBmArls4S1M
         S2bbAhmzp4aHku+NU84aWff7SXb+JFiiyRdb8eFkXRC/wx6iIVlt/QNEymRZS7vdHobu
         6Q4Q==
X-Gm-Message-State: AOAM533J/Gwgb12nbY12iEX0YSeKVEPQwOperpi/Vi8vFLcHFEfyIt/0
        0XyzV+VwOp1a7yJ9OIDBVy46JTgVrXs=
X-Google-Smtp-Source: ABdhPJyGm/9RvetjDeegKa7pgjUdXs6xfpjENl9WX98mS6B21ihmwYm4k64eSQDevB7oC+WFgCJJzA==
X-Received: by 2002:adf:d0cf:: with SMTP id z15mr1787371wrh.356.1631172546512;
        Thu, 09 Sep 2021 00:29:06 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g1sm950197wmk.2.2021.09.09.00.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 00:29:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "Thaddeus H . Black" <thb@debian.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] .P -> .PP
Date:   Thu,  9 Sep 2021 09:28:53 +0200
Message-Id: <20210909072853.423334-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210909072442.423117-4-alx.manpages@gmail.com>
References: <20210909072442.423117-4-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

And another trivial one you can squash.

---
 man7/filename.7 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man7/filename.7 b/man7/filename.7
index 0e42e39d4..d60fe08eb 100644
--- a/man7/filename.7
+++ b/man7/filename.7
@@ -141,10 +141,10 @@ termination of options processing [see
 but when reprocessing of shell-command text requires requotation and
 re-escape, the workarounds become an inconvenient, confusing, error-prone
 hassle.
-.P
+.PP
 The use of conventional filenames averts the hassle.
 It also makes filenames more recognizable to experienced users.
-.P
+.PP
 This section introduces broadly observed conventions for filenames.
 .TP
 .B The POSIX Portable Filename Character Set
@@ -284,7 +284,7 @@ or
 Further filenaming conventions are softer.
 Though often observed, such softer conventions can be bent or broken
 without rendering filenames unconventional.
-.P
+.PP
 This section introduces soft conventions for filenames.
 .TP
 .B Low line versus hyphen-minus
@@ -409,7 +409,7 @@ Approximately, in brief, Unicode is a character set, UTF-8 is a
 byte-oriented scheme by which Unicode characters can be encoded, and ASCII
 is both a character set and a byte-oriented scheme that is a subset of both
 Unicode and UTF-8.]
-.P
+.PP
 To suggest an exact noninternational filenaming rule, other than the
 .BR iswgraph (3)
 rule, for every locale would exceed the scope of this manual page; but
@@ -421,7 +421,7 @@ exclude spaces, control characters, ASCII symbols (like\~\fB$\fR
 or\~\fB=\fR), and ASCII punctuators other than the three punctuators POSIX
 recommends, such filenames will not normally cause trouble for tools and,
 thus, may be regarded as conventional within the local context.
-.P
+.PP
 The use of nonbreaking spaces like\~\fB\eu00A0\fR, \fB\eu2007\fR,
 \fB\eu202F\fR or\~\fB\euFEFF\fR in filenames is probably inadvisable for
 most locales, despite that
@@ -447,9 +447,9 @@ You may have noticed the unconventionally-named
 .I lost+found
 directory lurking at a filesystem's root on your computer; and there are
 further examples, as well.
-.P
+.PP
 There are many reasons to use unconventional filenames.
-.P
+.PP
 It is hard to give a general rule, with respect to a particular context, as
 to which unconventional filenames are likely to cause practical troubles
 and which are not.
@@ -514,7 +514,7 @@ POSIX.1-2008, SUSv4.
 .BR locale (7),
 .BR unicode (7),
 .BR utf-8 (7)
-.P
+.PP
 info
 .B coreutils
 .\" The author, Thaddeus H. Black, thanks his wife Kristie, daughter Naomi
-- 
2.33.0

