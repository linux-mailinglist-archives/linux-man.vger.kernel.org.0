Return-Path: <linux-man+bounces-413-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DB4847BC6
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 22:48:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1FB51C23304
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 21:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B50839FB;
	Fri,  2 Feb 2024 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwe2pgP4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EA7839F7
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 21:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706910512; cv=none; b=ln1nFRyUzlpgQKm5yS0IYmFKEmEqSjiMCQveKXX2sk5NpBtbs39Glal8EKqHUnx2IUkGLJ20NK0YuHni6xL49OjIidKF75fCAOjK3rMG6sEpgRbPzhZtaqt06MbYHdnwtaYaxYXwXnjLdb8hNDqBa9dsudmfZwhHOXY4UK9pxNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706910512; c=relaxed/simple;
	bh=GmbLEW2U+v3Tatz+HVrklU3b65eZxAztx9xhCsyGy9I=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ikZcHguw450837cpd8NsE/MoyxQzZ5OCHxr0kLsAPEu9/lXRas/SgzI0WKEwsv+rj82IkSvUL0Nt0HMRIZDZDWpNKPMlLh3ryt6FY2JSiog+aicn9LGhtWWb8CftdRYUJ5kTa2LRHJiW1TprEG+oQK4Pat1ICcmJ4PN/HEwqnAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwe2pgP4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 497EAC433A6
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 21:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706910512;
	bh=GmbLEW2U+v3Tatz+HVrklU3b65eZxAztx9xhCsyGy9I=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=dwe2pgP4H12BPqfw25+pBuBlSnwZzdS8BZi7u5Mc5yfq59sFKtoCfaNW5qpuj65PJ
	 XygT4jvaun59DUuQf/ZwygJsvwTVRhZ5tWSGb0n/BHZl3aQKYoAYXTMpCygvBtdcUN
	 RcRCdnPxvWletQLvmf1mgOoqDKQ9pKiMMbWZ+J/oFCVHIAMAuwxULZfEdelFeIoLxx
	 7nnVoL7aK6Gp+tU7wWerj0o1uVhmnGk7iXX9El4P6whYczlMPXHi1gFUrRF82DMkZf
	 ApiZcjN6+udAm2TUx/4E1SjXntSeCjduJrC4baXe0sv1KwTGX+eWCnStc5Kbn2i9Er
	 UQYkt+vktAyKw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 32C37C53BD4; Fri,  2 Feb 2024 21:48:32 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218453] Update posixoptions to POSIX.1-2018
Date: Fri, 02 Feb 2024 21:48:31 +0000
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
Message-ID: <bug-218453-11311-Zsb9IL8eHP@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218453-11311@https.bugzilla.kernel.org/>
References: <bug-218453-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218453

--- Comment #5 from Alejandro Colomar (alx@kernel.org) ---
Hi Enrique,

On Fri, Feb 02, 2024 at 08:55:07PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D218453
>=20
> --- Comment #4 from Enrique Garcia (cquike@arcor.de) ---
> I have created a patch that potentially implements the changes above.

Would you mind sending the patch(es) to the mailing list?

Thanks,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

