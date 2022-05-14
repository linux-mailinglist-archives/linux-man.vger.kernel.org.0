Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68FED527255
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 17:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231880AbiENPCd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 11:02:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbiENPCc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 11:02:32 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A46C18
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:02:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 59622B80759
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 15:02:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B18CC34115
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 15:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652540549;
        bh=kagOYY7MXb8p7QeRox9FjwLbxA9rdCwPcz99YgzGAvM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=qAMpoYGTTmJg4BFgIMoRjpz29oFEHmjxW8pybQDkH+fyE+juLavH008HhxLFqfEcS
         ejL2a8nQyF/WPOi+nwFOOeIS2WDSg7bWjpg9rFjbl7DgjCRkg49UDCG9KTblKsghhN
         yk+rTVWKD2fZfo4kU7AXza2e+DUOz+WnmJBHWPT0cSE0AUC7Ec0Ga/nXWBp/TYIMCP
         OKqII6ZIJJOZVtc93ixpyAQQ0T/+mdvyEoDpquO1z9f4rp2CC+u2SESZDn6POzXNXQ
         m51jyY/ZdyF8bIwhysLb0cEjtFt259DU/xp4rsfeCMBLJxBjylWroNrBOh1H3DP9HD
         m3ZAIKzpehMow==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id E62F8CC13B3; Sat, 14 May 2022 15:02:28 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215738] uri.7: CONFORMING TO: Refers to obsolete IETF RFC 2396
Date:   Sat, 14 May 2022 15:02:28 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: sowani@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215738-11311-if5pcuLRwg@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215738-11311@https.bugzilla.kernel.org/>
References: <bug-215738-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215738

--- Comment #4 from sowani@gmail.com ---
(In reply to Alejandro Colomar (man-pages) from comment #3)
> But does the manual page really conform to the newer RFCs?  The contents =
are
> quite large, and I don't know if some details of it are actually obsolete
> and should be fixed.

Actually, it conforms more to rfc8820. So, IMHO, reference to rfc6874 can be
removed. If this sounds okay, I will commit a new patch.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
