Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53375444235
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 14:09:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbhKCNML (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 09:12:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:41420 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230282AbhKCNMK (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 3 Nov 2021 09:12:10 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 5C82D610FC
        for <linux-man@vger.kernel.org>; Wed,  3 Nov 2021 13:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635944974;
        bh=onLMgUvqeXh5IABz2SATdqyEcJ7iFPIQmmQKb3odgUw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=nTjuwYgK8aUsEBpdRDxopdM0ELipNlRcuoKvdA3HuvJG1boh0naTzWtIkFyKNA8wq
         fC4+p3CgAvMujy/45WT7O8wAiRAwfA3HM1ADR1SXmkmTGzh2J9q1ox4fUMRxXppUje
         04i3BOR4vDSA09KuxUAnzMgtwFeDsDxILh1UmWIgJGtOC807vSdEEn17CgGbPetuMV
         6jh6MBPMAXbHelTY/ptatmFfwL/mwRDGSQ8h+2rzDwumt7FX0DlF6u3/ldQg43pR5m
         xu4swv+1uqZM34e9mdM5obsA5tbsS3f/atHUm/ZG8DRDr8vIe70v0gK75s8kifgwtA
         Jf5J3Od4xgZ0Q==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 502BB61105; Wed,  3 Nov 2021 13:09:34 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214931] General Grammatical Errors In
 /Documentation/process/2.Process.rst
Date:   Wed, 03 Nov 2021 13:09:34 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: hunter.chasens18@ncf.edu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_severity
Message-ID: <bug-214931-11311-T6sdP743F0@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214931-11311@https.bugzilla.kernel.org/>
References: <bug-214931-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214931

Hunter Chasens (hunter.chasens18@ncf.edu) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
           Severity|normal                      |low

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
