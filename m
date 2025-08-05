Return-Path: <linux-man+bounces-3317-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A84B1B216
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 12:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5378C189E3AC
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 10:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1B31F4612;
	Tue,  5 Aug 2025 10:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9TgMZ49"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE182E36FE
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 10:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754390112; cv=none; b=aNyyFQziq5uFRVfLJcWz+gkW7xXo8Vm1jc+D94EDi5DS7VZbLY+Dl0DPSzVF71FNnMrPzE9m0Ac+7CQzntMaXT95DdXx4h2cSVu3GpKCnaRlrMSaFwWaqYuX9K3g56iJVl/1Rbl6l3tm/7oHutdDCJvg88jzOaXhLNcnztHRAnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754390112; c=relaxed/simple;
	bh=HcpunazfqTbOHyKq8SjeLdZnPSDF1JjxeCOGBri9eLU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PcJI8HWZbHqnNjfGmZY2ITxYFOj57e+zvo4i2tGF3xKqZuiDNkRJYY9C9PfXxTr1M4I+h+J04wmAKgtzW8YModj6Fw6YoNqcux2dM5PoTwaj+ejUu0FZmZqiyxRjVKcFVnx5biR7/oOTpSWsC08yE/+j1EAAjqQMBj6sbn2PMME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9TgMZ49; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4242C4CEFB
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 10:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754390112;
	bh=HcpunazfqTbOHyKq8SjeLdZnPSDF1JjxeCOGBri9eLU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=H9TgMZ49zXEdJ6J7ZQRUl7K+NM9rRHW+n3GSt+H6EE8XnJOqmbKvE7a9+2qJA0T6x
	 8sSMKh6xGLdHMQeum6lkw2EF6OT2KqwHetART4MajQ1PNHQ1GprL5Amg3aPPtET/IH
	 pqmAjt0T40AmHShfc99GA0hW5s1TgsrhFlfkgOLsfO8JU7OsNfkTfpGKwz6QusFzNL
	 YcAx131zUYC6OHle1wS6r9NwciMtbUgkOpxOu8m4cz/7+/khVJfjYE9pHafaZjTnvf
	 S4xWkisz9a6TbaZ5/UOdsmtRGHsUq5B6hcXyZ9xhwcoGvyj7weLqehcADHcvYGii/X
	 j3QMuMjrMrddg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 9DB4CC3279F; Tue,  5 Aug 2025 10:35:12 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220405] can mmap a page, but munmap fails with EINVAL
Date: Tue, 05 Aug 2025 10:35:12 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220405-11311-hvFB8mIZjb@https.bugzilla.kernel.org/>
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

--- Comment #5 from Artem S. Tashkinov (aros@gmx.com) ---
Let's change the component to man-pages and hope someone notices this bug
report and updates the documentation.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

