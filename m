Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D47E5AE83A
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 14:33:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240047AbiIFMcy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 08:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240069AbiIFMcX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 08:32:23 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 238492981B
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 05:31:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A27E1B818B2
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 12:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B7AC433D7
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 12:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662467509;
        bh=5E1lFm60useOQ5vbRtHQySxOkgrZ3We8XZuAjtusd5o=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=eTq1ghQ/ujAV32ojyPOZQEU+kbXMtj2iVK7sHVTwhdEj2F/POmiNQe9sugp3oV4JZ
         nXax48khseOrrZvs0RPG7vZaj+ZIhhIMsvDOVYRulvutbbYOxACZ5ygh/pz4BBYbfL
         Kp2g1TYg+t7mg6QIErYotppn+A8A7MV9dMiJxOCQwosjhXHFOT4FF2nhsdayIxfVk9
         zkZ0tw8LqKERTLkyUmOYBpSkvld+XQcigt7VESGL+qZxm0ASit5SrVBvyUQaOG4kO8
         YpwI1Mnba7D6gmhpRvoTKC6b1EiHX3DWiXns28+TWg7DZPj2AL1GClz0fb5WoXadu+
         bWdvziOTka78A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 60429C433EA; Tue,  6 Sep 2022 12:31:49 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216215] clone and unshare say CAP_SYS_ADMIN is required to
 create new namespaces
Date:   Tue, 06 Sep 2022 12:31:49 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: DOCUMENTED
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-216215-11311-Knweg1CYhh@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216215-11311@https.bugzilla.kernel.org/>
References: <bug-216215-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216215

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|REOPENED                    |RESOLVED
         Resolution|---                         |DOCUMENTED

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
