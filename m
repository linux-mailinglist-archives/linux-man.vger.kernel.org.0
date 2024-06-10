Return-Path: <linux-man+bounces-1065-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0B2902B61
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 00:07:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7648F281CAE
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 22:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA5B14E2E2;
	Mon, 10 Jun 2024 22:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="QjQpj/l6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA05714B963
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718057256; cv=none; b=fzluXOBmuoE5Jc30BAI8iGuQDRWDRuREk4k2eiTcFE3z5xVFZzuRQiru78OkhDNdclpd2pBpA6Ag8WbzmVKYJBf8AoGK7hZrN6l+/no+sDlyV7+aCvMhNvIZvXjRu0oU297aZkkZomXYORd4f7qSXTJy6K2vqFuzSL+tX0FkgwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718057256; c=relaxed/simple;
	bh=esKOcQVjNR5+7IFh9AQAKcM6YlS00pyfGRRM1sXZwAM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aBN3eoWaYqBUCsw9aabLNX9Qc2u3HVax/2ddVlat68H/HYy5pMO/csO9JSrRV6a/4VvL+mUn0GwRhqfm/fg69wELuDAIwMVeIMleNZGngpl5KjRSwOyo4KGB4NSy9h2DP84rgUDi1TJom7CegVXOwVfm2Up2Ytop2YTx7at9l60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=QjQpj/l6; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id D6EBC3C00F4E2;
	Mon, 10 Jun 2024 15:00:20 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 3A2cMEacyCuZ; Mon, 10 Jun 2024 15:00:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 49C5F3C00FAB8;
	Mon, 10 Jun 2024 15:00:20 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 49C5F3C00FAB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718056820;
	bh=qDKLvFOAzKo6+wHDINSqsFLJ3yv/As2zaIP/gLFTlk8=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=QjQpj/l60Rj9UMdcJ6WKNIXfQVHLmeTQ38goOP2SxWQ2kqrSFNyAvHyR31ZQIhRs0
	 DNdM5LSm83fapI2uYwHW+MbGZGa/DHpfqU9CmLF5Nk/9orD/dUU18sWL+XWCnPV/Fc
	 s3sc1e2l9DH5xf2GCRh0DCBiAzj2FBu9z0Ja0iyaVt3TyjqvxT5OGpeUWkgIVMmWzG
	 WTxo8SLJDeh08CHxk7k3ypSBCwLmSiB5Dyf0bRfTkH+0v7pE4h61NZN7a2cDMY2rEw
	 neAFae4lJQA498OH0G4cg/NB0Z5kdclo/EmyRLD7l/b/MtcJq2QeTb7kw36FCND2YK
	 HOejjH5MOD2eQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id vATdn_oGrVcp; Mon, 10 Jun 2024 15:00:20 -0700 (PDT)
Received: from wing.home (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 2E7413C00FAB4;
	Mon, 10 Jun 2024 15:00:20 -0700 (PDT)
From: Paul Eggert <eggert@cs.ucla.edu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH] tzset: adjust for POSIX, and don't overpromise
Date: Mon, 10 Jun 2024 15:00:13 -0700
Message-ID: <20240610220013.2812749-1-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

POSIX.1-2024 is now official, and tm_gmtoff and tm_zone
are now part of POSIX.  Update the man pages accordingly.

Don't overpromise the global state that tzset updates.
Its contents are unspecified if you use a geographical
time zone.  For more details, see:

https://austingroupbugs.net/view.php?id=3D1816
https://sourceware.org/bugzilla/show_bug.cgi?id=3D31876

The hours in a TZ string time can now range from -167 to 167.

Update NZ example to use NZ's current practice.

Omit leading ":" from TZ examples as this usage is rare.
---
 man/man3/ctime.3      | 15 +++++----------
 man/man3/tzset.3      | 39 ++++++++++++++++++++++++++++-----------
 man/man3type/tm.3type |  7 ++++---
 3 files changed, 37 insertions(+), 24 deletions(-)

diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index b8543a1cf..94819961d 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -102,9 +102,8 @@ The return value points to a statically allocated str=
ing which
 might be overwritten by subsequent calls to any of the date and time
 functions.
 The function also sets the external
-variables \fItzname\fP, \fItimezone\fP, and \fIdaylight\fP (see
-.BR tzset (3))
-with information about the current timezone.
+variables \fItzname\fP, \fItimezone\fP, and \fIdaylight\fP as if it call=
ed
+.BR tzset (3).
 The reentrant version
 .BR ctime_r ()
 does the same, but stores the
@@ -131,13 +130,9 @@ The
 function converts the calendar time \fItimep\fP to
 broken-down time representation,
 expressed relative to the user's specified timezone.
