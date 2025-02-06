Return-Path: <linux-man+bounces-2352-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ECBA2B49C
	for <lists+linux-man@lfdr.de>; Thu,  6 Feb 2025 23:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECC547A2DE0
	for <lists+linux-man@lfdr.de>; Thu,  6 Feb 2025 22:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F1019E7D1;
	Thu,  6 Feb 2025 22:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qyk/Q3xS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A17E23C385
	for <linux-man@vger.kernel.org>; Thu,  6 Feb 2025 22:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738879354; cv=none; b=Pe2HCDYtcF2pGP4fq2GuHEggKupMNaUU39acf/qxWGPXKwnvOMSMHx837qmWcVIoCuBytnkbA0Zei973mdBXaKzFb0x/C2XSxcj2qhKQGFWVzlhqKz2tnKfDbYuzjtNxZ/AJT92kXqs6q/QBfIqR16kzLm0RDNb5AJB8PJe1fzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738879354; c=relaxed/simple;
	bh=UhPCdjxPUN68pAsH5uTbXbPBxWnwwg9Nj9+Si3AlxdY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XevflJkpYD7pn+fhj0czhvGwz5+E9OojgCK5ljy0purcJvFGE/VxejY0XISPj9v7+zD1ghsH51Wotx0QJxFIdy49UaljbloPYLFovtZkBOkvVFco0u3yQnpspcV74V5FfPfqVPe8QzEo6AX57dOd4gjTVkKAxbsSoDMhlf2S/O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qyk/Q3xS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65F23C4CEE0
	for <linux-man@vger.kernel.org>; Thu,  6 Feb 2025 22:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738879354;
	bh=UhPCdjxPUN68pAsH5uTbXbPBxWnwwg9Nj9+Si3AlxdY=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Qyk/Q3xSY9fq2YCQX7hCOjLkiYYGI/bqNLNXXBZzC08eHQj/B8a5GInExzgYsR4FM
	 SfQWO9uu/jz5N7dSRMFTViRpovAHHweW/oyWC9uCLSjpT6NxPg+HEF7Sn3QLvD7xz1
	 1rHqqym3DdsmfLn3APKQBuNQP8NHgFd8KUtFzKGW9LZpIy/iCt5NfYMwqHebXqRE88
	 2+WUErXH58zKZrj5JMIWMfY+luSXDGsixE3u7MHZ/9imui03KKBx7QOSOestzN1lwG
	 vS9vOLHbTcxqOLUvxtUGKod9glrzX8NV07xHXHRYTkTpOGH75TeC/midDDSFnrx9Yz
	 rKj4iCoXWGTeQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5AC28C3279F; Thu,  6 Feb 2025 22:02:34 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Thu, 06 Feb 2025 22:02:34 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-217709-11311-eHoVlot1v0@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217709-11311@https.bugzilla.kernel.org/>
References: <bug-217709-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217709

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx@kernel.org

--- Comment #5 from Alejandro Colomar (alx@kernel.org) ---
Hi G=C3=B6ran,

(In reply to G=C3=B6ran Uddeborg from comment #4)
> Did something go wrong with the patch?

It didn't meet the minimums to be merged, and Rajesh didn't follow up.

If you're interested in it, you can pick up from where he left:
<https://lore.kernel.org/linux-man/CAKkEDkWJa+BbexSD1OGa=3DRhKuaETmYZUJaLJK=
ZPvsVW9=3DVr=3DJQ@mail.gmail.com/>

Cheers,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

