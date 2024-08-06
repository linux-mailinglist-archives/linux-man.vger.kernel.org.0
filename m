Return-Path: <linux-man+bounces-1583-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF3E949AF5
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 00:09:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6523281E76
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 22:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56F7C17279C;
	Tue,  6 Aug 2024 22:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CXEOeNiU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC5016CD11
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 22:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722982092; cv=none; b=JysFFw8w1tSh6sKzfN9SqI5C+U+wjsY0YPNI/Z6/DfBgA4GtMKds0kyoV6Df0eXrP3qNuOg6CkZE361NqMOxdU9EPv4YuaeVPikpxojqGDYV+jJXGIV5FYc9oLacMPknu59rxKkK2/BUZcfTcpqzGcyEBd5QidK2gS2E6xxEG2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722982092; c=relaxed/simple;
	bh=jbBVl3H9vFHqgEOSGzYLcKhITp7lhLBGKU7Xa5mn9Ds=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=HmhDeYzRpBvkHJVpLJdk9hJuUug4n2n4h/5KjxAVKzqBStostROZfj2AwB+vaP6xd72ZclTBiPhnPMu2GTlcl45G3iWgH8tH4kCgHLDfCwi3CkT+cg7jVRBF44iRNrbsxjFQHHpxeaB17w7ITxZRkp0uFqnMfkqSCPTVTaTAnaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CXEOeNiU; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2cb5243766dso983814a91.0
        for <linux-man@vger.kernel.org>; Tue, 06 Aug 2024 15:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722982090; x=1723586890; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jbBVl3H9vFHqgEOSGzYLcKhITp7lhLBGKU7Xa5mn9Ds=;
        b=CXEOeNiUSWKSqXOAMAJxaGLZnTpEQ6f9fRGOn3GKowDrWgF7zc60ufv1AZyi0K6sf3
         jEnICvHakoaD3ZembjM8gLIr/ByfjHH/HVxZPX6ivCm4FuHUCZ8HGVmwDaLjE+TANQdo
         S0RSBA+9GUxt3DV3VAe7qzB4mbqzoXb6k6AFBVY7EEHQaGW3iz3nIF5+Ff9mV454wIdz
         bnKhPAWDd7p4sZNC8puRLCS/XmwBoVbbMxnUU9kayHKy2KRox0ywRGA4hIKcfbs8yb9O
         6oP9ticRne54ois3xNojfg01Y9SLphSvWFUwx+nDTeYnKXfr67JtFI4rn97BgAUxwlat
         HZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722982090; x=1723586890;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jbBVl3H9vFHqgEOSGzYLcKhITp7lhLBGKU7Xa5mn9Ds=;
        b=DB+LdAANa3Dc7H/Es07e2q6i7R2MJrpT++I8A/onsT9ZzSpg9TCzRQBgQvp+eDqFAJ
         j5s3Ep0WHUzHN8qxc3xvwdabPT0EyIUXve0Fzv6vCD7YFj4kEzBuxLL83CATJKGqRwFZ
         p2YaTJiWTdqEoXq3uPZigOabLTTSOeAJnzV3DZJ1a+xda4zLvbsfmnbEuY/gy2V7pHQq
         dz8RlHosjgG0OPXh3G49cfn1S2CpJ4HGZa3fvSdQYyBRKZ9JjfrNp8REiR1m7UpftmtE
         o96uDy4FWb1Jp2pHSY6xqPvUxcmrygUC2EU3QI/jJvfNAuBZDjv8GKqLiR7J7lXNg8eG
         bvXA==
X-Gm-Message-State: AOJu0YygqHskkjGiw6Jgji+elp5t6kpbIHD6SCnm9+TEHdLgTV8yPDYu
	VY5SyDMhlNpMFKo0SHfzHxRDXArfP1ui3SqNphn+esqD6e54bKrtUvMZxGWp8OGBPHZENd/+yht
	QVZ8veBP+EcHWUHePZ7/VJtAXvJzaQ3ge
X-Google-Smtp-Source: AGHT+IEN1MOBcHBPOgl4VHjIN5iEv8TARvKvR5QtBN1aBJMAqGdVEE5Jo35dEzUHoawZwO4+/T3mpZHcGji41yUEAd8=
X-Received: by 2002:a17:90a:77ca:b0:2ca:4fca:2892 with SMTP id
 98e67ed59e1d1-2cff93d4772mr19209662a91.7.1722982089664; Tue, 06 Aug 2024
 15:08:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Date: Wed, 7 Aug 2024 00:07:57 +0200
Message-ID: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>
Subject: [PATCH] sigaction.2: Improve wording and add an example in the BUGS section
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="00000000000068c984061f0b07dc"

