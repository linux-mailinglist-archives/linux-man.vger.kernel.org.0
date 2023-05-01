Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1FE16F2F22
	for <lists+linux-man@lfdr.de>; Mon,  1 May 2023 09:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbjEAHYd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 May 2023 03:24:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbjEAHYc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 May 2023 03:24:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AFC4F1
        for <linux-man@vger.kernel.org>; Mon,  1 May 2023 00:24:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2689760F82
        for <linux-man@vger.kernel.org>; Mon,  1 May 2023 07:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CF7C4339E
        for <linux-man@vger.kernel.org>; Mon,  1 May 2023 07:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682925870;
        bh=xs/CyLOdX1djA0MvkfxBx2LUT8wpoPlKT3RopiHplVU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=fwdmYDJ3GBK2ticVUjk/OD6giPUEb+yscI9mNnsb8uS5dB2l4Hvnw6GfKGT3+blfc
         0UKFh3+ZyDoTG8YezmahwxOEO8VQYqC/kY4yH/27YmKt1lnXtd0YS/B4w9Do+RLgWL
         3ycSM/pRr4kf7J7dF3IPq4JBhQeueJ7qJ4sNhKDPhRnXVRv/JF6/fkWvVnecsLqJnW
         2G/3a9xHFaN/WclTaLZpQb4e5htVWb+WHwPinAVoNBvMZzCsHYb2oH/C5Ctyu0qeaD
         8ijPiEhdP37SrRBt65ROu0ohKKjoVUbFS2yqO80vT7RyE5NkjVcloAxf2LuzHabrjk
         /b5F83Vmk5RcA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 77EB0C43143; Mon,  1 May 2023 07:24:30 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217375] Add information about intel_pstate active mode in
 admin-guide/kernel-parameters.txt
Date:   Mon, 01 May 2023 07:24:29 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: REOPENED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-217375-11311-P7oaPqKPBE@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217375-11311@https.bugzilla.kernel.org/>
References: <bug-217375-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217375

Artem S. Tashkinov (aros@gmx.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|RESOLVED                    |REOPENED
         Resolution|ANSWERED                    |---

--- Comment #3 from Artem S. Tashkinov (aros@gmx.com) ---
Actually never mind, this bug report is already in the corresponding mailing
list.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
