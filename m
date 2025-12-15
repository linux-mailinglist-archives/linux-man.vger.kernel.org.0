Return-Path: <linux-man+bounces-4410-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AB8CBC91F
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 06:41:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AEEA3009AB4
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 05:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BAAE325739;
	Mon, 15 Dec 2025 05:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCB6XFeW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8691233136
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 05:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765777312; cv=none; b=E+YjsNla4HdahZvHhN6So1DCkKomp3aDgkUDZxy70dQLEfPEbjITKVLUGz+kSl5HEf98F86tweQNAaCJeM3yVLefobmvbQA+fZuLa2lStOK1DqZaAhJmG47uHPskXvY67wRKwJsgg7Y9Kw/jZ5TlSDlOtnhdO2nbV5EJmb3SnMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765777312; c=relaxed/simple;
	bh=/KP/unQsDVf/4oKFOAKvP6R/rFYTLwyfvnNn+zNKdEQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Z2IvFzoodR8zL2pcqjnxvYaoCVQ9wXNUP7gCDl7nyiI/7IWtl2DiNw6q+F5EZMEea5BnRePHxmv3bWKlbXT/Rn6I1dT5gFQIoaiJHoQZkZQwSjk25dTiV4o3rv0trGyr0nZol4NivBc6P7jClJUTaAlXm/lea1+Y/4ZVJ3n2knE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCB6XFeW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7441DC19423
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 05:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765777311;
	bh=/KP/unQsDVf/4oKFOAKvP6R/rFYTLwyfvnNn+zNKdEQ=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=CCB6XFeWBE3wwt3vWzdYWUwtCYWu22i42RAu3PDwN0o8zlsWWzB70eVLjXjWIjkQE
	 xc0Xs7NghbazknDf+Dn0z+AzVUEsErNcqw0g6ezNhKHYabGk9UvmvHEXxlG2Wfr+ut
	 UvdRmAKYy/UmfBoU5GEU0RD8G7MuxV5b9ZnQA0TActryCoGk7XnCKqzoFWyAgJNfBq
	 kLoLA+hwrscef9ceh4GtgyulLW1Bz0XzBKvKUOe7Z8Dk138asYsAC0+vfh1VfTNqvr
	 CWDvKM29SA+bEkWL04OCek1TbWmvzdcGYo7e9vyBZ4ww8PwGu4iDe1cBVAVdRLrpNy
	 BoR76H2KDGLsw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 66FFAC53BC9; Mon, 15 Dec 2025 05:41:51 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 15 Dec 2025 05:41:51 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: teika@gmx.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220726-11311-epnxiInr8d@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220726-11311@https.bugzilla.kernel.org/>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220726

--- Comment #8 from teika kazura (teika@gmx.com) ---
Hi. Hiding my last post here is wrong, because mine was done outside the
man-pages project. Manual pages are GPL'd and anyone can do anything as lon=
g as
they obey the license. You don't have the right to do it. Everyone mistakes=
 and
that's ok, but lift it.

Also remember kernel bugzilla is not only for man-pages, and at least the
kernel itself does not have any policy about the AI use. I know my post does
not directly help any projects hosted here right now, but I'm not spamming
either.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

