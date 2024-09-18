Return-Path: <linux-man+bounces-1776-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAA397B8EB
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2024 10:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 820652851A6
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2024 08:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E5A14A086;
	Wed, 18 Sep 2024 08:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q75w2F72"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90AB8175B
	for <linux-man@vger.kernel.org>; Wed, 18 Sep 2024 08:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726646439; cv=none; b=oaF2UFdbfkZxdy7taByTx3QjXbhJGGszLgo6BmTi0UVoMkwj7LTLtyLNL2L12tkK0OSMT5wwUuFnusPNuS4Ko1E8es36lLJdBbOWnCQdErmYGZrWy9dxOvufSy7NRx9ZYyGv48aZvWeJr5mKRUMK3Qaum7ciDZn7XJIVNnRR1Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726646439; c=relaxed/simple;
	bh=AgucDyvnmafjwODdzvI1YfSvhgHp8re3za7x7Cc/NkM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gEB3b9w8OLe5Wyla4eYZyBn5Da0F5pvzeRvXv47B8kcjP3TWcK9KHLCy8Oj2JnP1O25UYdnecURYK2F872YZe7C3PgxyeE8/xLK5Rr5yBCPViVlxeUZNW2RMdcQTb0d/b8hNRoPnr6IyZ8wCBSCNmVpMGfP537qCRwEtDsQmKlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q75w2F72; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4D9C4CECD
	for <linux-man@vger.kernel.org>; Wed, 18 Sep 2024 08:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726646438;
	bh=AgucDyvnmafjwODdzvI1YfSvhgHp8re3za7x7Cc/NkM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Q75w2F72MHH5IzCRE1q+t7jMOWWioPg77fYwT9UQbqwpefwddZlOYarRrU1PF6jY8
	 ARJqWgk05lAvFQfzFxTGC+x1XKQ3Z/VOcqWSfsAty0ceLp/4GqUppWh7rquVWEEALC
	 emxVV/qxHTwVjLAO7Zrdm9Ft9iUoUJD1mM/PMRW/6UnlVUWdZtnZ0+CoEPh3oDw1in
	 7meVgGPuT9FRveO7vEQqOXaviNO7UvmVmBK5agXmUH+VV4gMieg8BvUNsuES1xKznI
	 kq1nIbaGUFyOzrbHO8C2gsX71akVGzjD238uxSHBwVrALvu9viu0rX7/UPlrg4jL9p
	 0kNndmo9ZnWug==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 74D05C53BC1; Wed, 18 Sep 2024 08:00:38 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219288] Missing mount point for UML /etc/fstab
Date: Wed, 18 Sep 2024 08:00:38 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: marian@famion.eu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_file_loc
Message-ID: <bug-219288-11311-ar5Dexytuo@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219288-11311@https.bugzilla.kernel.org/>
References: <bug-219288-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219288

M. John (marian@famion.eu) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                URL|                            |https://docs.kernel.org/vir
                   |                            |t/uml/user_mode_linux_howto
                   |                            |_v2.html#edit-key-system-fi
                   |                            |les

--- Comment #1 from M. John (marian@famion.eu) ---
In my case, not having / declared as mount point results in a read-only
filesystem.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

