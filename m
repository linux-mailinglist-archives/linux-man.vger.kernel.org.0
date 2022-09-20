Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB4AE5BE5CA
	for <lists+linux-man@lfdr.de>; Tue, 20 Sep 2022 14:30:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbiITMaL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Sep 2022 08:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229695AbiITMaK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Sep 2022 08:30:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460ED5208A
        for <linux-man@vger.kernel.org>; Tue, 20 Sep 2022 05:30:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D550D62055
        for <linux-man@vger.kernel.org>; Tue, 20 Sep 2022 12:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 43812C433D7
        for <linux-man@vger.kernel.org>; Tue, 20 Sep 2022 12:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663677008;
        bh=ycF9w7xLB37sQC56I+Ew/9QR3Wq4wy4PNPwPosLb5C8=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=hWerwWiMrb/B9S0WHD62hrrQeAjob9Nq/DEyrHJDL+VHNQQFz0wAoBanr76akQybP
         pCtA0WZg8CZmZNSUySZRnGDLzzG6J7kWL3A0EO+PvrohcCtfoVi76nMAj1oFX7b5D2
         7/7VtiE4LDrA+yZ7xJAhbAWYSAhOsTVm9/96LjHyW8/Yun864uq1dJqsyd1y0R5bOp
         DVJ6Vj9Nx/9Lir+zefHtpdqjpFx1jdW8OY3+6qLvikziXn6OSQ37iWMv7s2Kw9ZAAL
         2kzfWk8+FFZvQTUKxx1gBjd49UHpOKvph9AHgWGMeQTTiupqj0pdOuSWeTODlicxo/
         n/IHvn5OpDrZg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 22C1BC433EA; Tue, 20 Sep 2022 12:30:08 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216505] Grid False Ceiling in Coimbatore
Date:   Tue, 20 Sep 2022 12:30:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Spam
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: high
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: other_spam@kernel-bugs.kernel.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: component version assigned_to product
Message-ID: <bug-216505-11311-ZrAuQ6PlDU@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216505-11311@https.bugzilla.kernel.org/>
References: <bug-216505-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216505

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
