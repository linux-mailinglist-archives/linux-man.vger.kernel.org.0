Return-Path: <linux-man+bounces-5250-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNk4HXeqrGldsgEAu9opvQ
	(envelope-from <linux-man+bounces-5250-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 23:45:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 631E822DDC1
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 23:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E96B3008451
	for <lists+linux-man@lfdr.de>; Sat,  7 Mar 2026 22:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B278A309F02;
	Sat,  7 Mar 2026 22:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpubon7+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731E13101A9
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 22:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772923504; cv=none; b=LAjiqwxktZZVtGuNa3YQIpxStFQduSYV5g9fNCjWThOT5FPEHeXsI0zVBg26vL+4LCPGsZdldq2Eu9dDHbsNCMVQV3TnLBUmgdehdNaew2cY9k4uDft6HWv0r86IffzP/+nrOV3I9xXuf9cn/tcgyxB/b/kqF4g6Oq6Fu+aBq48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772923504; c=relaxed/simple;
	bh=UF7LMmpgRNpm8IHcp935nDORdPR0l5aAWHOLP3Eb8jc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=l9ufO0NiUfsuBfZVuZn5re+ZjJ25zP1xwTmIsF/Y9EXVbDgYQ0upKZlLAgUe9334ZK+k0upDKKN4QG4k5cth1KgKRK1Gn+45o00/6+HdzExM43EvtLbMFMDJfUPWa4c9rd7x2Te4R6Spa/6Z48362vdxs+vVnmLJh4JC+AlJO1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpubon7+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31CBDC2BCAF
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 22:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772923504;
	bh=UF7LMmpgRNpm8IHcp935nDORdPR0l5aAWHOLP3Eb8jc=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Tpubon7+oIliec5SNempW1c/POcAwtgiAXrSa/w4xTKtJbxpq9mfNVVyT9KFY3+T4
	 4NioifUHuqxhc0ECaElK3i0Gdd/cMj6LgkQ0fd40wbBV1bV5yvwqHjRBhhzCK2TbzC
	 Azu9cyEhC0rKb5084vz0bakqA8+I6J4n5Di3G+W2a5vCqYpM2UO33tL0Vw45Q6m/FQ
	 lYXWUfzlS+VOdWyBaYqDohhwVOGTdIK0Eos10bWK3+awKaoPv2TI+5qVMXUjt0Awcw
	 spdFwXQKHIytCnZVlCQ2I8TXWC9rNHiyxAAGd/OXzytdJ8nfUXRYe+bztcTCN0WRLk
	 Y2i4D3cs6pj6w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2464EC3279F; Sat,  7 Mar 2026 22:45:04 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221186] clock_gettime CLOCK_TAI is incorrectly specified
Date: Sat, 07 Mar 2026 22:45:03 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-221186-11311-YDagVl11Bn@https.bugzilla.kernel.org/>
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
X-Rspamd-Queue-Id: 631E822DDC1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5250-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.988];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

https://bugzilla.kernel.org/show_bug.cgi?id=3D221186

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
Hi Paul,

On 2026-03-07T12:59:10-0800, Paul Eggert wrote:
> On 2026-03-07 06:56, Alejandro Colomar wrote:
> > BTW, Paul, would you mind reviewing this bug report and suggestion?
>=20
> Although it's a start, we should add more detail about TAI and leap secon=
ds,
> and the neighboring area could use some cleanup too. Proposed patch
> attached.

Thanks a lot!  I've split the patch into several atomic patches,=20
minimally amended, and pushed.

51a4b682 (2026-03-07; "man/man2/clock_getres.2: CLOCK_TAI: Modernize
leap-seconds documentation")
ffcf7de8 (2026-03-07; "man/man2/clock_getres.2: Clarify what "TAI" stands
for.")
0676ddff (2026-03-07; "man/man2/clock_getres.2: wfix")
78a707b1 (2026-03-07; "man/man2/clock_getres.2: Some clocks behave differen=
tly
if the system is suspended")
47e30f8e (2026-03-07; "man/man2/clock_getres.2: Clarify when clocks are
indirectly settable")


Have a lovely night!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

