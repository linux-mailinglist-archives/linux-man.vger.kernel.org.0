Return-Path: <linux-man+bounces-2181-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CACBE9FF134
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 19:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 076823A327C
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2024 18:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030981A4F1F;
	Tue, 31 Dec 2024 18:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flJgKXpR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B765A13FD72
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 18:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735669218; cv=none; b=jqPbU07jVoKyLykkFAeGemodcgKrXzJNvU8DLdRM5D7p0lMHLz4iUtCePWD/7eof7X0VQTKOHM9yoPuCkolgzA59J3cfQbVc9+R/RsRn3mCWd+K1K73rJiL3GYKMfQYJcqJS/odiMRje7o3k2q+q4gt2gqqd8cAOYBguJMwa91M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735669218; c=relaxed/simple;
	bh=U9ttJyxCwa/BdHBl0dmST1IPAjWGIuFoa2YXUg1iG+w=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BCiqdWPI2D8wD4vQ3b1fB6f7px75Ev/nQzv8QPhwsTaDCk4Y8kOUO4Bb2n3U8w9FFlHtXB62RYOlVfwh9i2dn3lz8mI5PpAnAFzjq2JKbwyYRXdvynCRBUUngbnU1kwXvfZ1zXmsDbnmuCPx7D7pGSKCGRl3k6YtTYXQQd/tk78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flJgKXpR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87098C4CEDF
	for <linux-man@vger.kernel.org>; Tue, 31 Dec 2024 18:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735669218;
	bh=U9ttJyxCwa/BdHBl0dmST1IPAjWGIuFoa2YXUg1iG+w=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=flJgKXpR2trrwfPaysOHxJOdyX5qiwasNAK7yF6mI85IOrBMMQ1NEIWuEIiwlqBoC
	 keLUmg6q7BJJs40nZ8ubjOOxP2bU/FvncUh2ZMxsInSSCuk2mLfm61OuS6q/CWyMaD
	 EpSpJb9e+7GDfyGrsiZK3gEPZapNUaQebcDufncDrowsvcfUtDb+yccFgVJCe+UCfl
	 iY01AercusoG4lY1IfOJOtNystRsaAcirhxpnKpKGwUrVXvYtl8DRjHxKq6zZQacOp
	 ZS0HoQL6hKWZgI1S3nxAT5ieegeLspPUgCESvohydwk0q+DmV+S0x/d+USY0tRaQph
	 dqHjzBOFjs39w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 77865C41616; Tue, 31 Dec 2024 18:20:18 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219646] Most Make targets missing when path to man-pages has
 spaces
Date: Tue, 31 Dec 2024 18:20:18 +0000
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
Message-ID: <bug-219646-11311-6eJQGHzDN3@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219646-11311@https.bugzilla.kernel.org/>
References: <bug-219646-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219646

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi Jason,

On Tue, Dec 31, 2024 at 05:34:14PM +0000, bugzilla-daemon@kernel.org wrote:
> The path to my clone of the Linux man-pages repo contains a space.
> This causes Make to fail to find most targets.

POSIX says:

<https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.html#t=
ag_03_265>

        3.265 Portable Filename Character Set

        The set of characters from which portable filenames are
        constructed.

        A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
        a b c d e f g h i j k l m n o p q r s t u v w x y z
        0 1 2 3 4 5 6 7 8 9 . _ -

        The last three characters are the <period>, <underscore>, and
        <hyphen-minus> characters, respectively.  See also 3.254
        Pathname.

Your path is thus non-portable, and this is just one of its
consequences.  Software tends to not support such paths, especially
paths containing whitespace, control characters, quotes, dollars, and
other special characters.

> Actual Results
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> This list is printed:
>=20
> > all
> > help
> > nothing
>=20
> Expected Results
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> A list with over 100 Make targets is printed.

115 at the moment.  :)

        $ make nothing -p \
                | grep '^\.PHONY:' \
                | tr ' ' '\n' \
                | grep -v '^\.PHONY:' \
                | sort \
                | wc -l;
        115

> Additional Information
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I encountered this bug while using the tip of the man-pages=E2=80=99s mas=
ter branch
> (b199d102db5be24e0ac88eb6879e3e3b6e0ea722 at the moment).

I would close this as WONTFIX.  Sorry.  If the fix was easy, I might fix
it, but I suspect there are so many break points that it's impossible to
fix.  Just don't do that.  :)


Have a lovely new year!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

