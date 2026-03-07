Return-Path: <linux-man+bounces-5247-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JVS2Fq2RrGlsqwEAu9opvQ
	(envelope-from <linux-man+bounces-5247-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 21:59:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ABD22D9AD
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 21:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F7DA301A391
	for <lists+linux-man@lfdr.de>; Sat,  7 Mar 2026 20:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B925F346AE6;
	Sat,  7 Mar 2026 20:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aayNxCtf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A36B15B971
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 20:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772917161; cv=none; b=TWeocqGW4QAgSGwrkzl8M4+e6HNYleo4SXMcSDVuFrXI4fzf6RNNNC7N8xe7w538rsVQRZHmz/TcMTmY8b7BTnydQjkkY62BGR89VaTHTJPwUkcDCl1/G4dd/ti66kLL/iL9L0WsnG6pLMvai76xsM22/nFReLYeafSuGCGJoEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772917161; c=relaxed/simple;
	bh=AgtvnmCOZyzxIjolRPWKQse8/KO1VJxSf9odHjDc160=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kkDpnhmeQV7myENQH5CqXhK3JABfqw0l7ZaaMHcrqjTBN8QG8xieOh+gFfobqGEPt72xAssnoIKjTjcPwCb3JqwJ37njLFQtooYS0JIXe/kzQl3rzpIfpM0ZWKek3vOayGtTNOqVjpBu38AgjFtKHVZbCDNEfsxXyvX69o/6NcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aayNxCtf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 155A5C2BC9E
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 20:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772917161;
	bh=AgtvnmCOZyzxIjolRPWKQse8/KO1VJxSf9odHjDc160=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=aayNxCtfoSDnF9NM5Eyq1gKny+w2rVrpNcXDnAw1BrtAsyoMa9rOEgSt6d9R2B29Q
	 6TfTuYwx3Vxr2qZRZJtilkA+EvOSAa6r8776njZ0ls0MgakCAT/vj1YsjPO57IEbg+
	 J0q/biBKKDCxg4mZigftSSarNtCR0NaBA0F468LEY7Dsn+7Dkl1F5qw/247mrp4pgB
	 E68rlATR9mVhjAazW6yppkDZclECvRunORajvhUvvFIeevyzNxC9Fw+6Rx8phzDM7Z
	 bAWWzQhzp+pgHRdjmC0l5CwgzaH/379h/Gd9aKWmDoJ8W8u46PIN7jMsZcOxF/IC7d
	 +oRk3zJvpggyA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 0CD09C41614; Sat,  7 Mar 2026 20:59:21 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221186] clock_gettime CLOCK_TAI is incorrectly specified
Date: Sat, 07 Mar 2026 20:59:20 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: eggert@cs.ucla.edu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-221186-11311-t6N5w3k5MH@https.bugzilla.kernel.org/>
In-Reply-To: <bug-221186-11311@https.bugzilla.kernel.org/>
References: <bug-221186-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: A5ABD22D9AD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5247-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.990];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

https://bugzilla.kernel.org/show_bug.cgi?id=3D221186

--- Comment #2 from Paul Eggert (eggert@cs.ucla.edu) ---
On 2026-03-07 06:56, Alejandro Colomar wrote:
> BTW, Paul, would you mind reviewing this bug report and suggestion?

Although it's a start, we should add more detail about TAI and leap=20
seconds, and the neighboring area could use some cleanup too. Proposed=20
patch attached.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

