Return-Path: <linux-man+bounces-4365-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC7CA93AE
	for <lists+linux-man@lfdr.de>; Fri, 05 Dec 2025 21:15:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31C6930EC0BA
	for <lists+linux-man@lfdr.de>; Fri,  5 Dec 2025 20:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 374B2274B42;
	Fri,  5 Dec 2025 20:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP0H+aST"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C18273805
	for <linux-man@vger.kernel.org>; Fri,  5 Dec 2025 20:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764965655; cv=none; b=luIEoPcdc469M2Ob4lRjmye4bkQTBMezHusvZzYCVuYiFGACA2iFil6B+Ue9XZMG2UV0LvwXUCrgmFRY9W4aiPhW9RJfeYk3E4M7CbjFZEFH1Gsqz0oz76S/kyokPm1QcGh/7M9zDTHi6ZTYaeA9iimcnlhn47SssFko+krsGw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764965655; c=relaxed/simple;
	bh=R7fm3sF0wzU+3OS8HvQlpJp5nrdUifi5UL8PQya9yTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qT036IA4llQxDLNEtNT7LdNEJADqD0v8j6kSsrWmqovYxST2nRF0bkTCR4ZRcL1RuGF3nBUr+UaiijVimLHa3z6GuVOPyxzJpT/9Tw99OO+hPOjhGMt0d7HIGnCMqKa4JBvGp0q/hviAdvcNTMCWPvxGIYvBqQWs42JlleFmkH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP0H+aST; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADFF0C16AAE;
	Fri,  5 Dec 2025 20:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764965654;
	bh=R7fm3sF0wzU+3OS8HvQlpJp5nrdUifi5UL8PQya9yTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LP0H+aSTxJRY2IJysu438PiwmcFJXGH9sEONY5wPczhUgneiYs/+/Mp/qmT9AapY5
	 ZvAzxXd2LTtSWlpBeEtAuA1OyeJz2rUXXrfJFwlZi4uI1c5kRDxfNkMaH+i+eQpN60
	 iiS5LDBG53zxPH7GSA+6j4qp9d9ysCZGmKGfuiyfwM5ZQXycUfKa01AfJfsoETFkxF
	 cfrvD2d8IjXN2w10Y38PURluI8lDXca5hW5N4vB/diJf7G2Q9hezUvspz7/zX6U/Tb
	 MLSfYzpzo1fqxrc0vwH9cJMnvSprs2ge379lfCG5O12eJNM3keHoW6sISuW7ywP0Hc
	 48dtvA7Nj1Vww==
Date: Fri, 5 Dec 2025 21:14:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, serge@hallyn.com
Subject: [PATCH 1/2] man/man3/*printf.3: Split *s*printf(3) from printf(3)
Message-ID: <a654dcfc24ef70df65e4d80c132b662be7ecfc5a.1764964289.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1764964289.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1764964289.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/printf.3    | 223 +-----------------------------
 man/man3/snprintf.3  | 318 ++++++++++++++++++++++++++++++++++++++++++-
 man/man3/sprintf.3   |   2 +-
 man/man3/vsnprintf.3 |   2 +-
 man/man3/vsprintf.3  |   2 +-
 5 files changed, 327 insertions(+), 220 deletions(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index d8e165169..892d7682f 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -5,8 +5,9 @@
 .\"
 .TH printf 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-printf, fprintf, dprintf, sprintf, snprintf, vprintf, vfprintf, vdprintf,
-vsprintf, vsnprintf \- formatted output conversion
+printf, fprintf, dprintf, vprintf, vfprintf, vdprintf,
+\-
+formatted output conversion
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -19,22 +20,12 @@ .SH SYNOPSIS
 .BI "            const char *restrict " format ", ...);"
 .BI "int dprintf(int " fd ,
 .BI "            const char *restrict " format ", ...);"
-.BI "int sprintf(char *restrict " str ,
-.BI "            const char *restrict " format ", ...);"
-.BR "int snprintf(" "size_t size;"
-.BI "            char " str "[restrict " size "], size_t " size ,
-.BI "            const char *restrict " format ", ...);"
 .P
 .BI "int vprintf(const char *restrict " format ", va_list " ap );
 .BI "int vfprintf(FILE *restrict " stream ,
 .BI "            const char *restrict " format ", va_list " ap );
 .BI "int vdprintf(int " fd ,
 .BI "            const char *restrict " format ", va_list " ap );
-.BI "int vsprintf(char *restrict " str ,
-.BI "            const char *restrict " format ", va_list " ap );
-.BR "int vsnprintf(" "size_t size;"
-.BI "            char " str "[restrict " size "], size_t " size ,
-.BI "            const char *restrict " format ", va_list " ap );
 .fi
 .P
 .RS -4
@@ -42,13 +33,6 @@ .SH SYNOPSIS
 .BR feature_test_macros (7)):
 .RE
 .P
-.BR snprintf (),
-.BR vsnprintf ():
-.nf
-    _XOPEN_SOURCE >= 500 || _ISOC99_SOURCE
-        || /* glibc <= 2.19: */ _BSD_SOURCE
-.fi
-.P
 .BR dprintf (),
 .BR vdprintf ():
 .nf
