Return-Path: <linux-man+bounces-5218-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOu7Iz/jnWnpSQQAu9opvQ
	(envelope-from <linux-man+bounces-5218-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 18:43:27 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D755A18AAA5
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 18:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDDCA301467D
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 17:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A25343A7F6E;
	Tue, 24 Feb 2026 17:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B443tCHg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647843806A6
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 17:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771954947; cv=none; b=JvjJ0YAjrhmtPpwuCkGGYXjUbvIpQsqFie3865O4jlLn0RrW0Tp5LEvtgmsyc+IacCe/0FUDunzJz3tZhbHBlb4aKAHboWrP78ns+o0KGUXjrWrKGJXJX3BoOuCfj25fC2LR+W/he7TTArwuM70kDqjFG3vGJjkJzFSkEkFYKc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771954947; c=relaxed/simple;
	bh=dBsh6xgDb9ZPW+X6SdtuDBQ09fSTQ9ZflnOz9RKl5EM=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=R6+Rn62uAkcLGHx3PA6yZNFWlDItVdGOqx944XrdI8Ekn2i0+QHTcFGYHiSm9Ogc/Gi8cZrVCr4ezIO6XF+x54KThs1qpm7R9laueeQlfCabIUNG26rrw9CgHQM7N4Z489OBK4c0Rs30kGiQ5F+yU4QATwgZFFfZrq4m7UaRtUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B443tCHg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E922C19425
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 17:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771954947;
	bh=dBsh6xgDb9ZPW+X6SdtuDBQ09fSTQ9ZflnOz9RKl5EM=;
	h=From:To:Subject:Date:From;
	b=B443tCHgdKPTUZAiq09ynSzWWllZtVxn8ebgWOA4ddhm0vxW9cP/twcpbxdEeGSgj
	 xGbGNy73UGRMk8qfs+a8IKXUOJ7U+uzX9xQ8CVD0xn4/IDpy1serK4wI8RsH57Pw7K
	 rosCTbMmutRtV1FqFBomRXkpfv/7OoGlluTwmsmIJ+8a9QrguKNrjTrTCRSLatscyo
	 SPfu0F7MUeQQOi1L/VfriGfue6jEMDmLmWrQSkr4FV0QpwVKNu8cAcsO/eHgswYfOm
	 aYXZ9p34AhNEHAgZ64chzbPfY5iDh5//yWaQkYeoJVOWdvNZD+dqRtsIIT2QLYZ7Q5
	 ofvdpJvYxy1GQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 30898CAB781; Tue, 24 Feb 2026 17:42:27 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221134] New: Missing info in prctl's man page about
 PR_SET_DUMPABLE being reset
Date: Tue, 24 Feb 2026 17:42:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: h.sousou97@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-221134-11311@https.bugzilla.kernel.org/>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5218-lists,linux-man=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,osdl.org:email,man7.org:url]
X-Rspamd-Queue-Id: D755A18AAA5
X-Rspamd-Action: no action

https://bugzilla.kernel.org/show_bug.cgi?id=3D221134

            Bug ID: 221134
           Summary: Missing info in prctl's man page about PR_SET_DUMPABLE
                    being reset
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: h.sousou97@gmail.com
        Regression: No

According to [proc pid man page
](https://man7.org/linux/man-pages/man5/proc_pid.5.html)


> The attribute was reset to the value in the file /proc/sys/fs/suid_dumpab=
le
> (described  below),  for the reasons described in
> [prctl](https://man7.org/linux/man-pages/man2/prctl.2.html)(2).


Its not clear where in prctl's man page those reasons are described.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

