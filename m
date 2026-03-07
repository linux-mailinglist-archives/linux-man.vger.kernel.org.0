Return-Path: <linux-man+bounces-5246-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oD26Oqg8rGkJngEAu9opvQ
	(envelope-from <linux-man+bounces-5246-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 15:56:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E06822C3E6
	for <lists+linux-man@lfdr.de>; Sat, 07 Mar 2026 15:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4ABE63010147
	for <lists+linux-man@lfdr.de>; Sat,  7 Mar 2026 14:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE31C9460;
	Sat,  7 Mar 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWdXNYhp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0AAE19AD8B
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772895393; cv=none; b=GSod5v8f2McEYQ/neIVZvHsP5vJhfL9E6Q3gdK3/0hBGcaQCdKLct2m/ajZL5BIom1hM2j+h1NDrQbheak7Mnydq/8+diTk932VBYC9045T8SHP5mpVOW8cq/iTmo/+jsZal/eLz43ufJ98rk4ugPb9W6IYQStZRwJZKHdioc3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772895393; c=relaxed/simple;
	bh=MPK5eF2FzS1+haWDfWGg5WOu53Jh0yyEEFP/NmE2kyM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kIGguHHDqsy3GdwZjhkS27Rc9t6+9e4SwQX39hg1V1GnhI56VyThsuysX4hz3l6o7u6fgXHvTozsBp5eZwO4kUSuLlbFAx/4GgUzdkXtiBGpuFZ/zEZ1VcO0Z3BWE8FODoVUKv4em50gTUF5o0hpbwNF1NoBG4LShlKdpWYUI8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWdXNYhp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37C12C2BCAF
	for <linux-man@vger.kernel.org>; Sat,  7 Mar 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772895393;
	bh=MPK5eF2FzS1+haWDfWGg5WOu53Jh0yyEEFP/NmE2kyM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=VWdXNYhpsGAI9uttLKPgQ8ADjYzu25rfrgSacRnDXyF7ByVDRMfynLkkACABeZ6vy
	 r/6CIDTdHgpVpIPSzIKqKzmpVlUZUpH6EHDs8gvnkRE4KmWJYtY3UKLaFzGiUCA5Wh
	 H4ciBOH80TYSS32pC1rAawA4yC6p0FnCFvWON5eaJrjynpp+EZ1YigwamMD5fj0+xD
	 25jQxxn4yRu+RqQrsCNr3rKYwBu1ed/J5Urk2mgt3J0XCgoz5NZMUWeuFYc9Mdmceh
	 mt5rZfjPeyUqaAADhQAiotbwXI3/HEhmqJK134gW11Bcv7+b9eSmSxPs/EZAY5jv/W
	 AmQ70hz8xyZow==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2B3F9C53BC9; Sat,  7 Mar 2026 14:56:33 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221186] clock_gettime CLOCK_TAI is incorrectly specified
Date: Sat, 07 Mar 2026 14:56:32 +0000
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
Message-ID: <bug-221186-11311-suuU8DZ6Ke@https.bugzilla.kernel.org/>
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
X-Rspamd-Queue-Id: 3E06822C3E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5246-lists,linux-man=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.992];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

https://bugzilla.kernel.org/show_bug.cgi?id=3D221186

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi,

On 2026-03-07T14:21:17+0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D221186
>=20
>             Bug ID: 221186
>            Summary: clock_gettime CLOCK_TAI is incorrectly specified
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: mpatocka@redhat.com
>         Regression: No
>=20
> The man page for clock_gettime says "CLOCK_TAI (since Linux 3.10;
> Linux-specific)
> A nonsettable system-wide clock derived from wall-clock time but ignoring
> leap
> seconds."
>=20
> When UTC was announced, it was already 10 seconds behind TAI. Since that,=
 27
> leap seconds have been added. According to the man page, the difference
> between
> wall clock an CLOCK_TAI should be 27 seconds, but in it is 37 seconds in
> fact.
> The kernel is correct (it returns 37 as the difference between TAI and UT=
C),
> but the man page should be fixed to reflect that.
>=20
> I suggest to change the man page to:
>=20
> CLOCK_TAI (since Linux 3.10; Linux-specific)
> A nonsettable system-wide clock showing physical time elapsed since Jan 1
> 1970
> 0:00:00.00 TAI (Dec 31 1969 23:59:50.00 UTC). This clock does not experie=
nce
> discontinuities and backwards jumps caused by NTP inserting leap seconds =
as
> CLOCK_REALTIME does. This clock changes when system time is adjusted by t=
he
> user or NTP for the purpose of correcting wrong time setting. TAI means t=
emps
> atomique international (International Atomic Time).

Would you mind sending a patch?

BTW, Paul, would you mind reviewing this bug report and suggestion?


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

