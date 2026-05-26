Return-Path: <linux-man+bounces-5604-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCeNFCCkFWprWwcAu9opvQ
	(envelope-from <linux-man+bounces-5604-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:46:08 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B005D6CA7
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:46:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0CC4E3024292
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D643C8C7C;
	Tue, 26 May 2026 13:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="iVj6noJP";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="D8h2rzxG"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-c5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C623FBB56
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802936; cv=none; b=sutRLzHACXr4zQpxEIXCoJ4Da+iJ+eEShRToB7V5BdPB492sLcXtHDP8kUaQY51hJnbscV1a6blbDhWw0GIuG7OmCDf0n1NzkR9PLsisrfhH8oFAKnMuZlqpTc/nNTlUbwqlnABwXgMcCH2Geqk0UNtO+ecGE5sinxf65XB+CQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802936; c=relaxed/simple;
	bh=PVAhjXEV9ZbftgY6nlWJ8PqyabreAQCA2eGM5xIKF7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lIwGnvoTDC8hvVThvsK/v3fegHS0BEvzOdBebIFBGG1UDWlFV0Gb8gePsvBRkSE8Oy3YP8Oh7yd9tsOP+P3s+Q5Upj3gbpdzL3ruME/qyDkWiLo9ckokOpgvE1uuF4d8g679syKGLoGu4OPslB5HoM/34TTTR2Bu1+EDI7eScwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=iVj6noJP; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=D8h2rzxG; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.stl.internal (Postfix) with ESMTP id C46377A019A;
	Tue, 26 May 2026 09:42:13 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Tue, 26 May 2026 09:42:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779802933; x=
	1779889333; bh=ZgAEnG3y0hjbQQMr6q8X146RoFRjtg7tgfZ6yPqWYn8=; b=i
	Vj6noJPoa6j+jlopJt/39Iqj+3OojOHAxHNiKUWgqlMHkWnNBRSvOYnB0VTRQQm4
	45wdxGVwvPP7X+LRj56WyM6HPaSIRAovP0GoHuKEqJRdA3rFoKp7D1zz8+MC3OrE
	Jzcm5Gzm37cAarMzaKYgwFQmgCBsZ/MILMO8Xds65rZwslR+EkaLCYi6IZn7bhXr
	n5t0ZEBBDVTwuo8SLJrqu+elKlW69LSbuJ8cIUa2IRJGdfQzttYGcsnooXot//s6
	EgWGIrHysgGIEbrl6fw2VjmCyjWdZOsSk2vrA6RAbuvKG9FUfeOxGD2TzdWI10JA
	EQ8BFBzX1UNHbcnJv7B/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779802933; x=1779889333; bh=Z
	gAEnG3y0hjbQQMr6q8X146RoFRjtg7tgfZ6yPqWYn8=; b=D8h2rzxGI58FoCBbW
	KFzMO4NJ0iSs8mz+W7JS0nFNbIPMYvKMHMinEbEgey0RlnAdXum7szbYcsIaU4e5
	4QTiksx+jn6qHn9HEZBnphKLU1VOPw4LXwp21hv329MVW2Du2QfsfvC/KRLt3S3h
	T5XKpd7JP6eKwECUHJQp/XNn+TxqHhjDs/XeXG+2gFPunrRcocwwS2oe6Gmy3H6I
	44dAB20Kb7BmK6lYu+vv076bEf2cOs/2Nr29CXE/9ayEbZiyLJIb5WvBIIL14s6J
	ITPV/zbtcin/pJYAiezB15aKVY+ppOUAMgfU54gV07+x6mHkT5MH8Z4EjMMqcBWR
	0AJlA==
X-ME-Sender: <xms:NaMVasUk7vg_XruyyLNSjFMISLFMK4i0jJmnhql9tQSgSUl1BkdPUw>
    <xme:NaMVasTesCEY6SxGi12g744x9a_UBpzkkQ2rzstazJ909PfTV9KX-iJlCecMVsHhw
    KL688SLHHSzJSGN6uUtzIuRgVQamBGaUijCnrlVPg0LmK9d7giMezM>
X-ME-Received: <xmr:NaMVas3yl8X9o_VYrFhuh6KzJC2lWnBg_G7TfotqHFB2_ISNioKkk3MqvJrgNg>
X-ME-Proxy-Cause: dmFkZTFxd05FKSwjYK98sxjZfnEaguNgmbkO96E9/sUnrZGjGgye4wZmt/Ic6rtJdcHZIW
    3//FyXDnAPZWcDl/2m+5C5IsDZPk+GLuu2B8rI+uRVdcLjBSQaOOZLOa+wj1oQtkVV8Bhp
    WtmpanqdGSitjyrzT2b6Pkutw5p5iBbq4Ria8BSGQgx/cneWSFK1H5BjkBZc7xkAcAMQ+/
    Rv2g5eDEYnTPqdUCqfDdBxWdlbC/8jofdT6MpQF8/jX84rElnpbBbagNC4dRH4Bg8YdXPs
    U1r7XWojbr+m14NCpvSu3BQS5JVzG4ZMz6Z/lJcP/h1EeFr3j6rrld2ilI9JN6jONfrTSJ
    SyQeV7w65aRKzq3fBnxIIPQkmspjn/CUmINIZvvLxx1FLZaIKNRcDgy63odh9OK1Xxe7Md
    pjXgyqydCLKkufw9AMh8rqyu/Be2VcY+TYkoIwtFyBm07W7EKWFCnOfMkVBnpVKs0wjXaJ
    Kd/zWYolkK16tDBkptTELVnv1xHze1Y/94cpGYMK3HF+rth0BfJcsjasCFC+xICEkEs/oG
    ZTYiKd3iF4IkCA//9HzibnY0i06kE5owLLtdccyfyTKQPta8hFFjWYe1ZPMRbZ9hzTzn3i
    XWkSAZSMIf7A33R3xlyxf8PkyfZjYMvFdXpnBrQbVbIcJqSrL9X0/qKHEDng
X-ME-Proxy: <xmx:NaMVakdn8JyfSMlJigsXAuu2Bl6TGWlP1CAqNnaQSJfrgaJ8fGzkLQ>
    <xmx:NaMVasM6nG-xPa93tmU0gH-aPox-q5bzf53AFw9BbBrORKnXCWoCiA>
    <xmx:NaMVagWg1Lv42KfYnX8hw86HUFisl9X21N7bkC_dV950qib0Lcjgog>
    <xmx:NaMVasywWp5JFkLlsYnf2kgtjdRvh3qU-xRNGVoLlhxV-24-uWy74g>
    <xmx:NaMVajP_FD1UCOuQ9_0pUxIKuLt2UGqVfdy7QDxRBhMeo5_469nUnhRi>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:13 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>,
	Kiryl Shutsemau <kas@kernel.org>
Subject: [PATCH v2 4/6] UFFDIO_API.2const: Document UFFD_FEATURE_RWP{,_ASYNC} and 1 << _UFFDIO_SET_MODE
Date: Tue, 26 May 2026 14:41:47 +0100
Message-ID: <20260526134149.2831720-5-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260526134149.2831720-1-kirill@shutemov.name>
References: <20260526134149.2831720-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5604-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim]
X-Rspamd-Queue-Id: 51B005D6CA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the two RWP feature bits introduced in Linux 7.2:

  UFFD_FEATURE_RWP        gates UFFDIO_REGISTER_MODE_RWP and the
                          UFFDIO_RWPROTECT(2const) ioctl.
  UFFD_FEATURE_RWP_ASYNC  in-kernel resolution of RWP faults without
                          delivering a notification; requires
                          UFFD_FEATURE_RWP to be set in the same
                          UFFDIO_API call.

