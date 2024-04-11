Return-Path: <linux-man+bounces-732-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0467A8A1FA5
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 21:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1E9828A044
	for <lists+linux-man@lfdr.de>; Thu, 11 Apr 2024 19:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC871757D;
	Thu, 11 Apr 2024 19:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luUaV8uJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BD715E88
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 19:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712864684; cv=none; b=YastV1aoe/w4GdIA5caxc12YgtNnlgjZ6gHYcl8RS4qRDAVQatlXb/JfaRw9axy6q5f6pnqHqP0DAeGfj+xJiqIB5Bnvql3VWx7iTspNdpFrZjKYA5tZZ7SZnUoSg/Bx6d1/3va+uKe7aqbb7Db09K7vuB5T+HbG2Dk/EkLLikU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712864684; c=relaxed/simple;
	bh=xk/nXpil6Sv8Niu+Fsm+Z+M1PPPnt9Ks/jDrA6p6Szo=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=p/sItGbVO7/08ZEkTPLW7HMe2uQQcMuRGbYF3EFnEJxjIaLK8btiFGaL5VA3jmzNMwSc/J25/zWkBmRFdTis3WGVWxnDJL5IAWmgkTN6nLZxjdXd5Y28EjylC7YK8bCK42zxTUsdeK2lbn2U10U4ukeVBMZho9k8fgrTVYwsfeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luUaV8uJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91ED0C2BD11
	for <linux-man@vger.kernel.org>; Thu, 11 Apr 2024 19:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712864683;
	bh=xk/nXpil6Sv8Niu+Fsm+Z+M1PPPnt9Ks/jDrA6p6Szo=;
	h=From:To:Subject:Date:From;
	b=luUaV8uJED90QPwHHSIzKe2hxczJ6heakbsGvyZo0vzJs3PrxhnjbvuxNPXpOC/ET
	 HpVuP7zlJyD7E5ks5fmiG5qIOOeyQYlAHsq45yvbczxDKPvw4AJ/1a2Vn5k9YJZ20L
	 d4PmbG5/lgtkVSANvegtA8a5MhqZ9WliJfhqxwBOvtI6aRQW/AyG0KF0EB1VUWPqzT
	 BkYrGeuooQVycwA4zscn24+ZRYF4PV/jprjbNvkKxhl82y7ZEjIzkIgy8S2YSci+nS
	 8ddJ04s5qUh+xu/QOs7xpt4k0gdCDaOVoaAnenb1/IzMpfv92SCa8IhqOYfYTpudSj
	 4QwydGo9saV7Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 81CE3C43230; Thu, 11 Apr 2024 19:44:43 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218711] New: strftime man page incorrectly claims that TZ is
 used
Date: Thu, 11 Apr 2024 19:44:43 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: gharris@sonic.net
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218711-11311@https.bugzilla.kernel.org/>
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

            Bug ID: 218711
           Summary: strftime man page incorrectly claims that TZ is used
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: gharris@sonic.net
        Regression: No

The strftime man page says, in the ENVIRONMENT section, that "The environme=
nt
variables TZ and LC_TIME are used."

strftime(), in Linux, does not use the TZ environment variable.  It is pass=
ed a
pointer to a struct tm, which contains a time stamp that can reflect either
local time or UTC, and formats a string based on the values in that structu=
re.=20
If the structure reflects local time, there is no need for any conversion of
POSIX time to local time, so TZ is not used.  If the structure reflects UTC,
the string will reflect UTC, meaning that, again, there is no need for any
conversion to local time, so TZ is not used.

TZ is *indirectly* used, because, to quote the Single UNIX Specification pa=
ge
for strftime(), "Local timezone information is used as though strftime() ca=
lled
tzset().", and, to quote the Single UNIX Specification page for tzset(), "T=
he
tzset() function shall use the value of the environment variable TZ to set =
time
conversion information used by ctime, localtime, mktime, and strftime."

The reason why strftime is mentioned is that the %Z format specifier is
"Replaced by the timezone name or abbreviation, or by no bytes if no timezo=
ne
information exists."  In systems in which struct tm includes the tm_zone
member, %Z can use the tm_zone member as the timezone abbreviation, but, in
systems where it does *not* include the tm_zone member, strftime() might, f=
or
example, have to fall back on using the tzname[] array and the tm_isdst mem=
ber
to select an element of that array.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