--00000000000068c984061f0b07dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This patch clears up the wording of the first part of the BUGS section
of the sigaction.2 man page.
Currently, it is very unclear when exactly the bug can occur, and
there is no example, which I aim to fix.

I also attach the source code of a C program that, when run on an x86
Linux computer, shows that my example behaves like I say it does. The
code runs the int instruction for each value from 0 to 255 with all
registers set to 0 to show what is contained in the siginfo_t returned
to the signal handler afterwards.

The program is based on the attachment to bug 205831 on the kernel
Bugzilla, which first dealt with this issue, you can find that bug
report here: https://bugzilla.kernel.org/show_bug.cgi?id=3D205831. The
text of my contribution is also partially based on the BUGS section of
the signal.2 man page.

Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
---
 man/man2/sigaction.2 | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index df8826e71..2b797355b 100644
--- a/man/man2/sigaction.2
+++ b/man/man2/sigaction.2
@@ -1129,13 +1129,29 @@ .SS Undocumented
 See the relevant Linux kernel sources for details.
 This use is obsolete now.
 .SH BUGS
-When delivering a signal with a
+When delivering a signal resulting from a hardware exception with a
 .B SA_SIGINFO
 handler,
 the kernel does not always provide meaningful values
 for all of the fields of the
 .I siginfo_t
 that are relevant for that signal.
+For example, when the x86
+.I int
+instruction is called with a forbidden argument
+(any number other than 3 or 128), a
+.BR SIGSEGV
+signal is delivered, but the
+.I siginfo_t
+passed to the signal handler has all its fields besides
+.I si_signo
+and
+.I si_code
+set to zero, even if other fields should be set (as an example,
+.I si_addr
+should be non-zero for all
+.BR SIGSEGV
+signals).
 .P
 Up to and including Linux 2.6.13, specifying
 .B SA_NODEFER
--
2.46.0

--00000000000068c984061f0b07dc
Content-Type: text/x-csrc; charset="US-ASCII"; name="sigaction_example.c"
Content-Disposition: attachment; filename="sigaction_example.c"
Content-Transfer-Encoding: base64
Content-ID: <f_lziyjx1j0>
X-Attachment-Id: f_lziyjx1j0

