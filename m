Return-Path: <linux-man+bounces-787-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D98ABACD
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 11:35:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADC8D1F2139D
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 09:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F2C17BD8;
	Sat, 20 Apr 2024 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYut7ieF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7632C17BCC
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713605733; cv=none; b=L/1L+wCkEgNtcI2EIUseFO/Rj6uR6baBoaDCgkaCVRYGy4MwqPcAVnBMavJYU5T+02/8flj1467AlYfZAtUgkezVmn3hRTWZgVnbFh8F3VMeSMq7TolZeQIS3rGiQZ+3ESbnE1bTbbha+Phg/BR8uodzWQe4HGwkHj7PDh3Sr7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713605733; c=relaxed/simple;
	bh=MREP+werEniU+DJLyvuJ3QCub/Z9q9gPpm/HhmcekKA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=X/zIqMvplY4gLEoPeUFllo1ePxgUQelLYgHT9CVowWDw1jj/iqgaTWK3jsjxzRUeCk/69NGHO7MKAI2dYkrqmhNhmaoIdThOlYVFepwIPm+OCxC3b2S7gdWZbnrTV/MdVSKYDk/7DLRxKgtR0e6QXBcwS/Vtwdm8APkI0Qq0Kec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYut7ieF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48C82C32783
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713605733;
	bh=MREP+werEniU+DJLyvuJ3QCub/Z9q9gPpm/HhmcekKA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=hYut7ieF/ZEdu4svrLLI/uAWONo9JyGg3WBeF8ume1MLNE8DcB64xSskaKBJs0yWN
	 xnd7+lGzRINFqnVgosUrQ5266/yALLoupj92PSoaNrHUmbDTqaCuW/jq8yEEX3QgNC
	 7hfOUmh+N78odJv83ktXHq/xz0ab9m9YAcT0JvKl7KUnylKiGyuumwwWBuGaonT1Aq
	 9k9GYCdc7uQNwSiAyg4bOqWF9a3gb+g1xvVTwOWY9/R9hcW8Dadw5yOhUi/wutmBRi
	 IOJjS5Xim/042z3dPCFj1z2icmz0XQXnsON6O79IOObtW4/MaYYpU0JeFLbCfqs/Q8
	 PVu926CdTEkPg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 3B5B8C04222; Sat, 20 Apr 2024 09:35:33 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218730] [regression, bisected] 'make install' fails on darwin
Date: Sat, 20 Apr 2024 09:35:33 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: slyich@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218730-11311-UMWrkBNuEk@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218730-11311@https.bugzilla.kernel.org/>
References: <bug-218730-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218730

--- Comment #2 from Sergei Trofimovich (slyich@gmail.com) ---
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D95=
24f0f63badd896ccf6da7d79511100d86c4721
fixes it for me.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

