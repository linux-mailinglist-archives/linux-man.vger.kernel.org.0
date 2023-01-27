Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93A4567EAF0
	for <lists+linux-man@lfdr.de>; Fri, 27 Jan 2023 17:30:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234326AbjA0Q36 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Jan 2023 11:29:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234971AbjA0Q3w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Jan 2023 11:29:52 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 972787E066
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 08:29:44 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2E35B61D13
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 16:29:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98E84C4339C
        for <linux-man@vger.kernel.org>; Fri, 27 Jan 2023 16:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674836983;
        bh=/yrcD+VqyzTOz400ODrOXXYDBf9GQ3j2DfV+EFZ7etE=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=tgY0uu6UKj+onJWzEsfQnxnNwM3sCvPuyFxoy3xu/nuwqFJPLtOz4KIxPHAtV9zEU
         S19/JI+Nsjnn0ri1kvRm/8Ck6CSX+qt4/R1MSmAwxaPELvyTHEyv8WyhLpETsnmFav
         AADDy9kHBpUWgqY21vm/qImG1PxxAdC3rSrxFAl0BYrnK0Q+jpYFpuAHaT/VaH3BW2
         fd/vMAsGCaL/+OwGWo53c4hYT914xqg4g2NTRRbH0TBDyyaowy/zBATX8NXzvb94N4
         gYb9ad6yIy/f5IX8Oitq2BWR93kqCEm6H8gTZZdJccETUrqPXsBrtG+npS5C+dzAA4
         BpoPrL+XjOV4g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 87FADC43145; Fri, 27 Jan 2023 16:29:43 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216971] add a link from filesystems(5) to mq_overview(7)
Date:   Fri, 27 Jan 2023 16:29:43 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: giecrilj@stegny.2a.pl
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: short_desc
Message-ID: <bug-216971-11311-kFVUE4cZss@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216971-11311@https.bugzilla.kernel.org/>
References: <bug-216971-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216971

Christopher Yeleighton (giecrilj@stegny.2a.pl) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
            Summary|add a link from             |add a link from
                   |filesystems(7) to           |filesystems(5) to
                   |mq_overview(7)              |mq_overview(7)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
