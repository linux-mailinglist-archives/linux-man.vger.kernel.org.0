Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B88FA70178D
	for <lists+linux-man@lfdr.de>; Sat, 13 May 2023 15:57:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238142AbjEMN5I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 May 2023 09:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231736AbjEMN5H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 May 2023 09:57:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BFD4D8
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 06:57:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E01F8618CD
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 13:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 43B43C433D2
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683986225;
        bh=X11r5CkxeEPBHVjn06XS1fqATJkyQ/21b4CGUoOGIV4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=KFe4e8HacV7lHtpR/73+ixvauEfNrGlWvb1O6IloNTg2ZXIoTafCqKzSm9cPKimrL
         GEgDgnoLZI75ApEZMWM5WVsK9YH86BBl9YdMN3NnVs/5ciod+QfI8F955vXjitj8OR
         8+cUCQuf4t2iunLc2NcXGBqMLc3O6QfTKUmU9UGnXj2T+5kDWSwtbMOQSYFprQObwY
         KrNVprm4D5V/smmY4nrZvg7y8LRjQ5G/UibTWYIPVjCptMPUaSSIpjnHb7KxIC1v3T
         MU+QsbHlG5/5Gy7dypHqFNH8mRIwO6eDfA7rkqzyvB1iLX6Yswi+96oi0lV2kFAzP3
         D+APAr4g/SxQA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 2E889C43143; Sat, 13 May 2023 13:57:05 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217435] man-pages using groff's new MR macro render incorrectly
 on man7.org/linux
Date:   Sat, 13 May 2023 13:57:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: jwilk@jwilk.net
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217435-11311-I0H1YBkfAi@https.bugzilla.kernel.org/>
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

--- Comment #3 from jwilk@jwilk.net ---
>man7.org itself seems to direct here, for bug reporting

Does it? https://man7.org/linux/man-pages/man1/groff.1.html#COLOPHON says:
"If you discover any rendering problems in this HTML version of the=20
page, [...] send a mail to man-pages@man7.org".

(Though one could argue it's a groff bug...)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
