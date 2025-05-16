Return-Path: <linux-man+bounces-2933-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E443ABA0A1
	for <lists+linux-man@lfdr.de>; Fri, 16 May 2025 18:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A155216AF55
	for <lists+linux-man@lfdr.de>; Fri, 16 May 2025 16:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCBF7DA6C;
	Fri, 16 May 2025 16:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=stoeckmann.org header.i=tobias@stoeckmann.org header.b="ZbWcSxcO"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D293323D
	for <linux-man@vger.kernel.org>; Fri, 16 May 2025 16:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.72.192.75
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747411742; cv=none; b=J085eP/k9oiXQl+kaJ01Pa33+e9Eocfhv9HcQs0qj3VXO9589fijV+MF7QrEfQVATjRk17anI/5jS/RnrRcTQxMJZ41vhLgUs85M+Ek9IQyKZFB8MbmA7vHpsBer4TQ94nWn1uQiL63RbFpTpEjTwlOhytDkCRC9FHpGASYYgX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747411742; c=relaxed/simple;
	bh=IPz9sQfc0xzsCru2jYzsctoqj+xL9IjdDa+ItgeI59c=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cqaXDHGWiygkFJy8887ge94moI/zOgMKjEwTk3tmZBJBTrsXfAClW/xpLg+tmPBAEwmD8ZYE8t6LhAyckKkwraAqhfF0LYonOwZqPc7KfiVjGWPIUBZPWR4+IuKdYI+In8BkZ8DNF+k9uK64i1+k1a98SKGpcneAoIx3H4aqAAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stoeckmann.org; spf=pass smtp.mailfrom=stoeckmann.org; dkim=pass (2048-bit key) header.d=stoeckmann.org header.i=tobias@stoeckmann.org header.b=ZbWcSxcO; arc=none smtp.client-ip=217.72.192.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stoeckmann.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stoeckmann.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stoeckmann.org;
	s=s1-ionos; t=1747411737; x=1748016537; i=tobias@stoeckmann.org;
	bh=g3FTPF0C1QwiLqD8iyxjlW9RELIODHb7rnqVsIBPXSQ=;
	h=X-UI-Sender-Class:Date:From:To:Cc:Subject:Message-ID:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ZbWcSxcO6092lP94NLVjInyJ9xE+7qntrVEJhST8FdK8YoOZirXebA7Tmc/nM4+O
	 mIpnhJhpbtYe68S9hTh9aMfzI4+pGXVHt630sbxX6L3e5qmKsNLtsBcquPiPNOsAw
	 IcWcd2ACXDMXO3D+UWU/hBOmOiNDCHtehC0yK5Ki01qqeXi9DgJJHmp3FTtfdqxCp
	 VHIDDGJYlvd5jn1+R0/jgqlR6DkffyZ6reyYDWcHRBVDgNqtdTYFacgE2cNi03P4l
	 aBXzHFj0m/JTWR3Ei+IyM3SlmgEQC8R7wzTcLNLk4N50W2A1hxnr3jj60Ua0AFskH
	 zjlzTjMbJpsv6IKIcA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost ([93.225.58.209]) by mrelayeu.kundenserver.de
 (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1My3Mv-1vBWoI15aR-016o3V; Fri, 16 May 2025 18:08:57 +0200
Date: Fri, 16 May 2025 18:08:54 +0200
From: Tobias Stoeckmann <tobias@stoeckmann.org>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man3/*printf.3: Add errors section
Message-ID: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K1:D+UmcY7+aQIfMzqHcAe/x8vIoYSk6CeNkRBXMglqPjFoIMql+Cf
 KQMRgILv7+2Ewgs+Ye57NXeusJNm2wU8/2hYgO7GJ6yLOXnZ4QUxeCGj7ou4rJEVfdZ2xSY
 Y2OkedeNo09hBd3bLbKFkx+/jOIZDn9bw9oiZ8qyY1uxGkmsFuRu6WFvxkkGeKGrS2SeO/t
 j32xYm9HX7XCAPileJFPg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/M5IluiRcKc=;COj5d7uPtACKfKmQQ1RLtleW7gY
 RT9CNXtvKagEhbCV0oJV3Zgq984LJK8736QyNfuMA6WnXOsz+42UmU9HQGiqfuFDZcBqV172p
 veIK06D74ZvPvr9jO+F8qilt0oJ+MtGeI+D/X4RpS7OaM6DynaA8MWpgc7lub9VgorFNRlOSQ
 pyku+X8NQZBn3sYx4raKofYwX8iD0rnfzZPRv9ypID6HmohULsS39b4eZF9edC704qBI2Y/pE
 4ysYPgCkvrVfmzn9k4VQIq+IxtkgbvkQ28dS9tNGc/G4umpGbrv/gIedmTBmGWmUdK1BWH2lR
 xcCimci4nx45h7YfTqe6LatBBnJePypHVbCtEcshP5XvPUjne9kzTWCoTnUmBB7pGvUuf0Ek5
 3JqI/fw73tfykP1YN+4/cZu5LE84aI8NubFD8/nn9HWFUjHFeVt+JDwq04FIahVtD+mmNPwIj
 /qw18q3LsjP8WmOVkaDSxAhmqojhl2U70/kaHuxjaeOw++us1YAT0b02vqeOEbrR7WoHmSBJw
 voCidaWFCoeTq8MV0fTkNuH4sUsnCHhwUyW8V1QstfE7wYuyOXtokiIPgKYsZzkovt1Er6AXE
 QKVw8/Ruyd5EIAlf147GUC18m/Urd/nRSYLkHx3lhvikRE1+obS0BFBdUZkJH4GTLYkAo3UG/
 aq4TMG4kbQVNah9zA972ogH6H5BC2QmwnhikBjgwJHUiH7PqyVhOBPgygVzvHEDN9W80x+FiO
 eQK17je52SLSLy4tYAWYKvWxO5XRdbXouNO55sZDIEHC6SD1u6ZxwxNJVLywsgZi7BGSZVuaC
 jmGeNWXbeF8NgbrNp+WTJcas/ywKIhDaKJ2utv2I0JcVzz8Jj+/TREamucyHBO3FV77VL3Ir6
 2gEr22xBPxbD0oRlJ4J4jVYIf1vz7nIjmVeNa8YJ4w+jeenuYaMbD+ofOv6tQRM+n/OTJXV6V
 0jC6BVvJX9kKaNNKg51osD9Le5uZTybWdmxJqG0uzFWTFXSrY5LO0BcaGdC93em/gJcixgvHf
 qwlw305gsgrDchc+cn9l+kbexF57XW6rRS4siifVbMNejw9nNSI1SJYcItreD8t1XjpaMwQtM
 lMiezjTSiBjKXSMHzQ9Dw2I1hyTqFP+kuLWeTu/Ruu2qDQBx3YYvyazdIsDzT/BfK+kILV6s3
 t0OwOBnaGrLS9ci24OvcdI1ed+DKsbKBmh9CzSeYHib6yjBwMKIxIJhXWR/tgq/gvPFgdg4wr
 xU1+FgYDq9ZGXtSlRsEGvnumE+ICjJFUXsqotFBziFaZBX+ENAlDkmXKwtDGwa/18rVJE+cT5
 xMEq7jlzlI1OQQhenkZLV2ig4CTTOchcaRkb0cX5SAJQUbFJBcjfu4wxBDrc/v5bKebwAhV5l
 6W/1wnjAV+g5jRkQMZ1WlhAKY1H+2AKfu6i/I8BpkY0XiEQjWEE86sHriV
Content-Transfer-Encoding: quoted-printable

The printf family of functions set errno if a negative value is returned.

Source is POSIX.1-2024, see
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/fprintf.html>
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/fwprintf.html>

Also see manual pages of FreeBSD and OpenBSD.

Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
=2D--
 man/man3/asprintf.3 | 10 +++++++++-
 man/man3/printf.3   | 25 ++++++++++++++++++++++++-
 man/man3/wprintf.3  | 24 +++++++++++++++++++++++-
 3 files changed, 56 insertions(+), 3 deletions(-)

diff --git a/man/man3/asprintf.3 b/man/man3/asprintf.3
index 319382c3a..8340d7798 100644
=2D-- a/man/man3/asprintf.3
+++ b/man/man3/asprintf.3
@@ -38,9 +38,17 @@ When successful, these functions return the number of b=
ytes printed,
 just like
 .BR sprintf (3).
 If memory allocation wasn't possible, or some other error occurs,
-these functions will return \-1, and the contents of
+these functions will return \-1, set errno, and the contents of
 .I strp
 are undefined.
+.SH ERRORS
+These functions may fail and set errno for any of the errors
+specified for the library call
+.BR sprintf (3).
+In addition, the following error may occur:
+.TP
+.B ENOMEM
+Insufficient storage space is available.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man/man3/printf.3 b/man/man3/printf.3
index b6e4f38b9..2c47368ff 100644
=2D-- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -904,7 +904,30 @@ Thus, a return value of
 or more means that the output was truncated.
 (See also below under CAVEATS.)
 .P
-If an output error is encountered, a negative value is returned.
+If an output error is encountered, a negative value is returned and
+errno is set.
+.SH ERRORS
+These functions may fail and set errno for any of the errors specified
+for the system call
+.BR write (2).
+In addition, the following errors may occur:
+.TP 10
+.B EILSEQ
+A wide-character code that does not correspond to a valid character
+has been detected.
+.TP
+.B EOVERFLOW
+The value to be returned is greater than
+.BR INT_MAX .
+.P
+The
+.BR dprintf ()
+function may fail additionally if:
+.TP
+.B EBADF
+The
+.IR fd
+argument is not a valid file descriptor.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man/man3/wprintf.3 b/man/man3/wprintf.3
index 59a6cfe07..55cfe8223 100644
=2D-- a/man/man3/wprintf.3
+++ b/man/man3/wprintf.3
@@ -198,7 +198,29 @@ case of the functions
 .BR swprintf ()
 and
 .BR vswprintf ().
-They return \-1 when an error occurs.
+They return \-1 when an error occurs and set errno.
+.SH ERRORS
+These functions may fail and set errno for any of the errors specified
+for the system call
+.BR write (2).
+In addition, the following errors may occur:
+.TP 10
+.B EILSEQ
+A wide-character code that does not correspond to a valid character
+has been detected.
+.TP
+.B EOVERFLOW
+The value to be returned is greater than
+.BR INT_MAX .
+.P
+The
+.BR fwprintf ()
+and
+.BR wprintf ()
+functions may fail additionally if:
+.TP
+.B ENOMEM
+Insufficient storage space is available.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
=2D-=20
2.49.0


