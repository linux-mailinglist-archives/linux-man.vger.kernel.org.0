Return-Path: <linux-man+bounces-242-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E389580B9C8
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 09:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A64EE280E99
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 08:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B77D4439;
	Sun, 10 Dec 2023 08:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cs.unibo.it header.i=@cs.unibo.it header.b="CiMJ7MWR"
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 55736 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 10 Dec 2023 00:07:58 PST
Received: from mail.virtlab.unibo.it (mail.virtlab.unibo.it [130.136.161.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 288119D
	for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 00:07:58 -0800 (PST)
Received: from cs.unibo.it (94-33-52-139.static.clienti.tiscali.it [94.33.52.139])
	by mail.virtlab.unibo.it (Postfix) with ESMTPSA id CA0111C013D;
	Sun, 10 Dec 2023 09:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cs.unibo.it;
	s=virtlab; t=1702195673;
	bh=Ry2lnm1sB89bHSl9wbPmd1cqgwoUpO3wV4o15TfcfRA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CiMJ7MWRLOdGnqdmqUvKPmiTtwgq8xFWed2ICQFI+0LqUSMFoattgxMIdBgM7iFKY
	 yPDroCzMJfMgyMER9jFAzi/7b3l/xf5e3E6qD5rNOk1IwGr9hXBcp7D7XegwM+ejGb
	 ertLMLfBMBNvicqUcXx8+IW5tvN+ecwi2bXiblX4=
Date: Sun, 10 Dec 2023 09:07:52 +0100
From: Renzo Davoli <renzo@cs.unibo.it>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: utimensat(2) and faccessat(2): man pages do not mention
 AT_EMPTY_PATH flag
Message-ID: <ZXVx2C1DZeAvHnh-@cs.unibo.it>
References: <ZXBVJ5phq4tK1fWq@cs.unibo.it>
 <ZXRWyMQh2_uV_U_1@debian>
 <ZXSYIRVx-soPB7cc@cs.unibo.it>
 <ZXTd02-0f0lSWGjP@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="kX4Z5RgoCpgEZmuh"
Content-Disposition: inline
In-Reply-To: <ZXTd02-0f0lSWGjP@debian>


--kX4Z5RgoCpgEZmuh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 09, 2023 at 10:36:19PM +0100, Alejandro Colomar wrote:
> Dear Renzo,
> > +.\" Modified 2023-12-09 by Renzo Davoli <renzo@cs.unibo.it>
> We don't use those anymore.  Simply add yourself to Copyright if
> appropriate, but for knowing what was written by who, git(1) works
> better.

Okay. You'll find here attached the new patch.

ciao
	renzo

--kX4Z5RgoCpgEZmuh
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="access_utimensat_add_emptypath.patch"

diff --git a/man2/access.2 b/man2/access.2
index 95de3815d..2b3e70e34 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -155,6 +155,27 @@ By default,
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
index 495e15cee..d58b4d82e 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -182,10 +182,31 @@ is ignored.
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

--kX4Z5RgoCpgEZmuh--

