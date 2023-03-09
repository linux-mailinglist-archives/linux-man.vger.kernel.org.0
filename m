Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD826B17DD
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 01:30:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjCIAaA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 19:30:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbjCIA37 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 19:29:59 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C681E7D57E
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 16:29:55 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso2506820wmb.0
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 16:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678321794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DBu7BcWLu+sOugIcyZs37PAvYJM8zZ6Zow12z73h5Gc=;
        b=BFeEtIMOSIRDIeAY/azMRZFTr53wz1jynffADWiD8zNAX7oP8btse5GuSWpPSnfKI8
         aEBgfSuAxMltl5GS11l34gNSnst19SNDjc4ZTfA/9KfpL6nXuyoKWRFaPDK047C5MgVq
         AM00yR8VGR87d02qq4D2YoXDZ881dTJb36I2ihGEG4A9QJWVmlN5aR1snh2vRJp+zYni
         Ry/SQp7y03Ey2HolfqQ/l60iIAQDnsh+GYD5h8qyrT/Qvz1zl3wAH3ixj01TqPC+Umcf
         C4QjktdsRuIdnSNl0tWxN/XxlK/8TPZHgj24Xf+RtIAoKxYNJn5jZadTFYGnEKddYC8F
         H10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678321794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DBu7BcWLu+sOugIcyZs37PAvYJM8zZ6Zow12z73h5Gc=;
        b=6uVuhodgeZaJmPlw7v2SxrBO4L8N8uYmrVV9jLtYrogfX9iFC1kNuFwDu8xy46hdF0
         ztRAhmR55FZRmSD77g8JiXfVBdHB1pg/FjQGS6MCqOU+szLGczcAwgVll1BQR2fS15PR
         KwEi+geaIi/x752XgDNb3wnmHSoocn4j7/L2iuSffD4rbS86etQ5duRgQvdpXmccgylX
         KKzsVqYFACawjA7+96ZvtL2JrncP6dF88qAqgKepnZ3EHEuhvxmV/Zv63lrTdSKLv1s5
         vmxnzLzJjEWlWg1USNHHnIailJQPj9wBQupi1O084db/xzpK1wgd6MZDkGrGB4nzucpP
         m5Lg==
X-Gm-Message-State: AO0yUKVqYh+XPgHzaXhtBzb2zz1ZrTFNvJaTieVwvDMIPjQbR5OqHWO+
        R0AXoGAnUTAIfLQLqgk13rxctBGCjgQ=
X-Google-Smtp-Source: AK7set9s6DmHzj5KpR9F3uZ5OeyNNIdun+3KPcFs9wL0d4fjQZRDaqHbBxsgd2KG5E/d3qJkHYw4fA==
X-Received: by 2002:a05:600c:470a:b0:3eb:3843:9f31 with SMTP id v10-20020a05600c470a00b003eb38439f31mr18076686wmo.10.1678321793981;
        Wed, 08 Mar 2023 16:29:53 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id l21-20020a05600c1d1500b003ebf73acf9asm3923130wms.3.2023.03.08.16.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 16:29:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH] tzfile.5, tzselect.8, zdump.8, zic.8: sync pages from tzdb
Date:   Thu,  9 Mar 2023 01:29:51 +0100
Message-Id: <20230309002951.65387-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Paul,

I updated these 4 pages as untouched copies from upstream.  I'm showing
you the patch, to check if there was some improvement that we applied
that may be interesting to you.  Since we don't store patches, I'm not
sure which changes are stuff that you've changed upstream and which are
changes that we applied downstream (I could check the git history, but
that's too much).  Maybe you know better.  If not, I'm ready to ignore
it all, and get your pages without modification.

BTW, I found out why I changed the TH line in tzselect.8: Michael forgot
to document that page as one of the pages we sync from tzdb.  The
CONTRIBUTING file only mentioned:

       tzfile(5), zdump(8), and zic(8) come from the tz project
       <https://www.iana.org/time-zones>.

I'll update that (I hope I don't miss anyone else).

Cheers,
Alex

 man5/tzfile.5   |   5 +-
 man8/tzselect.8 |   5 +-
 man8/zdump.8    |  51 +++++-----
 man8/zic.8      | 262 ++++++++++++++++++++++++++++++++++--------------
 4 files changed, 216 insertions(+), 107 deletions(-)

