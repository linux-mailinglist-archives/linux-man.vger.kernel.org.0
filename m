Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EED56D1ECF
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 13:13:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbjCaLNy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 07:13:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbjCaLNx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 07:13:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F4C4C3D
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 04:13:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B87B062807
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 11:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21A02C4339B
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 11:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680261232;
        bh=2viZm1jPfRraxc1rlusT3QP72lm98IfN/2MZLlLkWyQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Z8l4+hFkyGQjSABsqeA+wWXR4dd7pVWINcriINrm66lXUsv1h3qqAdJoYsW+k8F1H
         xY/JAmaf2P5tadT5HEkut1IRt4zvexJLOQnke/eG0EJsnISGWg+pJl7kJSSju9m3ad
         6HGU50NCeFEfQSnzdO8MSO0Sv8FD9rpGg+ITlnecTJ9ba8QEOy6W/yxlWEY+wM1kPo
         iMoX3UMmJVzZTfCiN5i6jHrOwDiJNlHuXl5x/0nihvucUX/8PZ1peryaCoCdRukjpP
         w3Vt0QwwgeDUBlUCB8WMPwH9QofG3u+PfPcdn7X66YcsYjnAUXA7W9k0XeXLEc6TbE
         T0+olEerzRPAw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 07BBCC43141; Fri, 31 Mar 2023 11:13:52 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 89451] Running Chrubuntu, 14.04 LTS, messages on startup.
Date:   Fri, 31 Mar 2023 11:13:51 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: p.ixlogix01@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-89451-11311-5qWlJEvbrw@https.bugzilla.kernel.org/>
In-Reply-To: <bug-89451-11311@https.bugzilla.kernel.org/>
References: <bug-89451-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-5.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D89451

Ashish (p.ixlogix01@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |p.ixlogix01@gmail.com

--- Comment #4 from Ashish (p.ixlogix01@gmail.com) ---
Thank you for the information - check website -
https://www.pixlogix.com/custom-wordpress-development-services

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
