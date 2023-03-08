Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B37E06B0E7C
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 17:21:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbjCHQVB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 11:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbjCHQUp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 11:20:45 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0917AB6935
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 08:20:43 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9949A616DE
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 16:20:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DEAFC4339E
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 16:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678292442;
        bh=MPosa0TATyTCLE52gMwjOFnwf8pUdjH/Q95JJlSyMXc=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=NAubJd/72h9q0kAM9SERxsmMQk17FH2rZWNHSq9AaD4CXK6DnHbtFIrIUyA/CaKG6
         1Ke5ZPJrUujqWV22vJVOaL8tfJYex+KBDkdahAmRkcpyIaf4OKYUbWGXd5Jef63o2R
         k1u9SzLyzr9KbxDy9ErrNEM1PtIhoc1m30fRgI7bjNsWF1l/CJHB5yOLrNEdP7zvSu
         eVN73FtbMJNK1F9DGsjmuayP3dmgDe/6O/8609UFWujWeXPFYXADaAZbl7eCoa/ZiZ
         cjF3+8cbt0GHHU0hp++HoD1hfAyb4ABFXU8xT8cGa2y6NUz1NWQydd3VgxDtOJQ/UF
         tpqJBKzjbCjjQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id EE124C43142; Wed,  8 Mar 2023 16:20:41 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217164] proc(5) man page says that VmallocUsed is not
 calculated despite being calculated
Date:   Wed, 08 Mar 2023 16:20:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: konrad@borowski.pw
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: short_desc
Message-ID: <bug-217164-11311-n7gyCEJyjI@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217164-11311@https.bugzilla.kernel.org/>
References: <bug-217164-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217164

Konrad Borowski (konrad@borowski.pw) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
            Summary|proc(5) man page says that  |proc(5) man page says that
                   |VmallocUsed is not          |VmallocUsed is not
                   |calculated, but it is       |calculated despite being
                   |calculated for me           |calculated

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
