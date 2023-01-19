Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BB56672E79
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 02:50:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbjASBtp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Jan 2023 20:49:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbjASBrl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Jan 2023 20:47:41 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 456625D7E8
        for <linux-man@vger.kernel.org>; Wed, 18 Jan 2023 17:46:34 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id DC213B81FBC
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 01:46:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A45C433F2
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 01:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674092791;
        bh=gGyxkemQpBMFoaxaYW4VN1S55VWcRVYPXXlYE7EJHd0=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=AnGOLbQV+5OzoUf+LupgD1MzgQ6OUgmvJmwEJBCWLEcBMINvTAO08MrXijI0xQTvf
         a+biEhOp7WNEoH0UbQjyIHMgEDfXIQ5wu1HP4c2DBxO7FhXcqa67T0sLlWDmqs3bcR
         P4UcfG4pRc2bSZUUisp170rkWs9Mstb9dcZroU4eSOjQouAITEY9XCh9q8e5rnutk4
         zy5SElfCt9hspke+Fqs7+OXR8SyI/30OA0spxDwH1utPI1Jb9KLW8va+ETrNIGOGtD
         tTZnjpv75vg20ZPwLdaV1WZDh4Bl9JW0CEtGRfLuNfa7GhFK2awJHyF2crhpqWwQPy
         3voJuwPN55Q9Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 7557CC43145; Thu, 19 Jan 2023 01:46:31 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216951] close_range(2) needs refreshing for glibc inclusion;
 closefrom(2) page missing
Date:   Thu, 19 Jan 2023 01:46:31 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: sam@gentoo.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: short_desc
Message-ID: <bug-216951-11311-BBapLPGK7D@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216951-11311@https.bugzilla.kernel.org/>
References: <bug-216951-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216951

Sam James (sam@gentoo.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
            Summary|close_range(2) page         |close_range(2) needs
                   |missing; closefrom(2) needs |refreshing for glibc
                   |refreshing for glibc        |inclusion; closefrom(2)
                   |inclusion                   |page missing

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
