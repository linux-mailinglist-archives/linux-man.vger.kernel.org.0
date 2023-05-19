Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA9A970968D
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 13:30:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbjESLaC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 07:30:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbjESLaB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 07:30:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9102D132
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 04:30:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1788461727
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 11:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED29C4339B
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684495799;
        bh=1CeRwpJDMi3IcmNAZo5/ht7ntBbUX8FTzCzU7TlNNT4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=GtN8Qvj1K6cgKWjdrigAVJLgSPImuKrwAnTJSC/tFWzuta/U54w6g3C9COzi4KnD4
         mW25iqMqMBEvF3SVYpjyGo3zPLpM3ZOWE8pbIGR0fwzLr/RjP+jyi920tW4VbcgkMN
         CvtONsqNDsUS8CCIRk4m8z6ZN/KmjCtxNsycp7BzzBTBDvhGEMMRAUNiXJTp8zrvL4
         QSV+shqBj67Efq+w9ey94SVjLnWYnqPfa4szLsL3fPh8k6vmXoCeLXqeXk1TXr4qKk
         EMFxQuy+VOOOBGn5aYr1SerLZjzZRpy5DH8MvEzwLA091tNO7ZevXXS0CrBC0JMBR5
         5aqU9QjpqGnSQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 5B273C43145; Fri, 19 May 2023 11:29:59 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217435] man-pages using groff's new MR macro render incorrectly
 on man7.org/linux
Date:   Fri, 19 May 2023 11:29:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217435-11311-vktCEMdYS3@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217435-11311@https.bugzilla.kernel.org/>
References: <bug-217435-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217435

--- Comment #4 from Alejandro Colomar (alx@kernel.org) ---
The github repository tells in various places (description, README) that
it's just a mirror, and that the official repository and website are at
<kernel.org>.

Anyway, the bug report is for the HTML rendering in <man7.org>, so
Jakub's comment is right, and you should direct your report to Michael
at his email address.  I'm not saying that he'll answer, though, as I
didn't receive any answers to other reports from myself.  :s


Cheers,
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