@@ -74,14 +58,7 @@ .SH DESCRIPTION
 and
 .BR vfprintf ()
 write output to the given output
-.IR stream ;
-.BR sprintf (),
-.BR snprintf (),
-.BR vsprintf (),
-and
-.BR vsnprintf ()
-write to the character string
-.IR str .
+.IR stream .
 .P
 The function
 .BR dprintf ()
@@ -94,26 +71,13 @@ .SH DESCRIPTION
 stream.
 .P
 The functions
-.BR snprintf ()
-and
-.BR vsnprintf ()
-write at most
-.I size
-bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
-.IR str .
-.P
-The functions
 .BR vprintf (),
 .BR vfprintf (),
-.BR vdprintf (),
-.BR vsprintf (),
-.BR vsnprintf ()
+.BR vdprintf ()
 are equivalent to the functions
 .BR printf (),
 .BR fprintf (),
 .BR dprintf (),
-.BR sprintf (),
-.BR snprintf (),
 respectively, except that they are called with a
 .I va_list
 instead of a variable number of arguments.
@@ -134,17 +98,6 @@ .SH DESCRIPTION
 the variable-length argument facilities of
 .BR stdarg (3))
 are converted for output.
-.P
-C99 and POSIX.1-2001 specify that the results are undefined if a call to
-.BR sprintf (),
-.BR snprintf (),
-.BR vsprintf (),
-or
-.BR vsnprintf ()
-would cause copying to take place between objects that overlap
-(e.g., if the target string array and one of the supplied input arguments
-refer to the same buffer).
-See CAVEATS.
 .SS Format of the format string
 The format string is a character string, beginning and ending
 in its initial shift state, if any.
@@ -913,22 +866,6 @@ .SH RETURN VALUE
 Upon successful return, these functions return the number of bytes
 printed (excluding the null byte used to end output to strings).
 .P
-The functions
-.BR snprintf ()
-and
-.BR vsnprintf ()
-do not write more than
-.I size
-bytes (including the terminating null byte (\[aq]\[rs]0\[aq])).
-If the output was truncated due to this limit, then the return value
-is the number of characters (excluding the terminating null byte)
-which would have been written to the final string if enough space
-had been available.
-Thus, a return value of
-.I size
-or more means that the output was truncated.
-(See also below under CAVEATS.)
-.P
 On error,
 a negative value is returned,
 and
@@ -966,12 +903,8 @@ .SH ATTRIBUTES
 .nh
 .BR printf (),
 .BR fprintf (),
-.BR sprintf (),
-.BR snprintf (),
 .BR vprintf (),
-.BR vfprintf (),
-.BR vsprintf (),
-.BR vsnprintf ()
+.BR vfprintf ()
 T}	Thread safety	MT-Safe locale
 .TE
 .SH STANDARDS
@@ -980,17 +913,9 @@ .SH STANDARDS
 .TQ
 .BR printf ()
 .TQ
-.BR sprintf ()
-.TQ
 .BR vprintf ()
 .TQ
 .BR vfprintf ()
-.TQ
-.BR vsprintf ()
-.TQ
-.BR snprintf ()
-.TQ
-.BR vsnprintf ()
 C11, POSIX.1-2008.
 .TP
 .BR dprintf ()
@@ -1003,36 +928,11 @@ .SH HISTORY
 .TQ
 .BR printf ()
 .TQ
-.BR sprintf ()
-.TQ
 .BR vprintf ()
 .TQ
 .BR vfprintf ()
-.TQ
-.BR vsprintf ()
 C89, POSIX.1-2001.
 .TP
