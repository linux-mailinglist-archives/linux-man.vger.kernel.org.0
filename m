Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F960710C31
	for <lists+linux-man@lfdr.de>; Thu, 25 May 2023 14:36:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239813AbjEYMgI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 May 2023 08:36:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236145AbjEYMgH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 May 2023 08:36:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D829122
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 05:36:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 04F2264562
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 12:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37183C433EF
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 12:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685018165;
        bh=tSV3MXv/3vQIkPqeEQdC+uC54rUjgqrn5TukoJ7HCJs=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Fh4seN7fCu0WNwS5qL2OfjcXmZaqs3buQv3g0nO25wJQ+ROkH3V839EtalNRJFeS+
         DHJhOPSHZFkyXMZVla++lDBr6/QGa8ROtOUsYE0VMjpJ2ycr0jjbd6Di33lTcq/GR4
         Afk8tKCKTdLi7ha1kduMlXBR54GujcLUUM3caRbJG/0CAqHgDxYs5v03oe7Twbf+lg
         8Fb8q8HM4xz8gMs0PGrZtiFYrIEQRZHoq8+gS3p8Y5b41GCmkiskyaUcL/yOLDiQZh
         H1uhwud7/sFyH7CB3VZidrGa5S6S7Fu6YCW3wE0tAW4y2CD9R4+Tlwz3mobf4X8RZY
         ZgzYrmtzcWEbg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 248C0C43143; Thu, 25 May 2023 12:36:05 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214885] random.{4,7} [man-pages 5.13] do not reflect changes to
 /dev/random semantics since kernel 5.6
Date:   Thu, 25 May 2023 12:36:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: arthur200126@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: attachments.created
Message-ID: <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214885-11311@https.bugzilla.kernel.org/>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214885

--- Comment #2 from Mingye Wang (arthur200126@gmail.com) ---
Created attachment 304322
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D304322&action=3Dedit
An attempt at an edit.

I feel like writing, so here goes my attempt at a patch.  Basically what was
requested by the reporter and myself in the preceding comment.

random.4:
* have the DESCRIPTION section rearranged such that the old and new random
behavior is split into two paragraphs. That will make reading easier.
* interface size changes & proc removal, as requested
* mention blocking time, as I requested
* I did NOT touch the comment in USAGE a lot. Old kernels will refuse to die
for a long time, so even though /dev/random acts exactly like getrandom() n=
ow,
we cannot tell people to expect that. So let's keep calling it a legacy
interface.

random.7:
Ho boy this is where most of it goes.
* Table demolition, as promised.
* Added table entry for GRND_INSECURE.
* Add mention of the unfortunate compromise that made /dev/urandom fast. I =
say
unfortunate, but we are all laughing because now we can dd that hard drive
FAST.
* "Choice of random source" revised to remove any recommendation of
/dev/random.  We would make an incorrect impression that the new change is
somehow less secure otherwise.
* "The old blocking pool" section added to further explain that removal was=
 not
the mistake, /dev/random was.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
