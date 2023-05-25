Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C4FA71021F
	for <lists+linux-man@lfdr.de>; Thu, 25 May 2023 02:55:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbjEYAz5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 20:55:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjEYAz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 20:55:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F32E6
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 17:55:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A5B886413A
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 00:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09E61C433EF
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 00:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684976155;
        bh=2l4OBq23XYPsFJYDtj5/dqz2FAMI4BqvvNbq18AkS6g=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=pVT/tojjVK5jdrytOTb7/Q6XyXWGYaD9HIwE94FUNk2I0ABLhV2IWlG+eXcf3DSPB
         Cl9YeoPmBf5o3EGL+DAJM1MmaHICUFh/fEbp36LRMeUeuqYHrg4FN0hYiMdMP5+3lv
         SpeRaoAq8JO425F5/y3usuo6ZkfcfDm2t5ocZwu4G4LSMroKt2dKjNuUBqsq4qVCNQ
         FsNpWNWQLyOXlYtVq/UNzXp/5oPLCBK4oQc5ysqyKbcrb/czWHRB1CAgoJ6PLFOf70
         A/GfuCuOmb/MMg1hI1gs+oX6+I9DyofkhKE061sqHrT+0LCFiupBAPoD05U53zQE6N
         nKlsVKehuVCcA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id D926EC43144; Thu, 25 May 2023 00:55:54 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216667] Self-contradictory description of inheritable
 capability set
Date:   Thu, 25 May 2023 00:55:54 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rhmcruiser@gmail.com
X-Bugzilla-Status: NEEDINFO
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216667-11311-4rVs5zSxOi@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216667-11311@https.bugzilla.kernel.org/>
References: <bug-216667-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216667

--- Comment #4 from Monthero Ronald (rhmcruiser@gmail.com) ---
imho the current info of capabilities seem congruous.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
