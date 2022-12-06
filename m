Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B96D6644A56
	for <lists+linux-man@lfdr.de>; Tue,  6 Dec 2022 18:35:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235237AbiLFRfs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Dec 2022 12:35:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235144AbiLFRfq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Dec 2022 12:35:46 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 154C0391D3
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 09:35:45 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 92462B81AE2
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 17:35:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31E4DC43470
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 17:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670348142;
        bh=fUp8IYb9cuBmFAxOsiLN6SpgPvLYbup62m/6AaAedNk=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=iRy6DAhVtZcrfB8bUwME3T4HVPfHDTzx4wTetQg0Js9PB3X+enF6iOWmE5ckjms/w
         4PDYz2WtnMyC+Jeu4sThWBB7Uffp/zBegbASAsEIlI0aVSlkdVlkiCeZrubUfVVkNF
         vruMknuJ/rfxy1IG9O1ZwOrt+wT7JE3kIQFbGPl8vN0oRZo38Xw0W1fnQXgm6Opir8
         I0PutABNwFh+EHiNJsZmq8ZYSGelhRfuLoUW53W1RCY7WUSWDyBatsUYyh7oSbdpZ6
         8v109wCceduM8tjAlmk0fFUzm8GuExCIc+PgN33B8AEsxtXo6pfL+fepcvvCTxYjVQ
         o2hupnUkD5+3g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 176CEC433E6; Tue,  6 Dec 2022 17:35:42 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216779] dark force
Date:   Tue, 06 Dec 2022 17:35:41 +0000
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
Message-ID: <bug-216779-11311-5x8kAUmd1r@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216779-11311@https.bugzilla.kernel.org/>
References: <bug-216779-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216779

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
