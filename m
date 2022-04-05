Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32B384F4635
	for <lists+linux-man@lfdr.de>; Wed,  6 Apr 2022 01:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234292AbiDEOTs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Apr 2022 10:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384315AbiDEM1U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Apr 2022 08:27:20 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96E4DDB
        for <linux-man@vger.kernel.org>; Tue,  5 Apr 2022 04:37:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 03E99CE1D40
        for <linux-man@vger.kernel.org>; Tue,  5 Apr 2022 11:37:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48A27C385A4
        for <linux-man@vger.kernel.org>; Tue,  5 Apr 2022 11:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649158659;
        bh=WI7KT8OHg9+VHYYNDysgE+TKY0tEK5w7JxYOPzHb3aU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=oO/uTgKqyOTe75qMLauXnOIxESBBq1uyHEWYbzH4aBnk4iYwjeI/WTUrAM3TX9TKp
         WAO3WbXekjDtoFUzIqxqmK2Pywf/XxW7UJX9TybB4NATtTS118eViDe/RJK56Kl1G5
         1I8QzLdLnV+aqX5sdmIGasDHamFdmNHG+rDUXEBH3ttD6SWidxNe43c4/ql/ZLdJE/
         uO9jgeiGVGe9PC5l3ipjcMm806m+DitNtCUGO0oQLJyIfYzgj0gsnuDdzoQzAGouQW
         EeActPQnx+yblfq4ik+HyprwW7bP4zeMMw9GSPOq7Vt1gBNwXDbSSLnSM+VE9AZGUt
         DDiEr6MSHsOSA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 33121CAC6E2; Tue,  5 Apr 2022 11:37:39 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Tue, 05 Apr 2022 11:37:38 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: socketpair@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-VuFZUza97C@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

--- Comment #7 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3 =
=D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
Christian,

If you are right, why other CLONE_* do not have such a problem ? only
CLONE_NEWTIME, I don't think it is special. Possibly, I'm not into the subj=
ect.


Yes, I saw the kernel sources, and I found the exact place from where EINVAL
returned. For threads - Yes, it's intended. But for fork()/execve() I think=
 it
should work.

In my experiments, vfork() works OK with all present CLONE_* namespaces exc=
ept
CLONE_NEWTIME. Strange, isn't it ?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
