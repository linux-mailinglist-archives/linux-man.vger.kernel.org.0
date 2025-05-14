Return-Path: <linux-man+bounces-2914-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C95AB6120
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 05:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C75554A2CB6
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 03:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915D934CF9;
	Wed, 14 May 2025 03:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOUZ+fz6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7C32744D
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 03:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747192580; cv=none; b=ZNafnVVRB5HP6O89iah4Sjc/+wLeC0IkXghoP/KhmqW+lMp5sACnZECAV9fi4Wy8odQZdgn7n8J0ygZOFBgoQQHTihB4yf/+qQnK7CCAoc5jPOr6JJdP6LRtOBRrb6GB94xj0ZsAXlpNZjXunqaQGTtzCuRQ97GmuCP1Fv2Bqlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747192580; c=relaxed/simple;
	bh=YAUSLHH+WEPqWXb+9SfI/Sw01JumP5vBmQ4k1TZMVrU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VnQTPhaoytRF+/ZDOxjbvGuX11al4knZQpO9oexWdgC8DO4jzIzUPXEtKDlithTSggbHMTqa4xI8vPYddn8Hnf1bFmCs9my3MiOFefO1sK9cboYOYYyw3+5XThqqv0/oa/eEtXglBJoKADncdlaxUPfQ54gc2Y5POI0cUffnTIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOUZ+fz6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE868C4CEEF
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 03:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747192579;
	bh=YAUSLHH+WEPqWXb+9SfI/Sw01JumP5vBmQ4k1TZMVrU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=nOUZ+fz6IqaEEjJYH8nl2ooTZi5KzIIkfjaKuN/zJhqix4HzsdR6Ottt5NyJ5xAAX
	 JY6s1vonHOFgGDdxn44ftM5vG0RObNFlMXWX7m2W/SIUQL/lj6huLsClHyEVu/lXvL
	 jCYI73dZFf9e0EBh3TLxULN2JkqciI8H0nhgMBhVsKnfGb6xOj2BbrvwRW+rOsAxTA
	 N1NY8rD+1XEdbbxdpcdLB0nTsFTCaxrWIZHRrJOpn3dnnwHXj0RlOn6P80WTaXpOgL
	 k3A0OiLd9d711xUvxHDa+sJTqIFnrSBGvD0MQjJOMZdxg6UmqlNX29gi7IP87Sy0WN
	 XftXvSLfqdj3g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B5BF0C41612; Wed, 14 May 2025 03:16:19 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjAxMThdIEzhuq1wIHThu6lj?=
Date: Wed, 14 May 2025 03:16:19 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: tracpham2210@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_severity
Message-ID: <bug-220118-11311-kRULFYoLxo@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220118-11311@https.bugzilla.kernel.org/>
References: <bug-220118-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220118

trandieu (tracpham2210@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
           Severity|normal                      |low

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