Also document 1 << _UFFDIO_SET_MODE in argp->ioctls, the
file-descriptor-level bit that advertises UFFDIO_SET_MODE(2const) for
toggling UFFD_FEATURE_RWP_ASYNC at runtime; it is independent of any
registered range.

The existing page intro already describes UFFDIO_API returning EINVAL
on unsupported feature bits and the temporary-uffd probe pattern, so
the new TP entries do not re-state that.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 man/man2const/UFFDIO_API.2const | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2const
index e894114bb8e2..46ee7e31fed9 100644
--- a/man/man2const/UFFDIO_API.2const
+++ b/man/man2const/UFFDIO_API.2const
@@ -213,6 +213,30 @@ .SH DESCRIPTION
 the kernel supports resolving faults with the
 .B UFFDIO_MOVE
 ioctl.
+.TP
+.BR UFFD_FEATURE_RWP " (since Linux 7.2)"
+If this feature bit is set,
+the kernel supports read-write-protection tracking,
+and the
+.B UFFDIO_REGISTER_MODE_RWP
+registration mode and the
+.B UFFDIO_RWPROTECT
+ioctl become available.
+.TP
+.BR UFFD_FEATURE_RWP_ASYNC " (since Linux 7.2)"
+If this feature bit is set,
+the kernel will resolve read-write-protect faults in place
+without delivering a notification,
+automatically restoring page permissions
+and letting the faulted thread continue.
+This bit requires
+.B UFFD_FEATURE_RWP
+to be set in the same
+.B UFFDIO_API
+call.
+The async mode can also be toggled at runtime using the
+.BR UFFDIO_SET_MODE (2const)
+ioctl.
 .P
 The returned
 .I argp->ioctls
@@ -234,6 +258,13 @@ .SH DESCRIPTION
 The
 .B UFFDIO_UNREGISTER
 operation is supported.
+.TP
+.BR "1 << _UFFDIO_SET_MODE" " (since Linux 7.2)"
+The
+.B UFFDIO_SET_MODE
+operation is supported.
+This is a file-descriptor-level ioctl and is reported once per
+userfaultfd, independent of any registered range.
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.54.0


