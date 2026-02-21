Return-Path: <linux-man+bounces-5166-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLLBICLJmWm/WgMAu9opvQ
	(envelope-from <linux-man+bounces-5166-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:02:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D2516D1C4
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:02:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9476030131DA
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 15:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD56156677;
	Sat, 21 Feb 2026 15:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adgF9PpE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C435138DD3
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 15:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686175; cv=none; b=T1lZpg5TDEBJtWN+SkvvK5xfoVtX06c3p+iJOB9XlwcKtG20IG1NtonLN4ubKWtu6KOiUbGK8aXSw1wzsc0xVgzQQb90ft6Yay/DX4OgIqeq6bVtmfqMLNcyzRhLsDw9MBrx6wmaizmX3r2wjM+ARg9X0Y147W/exOOjtWJUDjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686175; c=relaxed/simple;
	bh=bOtai3ysIK4iRPiXq7KNATYg3rWcFCEp/S+6TXk+b8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K6YWauv578Ck0+IMs7dXsq3jUZjPOJnmZzufOFRVdbyPY3FYivDq+jPHD/DQV+zWKeOkqlGQm3aZiFVkXAOO822YSKx5hY8Tom10TZ72+TP2iqmUJyOOV4FNqDjhSJw9NcYVvl6mjLIze4f5r3TrsHRkXbLXjMnaaoUpqpUfORw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adgF9PpE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CE4BC4CEF7;
	Sat, 21 Feb 2026 15:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686175;
	bh=bOtai3ysIK4iRPiXq7KNATYg3rWcFCEp/S+6TXk+b8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=adgF9PpEXVLlz50NehuLKlEUrm8T7YM4TJIdW7/CnTw5qf6mNOGSOJZ+ANsfoCRAP
	 xu+1uFcwxoimURLC3CF3Z5ddl3zWJ3zltUm6oVCqH6cnaVE+nmoZ90nLSgmJJGSRTZ
	 KW/IaQxfu87pk7pvBHyVNmswKEzNWRBgn43tOj7st50bhaQuRTnlAtvcaHPSs6th6x
	 v/MKK05TvNocxz2NG6x03XzdDRLiDp5xI8HQ9KNffyylTTa+atexxRZKMKZ7KXw7Y0
	 kWAo8A/3nisBxlyrF0ZD3Gwr7csQiCaDvy5y2KXVF1AX2WN74W2++nQwkvWeGkER4V
	 BZi6P4YCPl21A==
Date: Sat, 21 Feb 2026 16:02:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, bug-gnulib@gnu.org
Subject: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1771686088.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1771686088.git.alx@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5166-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6D2516D1C4
X-Rspamd-Action: no action

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/strnul.3 | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 man/man3/strnul.3

diff --git a/man/man3/strnul.3 b/man/man3/strnul.3
new file mode 100644
index 000000000000..05995f0407af
--- /dev/null
+++ b/man/man3/strnul.3
@@ -0,0 +1,44 @@
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
+.BI char\~*streq(const\~char\~* s );
+.fi
+.SH DESCRIPTION
+.BR strnul ()
+returns a pointer to the terminating null byte in the string
+.IR s .
+.SH RETURN VALUE
+.IR s+strlen(s) .
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


