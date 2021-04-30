Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31A393701B5
	for <lists+linux-man@lfdr.de>; Fri, 30 Apr 2021 22:05:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234780AbhD3UDn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Apr 2021 16:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233448AbhD3UDm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Apr 2021 16:03:42 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD31C06174A
        for <linux-man@vger.kernel.org>; Fri, 30 Apr 2021 13:02:54 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o26-20020a1c4d1a0000b0290146e1feccdaso2392574wmh.0
        for <linux-man@vger.kernel.org>; Fri, 30 Apr 2021 13:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tQCCp5NLH9EaKhPJlIU1ayCjNS6N+ik1afl09QkFC/Y=;
        b=TfAqJQ42D4pGaLlcCizXjGTLg3i18rggnDFVxyBqJValAd8bhyNlqv2iZ3LauwzfaZ
         I2KatiUBrDpv1lCvYdeuCw1x+QtKzu8ruISUq5B8/Z9jdcxy7kG6zv5vZsfkGVXeuaHA
         hNxVtCBDrSXK+QlPXDdF0Z8XNKMVzmVHAthUXJApIhKJRU/OEIN2LYJh3WmIUbgNN0zS
         DGn+x72bLqkrw4cptf7BqY2AICXLEM+ff4020DG4o1LU0SZKlyJ3t0Ar6sjW1YSMAKG5
         IiGSJkbC7gR/Ac4rI0SIhB41XuqvnmRnkg21cFWx7i+wCbf+aFgmn1QVMpTwOAEOfKxH
         /5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tQCCp5NLH9EaKhPJlIU1ayCjNS6N+ik1afl09QkFC/Y=;
        b=VErXZ+plQ8mJlX7FN994yV/trfTLQNOjXHtKyMQUN5v0UL9x50PGBOiPB431QaJ8um
         vKEhstdI/SAWsozp+5S8ji2uXmR/VGRm3fTqbWxPgNkIjEuiI0opBUJMa1mG7cFcuCSY
         J8bNEU9awyXiZPX6ZoVf7/ntE34vXqthfDB4/vXwouLKxoqOENZWHME+jfIu1Uc6VRac
         WN9pOc6oodjOOwPLwHOybX0AX4Jh8dQlfb4Ucz6pqfrPvvZWhigoQemsqDbdW1irfdFA
         ND6s1hYFMNmerZ0kMnoIwHDod7cTBzammDZpXo3qgGX0LGSWYZq+1FROuGxQA4FZYba/
         eG6Q==
X-Gm-Message-State: AOAM532HXoqlRW0jsn9YhTW8KhYGdXJSgC4u8tGTcD6yRUelsoz812G1
        EIs4QNICENAoE/PnDbZS6pj20+9HV6Hk3Q==
X-Google-Smtp-Source: ABdhPJxC9G8wYVC6GcZwcOz2iPonelAGdFwqrdzKNUGxWScKN7AE6YbsKCav46hSgo+D1UNbRmmUhQ==
X-Received: by 2002:a1c:b7c4:: with SMTP id h187mr7731462wmf.178.1619812972956;
        Fri, 30 Apr 2021 13:02:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o1sm3493509wrm.66.2021.04.30.13.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 13:02:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     "James O. D. Hunt" <jamesodhunt@gmail.com>, alx.manpages@gmail.com
Subject: [BUG 212887] [PATCH] getopt.3: Clarify behaviour
Date:   Fri, 30 Apr 2021 22:00:13 +0200
Message-Id: <20210430200012.5032-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "James O. D. Hunt" <jamesodhunt@gmail.com>

Improved the `getopt(3)` man page in the following ways:

1) Defined the existing term "legitimate option character".
2) Added an additional NOTE stressing that arguments are parsed in strict
   order and the implications of this when numeric options are utilised.
3) Added a new WARNINGS section that alerts the reader to the fact they
   should:
   - Validate all option argument.
   - Take care if mixing numeric options and arguments accepting numeric
     values.

Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
Bugzilla: <https://bugzilla.kernel.org/show_bug.cgi?id=212887>
---

I'm only forwarding the patch to the list to better discuss it.

 man3/getopt.3 | 59 ++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/man3/getopt.3 b/man3/getopt.3
index 921e747f8..ec3a5640f 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -125,7 +125,13 @@ Then \fIoptind\fP is the index in \fIargv\fP of the first
 \fIargv\fP-element that is not an option.
 .PP
 .I optstring
-is a string containing the legitimate option characters.
+is a string containing the legitimate option characters. A legitimate
+option character is any visible one byte
+.BR ascii (7)
+character (for which
+.BR isgraph (3)
+would return nonzero) that is not the null byte (\(aq\e0\(aq),
+dash (\(aq-\(aq) or colon (\(aq:\(aq).
 If such a
 character is followed by a colon, the option requires an argument, so
 .BR getopt ()
@@ -402,6 +408,22 @@ routine that rechecks
 .B POSIXLY_CORRECT
 and checks for GNU extensions in
 .IR optstring .)
+
+Command-line arguments are parsed in strict order meaning that an option requiring
+an argument will consume the next argument, regardless of whether that
+argument is the correctly specified option argument or simply the next option
+(in the scenario the user mis-specifies the command-line). For example, if
+.IR optstring
+is specified as "1n:"
+and the user incorrectly specifies the command-line arguments as
+\(aqprog\ -n\ -1\(aq, the
+.IR \-n
+option will be given the
+.BR optarg
+value \(aq\-1\(aq, and the
+.IR \-1
+option will be considered to have not been specified.
+
 .SH EXAMPLES
 .SS getopt()
 The following trivial example program uses
@@ -542,6 +564,41 @@ main(int argc, char **argv)
     exit(EXIT_SUCCESS);
 }
 .EE
+
+.SH WARNINGS
+Since
+.BR getopt ()
+allows users to provide values to the program, every care should be taken to
+validate every option value specified by the user calling the program.
+.BR getopt ()
+itself provides no validation so the programmer should perform boundary value
+checks on
+.ft I
+every
+.ft
+argument to minimise the risk of bad input data being accepted by the program.
+String values should be checked to ensure they are not empty (unless
+permitted), sanitized appropriately and that internal buffers used to
+store the string values returned in \fIoptarg\fP are large enough to hold
+pathologically long values. Numeric values should be verified to ensure they
+are within the expected permissible range of values.
+
+Further, since
+.BR getopt ()
+can handle numeric options (such as \(aq-1\(aq or \(aq-2 foo\(aq), care should be
+taken when writing  a program that accepts both a numeric flag option and an option
+accepting a numeric argument. Specifically, the program should sanity check the numeric
+\fIoptarg\fP value carefully to protect against the case where a user
+mis-specifies the command-line which chould result in a numeric option flag
+being specified as the \fIoptarg\fP value for the numeric option by mistake.
+For example, if
+.IR optstring
+is specified as "1n:" and the \(aqn\(aq option accepts a numeric value, if the
+command-line is specified accidentally as \(aqprog\ -n\ -1\(aq, care needs to
+be taken to ensure the program does not try to convert the \(aq-1\(aq passed
+to the \(aqn\(aq option into an unsigned numeric value since that would result
+in it being set to the largest possible integer value for the type used to
+encode it.
 .SH SEE ALSO
 .BR getopt (1),
 .BR getsubopt (3)
-- 
2.31.0

