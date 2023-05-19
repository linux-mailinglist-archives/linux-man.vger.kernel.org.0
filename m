Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2587C70971E
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:13:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjESMN5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:13:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbjESMN4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:13:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4F918C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:13:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6C0806566F
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:13:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28B0C4339B
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684498434;
        bh=jNfq+tczx9nMmRnmwvDDiUDtD9sbwvcWleZN0q4OiC8=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=e8XPGdF4fSSrDyKfzyUWGSKQ25+i9m1+IgGvim4APT34d68uqX0aM/PFKn13AbjLb
         IWyKQiy+eLnkE4znpT95CuPn6YWZQQ2Uc3wOGJ6bA0FlhUAbBeR4v/CPUyCMFWnYqJ
         3Ca5xpI91geQrHX3U2NteSbm9kxlPcBKIl12AWtAsu+C2qL6sxuaZEPrB6GExpgsEk
         GGua1ZOsCK//Z+A13nsO22Vs0tLNC782a9w5ArR9tiFh3T3MAEZs9j3Cic5m6RVDgA
         ST4zFW/MyCdEvGSqNlVo/RjVbbV+xczEpZyMhLI1mfd4O98PgFyltWwLOum9romLGP
         h7glWimmx8Cdg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C153EC43141; Fri, 19 May 2023 12:13:54 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216971] add a link from filesystems(5) to mq_overview(7)
Date:   Fri, 19 May 2023 12:13:54 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216971-11311-7GDXhOmaHZ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216971-11311@https.bugzilla.kernel.org/>
References: <bug-216971-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216971

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Would you mind sending a patch according to the ./CONTRIBUTING file in the
repo?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