-.BR snprintf ()
-.TQ
-.BR vsnprintf ()
-SUSv2, C99, POSIX.1-2001.
-.IP
-Concerning the return value of
-.BR snprintf (),
-SUSv2 and C99 contradict each other: when
-.BR snprintf ()
-is called with
-.IR size =0
-then SUSv2 stipulates an unspecified return value less than 1,
-while C99 allows
-.I str
-to be NULL in this case, and gives the return value (as always)
-as the number of characters that would have been written in case
-the output string has been large enough.
-POSIX.1-2001 and later align their specification of
-.BR snprintf ()
-with C99.
-.TP
 .BR dprintf ()
 .TQ
 .BR vdprintf ()
@@ -1091,39 +991,6 @@ .SH HISTORY
 .B m
 conversion specifier, that is
 .IR %#m .
-.SH CAVEATS
-Some programs imprudently rely on code such as the following
-.P
-.in +4n
-.EX
-sprintf(buf, "%s some further text", buf);
-.EE
-.in
-.P
-to append text to
-.IR buf .
-However, the standards explicitly note that the results are undefined
-if source and destination buffers overlap when calling
-.BR sprintf (),
-.BR snprintf (),
-.BR vsprintf (),
-and
-.BR vsnprintf ().
-.\" http://sourceware.org/bugzilla/show_bug.cgi?id=7075
-Depending on the version of
-.BR gcc (1)
-used, and the compiler options employed, calls such as the above will
-.B not
-produce the expected results.
-.P
-The glibc implementation of the functions
-.BR snprintf ()
-and
-.BR vsnprintf ()
-conforms to the C99 standard, that is, behaves as described above,
-since glibc 2.1.
-Until glibc 2.0.6, they would return \-1
-when the output was truncated.
 .\" .SH HISTORY
 .\" UNIX V7 defines the three routines
 .\" .BR printf (),
@@ -1158,37 +1025,6 @@ .SH CAVEATS
 .\" .BR vdprintf ()
 .\" that print to a file descriptor instead of a stream.
 .SH BUGS
-Because
-.BR sprintf ()
-and
-.BR vsprintf ()
-assume an arbitrarily long string,
-callers must be careful not to overflow the actual space;
-this is often impossible to assure.
-Note that the length of the strings produced is locale-dependent
-and difficult to predict.
-Use
-.BR snprintf ()
-and
-.BR vsnprintf ()
-instead (or
-.BR asprintf (3)
-and
-.BR vasprintf (3)).
-.\" .P
-.\" Linux libc4.[45] does not have a
-.\" .BR snprintf (),
-.\" but provides a libbsd that contains an
-.\" .BR snprintf ()
-.\" equivalent to
-.\" .BR sprintf (),
-.\" that is, one that ignores the
-.\" .I size
-.\" argument.
-.\" Thus, the use of
-.\" .BR snprintf ()
-.\" with early libc4 leads to serious security problems.
-.P
 Code such as
 .BI printf( foo );
 often indicates a bug, since
@@ -1256,58 +1092,13 @@ .SH EXAMPLES
 .in
 .P
 one might obtain "Sonntag, 3.\& Juli, 10:02".
-.P
-To allocate a sufficiently large string and print into it
-(code correct for both glibc 2.0 and glibc 2.1):
-.P
-.EX
-#include <stdio.h>
-#include <stdlib.h>
-#include <stdarg.h>
-\&
-char *
-make_message(const char *fmt, ...)
-{
-    int n = 0;
-    size_t size = 0;
-    char *p = NULL;
-    va_list ap;
-\&
-    /* Determine required size.  */
-\&
-    va_start(ap, fmt);
-    n = vsnprintf(p, size, fmt, ap);
-    va_end(ap);
-\&
-    if (n < 0)
-        return NULL;
-\&
-    size = (size_t) n + 1;      /* One extra byte for \[aq]\[rs]0\[aq] */
-    p = malloc(size);
-    if (p == NULL)
-        return NULL;
-\&
-    va_start(ap, fmt);
-    n = vsnprintf(p, size, fmt, ap);
-    va_end(ap);
-\&
-    if (n < 0) {
-        free(p);
-        return NULL;
-    }
-\&
-    return p;
-}
-.EE
-.P
-If truncation occurs in glibc versions prior to glibc 2.0.6,
-this is treated as an error instead of being handled gracefully.
 .SH SEE ALSO
 .BR printf (1),
 .BR asprintf (3),
 .BR puts (3),
 .BR scanf (3),
 .BR setlocale (3),
+.BR snprintf (3),
 .BR strfromd (3),
 .BR wcrtomb (3),
 .BR wprintf (3),