I2RlZmluZSBDUiAiXG5cdCIKI2RlZmluZSBfR05VX1NPVVJDRSAxCgojaW5jbHVkZSA8c2lnbmFs
Lmg+CiNpbmNsdWRlIDxzdGRpbnQuaD4KI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdGRs
aWIuaD4KI2luY2x1ZGUgPHVjb250ZXh0Lmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KCnN0cnVjdCBz
aWdkYXRhIHsKCWludCBzaWc7Cgl1aW50cHRyX3QgcGM7Cn07CgpzdGF0aWMgc3RydWN0IHNpZ2Rh
dGEgcmVzdWx0czsKc3RhdGljIHNpZ2luZm9fdCBzaWdpbmZvOwoKdm9pZCBoYW5kbGVyKGludCBz
LCBzaWdpbmZvX3QgKnNpLCB2b2lkICp2KSB7Cgl1Y29udGV4dF90ICp1YyA9ICh1Y29udGV4dF90
KikgdjsKCWNvbnN0IHVpbnQ4X3QgKnBjID0gKGNvbnN0IHVpbnQ4X3QqKSB1Yy0+dWNfbWNvbnRl
eHQuZ3JlZ3NbUkVHX1JJUF07CglyZXN1bHRzLnNpZyA9IHM7CglyZXN1bHRzLnBjID0gKHVpbnRw
dHJfdCkgdWMtPnVjX21jb250ZXh0LmdyZWdzW1JFR19SSVBdOwoJc2lnaW5mbyA9ICpzaTsKCQoJ
Ly9za2lwIHRoZSBmYXVsdGluZyBpbnN0cnVjdGlvbgoJaWYoKnBjID09IDB4Q0MgfHwgKnBjID09
IDB4RjEpCgkJdWMtPnVjX21jb250ZXh0LmdyZWdzW1JFR19SSVBdICs9IDE7CgllbHNlIGlmKCpw
YyA9PSAweENEKQoJCXVjLT51Y19tY29udGV4dC5ncmVnc1tSRUdfUklQXSArPSAyOwoJZWxzZQoJ
CTsgLy9hc3N1bWUgdGhlIFBDIGhhcyBhbHJlYWR5IGJlZW4gYWR2YW5jZWQgb3ZlciB0aGUgZmF1
bHQKfQoKc3RhdGljIF9fYXR0cmlidXRlX18oKG5vaW5saW5lKSkgdm9pZCB0cmFwKHVuc2lnbmVk
IGNoYXIgdHJhcG5vKSB7Cgl1bnNpZ25lZCBpbnQgZHVtbXk7CgkKICAJYXNtIHZvbGF0aWxlKAoJ
CSJsZWFxIDFmKCUlcmlwKSwgJSVyY3giCgkJQ1IgImFkZHEgICAlJXJjeCwgJSVyYXgiCgkJQ1Ig
InhvciAgICAlJXJieCwgJSVyYngiCgkJQ1IgInhvciAgICAlJXJjeCwgJSVyY3giCgkJQ1IgInhv
ciAgICAlJXJkeCwgJSVyZHgiCgkJQ1IgInhvciAgICAlJXJzaSwgJSVyc2kiCgkJQ1IgInhvciAg
ICAlJXJkaSwgJSVyZGkiCgkJQ1IgInhvciAgICAlJXJicCwgJSVyYnAiCgkJQ1IgInhvciAgICAl
JXI4LCAlJXI4IgoJCUNSICJ4b3IgICAgJSVyOSwgJSVyOCIKCQlDUiAieG9yICAgICUlcjEwLCAl
JXIxMCIKCQlDUiAieG9yICAgICUlcjExLCAlJXIxMSIKCQlDUiAieG9yICAgICUlcjEyLCAlJXIx
MiIKCQlDUiAieG9yICAgICUlcjEzLCAlJXIxMyIKCQlDUiAieG9yICAgICUlcjE0LCAlJXIxNCIK
CQlDUiAieG9yICAgICUlcjE1LCAlJXIxNSIKCQlDUiAiY2FsbCAgIColJXJheCIKCQlDUiAiam1w
ICAgIDJmIgoJCUNSICIucDJhbGlnbiAzIgoJCSJcbjE6IgoJCUNSICIuaXJwICAgaSwwLDEsMiwz
LDQsNSw2LDcsOCw5LDEwLDExLDEyLDEzLDE0LDE1IgoJCUNSICIuaXJwICAgaiwwLDEsMiwzLDQs
NSw2LDcsOCw5LDEwLDExLDEyLDEzLDE0LDE1IgoJCUNSICJ4b3IgICAgJSVyYXgsICUlcmF4IgoJ
CUNSICIuYnl0ZSAgMHhDRCwoXFxpKjE2ICsgXFxqKSIKCQlDUiAicmV0IgoJCUNSICIucDJhbGln
biAzIgoJCUNSICIuZW5kciIKCQlDUiAiLmVuZHIiCgkJIlxuMjoiCgkJCgkJOgoJCTogImEiICh0
cmFwbm8gKiA4KQoJCTogInJieCIsICJyY3giLCAicmR4IiwgInJzaSIsICJyZGkiLAoJCSAgInI4
IiwgInI5IiwgInIxMCIsICJyMTEiLCAicjEyIiwgInIxMyIsICJyMTQiLCAicjE1IgoJKTsKfQoK
aW50IG1haW4oKSB7CglzdHJ1Y3Qgc2lnYWN0aW9uIHNhID0geyAwIH07CglzYS5zYV9zaWdhY3Rp
b24gPSAmaGFuZGxlcjsKCXNhLnNhX2ZsYWdzID0gU0FfU0lHSU5GTyB8IFNBX1JFU1RBUlQ7Cglz
aWdhY3Rpb24oU0lHQlVTLCAgJnNhLCAwKTsKCXNpZ2FjdGlvbihTSUdGUEUsICAmc2EsIDApOwog
IAlzaWdhY3Rpb24oU0lHSUxMLCAgJnNhLCAwKTsKCXNpZ2FjdGlvbihTSUdTRUdWLCAmc2EsIDAp
OwoJc2lnYWN0aW9uKFNJR1NZUywgICZzYSwgMCk7CglzaWdhY3Rpb24oU0lHVFJBUCwgJnNhLCAw
KTsKCQoJZm9yKGludCBpID0gMDsgaSA8IDI1NjsgaSsrKSB7CgkJdHJhcChpKTsKCQlwcmludGYo
ImludCAkMHglMDJ4OiBzaWc9JTJkIGNvZGU9JTA0eCBhZGRyPSUwMTZseCBwYz0lMDE2bHhcbiIs
CgkJCWksCgkJCXJlc3VsdHMuc2lnLAoJCQlzaWdpbmZvLnNpX2NvZGUsCgkJCSh1aW50cHRyX3Qp
IHNpZ2luZm8uc2lfYWRkciwKCQkJcmVzdWx0cy5wYwoJCSk7CiAgCX0KCQoJcmV0dXJuIDA7Cn0=
--00000000000068c984061f0b07dc--

