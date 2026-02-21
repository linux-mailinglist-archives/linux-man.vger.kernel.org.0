Return-Path: <linux-man+bounces-5174-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rry6GWYbmmnZYgMAu9opvQ
	(envelope-from <linux-man+bounces-5174-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:53:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B230B16DD8B
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F1AB300A4EF
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BF41260565;
	Sat, 21 Feb 2026 20:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEsqtH/4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8951F5821
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 20:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771707235; cv=none; b=eslmGgUE+/jK5SQnW/whjaGc7Qf3oGXxx/HWPLjUMwSt0TjChYA450FcrJrsyuukZpWFwSPB6ysm0nypKIpMJXPiUzUDHuJY/v87iavKKC9IsqZBP5n9bASNKSm2pG40gzFvr3mQMlN7Rfugvu9M91cKMcma7lK16fCKnZlGfaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771707235; c=relaxed/simple;
	bh=zLfrWaFcYl3lS2V3IiYCxTXFb2Sgn4hKDKJ4eghkLgU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gDwgrf5MGazM6YxgPx7/y5TYaJXyyT9m3wo6WTbdS4SLCjg3bhtbBl7aXcS0RHXr5NCCD5WrqpIf3ZfWk/AQqWqFeO222CUlL8I/wciU0BE/s9rhGbj7ES9JqK4GOksG0q7HLzC56dq+SZcl4x6oHx+9qEvvxnraRYTivBZu1yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEsqtH/4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56DBDC4CEF7;
	Sat, 21 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771707234;
	bh=zLfrWaFcYl3lS2V3IiYCxTXFb2Sgn4hKDKJ4eghkLgU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rEsqtH/47pnbnL0Y+u/MN2vgrR0AoZ9CdObY+DiwpI/hHkTA3n0SXl0KjLNAOZIkG
	 HzrSuZyUHU39occOsaaa9ih0IuX/7ZrWd0decQW5A+m31rocMsIh/c85UqbRdZunoQ
	 xoy29pssu8m5nWOlJATwFI0bTOqc3+Z1PCSdGXjlZDEY08Zf/rM2VJR7kNDw7h7LSC
	 YPxY/kF0XR19eIxETpbf6mNUIiw8iH2IErlA3/36GYM64fDCZ1m8f1feChPlLseFsO
	 8Juymgas9wFkWCwIdC9wHTFkKDvw9BzI/zfTK5PMWhk49Bda0pMo0EHI6DMHSiTBUl
	 EYK3rYP+Ytb7g==
Date: Sat, 21 Feb 2026 21:53:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, bug-gnulib@gnu.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Simon Josefsson <simon@josefsson.org>, 
	Joseph Myers <josmyers@redhat.com>
Subject: [PATCH v2 0/1] Document strnul(3)
Message-ID: <cover.1771707141.git.alx@kernel.org>
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
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5174-lists,linux-man=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B230B16DD8B
X-Rspamd-Action: no action

Hi,

gnulib has added strnul(3).  I hope libc implementations eventually pick
up this API.  Let's document it in a manual page.

This v2 changes a typo, and the wording of DESCRIPTION and RETURN VALUE.


Have a lovely night!
Alex

Alejandro Colomar (1):
  man/man3/strnul.3: New page

 man/man3/strnul.3 | 48 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 man/man3/strnul.3

Range-diff against v1:
1:  7b2c4b363f65 ! 1:  2b86d10abfc3 man/man3/strnul.3: New page
    @@ man/man3/strnul.3 (new)
     +.nf
     +.B #include <string.h>
     +.P
    -+.BI char\~*streq(const\~char\~* s );
    ++.BI char\~*strnul(const\~char\~* s );
     +.fi
     +.SH DESCRIPTION
     +.BR strnul ()
    -+returns a pointer to the terminating null byte in the string
    ++calculates the position of the terminating null byte (\[aq]\[rs]0\[aq])
    ++in the string pointed to by
     +.IR s .
     +.SH RETURN VALUE
    -+.IR s+strlen(s) .
    ++.BR strnul ()
    ++returns a pointer to the terminating null byte
    ++in the string pointed to by
    ++.IR s .
     +.SH ATTRIBUTES
     +For an explanation of the terms used in this section, see
     +.BR attributes (7).
-- 
2.51.0


