Return-Path: <linux-man+bounces-4192-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 372FCC09EDF
	for <lists+linux-man@lfdr.de>; Sat, 25 Oct 2025 20:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E645A3A81EE
	for <lists+linux-man@lfdr.de>; Sat, 25 Oct 2025 18:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC7F2BE7B1;
	Sat, 25 Oct 2025 18:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS1kdZ/+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B78F20ED
	for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 18:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761418628; cv=none; b=d+5wGl6pqFXTsxX+aHiQ5NxTKOHCByhk5QaJpCz3TyFKTrnlDZvjEOKFLSYor8tNa2hq6u4EqzVIGZ7AYd3EjLTrQ5gy2zQvdlzmJusT/y9DwCqVQlISWlHyiFFEfZdjCS48wA8iA43wUl8WF1qqaua+imsc9l+/qsbKRLLAaiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761418628; c=relaxed/simple;
	bh=cp1P1mqX5qYfqlLBCd+lzaurPMeHr3zHCbC28YcXgxo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=k4GAD8+hbYi+q+LPMkMT6t135X3749C3ABnkDTII/fT69QxlRMbiiOGbgXBgNc7rxRcYHeVZg92JTDZj57Cv5EL9NNezauHCQSKHrhhZGULiulPT6Bd32kVmolmDsFXh3Tn1nEhVD6tDe0EvPeLVWT8WCoFMpzfXdo/wMstn7KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS1kdZ/+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B81C4CEF5
	for <linux-man@vger.kernel.org>; Sat, 25 Oct 2025 18:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761418627;
	bh=cp1P1mqX5qYfqlLBCd+lzaurPMeHr3zHCbC28YcXgxo=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=YS1kdZ/+IMoMKhlGdSquWGZCTvLRV2LMxAi2x8SHKsWrW18qg+llB+NclKOk/IhgQ
	 Vo9U+UnYNHb4HWsEpY3vOAQb7bgw1OqSqJNjeBftQjyR346w6QmnUTsrWnkUgpHdei
	 WwyWsY65sS6+6eHSbZx3jvbVMVt6Dsr8Us95eGFgdi7XNeDgCcPEXexRNgs8sOcHin
	 hOX7ZvAv3DMwQ7iyFc5PGuPwqDdzdREI4TUl6U705N/rU+k0gq6tYC0BJT48/xkjOz
	 nWHMMfkOP9G+bo3nKUccLAu4Obtlw12fJjYmi6jlvbl3I3IBtrze5IuSEalFxMc2B3
	 a+e25pYy1OAwQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id CEB6FC41612; Sat, 25 Oct 2025 18:57:07 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220489] copy_file_range glibc user-space emulation in versions
 2.27-2.29 only
Date: Sat, 25 Oct 2025 18:57:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: wg21908@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220489-11311-g3FZO2AAoz@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220489-11311@https.bugzilla.kernel.org/>
References: <bug-220489-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220489

--- Comment #1 from Wes Gibbs (wg21908@gmail.com) ---
I emailed linux-man@vger.kernel.org with my plan/interest to work this tick=
et.=20
Archive of this email shown at
https://lore.kernel.org/linux-man/aP0T3yZ0jflUtliV@secra.localdomain/T/#u

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

