Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9DFF43B184
	for <lists+linux-man@lfdr.de>; Tue, 26 Oct 2021 13:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235544AbhJZLxd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Oct 2021 07:53:33 -0400
Received: from mail.kernel.org ([198.145.29.99]:58236 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235553AbhJZLxc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 26 Oct 2021 07:53:32 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 7CA4960D07
        for <linux-man@vger.kernel.org>; Tue, 26 Oct 2021 11:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635249067;
        bh=MOCnSG1fEVtWeIucWOEJUXspPCeBEZ8sXkDHX0vKon8=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=sMubohDLZl/M0TCj7TG69kgMim90phECD+Mvg/sV3OTkm0vjPy9XC4Cx0RcML4hVL
         YyuzBuz63Zs8BpQVZFsTOcak427G6Dww4qukKXjDXDbt7xWEPPibpOkQ8fxwa2O3B3
         8Bvuf3ycCznUfRNsdyrxMDcsoHPiMpxbKvxzTR/pkVknWksm94oBb97hJlZMFFm3n0
         qtUhTd5PoAQbrKsDv5ICuAYKtupN3JeUYbUl203jMvUhQaNfxbcVaHD3KNW95j4Ufb
         3k/RkflojbcIv7zu5fMdQIA3XYbF82785Uv8gpLPYwSwwgD8SSSIcc2Zjjpij61pMy
         WQZdkoKmOlV8g==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 7069260F02; Tue, 26 Oct 2021 11:51:07 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214815] pow(3): underflow result can be -0.0
Date:   Tue, 26 Oct 2021 11:51:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214815-11311-7UA46lU5n9@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214815-11311@https.bugzilla.kernel.org/>
References: <bug-214815-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214815

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
[[CC +=3D glibc]]

Hello,

On 10/26/21 12:33 AM, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D214815
>=20
>              Bug ID: 214815
>             Summary: pow(3): underflow result can be -0.0
>             Product: Documentation
>             Version: unspecified
>            Hardware: All
>                  OS: Linux
>              Status: NEW
>            Severity: low
>            Priority: P1
>           Component: man-pages
>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>            Reporter: mwelinder@gmail.com
>          Regression: No
>=20
> The pow(3) man pages as found here:
> https://man7.org/linux/man-pages/man3/pow.3.html says...
>=20
> "If result underflows, and is not representable, a range error occurs, and
> 0.0
> is returned."
>=20
> That fails to take signs into account.  pow(-1e-100,5) produces -0.0, not=
 0.0
>=20
> Suggested wording: "... and 0.0 with the appropriate sign is returned."
>=20

I checked the C standard, and it doesn't mention what to do in this case=20
(or I couldn't find it).  I also checked POSIX; it says that pow() shall=20
return 0.0 in this case (doesn't specify the sign; should we assume=20
+0.0, or is it a lazy/buggy wording for +/-0.0?).  Finally, the glibc=20
manual doesn't mention this special case.

So, is this a bug in glibc?
Or is it a bug in POSIX?
Or is it an undocumented glibc extension?

I checked FreeBSD's manual, and it doesn't mention this special case either.

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
