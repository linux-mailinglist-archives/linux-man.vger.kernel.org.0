Return-Path: <linux-man+bounces-734-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB878A2128
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 23:55:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2928B1C2156D
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 21:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EEE13A8D8;
	Thu, 11 Apr 2024 21:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf/Kntcq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F175BF9DF
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 21:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712872519; cv=none; b=b6CNZyvz0M3xAAdnlqv4Nk0rp/niAW4DO9mGkGwl1r4vvwpEJxuSSeJ0UqtbDrAfnVkvwHbsDwDXQf7n9T9Epu4cfaksXptnqx3WPqnYF1mOmSYeudtOyJcqfhzUcwol4rCZvoF9Hr6qvLPbFxmKgAc1VqXzeEjoNWNs287AFcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712872519; c=relaxed/simple;
	bh=2gpO62vvy2TD8NRpSRAFTnEZIR9+3kMjcW9DEbwzzfc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Chzium9i7DhpB6GyGRSfr/8Etl+ca9k7CKEVeiTAD4S+a3EM3wutaFiLL/PmOe7w/s5E1YnEglE436YT/eFD64bINanQ6wsXMmCUyAuUALafw4w/PmA+T0X1U94Aaj/iaV7hOUWON6yrelwya72qEVXCxEl9PCEUyou86R6DEIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf/Kntcq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F00C2BD11
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 21:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712872518;
	bh=2gpO62vvy2TD8NRpSRAFTnEZIR9+3kMjcW9DEbwzzfc=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=gf/Kntcqs2Z5G0Gnsk20U1is3c0lM9G2b4y/HztMtJ+kOjDE5N6W68Dc4vswwmhy0
	 FgrqQRAajysQAl463O8lMZBxxqnUaJtySO0Ip9AQb19eVUi1FcyeCYbZ/RgQMZpttb
	 h7yiEQPbN+TGzNPfMgIZ/SSqT9UJIG+ePIz7YFezZpHzNP5TXetCvSXzp2o6XMgguz
	 nHpJGepUaX742lX6X5WWK0gJKznPFpbzYJ+i+6T1yQDfcViSmZ894rB5TmPPSmmiwQ
	 eutdfN+GBLQgD7eOoMQsb6Pl5GHOR4L/UbP2bSZGWQVrFu60TVxgYJ5ZaQchz9F/um
	 92yBBAFJZWPGQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 7BDBAC53B50; Thu, 11 Apr 2024 21:55:18 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218711] strftime man page incorrectly claims that TZ is used
Date: Thu, 11 Apr 2024 21:55:18 +0000
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
Message-ID: <bug-218711-11311-fHhksAZ4VK@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218711-11311@https.bugzilla.kernel.org/>
References: <bug-218711-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218711

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
On Thu, Apr 11, 2024 at 07:44:43PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D218711
>=20
>             Bug ID: 218711
>            Summary: strftime man page incorrectly claims that TZ is used
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: gharris@sonic.net
>         Regression: No
>=20
> The strftime man page says, in the ENVIRONMENT section, that "The environ=
ment
> variables TZ and LC_TIME are used."
>=20
> strftime(), in Linux, does not use the TZ environment variable.  It is pa=
ssed
> a
> pointer to a struct tm, which contains a time stamp that can reflect eith=
er
> local time or UTC, and formats a string based on the values in that
> structure.=20
> If the structure reflects local time, there is no need for any conversion=
 of
> POSIX time to local time, so TZ is not used.  If the structure reflects U=
TC,
> the string will reflect UTC, meaning that, again, there is no need for any
> conversion to local time, so TZ is not used.
>=20
> TZ is *indirectly* used, because, to quote the Single UNIX Specification =
page
> for strftime(), "Local timezone information is used as though strftime()
> called
> tzset().", and, to quote the Single UNIX Specification page for tzset(), =
"The
> tzset() function shall use the value of the environment variable TZ to set
> time
> conversion information used by ctime, localtime, mktime, and strftime."
>=20
> The reason why strftime is mentioned is that the %Z format specifier is
> "Replaced by the timezone name or abbreviation, or by no bytes if no time=
zone
> information exists."  In systems in which struct tm includes the tm_zone
> member, %Z can use the tm_zone member as the timezone abbreviation, but, =
in
> systems where it does *not* include the tm_zone member, strftime() might,=
 for
> example, have to fall back on using the tzname[] array and the tm_isdst
> member
> to select an element of that array.

Hi Guy,

Would you mind sending a patch to the mailing list, according to the
guidelines?

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/mail>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches>

It would be wise to CC Paul Eggert <eggert@cs.ucla.edu>.

Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