diff --git a/man5/tzfile.5 b/man5/tzfile.5
index e94aaaad6..59d9f6ba9 100644
--- a/man5/tzfile.5
+++ b/man5/tzfile.5
@@ -1,9 +1,6 @@
-.\" %%%LICENSE_START(PUBLIC_DOMAIN)
 .\" This file is in the public domain, so clarified as of
 .\" 1996-06-05 by Arthur David Olson.
-.\" %%%LICENSE_END
-.\"
-.TH tzfile 5 2023-03-07 Linux "Linux Programmer's Manual"
+.TH tzfile 5 "" "Time Zone Database"
 .SH NAME
 tzfile \- timezone information
 .SH DESCRIPTION
diff --git a/man8/tzselect.8 b/man8/tzselect.8
index 3b69587f3..4578090f9 100644
--- a/man8/tzselect.8
+++ b/man8/tzselect.8
@@ -1,9 +1,6 @@
-.\" %%%LICENSE_START(PUBLIC_DOMAIN)
 .\" This file is in the public domain, so clarified as of
 .\" 2009-05-17 by Arthur David Olson.
-.\" %%%LICENSE_END
-.\"
-.TH tzselect 8 (date) "Linux man-pages (unreleased)"
+.TH tzselect 8 "" "Time Zone Database"
 .SH NAME
 tzselect \- select a timezone
 .SH SYNOPSIS
diff --git a/man8/zdump.8 b/man8/zdump.8
index 27d8310ca..f77c0c798 100644
--- a/man8/zdump.8
+++ b/man8/zdump.8
@@ -1,8 +1,6 @@
-.\" %%%LICENSE_START(PUBLIC_DOMAIN)
-.\" This page is in the public domain
-.\" %%%LICENSE_END
-.\"
-.TH zdump 8 2020-04-27 "" "Linux System Administration"
+.\" This file is in the public domain, so clarified as of
+.\" 2009-05-17 by Arthur David Olson.
+.TH zdump 8 "" "Time Zone Database"
 .SH NAME
 zdump \- timezone dumper
 .SH SYNOPSIS
@@ -13,15 +11,15 @@ .SH SYNOPSIS
 .I timezone
 \&... ]
 .SH DESCRIPTION
