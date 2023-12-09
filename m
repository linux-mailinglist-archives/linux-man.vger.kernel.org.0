Return-Path: <linux-man+bounces-240-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A50E80B546
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 17:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9C8D28128B
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 16:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC74168BD;
	Sat,  9 Dec 2023 16:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cs.unibo.it header.i=@cs.unibo.it header.b="Ni0y1+CA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.virtlab.unibo.it (mail.virtlab.unibo.it [IPv6:2001:760:2e00:f0a1::32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6B46D10C9
	for <linux-man@vger.kernel.org>; Sat,  9 Dec 2023 08:39:04 -0800 (PST)
Received: from cs.unibo.it (94-33-52-139.static.clienti.tiscali.it [94.33.52.139])
	by mail.virtlab.unibo.it (Postfix) with ESMTPSA id 43A591C009E;
	Sat,  9 Dec 2023 17:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cs.unibo.it;
	s=virtlab; t=1702139938;
	bh=maYHYGTi1yP6JKktfPE7V83H2EICyULw8vhQGynZwIY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ni0y1+CAmVNysxaWh9Om9tBTzFGFvu2ilvUMC6kF3sIF4kt8RXcIcSfkSW+zLX1Ja
	 //Q2L8a/RzNnKZlpYs0zDRXMRkTEZIRgIM1HCAeu9brJDEbuh5TIAz9isGz1xtYKpm
	 v4a61ICaf/fVa438p4QVbFOW62sx4bvCyMhVYNI4=
Date: Sat, 9 Dec 2023 17:38:57 +0100
From: Renzo Davoli <renzo@cs.unibo.it>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZXSYIRVx-soPB7cc@cs.unibo.it>
References: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
 <ZXRWyMQh2_uV_U_1@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZA2o7/Z/NHJsQqOi"
Content-Disposition: inline
In-Reply-To: <ZXRWyMQh2_uV_U_1@debian>


--ZA2o7/Z/NHJsQqOi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Alex,

On Sat, Dec 09, 2023 at 01:00:08PM +0100, Alejandro Colomar wrote:
> On Wed, Dec 06, 2023 at 12:04:07PM +0100, Renzo Davoli wrote:
> > utimensat and faccessat support the flag AT_EMPTY_PATH since Linux 5.8 but
> > this option is still missing in the man pages.
> Thanks for reporting that.  Would you mind preparing a patch updating
> the page?  If you need any help, just ask for it.

No problem. It is here attached. Let me know if it's okay.

All the Best and Happy Hacking.
ciao

        renzo

--ZA2o7/Z/NHJsQqOi
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="access_utimensat_add_emptypath.patch"

diff --git a/man2/access.2 b/man2/access.2
index 95de3815d..97398ba76 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -19,6 +19,8 @@
 .\" Modified 2002-04-23 by Roger Luethi <rl@hellgate.ch>
 .\" Modified 2004-06-23 by Michael Kerrisk
 .\" 2007-06-10, mtk, various parts rewritten, and added BUGS section.
+.\" Modified 2023-12-09 by Renzo Davoli <renzo@cs.unibo.it>
+.\"   add AT_EMPTY_PATH flag
 .\"
 .TH access 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
@@ -155,6 +157,27 @@ By default,
 uses the real IDs (like
 .BR access ()).
 .TP
+.BR AT_EMPTY_PATH " (since Linux 5.8)"
+If
+.I pathname
+is an empty string, operate on the file referred to by
+.I dirfd
+(which may have been obtained using the
+.BR open (2)
+.B O_PATH
+flag).
+In this case,
+.I dirfd
+can refer to any type of file, not just a directory.
+If
+.I dirfd
+is
+.BR AT_FDCWD ,
+the call operates on the current working directory.
+This flag is Linux-specific; define
+.B _GNU_SOURCE
+to obtain its definition.
+.TP
 .B AT_SYMLINK_NOFOLLOW
 If
 .I pathname
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 495e15cee..29980c464 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -4,6 +4,9 @@
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
+.\" Modified 2023-12-09 by Renzo Davoli <renzo@cs.unibo.it>
+.\"     add AT_EMPTY_PATH flag
+.\"
 .TH utimensat 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
 utimensat, futimens \- change file timestamps with nanosecond precision
@@ -182,10 +185,31 @@ is ignored.
 .P
 The
 .I flags
-field is a bit mask that may be 0, or include the following constant,
-defined in
+argument is a bit mask created by ORing together zero or more of
+the following values defined in
 .IR <fcntl.h> :
 .TP
+.BR AT_EMPTY_PATH " (since Linux 5.8)"
+If
+.I pathname
+is an empty string, operate on the file referred to by
+.I dirfd
+(which may have been obtained using the
+.BR open (2)
+.B O_PATH
+flag).
+In this case,
+.I dirfd
+can refer to any type of file, not just a directory.
+If
+.I dirfd
+is
+.BR AT_FDCWD ,
+the call operates on the current working directory.
+This flag is Linux-specific; define
+.B _GNU_SOURCE
+to obtain its definition.
+.TP
 .B AT_SYMLINK_NOFOLLOW
 If
 .I pathname

--ZA2o7/Z/NHJsQqOi--

