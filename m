Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8E5043D297
	for <lists+linux-man@lfdr.de>; Wed, 27 Oct 2021 22:12:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238792AbhJ0UPH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Oct 2021 16:15:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:56424 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S243907AbhJ0UOy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 27 Oct 2021 16:14:54 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 158346103C
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 20:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635365549;
        bh=es4E5xrenAZudkLn52wJUcYG69FN5Shb71v7UumxRPA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=kR0Tb4tuPK6b9UXdzyUbOrRA5rthESBJyB90mGrSkpS/xYk9vU51SsF6OYh2/nYTe
         6yXUHLNkQa1betlbXROPZ1ha8ZNsYeAW5AWwqwAeYIO5FEOhzzvDJzFetRGPr3nRxr
         RnYm2QClG7gdzr9ecLOkEWEkxapklT5q2ShNCPCPyTx1XCYDAjsejpWDG4aGOsevMw
         zph54N64HX80JgzUaa+NlXZJsIWkxUu+gMk/zRRac6iZxZTFYgS58WEVrYlLJconPH
         vDUMLqMu2AX3Fxwyai2DUdaH61yIfdEfPGbTMRtKm3QU2WEyLakrjkpmvY8hQ8fZc+
         CNCMAO4oTX1Wg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 0DA8560FC0; Wed, 27 Oct 2021 20:12:29 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214815] pow(3): underflow result can be -0.0
Date:   Wed, 27 Oct 2021 20:12:28 +0000
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
Message-ID: <bug-214815-11311-QOfPvubmnL@https.bugzilla.kernel.org/>
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

--- Comment #4 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Joseph, M.,

On 10/26/21 10:53 PM, Joseph Myers wrote:
> On Tue, 26 Oct 2021, Alejandro Colomar (man-pages) via Libc-alpha wrote:
>=20
>> Finally, the glibc manual doesn't mention this special case.
>=20
> See math.texi, "Errors in Math Functions".
>=20
>    @item
>    Each function with a floating-point result behaves as if it computes
>    an infinite-precision result that is within a few ulp (in both real
>    and complex parts, for functions with complex results) of the
>    mathematically correct value of the function (interpreted together
>    with ISO C or POSIX semantics for the function in question) at the
>    exact value passed as the input.  Exceptions are raised appropriately
>    for this value and in accordance with IEEE 754 / ISO C / POSIX
>    semantics, and it is then rounded according to the current rounding
>    direction to the result that is returned to the user.  @code{errno}
>    may also be set (@pxref{Math Error Reporting}).  (The ``inexact''
>    exception may be raised, or not raised, even if this is inconsistent
>    with the infinite-precision value.)
>=20
>    [...]
>=20
>    @item
>    If the mathematical result has magnitude well below half the least
>    subnormal magnitude, the returned value is either zero or the least
>    subnormal (in each case, with the correct sign), according to the
>    current rounding direction and with the underflow exception raised.
>=20

Thanks!

I applied the following 2 patches.

Cheers,

Alex



