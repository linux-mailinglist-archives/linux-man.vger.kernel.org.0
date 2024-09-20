Return-Path: <linux-man+bounces-1778-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B86D997DA37
	for <lists+linux-man@lfdr.de>; Fri, 20 Sep 2024 23:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B03F28293A
	for <lists+linux-man@lfdr.de>; Fri, 20 Sep 2024 21:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F0E183CCD;
	Fri, 20 Sep 2024 21:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thomasvoss.com header.i=@thomasvoss.com header.b="7m67Beo5"
X-Original-To: linux-man@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D6117BB2B
	for <linux-man@vger.kernel.org>; Fri, 20 Sep 2024 21:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726867064; cv=none; b=b1uubVFTqZmFrTEIDxnTIF78WjBqElCtkLzppeEH9zyDQiAeeRBktBwWxlPN0Q0l0v/XFVAYKx4qFtjmbdEMmqojKJmSooZ42MhJc8jH6K/Td81CKsDkYBoybn33EFU35pZP2gcOvYurBQRMn+9QbvgcJ/YHfJ5GI/04+RielgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726867064; c=relaxed/simple;
	bh=WoVxxjiepANt00BXgOGLhDPmwW8YrpFKjN428ITeCAg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Nvt+zRnDSOi+WRqDwiUA6a2tPXwvEhKLsuYehT1CJ1P5Gn3mXlveth/EBRgnoOrAzoWa18lWW9itIUepc2mhdmGf9yLA+QTLt0ggM717KOCVn+SzcGDxBXrpY8WA3yk6vc4iW7ovcW619K+nV4dSF3ZHxWcXDlZ2Iklsrv2r9NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thomasvoss.com; spf=pass smtp.mailfrom=thomasvoss.com; dkim=pass (2048-bit key) header.d=thomasvoss.com header.i=@thomasvoss.com header.b=7m67Beo5; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thomasvoss.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thomasvoss.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomasvoss.com;
	s=key1; t=1726867058;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nXoccRAiAThXVjrDJ/3JFzItwH8neuJZyK7u1ZlLd8E=;
	b=7m67Beo5jSEvKwf2U6nIJPLJV8N4kUYOObC64+rvNp37nnA4G+Qh3DUffvmD48B+lxsjuz
	KRAwzF8+EhjA7/iRdN3KXJYJ2vM6eulaYp+g/CAWHgZiS8zWFOUgguKQQaKwdlg8Xebjkn
	fiPmS62ECBX7ZrcrrZwkbRnPln7Z7Wsl6euT9f1zX1R5MOg53vKVr7NfnS/Sda+o0iips3
	8LClA0balq+sehq4WovkrpmUGcQ75E/EkL8tcp6Nqd5IvAoHpkLoNK9va5mv9JewdlBcdg
	1jGTk2nQo/3lL4PqUdYEol0H55I1XQ8qsAVcP6LwhvHpfsM5HrRDJHwFq9EigA==
From: Thomas Voss <mail@thomasvoss.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Thomas Voss <mail@thomasvoss.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] stdc_count_ones.3, stdc_count_zeros.3: Add manual pages
Date: Fri, 20 Sep 2024 23:17:14 +0200
Message-ID: <d82e86d2240785d77510495dd574b761cbf3be81.1726866666.git.mail@thomasvoss.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Hello again!

I noticed that manuals are missing for all of the new stdbit.h functions.
I had some spare time, so I wrote up a quick set of manuals for these two
functions.  I hope I followed the style correctly; I tried to copy what I
saw in other manual pages.

