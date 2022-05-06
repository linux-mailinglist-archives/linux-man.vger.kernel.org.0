Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 268A351D873
	for <lists+linux-man@lfdr.de>; Fri,  6 May 2022 15:03:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349647AbiEFNHj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 May 2022 09:07:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237119AbiEFNHi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 May 2022 09:07:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C7F5DA4F
        for <linux-man@vger.kernel.org>; Fri,  6 May 2022 06:03:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 48A1762032
        for <linux-man@vger.kernel.org>; Fri,  6 May 2022 13:03:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89BAC385A8
        for <linux-man@vger.kernel.org>; Fri,  6 May 2022 13:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651842234;
        bh=wrAMVlyJK127n9fH48AlFl1LIVHE7dE3FlioRwrDF/o=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=mwnRmGOvnzbOUNVVnJ6BvKTdEy9ArZW/TtiHjkTfF6fAe0/Lu8q++gLn0Uz2fkjIl
         hAdFXwnkB8hx6aJ1Ua3PJTX18m5gj1o465ytX8DTNAgDK9yi5oRYEP9mrrdDFJeVPm
         9X1NhPX1xAwqUE9+9FneI3CQJ5mGQxzvsyO1RWzydcOH0We6bIBlrgGjIseAOkN2w1
         aTa1MfkCLP1WfgK6ufh+Cx8RR/iFIrSM63zZdB27TK8I30jckuiuGEq36cV3GplYV+
         wwjJpPPVYqKfkTDyKEo98TMRWRNtv2ELMLe+sSXjls7YSkZDgGMYaJOOmbPSBhDGq+
         WeU7Sv2mZ+7YA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 924FBCAC6E2; Fri,  6 May 2022 13:03:54 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 89451] Running Chrubuntu, 14.04 LTS, messages on startup.
Date:   Fri, 06 May 2022 13:03:54 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: hamdan@digitalbrolly.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-89451-11311-cF6NB24d4N@https.bugzilla.kernel.org/>
In-Reply-To: <bug-89451-11311@https.bugzilla.kernel.org/>
References: <bug-89451-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D89451

hamdan@digitalbrolly.com (hamdan@digitalbrolly.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |hamdan@digitalbrolly.com

--- Comment #3 from hamdan@digitalbrolly.com (hamdan@digitalbrolly.com) ---
https://mindqsystems.com/trainings/selenium-live-project/

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
