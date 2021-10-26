Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4A7F43BBE2
	for <lists+linux-man@lfdr.de>; Tue, 26 Oct 2021 22:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239312AbhJZU44 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Oct 2021 16:56:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:41220 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231396AbhJZU44 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 26 Oct 2021 16:56:56 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id C76B160F9B
        for <linux-man@vger.kernel.org>; Tue, 26 Oct 2021 20:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635281671;
        bh=A04DUAT/61GuccANV4by0NKxGKXzFA/gJOj2GHb8v2Y=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=jaiiL2ZVAYPz2pJgowGs7sS2Nt8RrK/W7w+Bcox1jETbDwIJtEk4MnkseRpkX+H8/
         qJRcTWPENo6SgatjBv5Qbz/ITkiD/9dR5AKTB0H3O8B3Te+CKhROyUwKi6ryHaH8vU
         nHOvCxmlMYtGyI07P1caClc8DFSWKh2sBUnksZr8o+/JeT3jiRhib5vADD1wtZXdGz
         5e2fG4fRxQlQ0GDSxRr797gCkTEqY8tcM7sj4n814X3MFXpfq7RuGeNOdka7cUyj+h
         PesJCc8Tu9YNOIkpOp4m9okslSkrITTtsfeGHko+HaGJO268fcQh1fDug8c/+nGP9n
         tuNoxoieLto5g==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id C0E3160FE3; Tue, 26 Oct 2021 20:54:31 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214815] pow(3): underflow result can be -0.0
Date:   Tue, 26 Oct 2021 20:54:31 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: joseph@codesourcery.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214815-11311-RWy3UhkuSQ@https.bugzilla.kernel.org/>
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

--- Comment #3 from joseph@codesourcery.com ---
On Tue, 26 Oct 2021, Alejandro Colomar (man-pages) via Libc-alpha wrote:

> Finally, the glibc manual doesn't mention this special case.

See math.texi, "Errors in Math Functions".

  @item
  Each function with a floating-point result behaves as if it computes
  an infinite-precision result that is within a few ulp (in both real
  and complex parts, for functions with complex results) of the
  mathematically correct value of the function (interpreted together
  with ISO C or POSIX semantics for the function in question) at the
  exact value passed as the input.  Exceptions are raised appropriately
  for this value and in accordance with IEEE 754 / ISO C / POSIX
  semantics, and it is then rounded according to the current rounding
  direction to the result that is returned to the user.  @code{errno}
  may also be set (@pxref{Math Error Reporting}).  (The ``inexact''
  exception may be raised, or not raised, even if this is inconsistent
  with the infinite-precision value.)

  [...]

  @item
  If the mathematical result has magnitude well below half the least
  subnormal magnitude, the returned value is either zero or the least
  subnormal (in each case, with the correct sign), according to the
  current rounding direction and with the underflow exception raised.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
