Return-Path: <linux-man+bounces-2583-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9897BA548DA
	for <lists+linux-man@lfdr.de>; Thu,  6 Mar 2025 12:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C249B1665F4
	for <lists+linux-man@lfdr.de>; Thu,  6 Mar 2025 11:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7C362063C7;
	Thu,  6 Mar 2025 11:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZdyUjxM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682441FDE37
	for <linux-man@vger.kernel.org>; Thu,  6 Mar 2025 11:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259672; cv=none; b=SqHa+LBAdhcBrhSZPbJLzDIzKrMbxp4ZBrvbSXoHm/Vvs9pOccNd0QBz9hIvKDFgRSRBRX68jMDmcPOPrv3XZmDfphv921UjQ+RJviNXeExuwocMxs0Bk+I6YkaxxK3MnojCr7oRy0lZ9Bg0es2YNd7PawgWZmvNNHhv4vTdVXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259672; c=relaxed/simple;
	bh=Nr16Q/rAWJLEqxWLHODzqf89+Tr3LzpJ+b8WAfwiw1w=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=JcxVU8QhkoOvio+wpatohz18oEX0Zyc6l0/ASJFCArDzNU+m4jnDJEJkCD8lcaG2Q9fzqpqEvqpYvWBe7tuoLlM2HnlEmdcFdq1dvcIaPXuEcN/F1mesemDi2Xamlx8AC4eGEMWN/BpxdualJ90DZTcWlpzSfwEdQSDadvDgzyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZdyUjxM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79F7C4CEE9
	for <linux-man@vger.kernel.org>; Thu,  6 Mar 2025 11:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741259671;
	bh=Nr16Q/rAWJLEqxWLHODzqf89+Tr3LzpJ+b8WAfwiw1w=;
	h=From:To:Subject:Date:From;
	b=bZdyUjxME3RsrWn4KfjdaeUuHll313BtzlJCFBlMqq35PDLo6dX031dCSPeHjnES1
	 oWYibKcp1ONSWyew0DWc+riVcTU7cBWKi2CX8HdiyHIwqcke7C2tsr62mbcfraSh05
	 hd11ZMPmqh3IInFFfjqX+vv7fDCcYq8PkYpYhTc8VxQ7B/D85Askgpe8tkWauFUgKm
	 akXvmsm1ln/x+EuEACSGvLbd+/U+cM28OZmfyQ1SYG+qpwZo2mKCr9NB38aP9JhuIE
	 bAC2reE4hg9o9K2Lr46qp3gBeozHLI0rvcLlPI81B0906AZe+j2AZUnpdnlzklPJpv
	 YZ01e7gmlMauA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id C8A27C433E1; Thu,  6 Mar 2025 11:14:31 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219847] New: mbsnrtowcs(3) man page behavior with glibc
 incorrect (and POSIX.1-2024 incompatible)
Date: Thu, 06 Mar 2025 11:14:31 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: explorer09@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219847-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219847

            Bug ID: 219847
           Summary: mbsnrtowcs(3) man page behavior with glibc incorrect
                    (and POSIX.1-2024 incompatible)
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: explorer09@gmail.com
        Regression: No

mbsnrtowcs(3) man page has a part saying:

"According to POSIX.1, if the input buffer ends with an incomplete
character, it is unspecified whether conversion stops at the end
of the previous character (if any), or at the end of the input
buffer. The glibc implementation adopts the former behavior."

(https://man7.org/linux/man-pages/man3/mbsnrtowcs.3.html)
(Source:
https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man/ma=
n3/mbsnrtowcs.3)

The problem:

It is POSIX.1-2008 and POSIX.1-2017 that leave it unspecified where the
conversion stops.

POSIX.1-2024 now requires the _latter_ behavior, and the reason they cited
about the change is, strangely, glibc. But this man page says that glibc us=
es
the former behavior.

(https://pubs.opengroup.org/onlinepubs/9799919799/functions/mbsrtowcs.html)
(https://www.austingroupbugs.net/view.php?id=3D616)

For my curiosity, I did test with the code included in the Austin Group Iss=
ue
report (also pasted below, with my personal modifications), in Devuan GNU/L=
inux
5 (glibc 2.36-9+deb12u9).

Glibc's behavior is close to the latter, but I would rather like to clarify=
 the
behavior as follows:

"If the input buffer (up to the `nmc` limit) ends with an incomplete charac=
ter,
conversion stops at the `nmc` byte index of the input buffer. However, if a
null byte ('\0') is encountered in the input buffer before the `nmc` limit,
then the incomplete sequence is treated as invalid instead, and `*src` would
point to the start of that invalid byte sequence."

(The behavior of treating the incomplete sequence before '\0' makes the
behavior of `mbsnrtowcs(dest, src, SIZE_MAX, size, ps)` identical to
`mbsrtowcs(dest, src, size, ps)` so mbsrtowcs(3) can be directly implemented
using mbsnrtowcs(3).)

My wording isn't great, so please revise the wording when you can.

```c
#include <wchar.h>
#include <locale.h>
#include <string.h>
#include <stdio.h>

wchar_t wcs[100];
char mbs[100];

int main()
{
        mbstate_t state; const char *s;
        setlocale(LC_CTYPE, "en_US.UTF-8");

        // U+754C U+7DDA
        memset(&state, 0, sizeof(state));
        memcpy(mbs, "\xe7\x95\x8c\xe7\xb7\x9a", 7);
        s =3D mbs;
        printf("%u ", (unsigned)mbsnrtowcs(wcs, &s, 5, 100, &state));
        printf("%u\n", (unsigned)(s - mbs));
        // Output: "1 5"
        // (If conversion stops at character boundary, the output would be =
"1
3".)

        memset(&state, 0, sizeof(state));
        memcpy(mbs, "\xe7\x95\x8c\xe7\xb7", 6);
        s =3D mbs;
        printf("%u ", (unsigned)mbsnrtowcs(wcs, &s, 6, 100, &state));
        printf("%u\n", (unsigned)(s - mbs));
        // Output: "4294967295 3"
}
```

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