-.ie '\[lq]'' .ds lq \&"\"
-.el .ds lq \[lq]\"
-.ie '\[rq]'' .ds rq \&"\"
-.el .ds rq \[rq]\"
+.ie '\(lq'' .ds lq \&"\"
+.el .ds lq \(lq\"
+.ie '\(rq'' .ds rq \&"\"
+.el .ds rq \(rq\"
 .de q
 \\$3\*(lq\\$1\*(rq\\$2
 ..
-.ie \n(.g .ds - \f(CW-\fP
-.el ds - \-
+.ie \n(.g .ds - \f(CR-\fP
+.el .ds - \-
 The
 .B zdump
 program prints the current time in each
@@ -48,12 +46,14 @@ .SH OPTIONS
 For each
 .I timezone
 on the command line,
-print the time at the lowest possible time value,
-the time one day after the lowest possible time value,
+print the times at the two extreme time values,
+the times (if present) at and just beyond the boundaries of years that
+.BR localtime (3)
+and
+.BR gmtime (3)
+can represent, and
 the times both one second before and exactly at
-each detected time discontinuity,
-the time at one day less than the highest possible time value,
-and the time at the highest possible time value.
+each detected time discontinuity.
 Each line is followed by
 .BI isdst= D
 where
@@ -70,7 +70,7 @@ .SH OPTIONS
 .B \*-V
 Like
 .BR \*-v ,
-except omit the times relative to the extreme time values.
+except omit output concerning extreme time and year values.
 This generates output that is easier to compare to that of
 implementations with different time representations.
 .TP
@@ -79,10 +79,10 @@ .SH OPTIONS
 Cutoff times are computed using the proleptic Gregorian calendar with year 0
 and with Universal Time (UT) ignoring leap seconds.
 Cutoffs are at the start of each year, where the lower-bound
-timestamp is exclusive and the upper is inclusive; for example,
+timestamp is inclusive and the upper is exclusive; for example,
 .B "\*-c 1970,2070"
-selects transitions after 1970-01-01 00:00:00 UTC
-and on or before 2070-01-01 00:00:00 UTC.
+selects transitions on or after 1970-01-01 00:00:00 UTC
+and before 2070-01-01 00:00:00 UTC.
 The default cutoff is
 .BR \*-500,2500 .
 .TP
@@ -95,7 +95,7 @@ .SH OPTIONS
 determines whether the count includes leap seconds.
 As with
 .BR \*-c ,
-the cutoff's lower bound is exclusive and its upper bound is inclusive.
+the cutoff's lower bound is inclusive and its upper bound is exclusive.
 .SH "INTERVAL FORMAT"
 The interval format is a compact text representation that is intended
 to be both human- and machine-readable.  It consists of an empty line,
@@ -151,7 +151,7 @@ .SH "INTERVAL FORMAT"
 tabbed columns line up.)
 .nf
 .sp
-.if \n(.g .ft CW
+.if \n(.g .ft CR
 .if t .in +.5i
 .if n .in +2
 .nr w \w'1896-01-13  'u+\n(.i
@@ -184,7 +184,7 @@ .SH "INTERVAL FORMAT"
 Here are excerpts from another example:
 .nf
 .sp
-.if \n(.g .ft CW
+.if \n(.g .ft CR
 .if t .in +.5i
 .if n .in +2
 TZ="Europe/Astrakhan"
@@ -204,7 +204,8 @@ .SH "INTERVAL FORMAT"
 many of its time zone abbreviations are omitted since they duplicate
 the text of the UT offset.
 .SH LIMITATIONS
-Time discontinuities are found by sampling the results returned by localtime
+Time discontinuities are found by sampling the results returned by
+.BR localtime (3)
 at twelve-hour intervals.
 This works in all real-world cases;
 one can construct artificial time zones for which this fails.
@@ -228,5 +229,3 @@ .SH LIMITATIONS
 .SH SEE ALSO
 .BR tzfile (5),
 .BR zic (8)
-.\" This file is in the public domain, so clarified as of
-.\" 2009-05-17 by Arthur David Olson.
diff --git a/man8/zic.8 b/man8/zic.8
index 99e28f50e..c467efefe 100644
--- a/man8/zic.8
+++ b/man8/zic.8
@@ -1,8 +1,6 @@
-.\" %%%LICENSE_START(PUBLIC_DOMAIN)
-.\" This page is in the public domain
-.\" %%%LICENSE_END
-.\"
-.TH zic 8 2020-08-13 "" "Linux System Administration"
+.\" This file is in the public domain, so clarified as of
+.\" 2009-05-17 by Arthur David Olson.
+.TH zic 8 "" "Time Zone Database"
 .SH NAME
 zic \- timezone compiler
 .SH SYNOPSIS
@@ -13,10 +11,10 @@ .SH SYNOPSIS
 .I filename
 \&... ]
 .SH DESCRIPTION
-.ie '\[lq]'' .ds lq \&"\"
-.el .ds lq \[lq]\"
-.ie '\[rq]'' .ds rq \&"\"
-.el .ds rq \[rq]\"
+.ie '\(lq'' .ds lq \&"\"
+.el .ds lq \(lq\"
+.ie '\(rq'' .ds rq \&"\"
+.el .ds rq \(rq\"
 .de q
 \\$3\*(lq\\$1\*(rq\\$2
 ..
@@ -26,16 +24,29 @@ .SH DESCRIPTION
 .el .ds > \(ra
 .ie \n(.g \{\
 .  ds : \:
-.  ds - \f(CW-\fP
+.  ds - \f(CR-\fP
 .\}
 .el \{\
 .  ds :
 .  ds - \-
 .\}
+.ds d " degrees
+.ds m " minutes
+.ds s " seconds
+.ds _ " \&
+.if t \{\
+. if \n(.g .if c \(de .if c \(fm .if c \(sd \{\
+.  ds d \(de
+.  ds m \(fm
+.  ds s \(sd
+.  ds _ \|
+. \}
+.\}
 The
 .B zic
 program reads text from the file(s) named on the command line
-and creates the time conversion information files specified in this input.
+and creates the timezone information format (TZif) files
+specified in this input.
 If a
 .I filename
 is
@@ -65,15 +76,13 @@ .SH OPTIONS
 .BR slim ,
 keep the output files small; this can help check for the bugs
 and incompatibilities.
-Although the default is currently
-.BR fat ,
-this is intended to change in future
-.B zic
-versions, as software that mishandles the 64-bit data typically
+The default is
+.BR slim ,
+as software that mishandles 64-bit data typically
 mishandles timestamps after the year 2038 anyway.
 Also see the
 .B \*-r
-option for another way to shrink output size.
+option for another way to alter output size.
 .TP
 .BI "\*-d " directory
 Create time conversion information files in the named directory rather than
@@ -89,6 +98,12 @@ .SH OPTIONS
 .ti +.5i
 .ta \w'Link\0\0'u  +\w'\fItimezone\fP\0\0'u
 Link	\fItimezone\fP		localtime
+.sp
+If
+.I timezone
+is
+.BR \*- ,
+any already-existing link is removed.
 .TP
 .BI "\*-L " leapsecondfilename
 Read leap second information from the file with the given name.
@@ -106,16 +121,25 @@ .SH OPTIONS
 .ti +.5i
 Link	\fItimezone\fP		posixrules
 .sp
-This feature is obsolete and poorly supported.
+Unless
+.I timezone is
+.q "\*-" ,
+this option is obsolete and poorly supported.
 Among other things it should not be used for timestamps after the year 2037,
 and it should not be combined with
 .B "\*-b slim"
 if
 .IR timezone 's
 transitions are at standard time or Universal Time (UT) instead of local time.
+.sp
+If
+.I timezone
+is
+.BR \*- ,
+any already-existing link is removed.
 .TP
 .BR "\*-r " "[\fB@\fP\fIlo\fP][\fB/@\fP\fIhi\fP]"
-Reduce the size of output files by limiting their applicability
+Limit the applicability of output files
 to timestamps in the range from
 .I lo
 (inclusive) to
@@ -124,9 +148,12 @@ .SH OPTIONS
 .I lo
 and
 .I hi
-are possibly-signed decimal counts of seconds since the Epoch
+are possibly signed decimal counts of seconds since the Epoch
 (1970-01-01 00:00:00 UTC).
 Omitted counts default to extreme values.
+The output files use UT offset 0 and abbreviation
+.q "\*-00"
+in place of the omitted timestamp data.
 For example,
 .q "zic \*-r @0"
 omits data intended for negative timestamps (i.e., before the Epoch), and
@@ -135,12 +162,31 @@ .SH OPTIONS
 31-bit signed integers.
 On platforms with GNU
 .BR date ,
-.q "zic \-r @$(date +%s)"
+.q "zic \*-r @$(date +%s)"
 omits data intended for past timestamps.
+Although this option typically reduces the output file's size,
+the size can increase due to the need to represent the timestamp range
+boundaries, particularly if
+.I hi
+causes a TZif file to contain explicit entries for
+.RI pre- hi
+transitions rather than concisely representing them
+with an extended POSIX TZ string.
 Also see the
 .B "\*-b slim"
 option for another way to shrink output size.
 .TP
+.BI "\*-R @" hi
+Generate redundant trailing explicit transitions for timestamps
+that occur less than
+.I hi
+seconds since the Epoch, even though the transitions could be
+more concisely represented via the extended POSIX TZ string.
+This option does not affect the represented timestamps.
+Although it accommodates nonstandard TZif readers
+that ignore the extended POSIX TZ string,
+it increases the size of the altered output files.
+.TP
 .BI "\*-t " file
 When creating local time information, put the configuration link in
 the named file rather than in the standard location.
@@ -149,7 +195,10 @@ .SH OPTIONS
 Be more verbose, and complain about the following situations:
 .RS
 .PP
-The input specifies a link to a link.
+The input specifies a link to a link,
+something not supported by some older parsers, including
+.B zic
+itself through release 2022e.
 .PP
 A year that appears in a data file is outside the range
 of representable years.
@@ -196,10 +245,10 @@ .SH OPTIONS
 .PP
 The output file does not contain all the information about the
 long-term future of a timezone, because the future cannot be summarized as
-an extended POSIX TZ string.  For example, as of 2019 this problem
-occurs for Iran's daylight-saving rules for the predicted future, as
-these rules are based on the Iranian calendar, which cannot be
-represented.
+an extended POSIX TZ string.  For example, as of 2023 this problem
+occurs for Morocco's daylight-saving rules, as these rules are based
+on predictions for when Ramadan will be observed, something that
+an extended POSIX TZ string cannot represent.
 .PP
 The output contains data that may not be handled properly by client
 code designed for older
@@ -207,6 +256,15 @@ .SH OPTIONS
 output formats.  These compatibility issues affect only timestamps
 before 1970 or after the start of 2038.
 .PP
+The output contains a truncated leap second table,
+which can cause some older TZif readers to misbehave.
+This can occur if the
+.B "\*-L"
+option is used, and either an Expires line is present or
+the
+.B "\*-r"
+option is also used.
+.PP
 The output file contains more than 1200 transitions,
 which may be mishandled by some clients.
 The current reference client supports at most 2000 transitions;
@@ -233,10 +291,11 @@ .SH FILES
 .PP
 Input files should be text files, that is, they should be a series of
 zero or more lines, each ending in a newline byte and containing at
-most 511 bytes, and without any NUL bytes.  The input text's encoding
+most 2048 bytes counting the newline, and without any NUL bytes.
+The input text's encoding
 is typically UTF-8 or ASCII; it should have a unibyte representation
 for the POSIX Portable Character Set (PPCS)
-\*<http://pubs\*:.opengroup\*:.org/\*:onlinepubs/\*:9699919799/\*:basedefs/\*:V1_chap06\*:.html\*>
+\*<https://pubs\*:.opengroup\*:.org/\*:onlinepubs/\*:9699919799/\*:basedefs/\*:V1_chap06\*:.html\*>
 and the encoding's non-unibyte characters should consist entirely of
 non-PPCS bytes.  Non-PPCS characters typically occur only in comments:
 although output file names and time zone abbreviations can contain
@@ -272,9 +331,9 @@ .SH FILES
 A rule line has the form
 .nf
 .ti +.5i
-.ta \w'Rule\0\0'u +\w'NAME\0\0'u +\w'FROM\0\0'u +\w'1973\0\0'u +\w'TYPE\0\0'u +\w'Apr\0\0'u +\w'lastSun\0\0'u +\w'2:00w\0\0'u +\w'1:00d\0\0'u
+.ta \w'Rule\0\0'u +\w'NAME\0\0'u +\w'FROM\0\0'u +\w'1973\0\0'u +\w'\*-\0\0'u +\w'Apr\0\0'u +\w'lastSun\0\0'u +\w'2:00w\0\0'u +\w'1:00d\0\0'u
 .sp
-Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
+Rule	NAME	FROM	TO	\*-	IN	ON	AT	SAVE	LETTER/S
 .sp
 For example:
 .ti +.5i
@@ -293,7 +352,9 @@ .SH FILES
 .q + .
 To allow for future extensions,
 an unquoted name should not contain characters from the set
-.q !$%&'()*,/:;<=>?@[\e]\[ha]\`{|}\[ti] .
+.ie \n(.g .q \f(CR!$%&\(aq()*,/:;<=>?@[\e]\(ha\(ga{|}\(ti\fP .
+.el .ie t .q \f(CW!$%&'()*,/:;<=>?@[\e]^\(ga{|}~\fP .
+.el .q !$%&'()*,/:;<=>?@[\e]^`{|}~ .
 .TP
 .B FROM
 Gives the first year in which the rule applies.
@@ -323,12 +384,17 @@ .SH FILES
 .B FROM
 field.
 .TP
-.B TYPE
-should be
+.B \*-
+Is a reserved field and should always contain
 .q \*-
-and is present for compatibility with older versions of
-.B zic
-in which it could contain year types.
+for compatibility with older versions of
+.BR zic .
+It was previously known as the
+.B TYPE
+field, which could contain values to allow a
+separate script to further restrict in which
+.q types
+of years the rule would apply.
 .TP
 .B IN
 Names the month in which the rule takes effect.
@@ -496,14 +562,14 @@ .SH FILES
 .B AT
 and
 .B SAVE
-fields of rule lines;
+fields of rule lines, except without suffix letters;
 begin the field with a minus sign if time must be subtracted from UT.
 .TP
 .B RULES
 The name of the rules that apply in the timezone or,
 alternatively, a field in the same format as a rule-line SAVE column,
-giving of the amount of time to be added to local standard time
-effect, and whether the resulting time is standard or daylight saving.
+giving the amount of time to be added to local standard time
+and whether the resulting time is standard or daylight saving.
 If this field is
 .B \*-
 then standard time always applies.
@@ -529,7 +595,7 @@ .SH FILES
 .IR mm ,
 and
 .I ss
-are the hours, minutes, and seconds east (+) or west (\(mi) of UT.
+are the hours, minutes, and seconds east (+) or west (\-) of UT.
 Alternatively,
 a slash (/)
 separates standard and daylight abbreviations.
@@ -538,6 +604,9 @@ .SH FILES
 .q "+"
 and
 .q "\*-".
+By convention, the time zone abbreviation
+.q "\*-00"
+is a placeholder that means local time is unspecified.
 .TP
 .B UNTIL
 The time at which the UT offset or the rule(s) change for a location.
@@ -579,6 +648,42 @@ .SH FILES
 In a single zone it is an error if two rules take effect at the same
 instant, or if two zone changes take effect at the same instant.
 .PP
+If a continuation line subtracts
+.I N
+seconds from the UT offset after a transition that would be
+interpreted to be later if using the continuation line's UT offset and
+rules, the
+.q "until"
+time of the previous zone or continuation line is interpreted
+according to the continuation line's UT offset and rules, and any rule
+that would otherwise take effect in the next
+.I N
+seconds is instead assumed to take effect simultaneously.
+For example:
+.br
+.ne 7
+.nf
+.in +2m
+.ta \w'# Rule\0\0'u +\w'NAME\0\0'u +\w'FROM\0\0'u +\w'2006\0\0'u +\w'\*-\0\0'u +\w'Oct\0\0'u +\w'lastSun\0\0'u +\w'2:00\0\0'u +\w'SAVE\0\0'u
+.sp
+# Rule	NAME	FROM	TO	\*-	IN	ON	AT	SAVE	LETTER/S
+Rule	US	1967	2006	-	Oct	lastSun	2:00	0	S
+Rule	US	1967	1973	-	Apr	lastSun	2:00	1:00	D
+.ta \w'Zone\0\0America/Menominee\0\0'u +\w'STDOFF\0\0'u +\w'RULES\0\0'u +\w'FORMAT\0\0'u
+# Zone\0\0NAME	STDOFF	RULES	FORMAT	[UNTIL]
+Zone\0\0America/Menominee	\*-5:00	\*-	EST	1973 Apr 29 2:00
+	\*-6:00	US	C%sT
+.sp
+.in
+.fi
+Here, an incorrect reading would be there were two clock changes on 1973-04-29,
+the first from 02:00 EST (\*-05) to 01:00 CST (\*-06),
+and the second an hour later from 02:00 CST (\*-06) to 03:00 CDT (\*-05).
+However,
+.B zic
+interprets this more sensibly as a single transition from 02:00 CST (\*-05) to
+02:00 CDT (\*-05).
+.PP
 A link line has the form
 .sp
 .nf
@@ -596,19 +701,37 @@ .SH FILES
 .B TARGET
 field should appear as the
 .B NAME
-field in some zone line.
+field in some zone line or as the
+.B LINK-NAME
+field in some link line.
 The
 .B LINK-NAME
 field is used as an alternative name for that zone;
 it has the same syntax as a zone line's
 .B NAME
 field.
+Links can chain together, although the behavior is unspecified if a
+chain of one or more links does not terminate in a Zone name.
+A link line can appear before the line that defines the link target.
+For example:
+.sp
+.ne 3
+.nf
+.in +2m
+.ta \w'Zone\0\0'u +\w'Greenwich\0\0'u
+Link	Greenwich	G_M_T
+Link	Etc/GMT	Greenwich
+Zone	Etc/GMT\0\00\0\0\*-\0\0GMT
+.sp
+.in
+.fi
+The two links are chained together, and G_M_T, Greenwich, and Etc/GMT
+all name the same zone.
 .PP
 Except for continuation lines,
 lines may appear in any order in the input.
 However, the behavior is unspecified if multiple zone or link lines
-define the same name, or if the source of one link line is the target
-of another.
+define the same name.
 .PP
 The file that describes leap seconds can have leap lines and an
 expiration line.
@@ -653,6 +776,19 @@ .SH FILES
 if the leap second time given by the other fields should be interpreted as
 local (wall clock) time.
 .PP
+Rolling leap seconds were implemented back when it was not
+clear whether common practice was rolling or stationary,
+with concerns that one would see
+Times Square ball drops where there'd be a
+.q "3... 2... 1... leap... Happy New Year"
+countdown, placing the leap second at
+midnight New York time rather than midnight UTC.
+However, this countdown style does not seem to have caught on,
+which means rolling leap seconds are not used in practice;
+also, they are not supported if the
+.B \*-r
+option is used.
+.PP
 The expiration line, if present, has the form:
 .nf
 .ti +.5i
@@ -672,36 +808,18 @@ .SH FILES
 .BR DAY ,
 and
 .B HH:MM:SS
-fields give the expiration timestamp in UTC for the leap second table;
-.B zic
-outputs this expiration timestamp by truncating the end of the output
-file to the timestamp.
-If there is no expiration line,
-.B zic
-also accepts a comment
-.q "#expires \fIE\fP ...\&"
-where
-.I E
-is the expiration timestamp as a decimal integer count of seconds
-since the Epoch, not counting leap seconds.
-However, the
-.q "#expires"
-comment is an obsolescent feature,
-and the leap second file should use an expiration line
-instead of relying on a comment.
+fields give the expiration timestamp in UTC for the leap second table.
+.br
+.ne 22
 .SH "EXTENDED EXAMPLE"
 Here is an extended example of
 .B zic
 input, intended to illustrate many of its features.
-In this example, the EU rules are for the European Union
-and for its predecessor organization, the European Communities.
-.br
-.ne 22
 .nf
 .in +2m
-.ta \w'# Rule\0\0'u +\w'NAME\0\0'u +\w'FROM\0\0'u +\w'1973\0\0'u +\w'TYPE\0\0'u +\w'Apr\0\0'u +\w'lastSun\0\0'u +\w'2:00\0\0'u +\w'SAVE\0\0'u
+.ta \w'# Rule\0\0'u +\w'NAME\0\0'u +\w'FROM\0\0'u +\w'1973\0\0'u +\w'\*-\0\0'u +\w'Apr\0\0'u +\w'lastSun\0\0'u +\w'2:00\0\0'u +\w'SAVE\0\0'u
 .sp
-# Rule	NAME	FROM	TO	TYPE	IN	ON	AT	SAVE	LETTER/S
+# Rule	NAME	FROM	TO	\*-	IN	ON	AT	SAVE	LETTER/S
 Rule	Swiss	1941	1942	\*-	May	Mon>=1	1:00	1:00	S
 Rule	Swiss	1941	1942	\*-	Oct	Mon>=1	2:00	0	\*-
 .sp .5
@@ -723,13 +841,13 @@ .SH "EXTENDED EXAMPLE"
 .sp
 .in
 .fi
-In this example, the timezone is named Europe/Zurich but it has an alias
-as Europe/Vaduz.  This example says that Zurich was 34 minutes and 8
+In this example, the EU rules are for the European Union
+and for its predecessor organization, the European Communities.
+The timezone is named Europe/Zurich and it has the alias Europe/Vaduz.
+This example says that Zurich was 34 minutes and 8
 seconds east of UT until 1853-07-16 at 00:00, when the legal offset
 was changed to
-.ds o 7 degrees 26 minutes 22.50 seconds
-.if \n(.g .if c \(de .if c \(fm .if c \(sd .ds o 7\(de\|26\(fm\|22.50\(sd
-\*o,
+7\*d\*_26\*m\*_22.50\*s,
 which works out to 0:29:45.50;
 .B zic
 treats this by rounding it to 0:29:46.
@@ -783,5 +901,3 @@ .SH NOTES
 .SH SEE ALSO
 .BR tzfile (5),
 .BR zdump (8)
-.\" This file is in the public domain, so clarified as of
-.\" 2009-05-17 by Arthur David Olson.
-- 
2.39.2

