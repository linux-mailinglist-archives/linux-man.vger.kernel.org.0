Return-Path: <linux-man+bounces-5662-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ESpZKMewO2qgbQgAu9opvQ
	(envelope-from <linux-man+bounces-5662-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 12:26:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A87B6BD579
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 12:26:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OickeiPR;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5662-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5662-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 17BE4303E06F
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2026 10:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A4027E07E;
	Wed, 24 Jun 2026 10:24:58 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB4227AC48
	for <linux-man@vger.kernel.org>; Wed, 24 Jun 2026 10:24:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782296697; cv=none; b=AnmgVbT5V4Y8f8Untk/zaXyecu+HMeP+zAo1m4eVkoIO1JvDGcT1IBZIyPNlBYKNBtXaMc82iGvH50FIPkUlaixT4DPf9FAismUisyx3rkI4mX5OsB9Eju12V3PD+tQzElnqdbGCTZ7BY2cj+a2z5gyYVfjUsDGYKLeaMBQm+qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782296697; c=relaxed/simple;
	bh=Ox7XN01lbwAnRb9joGZ2eSysaupL7NvDBHiGTkG0kc4=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=I1HQIK54NPVziLdzSD+hO/W5Kud/7RkesTqFwY5qygbCZKKPV8kaDQNA5Qe0biCM8OYooyFYP/c4eT15vcqPpqvCC/SStryl/DJ4riEKf+OiKRKZ91Oicv6Omxzjqlyr5cbqeSx+4O2bxRlXC28KdTjGj0JN5N500OTrCw7i3YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OickeiPR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67467C2BCC6
	for <linux-man@vger.kernel.org>; Wed, 24 Jun 2026 10:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782296697;
	bh=Ox7XN01lbwAnRb9joGZ2eSysaupL7NvDBHiGTkG0kc4=;
	h=From:To:Subject:Date:From;
	b=OickeiPR/6TqPdjfw/b6V8SiT5lR8ZjJbLNrbIwspex6bO8ACcg++b/L+ClxNBjOA
	 jGK+qRx98LIFL5L0oK32sTJc7N5D4eJ34M7afU9vJTIHyxbZv/sz20FZlvhXAC+xfS
	 N1RFVUs1trGyLNI0B7sT4sS+s7kF020SysEuifE8ub0SRzcTFVWm3THLwfr2D1i0GS
	 kecDCWcC3i4jwiWfCIVPxQmZTAFNzff9uB+mFbbGqjsB3mrT4gj5YxXjaEUt0rQzKO
	 GbvUl5OP8fzO+bUKfL/X6JCgagoGhseD1zTonlKvthYPrYxY7oNN5TSkuqvja8xm/8
	 kkaks0EeJrVXA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 4592BC53BC5; Wed, 24 Jun 2026 10:24:57 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 221686] New: README.d/ is not mentioned in README
Date: Wed, 24 Jun 2026 10:24:56 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: jason@jasonyundt.email
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-221686-11311@https.bugzilla.kernel.org/>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5662-lists,linux-man=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	FORGED_SENDER(0.00)[bugzilla-daemon@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A87B6BD579

https://bugzilla.kernel.org/show_bug.cgi?id=3D221686

            Bug ID: 221686
           Summary: README.d/ is not mentioned in README
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: enhancement
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: jason@jasonyundt.email
        Regression: No

The README file for the Linux man-pages project has a section named =E2=80=
=9CFiles=E2=80=9D
that lists a bunch of different files and directories and describes them. T=
he
=E2=80=9CFiles=E2=80=9D section mentions the CONTRIBUTING file, the CONTRIB=
UTING.d/ directory
and the README file, but it does not mention the README.d/ directory. It wo=
uld
be better if the README mentioned the README.d/ directory.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

