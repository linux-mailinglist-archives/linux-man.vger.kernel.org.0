Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBF52644A57
	for <lists+linux-man@lfdr.de>; Tue,  6 Dec 2022 18:36:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235161AbiLFRgD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Dec 2022 12:36:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235134AbiLFRgB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Dec 2022 12:36:01 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 625CF31EEC
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 09:36:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E665C617E3
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 17:36:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 56CE8C433D7
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 17:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670348160;
        bh=bEpe1bM+I1gTNQ1ZV0jfV63VPZlZaisR/LakjreAQd4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=E7Kl5WVfUgmPPJfA7sFsrM8Gk6GLC6QZ7MsYmjoMnukJrZNJY73YIInIgM6O+JJ2q
         D38arxt8ZAwdqXat4nZH+pRXCKaCyYlQvvHi++CxHivejXOvmj2OknawxlMtGuqtfH
         A33dt+c7NHQUhmbc7NBMhnqAJFUX9MkmRVKiZ1merNOnaUeTgpRKTps/RLwoJQy2Te
         k8cNNF55mNDESrpGWT/1aCv7TdUvg+JK4/UZKYkg7C/Yo9fVHlHz3wEoZ4H1aGtAqy
         yxMZTjDpjdmnL+x71XZ2PbjCXqopoDaPJeFJecwFiyXSoeDkrty4Zxo6XVkGqjzIc1
         fXEWX+/K0GtUg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4984AC433EA; Tue,  6 Dec 2022 17:36:00 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216778] dark force-71
Date:   Tue, 06 Dec 2022 17:36:00 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Spam
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: other_spam@kernel-bugs.kernel.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: component version assigned_to product
Message-ID: <bug-216778-11311-yt3x1JUy36@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216778-11311@https.bugzilla.kernel.org/>
References: <bug-216778-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216778

Artem S. Tashkinov (aros@gmx.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
          Component|man-pages                   |Spam
            Version|unspecified                 |2.5
           Assignee|documentation_man-pages@ker |other_spam@kernel-bugs.kern
                   |nel-bugs.osdl.org           |el.org
            Product|Documentation               |Other

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
