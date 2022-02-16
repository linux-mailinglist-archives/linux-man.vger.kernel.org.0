Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4889D4B8C77
	for <lists+linux-man@lfdr.de>; Wed, 16 Feb 2022 16:31:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234290AbiBPPb5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Feb 2022 10:31:57 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbiBPPb4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Feb 2022 10:31:56 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57BA3E0F6
        for <linux-man@vger.kernel.org>; Wed, 16 Feb 2022 07:31:44 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0B80BB81F20
        for <linux-man@vger.kernel.org>; Wed, 16 Feb 2022 15:31:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9600C340EC
        for <linux-man@vger.kernel.org>; Wed, 16 Feb 2022 15:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645025501;
        bh=bZQIF7eqkFUU9990qkQepDcbvYblzcxO3Z0weDdzGF8=;
        h=From:To:Subject:Date:From;
        b=kcOUnnb22A70ciNByg/jozUXAgsPOn6uH7Kf2gMHCGBKQm4/SIiyWO/wlvkRGuwfe
         NsVZzRkB0N+zk4l89Ip+cfLDG80IhtiBR7cPg4Hcv3EHxOYZJTK7dT28/vPvTRNbLW
         5MHf/u9Ofu5aV9E/7Atd1WdCYR/cF7Hm+YANB81IF4NAxSyAun8ulUnTurnM1iLdjW
         sG852kpM65JuWOmkdONGwuQWQJ1RyYdynGwWRl5ZFYvPaZ2b0dG9cIzf20yLQubD83
         jYYl7N63vLO3XL64xmW1eezBENLRQI/usXhhsqVGstzp5qQ0XzM+0IihnE1WJ+FzNS
         7egBiSRvYq1Dw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id ABDF3C05FE2; Wed, 16 Feb 2022 15:31:41 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215613] New: uri.7: DESCRIPTION: Usage: No description of the
 'unix' URI scheme
Date:   Wed, 16 Feb 2022 15:31:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215613-11311@https.bugzilla.kernel.org/>
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

            Bug ID: 215613
           Summary: uri.7: DESCRIPTION: Usage: No description of the
                    'unix' URI scheme
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: alx.manpages@gmail.com
        Regression: No

The subsection DESCRIPTION/Usage provides a description of common schemes in
use on UNIX-like systems, but there's no mention of the 'unix:' scheme for =
Unix
domain sockets.

AFAIK, it uses the same format as 'file:' (which is documented), but I don't
know if there are any differences.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