$ git show -2
commit 2774ebb7e528c3e8b858def471f057044cf33507 (HEAD -> main, alx/main,=20
alx/HEAD)
Author: Alejandro Colomar <alx.manpages@gmail.com>
Date:   Wed Oct 27 22:01:41 2021 +0200

     pow.3: RETURN VALUE: Clarify that -0.0 is a valid underflow result

     The standards are a bit unclear (or I couldn't find it), but
     Joseph confirmed that glibc documents this behavior, and
     M. Welinder tested that Solaris also behaves in the same way.

     Reported-by: M. Welinder <mwelinder@gmail.com>
     Bug: 214815 <https://bugzilla.kernel.org/show_bug.cgi?id=3D214815>
     Cc: Joseph Myers <joseph@codesourcery.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/pow.3 b/man3/pow.3
index ccf6375c0..69ddadc3a 100644
--- a/man3/pow.3
+++ b/man3/pow.3
@@ -82,7 +82,7 @@ respectively, with the mathematically correct sign.
  .PP
  If result underflows, and is not representable,
  a range error occurs,
-and 0.0 is returned.
+and 0.0 with the appropriate sign is returned.
  .\" POSIX.1 does not specify the sign of the zero,
  .\" but http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D2678
  .\" points out that the zero has the wrong sign in some cases.

commit 28df51fc73b5c6986dd8c182d40fa05bba791783
Author: Alejandro Colomar <alx.manpages@gmail.com>
Date:   Tue Oct 26 13:36:16 2021 +0200

     pow.3: RETURN VALUE: Reorder special cases as in the standard

     Use the following order:

     - Success
     - Over/Underflow
     - Special cases specified by the standard (in the same order)
     - Other special cases not specified by the standard.

     This way it's easier to compare this document against the standard
     to check for any mistakes or differences.

     I also added a comment at the beginning of each case, to more
     clealry delimit special cases, with a syntax that is easy to read
     (a mix of C, mathematical language, ...).  We may want to use
     those as tagged paragraphs.

     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
     Cc: M. Welinder <mwelinder@gmail.com>

diff --git a/man3/pow.3 b/man3/pow.3
index 5eb8547db..ccf6375c0 100644
--- a/man3/pow.3
+++ b/man3/pow.3
@@ -70,14 +70,6 @@ On success, these functions return the value of
  to the power of
  .IR y .
  .PP
-If
-.I x
-is a finite value less than 0, and
-.I y
-is a finite noninteger, a domain error occurs,
-.\" The domain error is generated at least as far back as glibc 2.4
-and a NaN is returned.
-.PP
  If the result overflows,
  a range error occurs,
  .\" The range error is generated at least as far back as glibc 2.4
@@ -95,24 +87,38 @@ and 0.0 is returned.
  .\" but http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D2678
  .\" points out that the zero has the wrong sign in some cases.
  .PP
-Except as specified below, if
-.I x
-or
-.I y
-is a NaN, the result is a NaN.
-.PP
+.\" pow(\(+-0, <0 [[odd]]) =3D HUGE_VAL*
  If
  .I x
-is +1, the result is 1.0 (even if
+is +0 or \-0,
+and
  .I y
-is a NaN).
+is an odd integer less than 0,
+a pole error occurs and
+.BR HUGE_VAL ,
+.BR HUGE_VALF ,
+or
+.BR HUGE_VALL ,
+is returned,
+with the same sign as
+.IR x .
  .PP
+.\" pow(\(+-0, <0 [[!odd]]) =3D HUGE_VAL*
  If
-.I y
-is 0, the result is 1.0 (even if
  .I x
-is a NaN).
+is +0 or \-0,
+and
+.I y
+is less than 0 and not an odd integer,
+a pole error occurs and
+.\" The pole error is generated at least as far back as glibc 2.4
+.RB + HUGE_VAL ,
+.RB + HUGE_VALF ,
+or
+.RB + HUGE_VALL ,
+is returned.
  .PP
+.\" pow(\(+-0, >0 [[odd]]) =3D \(+-0
  If
  .I x
  is +0 (\-0),
@@ -121,6 +127,7 @@ and
  is an odd integer greater than 0,
  the result is +0 (\-0).
  .PP
+.\" pow(\(+-0, >0 [[!odd]]) =3D +0
  If
  .I x
  is 0,
@@ -129,6 +136,7 @@ and
  greater than 0 and not an odd integer,
  the result is +0.
  .PP
+.\" pow(-1, \(+-INFINITY) =3D 1.0
  If
  .I x
  is \-1,
@@ -137,6 +145,30 @@ and
  is positive infinity or negative infinity,
  the result is 1.0.
  .PP
+.\" pow(+1, y) =3D 1.0
+If
+.I x
+is +1, the result is 1.0 (even if
+.I y
+is a NaN).
+.PP
+.\" pow(x, \(+-0) =3D 1.0
+If
+.I y
+is 0, the result is 1.0 (even if
+.I x
+is a NaN).
+.PP
+.\" pow(<0, y) =3D NaN
+If
+.I x
+is a finite value less than 0, and
+.I y
+is a finite noninteger, a domain error occurs,
+.\" The domain error is generated at least as far back as glibc 2.4
+and a NaN is returned.
+.PP
+.\" pow(|x|<1, -INFINITY) =3D INFINITY
  If the absolute value of
  .I x
  is less than 1,
@@ -145,6 +177,7 @@ and
  is negative infinity,
  the result is positive infinity.
  .PP
+.\" pow(|x|>1, -INFINITY) =3D +0
  If the absolute value of
  .I x
  is greater than 1,
@@ -153,6 +186,7 @@ and
  is negative infinity,
  the result is +0.
  .PP
+.\" pow(|x|<1, INFINITY) =3D +0
  If the absolute value of
  .I x
  is less than 1,
@@ -161,6 +195,7 @@ and
  is positive infinity,
  the result is +0.
  .PP
+.\" pow(|x|>1, INFINITY) =3D INFINITY
  If the absolute value of
  .I x
  is greater than 1,
@@ -169,6 +204,7 @@ and
  is positive infinity,
  the result is positive infinity.
  .PP
+.\" pow(-INFINITY, <0 [[odd]]) =3D -0
  If
  .I x
  is negative infinity,
@@ -177,6 +213,7 @@ and
  is an odd integer less than 0,
  the result is \-0.
  .PP
+.\" pow(-INFINITY, <0 [[!odd]]) =3D +0
  If
  .I x
  is negative infinity,
@@ -185,6 +222,7 @@ and
  less than 0 and not an odd integer,
  the result is +0.
  .PP
+.\" pow(-INFINITY, >0 [[odd]]) =3D -INFINITY
  If
  .I x
  is negative infinity,
@@ -193,6 +231,7 @@ and
  is an odd integer greater than 0,
  the result is negative infinity.
  .PP
+.\" pow(-INFINITY, >0 [[!odd]]) =3D INFINITY
  If
  .I x
  is negative infinity,
@@ -201,6 +240,7 @@ and
  greater than 0 and not an odd integer,
  the result is positive infinity.
  .PP
+.\" pow(INFINITY, <0) =3D +0
  If
  .I x
  is positive infinity,
@@ -209,6 +249,7 @@ and
  less than 0,
  the result is +0.
  .PP
+.\" pow(INFINITY, >0) =3D INFINITY
  If
  .I x
  is positive infinity,
@@ -217,34 +258,12 @@ and
  greater than 0,
  the result is positive infinity.
  .PP
-If
+.\" pow(NaN, y) or pow(x, NaN) =3D NaN
+Except as specified above, if
  .I x
-is +0 or \-0,
-and
-.I y
-is an odd integer less than 0,
-a pole error occurs and
-.BR HUGE_VAL ,
-.BR HUGE_VALF ,
  or
-.BR HUGE_VALL ,
-is returned,
-with the same sign as
-.IR x .
-.PP
-If
-.I x
-is +0 or \-0,
-and
  .I y
-is less than 0 and not an odd integer,
-a pole error occurs and
-.\" The pole error is generated at least as far back as glibc 2.4
-.RB + HUGE_VAL ,
-.RB + HUGE_VALF ,
-or
-.RB + HUGE_VALL ,
-is returned.
+is a NaN, the result is a NaN.
  .SH ERRORS
  .\" FIXME . review status of this error
  .\" longstanding bug report for glibc:

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