diff --git a/man/man3/snprintf.3 b/man/man3/snprintf.3
index 975530d90..dca9fc3ef 100644
--- a/man/man3/snprintf.3
+++ b/man/man3/snprintf.3
@@ -1 +1,317 @@
-.so man3/printf.3
+'\" t
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\"
+.TH snprintf 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+sprintf, snprintf,
+vsprintf, vsnprintf
+\-
+string print formatted
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <stdio.h>
+.P
+.BI "int sprintf(char *restrict " str ,
+.BI "            const char *restrict " format ", ...);"
+.BR "int snprintf(" "size_t size;"
+.BI "            char " str "[restrict " size "], size_t " size ,
+.BI "            const char *restrict " format ", ...);"
+.P
+.BI "int vsprintf(char *restrict " str ,
+.BI "            const char *restrict " format ", va_list " ap );
+.BR "int vsnprintf(" "size_t size;"
+.BI "            char " str "[restrict " size "], size_t " size ,
+.BI "            const char *restrict " format ", va_list " ap );
+.fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR snprintf (),
+.BR vsnprintf ():
+.nf
+    _XOPEN_SOURCE >= 500 || _ISOC99_SOURCE
+        || /* glibc <= 2.19: */ _BSD_SOURCE
+.fi
+.SH DESCRIPTION
+These functions are similar to
+.BR printf (3),
+except that they write to the character string
+.I str
+instead of a stream.
+.P
+The functions
+.BR snprintf ()
+and
+.BR vsnprintf ()
+write at most
+.I size
+bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
+.IR str .
+.P
+The functions
+.BR vsprintf ()
+and
+.BR vsnprintf ()
+are equivalent to the functions
+.BR sprintf ()
+and
+.BR snprintf (),
+respectively, except that they are called with a
+.I va_list
+instead of a variable number of arguments.
+These functions do not call the
+.I va_end
+macro.
+Because they invoke the
+.I va_arg
+macro, the value of
+.I ap
+is undefined after the call.
+See
+.BR stdarg (3).
+.P
+C99 and POSIX.1-2001 specify that the results are undefined if a call to
+.BR sprintf (),
+.BR snprintf (),
+.BR vsprintf (),
+or
+.BR vsnprintf ()
+would cause copying to take place between objects that overlap
+(e.g., if the target string array and one of the supplied input arguments
+refer to the same buffer).
+See CAVEATS.
+.SS Format of the format string
+See
+.BR printf (3).
+.SH RETURN VALUE
+Upon successful return, these functions return the number of bytes
+printed (excluding the null byte used to end output to strings).
+.P
+The functions
+.BR snprintf ()
+and
+.BR vsnprintf ()
+do not write more than
+.I size
+bytes (including the terminating null byte (\[aq]\[rs]0\[aq])).
+If the output was truncated due to this limit, then the return value
+is the number of characters (excluding the terminating null byte)
+which would have been written to the final string if enough space
+had been available.
+Thus, a return value of
+.I size
+or more means that the output was truncated.
+(See also below under CAVEATS.)
+.P
+On error,
+a negative value is returned,
+and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+See
+.BR printf (3).
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.na
+.nh
+.BR sprintf (),
+.BR snprintf (),
+.BR vsprintf (),
+.BR vsnprintf ()
+T}	Thread safety	MT-Safe locale
+.TE
+.SH STANDARDS
+.TP
+.BR sprintf ()
+.TQ
+.BR vsprintf ()
+.TQ
+.BR snprintf ()
+.TQ
+.BR vsnprintf ()
+C11, POSIX.1-2008.
+.SH HISTORY
+.TP
+.BR sprintf ()
+.TQ
+.BR vsprintf ()
+C89, POSIX.1-2001.
+.TP
+.BR snprintf ()
+.TQ
+.BR vsnprintf ()
+SUSv2, C99, POSIX.1-2001.
+.IP
+Concerning the return value of
+.BR snprintf (),
+SUSv2 and C99 contradict each other: when
+.BR snprintf ()
+is called with
+.IR size =0
+then SUSv2 stipulates an unspecified return value less than 1,
+while C99 allows
+.I str
+to be NULL in this case, and gives the return value (as always)
+as the number of characters that would have been written in case
+the output string has been large enough.
+POSIX.1-2001 and later align their specification of
+.BR snprintf ()
+with C99.
+.SH CAVEATS
+Some programs imprudently rely on code such as the following
+.P
+.in +4n
+.EX
+sprintf(buf, "%s some further text", buf);
+.EE
+.in
+.P
+to append text to
+.IR buf .
+However, the standards explicitly note that the results are undefined
+if source and destination buffers overlap when calling
+.BR sprintf (),
+.BR snprintf (),
+.BR vsprintf (),
+and
+.BR vsnprintf ().
+.\" http://sourceware.org/bugzilla/show_bug.cgi?id=7075
+Depending on the version of
+.BR gcc (1)
+used, and the compiler options employed, calls such as the above will
+.B not
+produce the expected results.
+.P
+The glibc implementation of the functions
+.BR snprintf ()
+and
+.BR vsnprintf ()
+conforms to the C99 standard, that is, behaves as described above,
+since glibc 2.1.
+Until glibc 2.0.6, they would return \-1
+when the output was truncated.
+.\" .SH HISTORY
+.\" UNIX V7 defines the three routines
+.\" .BR sprintf ().
+.\" 2.11BSD has
+.\" .BR vsprintf ().
+.\" 4.4BSD introduces the functions
+.\" .BR snprintf ()
+.\" and
+.\" .BR vsnprintf ().
+.\" FreeBSD also has functions
+.\" .BR asprintf ()
+.\" and
+.\" .BR vasprintf (),
+.\" that allocate a buffer large enough for
+.\" .BR sprintf ().
+.SH BUGS
+See
+.BR printf (3).
+.SS sprintf(), vsprintf()
+Because
+.BR sprintf ()
+and
+.BR vsprintf ()
+assume an arbitrarily long string,
+callers must be careful not to overflow the actual space;
+this is often impossible to assure.
+Note that the length of the strings produced is locale-dependent
+and difficult to predict.
+Use
+.BR snprintf ()
+and
+.BR vsnprintf ()
+instead (or
+.BR asprintf (3)
+and
+.BR vasprintf (3)).
+.\" .P
+.\" Linux libc4.[45] does not have a
+.\" .BR snprintf (),
+.\" but provides a libbsd that contains an
+.\" .BR snprintf ()
+.\" equivalent to
+.\" .BR sprintf (),
+.\" that is, one that ignores the
+.\" .I size
+.\" argument.
+.\" Thus, the use of
+.\" .BR snprintf ()
+.\" with early libc4 leads to serious security problems.
+.\" .P
+.\" Some floating-point conversions under early libc4
+.\" caused memory leaks.
+.SH EXAMPLES
+To allocate a sufficiently large string and print into it
+(code correct for both glibc 2.0 and glibc 2.1):
+.P
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdarg.h>
+\&
+char *
+make_message(const char *fmt, ...)
+{
+    int n = 0;
+    size_t size = 0;
+    char *p = NULL;
+    va_list ap;
+\&
+    /* Determine required size.  */
+\&
+    va_start(ap, fmt);
+    n = vsnprintf(p, size, fmt, ap);
+    va_end(ap);
+\&
+    if (n < 0)
+        return NULL;
+\&
+    size = (size_t) n + 1;      /* One extra byte for \[aq]\[rs]0\[aq] */
+    p = malloc(size);
+    if (p == NULL)
+        return NULL;
+\&
+    va_start(ap, fmt);
+    n = vsnprintf(p, size, fmt, ap);
+    va_end(ap);
+\&
+    if (n < 0) {
+        free(p);
+        return NULL;
+    }
+\&
+    return p;
+}
+.EE
+.P
+If truncation occurs in glibc versions prior to glibc 2.0.6,
+this is treated as an error instead of being handled gracefully.
+.SH SEE ALSO
+.BR printf (1),
+.BR asprintf (3),
+.BR printf (3),
+.BR puts (3),
+.BR scanf (3),
+.BR setlocale (3),
+.BR strfromd (3),
+.BR wcrtomb (3),
+.BR wprintf (3),
+.BR locale (5)
diff --git a/man/man3/sprintf.3 b/man/man3/sprintf.3
index 975530d90..48bccad4d 100644
--- a/man/man3/sprintf.3
+++ b/man/man3/sprintf.3
@@ -1 +1 @@
-.so man3/printf.3
+.so man3/snprintf.3
diff --git a/man/man3/vsnprintf.3 b/man/man3/vsnprintf.3
index 975530d90..48bccad4d 100644
--- a/man/man3/vsnprintf.3
+++ b/man/man3/vsnprintf.3
@@ -1 +1 @@
-.so man3/printf.3
+.so man3/snprintf.3
diff --git a/man/man3/vsprintf.3 b/man/man3/vsprintf.3
index 975530d90..48bccad4d 100644
--- a/man/man3/vsprintf.3
+++ b/man/man3/vsprintf.3
@@ -1 +1 @@
-.so man3/printf.3
+.so man3/snprintf.3
-- 
2.51.0


