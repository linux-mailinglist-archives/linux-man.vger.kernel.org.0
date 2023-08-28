Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6B6178AEED
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 13:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbjH1LdT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 07:33:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232466AbjH1LdJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 07:33:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61249E7
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 04:33:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0055164535
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 11:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5CF07C433CC
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693222385;
        bh=iqQY0NTL9IUZX73v6Y0gTWfw1d4E3S2e2MT66pcZn1A=;
        h=From:To:Subject:Date:From;
        b=oiD7XrE/ezzGZ+IMxeIshqy28NeWoIK/NMVMXMTme/DZ8ov0Iu7izXYmz5dMq25qr
         h/CVrO0CiHuKIxf6iVUw4SdWN4RXRvlgO3II/4YEoedK26myx1pulfC8qQONV6UocX
         hJU7RUX+1qS4q5xgtcVWkho107IOIQHZzqEh0mudb40PZSUYTS/sWKLtDEfvD+dZzH
         oUZNcBNlHgh3up3h4CZOZau22ktdpNkfIZBam1W71LhipylFPWKtfT5VAQ7tw+XfEB
         hSxZf5Y0df/P4+2miV5TbUt6aaDD0mDHDH+GyM1cuYVswhp7/i//GygvS/Py+awZsf
         w3UCXJ3zK+vaQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 48E4BC53BD4; Mon, 28 Aug 2023 11:33:05 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217837] New: Confusiion about configuration name CONFIG_CGROUP
Date:   Mon, 28 Aug 2023 11:33:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217837-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217837

            Bug ID: 217837
           Summary: Confusiion about configuration name CONFIG_CGROUP
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: goeran@uddeborg.se
        Regression: No

The configuration option CONFIG_CGROUPS is mentioned twice in the manual pa=
ge
cgroups.7, but once without the final "S", and once with it. Unless I'm
mistaken, the config option does include a final "S".

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
