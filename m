Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD2D4BAB53
	for <lists+linux-man@lfdr.de>; Thu, 17 Feb 2022 21:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240895AbiBQUza (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Feb 2022 15:55:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240200AbiBQUz3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Feb 2022 15:55:29 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25334606E5
        for <linux-man@vger.kernel.org>; Thu, 17 Feb 2022 12:55:13 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C22F1B824C4
        for <linux-man@vger.kernel.org>; Thu, 17 Feb 2022 20:55:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E4CC340EC
        for <linux-man@vger.kernel.org>; Thu, 17 Feb 2022 20:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645131310;
        bh=H05k0QgALK4NeM0dpVg2tTElNKgonEHvji4Pcgnpz2s=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=AXDwPsaumOQA/xDM3i8IuPWkXC8oSgK+dcbugnVlYHYGiuBnfREMEe6K8b6RhjsZ2
         q6aP88XSMmq+X3u2JGyeqWhN1O0Ql/pOmqeQBL0144l3BsiZMXugQRkffFVEYK9KE0
         ammEOvL0PKoyLXvaU5C91lH3bjWziRab1sYEQPbXYNNNr/w5MtAOJAPTmS8H9Uc5yB
         Sbd9DhfvTpGsqnX1D5ahgyrZfOxSX3xNcseTXAArF3tVqXP5cZugNSB2SGGUcyERsS
         /7T1p6xc6IS0ET+ONCrseKts5CLRoU6S1VJWC8ZKKwYUpVA6IpHAWv4YoOPzIRBTOT
         0zGmRE9J0TUzQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4FAE2CC13AF; Thu, 17 Feb 2022 20:55:10 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215613] uri.7: DESCRIPTION: Usage: No description of the 'unix'
 URI scheme
Date:   Thu, 17 Feb 2022 20:55:09 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: t.piekarski@deloquencia.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-215613-11311-scIof60VEp@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215613-11311@https.bugzilla.kernel.org/>
References: <bug-215613-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215613

Thomas Piekarski (t.piekarski@deloquencia.de) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |t.piekarski@deloquencia.de

--- Comment #1 from Thomas Piekarski (t.piekarski@deloquencia.de) ---
I took a look into it and I have been unable to find any RFC for Unix domain
socket URI schema for comparing if it is the same like file URI schema.=20

The IANA is not listing it [1].
The W3C is not listing it [2].
The RFC for Uniform Resource Locators [3] is not mentioning it nor does the=
 RFC
for file [4]. Well later was just a shot :-)

Maybe it is due to its nature for being used for inter-process communicatio=
n,
but from where such schema similar to internet schemas derive from?

The form is the same, but do unix://localhost/var/some-socket.sock accept s=
uch
a form with localhost inside like file does? And do they behave the same in
regards of file permissions?

---
[1]: https://www.iana.org/assignments/uri-schemes/uri-schemes.xhtml
[2]: https://www.w3.org/wiki/UriSchemes
[3]: https://www.w3.org/Addressing/rfc1738.txt
[4]: https://www.rfc-editor.org/rfc/rfc8089.html

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
