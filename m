Return-Path: <linux-man+bounces-5175-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDpaFmkbmmnZYgMAu9opvQ
	(envelope-from <linux-man+bounces-5175-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:54:01 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A757416DD92
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62BE230293EB
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E043033E9;
	Sat, 21 Feb 2026 20:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6zPAaRF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA871F5821
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 20:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771707238; cv=none; b=MRUA1kvNGtGl1AoGWmLipWNgJzJeeqNg+aInCChQ+Fi7+1Su14Wv2ljebN7FNVz8sFUPALGu6DbrhrAgmQDX7ppnzzYqmkLu7baRTYMlMUo3ZiQ1hazh8NrM470edpVnZcdDy1uoNaDqmg4LosndAGH3jIHipkca6P/CRv5iBMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771707238; c=relaxed/simple;
	bh=oMaFYCvGnllXfStIsPfbjUAWfIfeIPpTQabijTHAhNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k92qWPFPEAgf+WeYkHHDHDpIwB5JhWbUBu2PPmibMg9y5CCYOZTRy35BtHA2kGEJHtpfm5tw5bBVj/dFXaswvBHKIkc8+d4q4r2DkJ0t0r8yyXd8O7i+mYk4x7UQNcHY1kdMItWHtkUB/hQzayWk49WA9SEg0sD9JuMvz0ibsno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6zPAaRF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6F3EC4CEF7;
	Sat, 21 Feb 2026 20:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771707238;
	bh=oMaFYCvGnllXfStIsPfbjUAWfIfeIPpTQabijTHAhNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p6zPAaRFPDo3Ybmqz4jflD9pQlz0gjVX++sua5IdXfTs5JQvoOb1euWJ6FPrBNjlj
	 qRd1/yJDKkFvJQPWFxh+vm9VFAa7TnWDJrDtNVchYnP7HXnwk/vQEWPqBx71qJs3HA
	 lW+H6MHftuoOgTqu4CG6dWJYuUhqtlLdLl5RzcYNuxtx8k6RO25xC5RudUumAFHqy1
	 1Bm/o6unMifX0xK9LXgMGSpW9IRmoF2N6kfxaEYs5+nCb98nRL5sd6D5LB+zdOswr9
	 qcqQtO2C5izJ3NMy7FYKEQ6hX1+nE4WyU+u6xK1uxriCPVE2px/aqhoUzKlsYtPUzi
	 MoUFuReCIKH4w==
Date: Sat, 21 Feb 2026 21:53:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, bug-gnulib@gnu.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Simon Josefsson <simon@josefsson.org>, 
	Joseph Myers <josmyers@redhat.com>
Subject: [PATCH v2 1/1] man/man3/strnul.3: New page
Message-ID: <2b86d10abfc3c218ec73487756082f9b0e1b71db.1771707141.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1771707141.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1771707141.git.alx@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5175-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gnu.org,gmail.com,josefsson.org,redhat.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A757416DD92
X-Rspamd-Action: no action

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strnul.3 | 48 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 man/man3/strnul.3

diff --git a/man/man3/strnul.3 b/man/man3/strnul.3
new file mode 100644
index 000000000000..0554edb401e9
--- /dev/null
+++ b/man/man3/strnul.3
@@ -0,0 +1,48 @@
+'\" t
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH strnul 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+strnul \- string null-terminator
+.SH LIBRARY
+gnulib \- The GNU Portability Library
+.SH SYNOPSIS
+.nf
+.B #include <string.h>
+.P
+.BI char\~*strnul(const\~char\~* s );
+.fi
+.SH DESCRIPTION
+.BR strnul ()
+calculates the position of the terminating null byte (\[aq]\[rs]0\[aq])
+in the string pointed to by
+.IR s .
+.SH RETURN VALUE
+.BR strnul ()
+returns a pointer to the terminating null byte
+in the string pointed to by
+.IR s .
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
+.BR strnul ()
+T}	Thread safety	MT-Safe
+.TE
+.SH STANDARDS
+GNU.
+.SH HISTORY
+gnulib 202607.
+.SH SEE ALSO
+.BR strlen (3),
+.BR strchr (3),
+.BR string (3)
-- 
2.51.0


