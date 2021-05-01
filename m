Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BD4D3708D3
	for <lists+linux-man@lfdr.de>; Sat,  1 May 2021 21:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231648AbhEATnV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 May 2021 15:43:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231629AbhEATnU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 May 2021 15:43:20 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91607C06174A
        for <linux-man@vger.kernel.org>; Sat,  1 May 2021 12:42:24 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id l14so1482579wrx.5
        for <linux-man@vger.kernel.org>; Sat, 01 May 2021 12:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d54FQ176drs542FBg42JQhwNZBAe8tIBCmVU2nNzBhI=;
        b=bvRQvelTSyoh9am7Smp5ivmZVCEoBEvaDmWw5gRwgAAm7MgnvomZWLgxCkLbO18tdL
         CZPwL6SOStThkAaFte50utxlZn1LGWqK9jnPj1Ddcf5CTSf6HehmVfVnaiy7xebVigPr
         NMVStH06CL7HjM+r1I/nLy7vPPeiVlwSaA429TuVKpnTY6PmvInmQhoXldr6CuEvw9xK
         Iwu4/ysDcEIG0pwqtvrlBuLN/F0iQ9vKJ5MWqUAkKjvmRtFg0vLNNBuHaEtOZWByEEgf
         qFDukr8T/YeI368hnqwIIZfFekXIxSldA+6T7fLjuPfBhtEnEIo3mgqVqVlK/xOiTEo0
         RWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d54FQ176drs542FBg42JQhwNZBAe8tIBCmVU2nNzBhI=;
        b=ESMra/P8zEdb7GoVwtc7fYTtaYoNieDv+Fw1cXvcmSUqcTbrLoSyaU2WSLMlAMdkfL
         SolZYWClJkCvaIyli9wtiNQfGgt3THiil5bbhK3rd6nxyi3lZQR4JLaTOeg/IXf0CrHU
         8NCPAOkm/uApGsj55/FByuf12gwJ3SYyH7Z/1t7JVOfQrHoiJxJdWJLZ0P8+N/LB5N5q
         zwN/aD/F6l7Nz7PKoF9JlXNPty8+punbyrQyDqvTtjfWRS5O8BR00CF/M9nun7YvR2Ic
         95cEQZnbmDgfeosqovmgBDXj5NakTqZIWIZbZl1jyN4lxnZZxn23DwyG+77UURapRSfp
         WszA==
X-Gm-Message-State: AOAM5306yFk+FC+TujeSRl4ks8uQeF402Eg7OeO02J9oGnKqWTD/8SqJ
        oaaXKs26fSMf3Sj5uD6oI9nm+DQSnCIq5w==
X-Google-Smtp-Source: ABdhPJwqPnSOI3lwhDPlkTMo7wwosTC6NdRqum+2QAe8wQwg34T22Nv3DkCUKqCsVpjCJ2YQl7M+YA==
X-Received: by 2002:adf:f74e:: with SMTP id z14mr15018329wrp.320.1619898143222;
        Sat, 01 May 2021 12:42:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id x8sm6706076wru.70.2021.05.01.12.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 May 2021 12:42:22 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     "James O. D. Hunt" <jamesodhunt@gmail.com>, alx.manpages@gmail.com
Subject: [BUG 212887] [PATCH v2] getopt.3: Clarify behaviour
Date:   Sat,  1 May 2021 21:41:02 +0200
Message-Id: <20210501194101.6783-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <e3f358e6-d621-90a3-1a7e-ad42b7d3092a@gmail.com>
References: <e3f358e6-d621-90a3-1a7e-ad42b7d3092a@gmail.com>
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

Forward patch v2 from bugzilla to linux-man@.

 man3/getopt.3 | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/man3/getopt.3 b/man3/getopt.3
index 921e747f8..810298505 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -126,6 +126,11 @@ Then \fIoptind\fP is the index in \fIargv\fP of the first
 .PP
 .I optstring
 is a string containing the legitimate option characters.
+A legitimate option character is any visible one byte
+.BR ascii (7)
+character (for which
+.BR isgraph (3)
+would return nonzero) that is not dash (\(aq\-\(aq) or colon (\(aq:\(aq).
 If such a
 character is followed by a colon, the option requires an argument, so
 .BR getopt ()
@@ -402,6 +407,23 @@ routine that rechecks
 .B POSIXLY_CORRECT
 and checks for GNU extensions in
 .IR optstring .)
+.PP
+Command-line arguments are parsed in strict order meaning that an option
+requiring an argument will consume the next argument, regardless of whether
+that argument is the correctly specified option argument or simply the next
+option (in the scenario the user mis-specifies the command line).
+For example, if
+.IR optstring
+is specified as "1n:"
+and the user incorrectly specifies the command line arguments as
+\(aqprog\ \-n\ \-1\(aq, the
+.I \-n
+option will be given the
+.B optarg
+value \(aq\-1\(aq, and the
+.I \-1
+option will be considered to have not been specified.
+.PP
 .SH EXAMPLES
 .SS getopt()
 The following trivial example program uses
@@ -542,6 +564,45 @@ main(int argc, char **argv)
     exit(EXIT_SUCCESS);
 }
 .EE
+.PP
+.SH WARNINGS
+Since
+.BR getopt ()
+allows users to provide values to the program, every care should be taken to
+validate every option value specified by the user calling the program.
+.BR getopt ()
+itself provides no validation so the programmer should perform boundary value
+checks on
+.I every
+argument to minimise the risk of bad input data being accepted by the program.
+String values should be checked to ensure they are not empty (unless
+permitted), sanitized appropriately and that internal buffers used to store
+the string values returned in
+.I optarg
+are large enough to hold pathologically long values.
+Numeric values should be verified to ensure they are within the expected
+permissible range of values.
+.PP
+Further, since
+.BR getopt ()
+can handle numeric options (such as \(aq\-1\(aq or \(aq\-2\ foo\(aq), care should
+be taken when writing  a program that accepts both a numeric flag option and
+an option accepting a numeric argument.
+Specifically, the program should sanity check the numeric
+.I optarg
+value carefully to protect against the case where a user mis-specifies the
+command line which chould result in a numeric option flag being specified as
+the
+.I optarg
+value for the numeric option by mistake.
+For example, if
+.IR optstring
+is specified as "1n:" and the \(aqn\(aq option accepts a numeric value, if the
+command line is specified accidentally as \(aqprog\ \-n\ \-1\(aq, care needs to
+be taken to ensure the program does not try to convert the \(aq\-1\(aq passed
+to the \(aqn\(aq option into an unsigned numeric value since that would result
+in it being set to the largest possible integer value for the type used to
+encode it.
 .SH SEE ALSO
 .BR getopt (1),
 .BR getsubopt (3)
-- 
2.31.0

