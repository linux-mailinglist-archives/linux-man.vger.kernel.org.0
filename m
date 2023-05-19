Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9D370971F
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:14:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbjESMOO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:14:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbjESMON (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:14:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C809C192
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:14:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 584666566F
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:14:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E71C4339B
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684498451;
        bh=biv5hngPaxcwyfYxZlPZmh8+imSqVBTAYGEAmqWhTAM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=h7GFkIuxYOBuLX71HfXy7D+nOXidpWpnQLaLskzmW1t0/UuvhmfJGNJiHmtmA9vsZ
         Doxba7q7l5cqEdPnveX8o/m7L+HeNBP/Wkgw6utfr+Fo7wMcFhLMeIfvsaK3dtMGx/
         wbbyCGK8yxtzYGIW0KgYlcEkLzGARBPlLPo/nf5CpjwTIG7RlLkxlHN101NpO5fuEa
         6LSZPGYAtDb++1uEy+yg6CNOJGfBt5JTy6q8RVQbSwUXpSgTz/fbtVcAG//Q8QK5Xd
         chlfTvyYRg7EgfQet9qVjtQnnIjuQocGvNidL+p/nCgkIrAns4IMGu5vWutZBsoiDO
         BDkI1ir8S3YoA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id B048EC43145; Fri, 19 May 2023 12:14:11 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216971] add a link from filesystems(5) to mq_overview(7)
Date:   Fri, 19 May 2023 12:14:11 +0000
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
X-Bugzilla-Status: NEEDINFO
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status
Message-ID: <bug-216971-11311-O80WVXzYH3@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216971-11311@https.bugzilla.kernel.org/>
References: <bug-216971-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216971

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |NEEDINFO

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