Signed-off-by: Thomas Voss <mail@thomasvoss.com>
---
 man/man3/stdc_count_ones.3      | 65 +++++++++++++++++++++++++++++++++
 man/man3/stdc_count_ones_uc.3   |  1 +
 man/man3/stdc_count_ones_ui.3   |  1 +
 man/man3/stdc_count_ones_ul.3   |  1 +
 man/man3/stdc_count_ones_ull.3  |  1 +
 man/man3/stdc_count_ones_us.3   |  1 +
 man/man3/stdc_count_zeros.3     | 64 ++++++++++++++++++++++++++++++++
 man/man3/stdc_count_zeros_uc.3  |  1 +
 man/man3/stdc_count_zeros_ui.3  |  1 +
 man/man3/stdc_count_zeros_ul.3  |  1 +
 man/man3/stdc_count_zeros_ull.3 |  1 +
 man/man3/stdc_count_zeros_us.3  |  1 +
 12 files changed, 139 insertions(+)
 create mode 100644 man/man3/stdc_count_ones.3
 create mode 100644 man/man3/stdc_count_ones_uc.3
 create mode 100644 man/man3/stdc_count_ones_ui.3
 create mode 100644 man/man3/stdc_count_ones_ul.3
 create mode 100644 man/man3/stdc_count_ones_ull.3
 create mode 100644 man/man3/stdc_count_ones_us.3
 create mode 100644 man/man3/stdc_count_zeros.3
 create mode 100644 man/man3/stdc_count_zeros_uc.3
 create mode 100644 man/man3/stdc_count_zeros_ui.3
 create mode 100644 man/man3/stdc_count_zeros_ul.3
 create mode 100644 man/man3/stdc_count_zeros_ull.3
 create mode 100644 man/man3/stdc_count_zeros_us.3