-The function acts as if it called
-.BR tzset (3)
-and sets the external variables \fItzname\fP with
-information about the current timezone, \fItimezone\fP with the differen=
ce
-between Coordinated Universal Time (UTC) and local standard time in
-seconds, and \fIdaylight\fP to a nonzero value if daylight savings
-time rules apply during some part of the year.
+The function also sets the external variables \fItzname\fP,
+\fItimezone\fP, and \fIdaylight\fP as if it called
+.BR tzset (3).
 The return value points to a statically allocated struct which might be
 overwritten by subsequent calls to any of the date and time functions.
 The
diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 8479b17b0..8623abf09 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -63,6 +63,18 @@ In a System-V-like environment, it will also set the v=
ariables \fItimezone\fP
 have any daylight saving time rules, or to nonzero if there is a time,
 past, present, or future when daylight saving time applies).
 .P
+The
+.BR tzset ()
+function initializes these variables to unspecified values if this
+timezone is a geographical timezone like "America/New_York" (see below).
+Because these variables' contents are often unspecified,
+code should instead obtain time zone offset and abbreviations from the
+.I tm_gmtoff
+and
+.I tm_zone
+members of the broken-down time structure
+.BR tm (3type).
+.P
 If the
 .B TZ
 variable does not appear in the environment, the system timezone is used=
.
@@ -79,7 +91,7 @@ variable does appear in the environment, but its value =
is empty,
 or its value cannot be interpreted using any of the formats specified
 below, then Coordinated Universal Time (UTC) is used.
 .P
-The value of
+A nonempty value of
 .B TZ
 can be one of two formats.
 The first format is a string of characters that directly represent the
@@ -141,44 +153,49 @@ Day 0 is a Sunday.
 .P
 The \fItime\fP fields specify when, in the local time currently in effec=
t,
 the change to the other time occurs.
+They use the same format as \fIoffset\fP except that the hour can range
+from \-167 to 167 to represent times before and after the named day.
 If omitted, the default is 02:00:00.
 .P
 Here is an example for New Zealand,
 where the standard time (NZST) is 12 hours ahead of UTC,
 and daylight saving time (NZDT), 13 hours ahead of UTC,
-runs from the first Sunday in October to the third Sunday in March,
-and the changeovers happen at the default time of 02:00:00:
+runs from September's last Sunday at 02:00:00
+to April's first Sunday at 03:00:00.
 .P
 .in +4n
 .EX
-TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
+TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M9.5.0,M4.1.0/3"
 .EE
 .in
 .P
-The second format specifies that the timezone information should be read
+The second, or "geographical",
+format specifies that the timezone information should be read
 from a file:
 .P
 .in +4n
 .EX
-:[filespec]
+filespec
 .EE
 .in
 .P
-If the file specification \fIfilespec\fP is omitted, or its value cannot
-be interpreted, then Coordinated Universal Time (UTC) is used.
 If \fIfilespec\fP is given, it specifies another
 .BR tzfile (5)-format
 file to read the timezone information from.
 If \fIfilespec\fP does not begin with a \[aq]/\[aq], the file specificat=
ion is
 relative to the system timezone directory.
-If the colon is omitted each
-of the above \fBTZ\fP formats will be tried.
+If the named file cannot be read or interpreted,
+Coordinated Universal Time (UTC) is used;
+however, applications should not depend on random \fIfilespec\fP values
+standing for UTC, as
+.B TZ
+formats may be extended in the future.
 .P
 Here's an example, once more for New Zealand:
 .P
 .in +4n
 .EX
-TZ=3D":Pacific/Auckland"
+TZ=3D"Pacific/Auckland"
 .EE
 .in
 .SH ENVIRONMENT
diff --git a/man/man3type/tm.3type b/man/man3type/tm.3type
index 5d5b28658..cbf89a54c 100644
--- a/man/man3type/tm.3type
+++ b/man/man3type/tm.3type
@@ -90,9 +90,9 @@ points to static storage and may be overridden on subse=
quent calls to
 .BR localtime (3)
 and similar functions (however, this never happens under glibc).
 .SH STANDARDS
-C11, POSIX.1-2008.
+C23, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89, C99, POSIX.1-2001, POSIX.1-2008.
 .P
 .I tm_gmtoff
 and
@@ -100,7 +100,8 @@ and
 originate from 4.3BSD-Tahoe (where
 .I tm_zone
 is a
-.IR "char *" ).
+.IR "char *" ),
+and were first standardized in POSIX.1-2024.
 .SH NOTES
 .I tm_sec
 can represent a leap second with the value
--=20
2.43.0


