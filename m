Return-Path: <linux-man+bounces-3318-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EB775B1B23C
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 12:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D0A07A3B2A
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 10:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B42F27461;
	Tue,  5 Aug 2025 10:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJ10BMwF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA25241691
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 10:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754390867; cv=none; b=n11hcAzNIk7KhNH8dTgmXDnsozUPUp1Dh0rTQh5FUYkJrJqK//dMk9uRVDGw0d8J1pFAf86ncWL4RhARnK3BpQ9vjeYe/LWo/qY76paWmTCED+nPWOaDgbIiUsvSPob0RJb1pZCVXog5G6DIHV1rAYOB2f9dCovV/vgt9q8XFxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754390867; c=relaxed/simple;
	bh=8AUkea5YMh9WAs7SzbjaWRIYbL3ypcVOI3SJlWNq+IU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=O6jRVaXdnTlx/zFNR3rRC2typgBLA717UAY8k3wuZ4zf+35/AcTzLcYL1FlE9ogFDDGekVHmLwsmL3lkq28W2KUatvbx1KgxGg0hfCfYk9EbzhSXqOa42WxsZf22pf8Motxj5yaG5HdQ9RVDRuFItGeNDgvFrsrC/zJU3skWsA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJ10BMwF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5B2EBC4CEFA
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 10:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754390867;
	bh=8AUkea5YMh9WAs7SzbjaWRIYbL3ypcVOI3SJlWNq+IU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=UJ10BMwFJz43txM2/vkjJjKV+qwPz50+I1ly6nvolthgdGiwjUUmsiJyhtlMp0g1u
	 +4NeJ/bmGu8H98l7pmL1x8j5MUWfLlptLeqSiAhlu3fWEN/Sn/CEb7JGTprKIWZqpt
	 V7b00fxUAQgBcccI6WBk+GAButTAq2w881qqJrL7zgFFKkzJ+K/T2kNAnGGU0C2MvK
	 0vm7oc8aM8KhfoJ4S8F8juLjodYz0LHEFK2ixI5alD5oojVnbk4kWQCz+Oq7GH7ZLN
	 QaxF3+YwQi/oE3+EhF8WuPU7uPH2v//gd4keCnpb4OtIEZT2fDHaD/JY12KAWRv0bq
	 mpb+28IdO5HjA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 51DC2C53BC5; Tue,  5 Aug 2025 10:47:47 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220405] can mmap a page, but munmap fails with EINVAL
Date: Tue, 05 Aug 2025 10:47:47 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220405-11311-XdlTQLbliw@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220405-11311@https.bugzilla.kernel.org/>
References: <bug-220405-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220405

--- Comment #6 from Alejandro Colomar (alx@kernel.org) ---
Hi Artem,

On Tue, Aug 05, 2025 at 10:35:12AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220405
>=20
> --- Comment #5 from Artem S. Tashkinov (aros@gmx.com) ---
> Let's change the component to man-pages and hope someone notices this bug
> report and updates the documentation.

Do you have any suggested changes for the manual pages?


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