diff --git a/man/man3/stdc_count_ones.3 b/man/man3/stdc_count_ones.3
new file mode 100644
index 0000000..5cfc3cf
--- /dev/null
+++ b/man/man3/stdc_count_ones.3
@@ -0,0 +1,65 @@
+'\" t
+.\" Copyright (c) 2024 by Thomas Voss <mail@thomasvoss.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH stdc_count_ones 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+stdc_count_ones, stdc_count_ones_uc, stdc_count_ones_us,
+stdc_count_ones_ui, stdc_count_ones_ul, stdc_count_ones_ull \- count set
+bits
+.SH LIBRARY
+Standard C library
+.RI ( libc )
+.SH SYNOPSIS
+.nf
+.B #include <stdbit.h>
+.P
+.BI "generic_return_type stdc_count_ones(generic_value_type " value );
+.BI "unsigned int stdc_count_ones_uc(unsigned char " value );
+.BI "unsigned int stdc_count_ones_us(unsigned short " value );
+.BI "unsigned int stdc_count_ones_ui(unsigned int " value );
+.BI "unsigned int stdc_count_ones_ul(unsigned long " value );
+.BI "unsigned int stdc_count_ones_ull(unsigned long long " value );
+.fi
+.SH DESCRIPTION
+These functions return the total number of 1 bits in
+.IR value .
+This operation is also often known as a pop count.
+.P
+.B generic_value_type
+may be any unsigned integer type excluding
+.B bool
+and bit-precise integer types
+(unless they have a width which matches a standard integer type),
+while
+.B generic_value_type
+is an unspecified unsigned type.
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
+.BR stdc_count_ones (),
+.BR stdc_count_ones_uc (),
+.BR stdc_count_ones_us (),
+.BR stdc_count_ones_ui (),
+.BR stdc_count_ones_ul (),
+.BR stdc_count_ones_ull ()
+T}	Thread safety	MT-Safe
+.TE
+.SH STANDARDS
+C23.
+.SH SEE ALSO
+.BR stdc_count_zeros () ,
+.BR stdc_leading_ones () ,
+.BR stdc_leading_zeros () ,
+.BR stdc_trailing_ones () ,
+.BR stdc_trailing_zeros ()
diff --git a/man/man3/stdc_count_ones_uc.3 b/man/man3/stdc_count_ones_uc.3
new file mode 100644
index 0000000..f075079
--- /dev/null
+++ b/man/man3/stdc_count_ones_uc.3
@@ -0,0 +1 @@
+.so stdc_count_ones
diff --git a/man/man3/stdc_count_ones_ui.3 b/man/man3/stdc_count_ones_ui.3
new file mode 100644
index 0000000..f075079
--- /dev/null
+++ b/man/man3/stdc_count_ones_ui.3
@@ -0,0 +1 @@
+.so stdc_count_ones
diff --git a/man/man3/stdc_count_ones_ul.3 b/man/man3/stdc_count_ones_ul.3
new file mode 100644
index 0000000..f075079
--- /dev/null
+++ b/man/man3/stdc_count_ones_ul.3
@@ -0,0 +1 @@
+.so stdc_count_ones
diff --git a/man/man3/stdc_count_ones_ull.3 b/man/man3/stdc_count_ones_ull.3
new file mode 100644
index 0000000..f075079
--- /dev/null
+++ b/man/man3/stdc_count_ones_ull.3
@@ -0,0 +1 @@
+.so stdc_count_ones
diff --git a/man/man3/stdc_count_ones_us.3 b/man/man3/stdc_count_ones_us.3
new file mode 100644
index 0000000..f075079
--- /dev/null
+++ b/man/man3/stdc_count_ones_us.3
@@ -0,0 +1 @@
+.so stdc_count_ones
diff --git a/man/man3/stdc_count_zeros.3 b/man/man3/stdc_count_zeros.3
new file mode 100644
index 0000000..b29118d
--- /dev/null
+++ b/man/man3/stdc_count_zeros.3
@@ -0,0 +1,64 @@
+'\" t
+.\" Copyright (c) 2024 by Thomas Voss <mail@thomasvoss.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH stdc_count_zeros 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+stdc_count_zeros, stdc_count_zeros_uc, stdc_count_zeros_us,
+stdc_count_zeros_ui, stdc_count_zeros_ul,
+stdc_count_zeros_ull \- count unset bits
+.SH LIBRARY
+Standard C library
+.RI ( libc )
+.SH SYNOPSIS
+.nf
+.B #include <stdbit.h>
+.P
+.BI "generic_return_type stdc_count_zeros(generic_value_type " value );
+.BI "unsigned int stdc_count_zeros_uc(unsigned char " value );
+.BI "unsigned int stdc_count_zeros_us(unsigned short " value );
+.BI "unsigned int stdc_count_zeros_ui(unsigned int " value );
+.BI "unsigned int stdc_count_zeros_ul(unsigned long " value );
+.BI "unsigned int stdc_count_zeros_ull(unsigned long long " value );
+.fi
+.SH DESCRIPTION
+These functions return the total number of 0 bits in
+.IR value .
+.P
+.B generic_value_type
+may be any unsigned integer type excluding
+.B bool
+and bit-precise integer types
+(unless they have a width which matches a standard integer type),
+while
+.B generic_value_type
+is an unspecified unsigned type.
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
+.BR stdc_count_zeros (),
+.BR stdc_count_zeros_uc (),
+.BR stdc_count_zeros_us (),
+.BR stdc_count_zeros_ui (),
+.BR stdc_count_zeros_ul (),
+.BR stdc_count_zeros_ull ()
+T}	Thread safety	MT-Safe
+.TE
+.SH STANDARDS
+C23.
+.SH SEE ALSO
+.BR stdc_count_ones () ,
+.BR stdc_leading_ones () ,
+.BR stdc_leading_zeros () ,
+.BR stdc_trailing_ones () ,
+.BR stdc_trailing_zeros ()
diff --git a/man/man3/stdc_count_zeros_uc.3 b/man/man3/stdc_count_zeros_uc.3
new file mode 100644
index 0000000..a644881
--- /dev/null
+++ b/man/man3/stdc_count_zeros_uc.3
@@ -0,0 +1 @@
+.so stdc_count_zeros
diff --git a/man/man3/stdc_count_zeros_ui.3 b/man/man3/stdc_count_zeros_ui.3
new file mode 100644
index 0000000..a644881
--- /dev/null
+++ b/man/man3/stdc_count_zeros_ui.3
@@ -0,0 +1 @@
+.so stdc_count_zeros
diff --git a/man/man3/stdc_count_zeros_ul.3 b/man/man3/stdc_count_zeros_ul.3
new file mode 100644
index 0000000..a644881
--- /dev/null
+++ b/man/man3/stdc_count_zeros_ul.3
@@ -0,0 +1 @@
+.so stdc_count_zeros
diff --git a/man/man3/stdc_count_zeros_ull.3 b/man/man3/stdc_count_zeros_ull.3
new file mode 100644
index 0000000..a644881
--- /dev/null
+++ b/man/man3/stdc_count_zeros_ull.3
@@ -0,0 +1 @@
+.so stdc_count_zeros
diff --git a/man/man3/stdc_count_zeros_us.3 b/man/man3/stdc_count_zeros_us.3
new file mode 100644
index 0000000..a644881
--- /dev/null
+++ b/man/man3/stdc_count_zeros_us.3
@@ -0,0 +1 @@
+.so stdc_count_zeros
-- 
2.46.1


