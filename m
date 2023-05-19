Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51BEC709782
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231410AbjESMtZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:49:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbjESMtZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:49:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F745106
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:49:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9A33E60AE2
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:49:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B91BC4339C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684500563;
        bh=gyz3XvFzf5Frdt3+NwBk4Myccps7kvYZXEI3tdyq4Bc=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=MKLW1V/qaMKmNdNNbjUHLF8RVrRYEeiF5l4b0wClEzXTouC2grUSQQkfA2z2xWefu
         RtmOhoiZ9uncSfBicUroxhQ9xYYyuiQU30du4aN87necf654hAG6A+lMjs6rdlIpUz
         2NmMSuQOAoivdgMKjdBsHqhunqZCSRdUpATgdebenGuaLH5ADJj8q8gXgiVcTmwtoW
         R/nET0yXkTVYv9Ybv8N0tf0Jjbqod2Oh+mSUpNwPwC54+cBHp5RzLbkY8fsTBEexX3
         3PqGjJpnSZBgqBfNV3ZGyszWI6OC2ivOdx833q4EP3LB4LalPZJRV73PcPo/BhcD1B
         fos3rmnsbiDcA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id F0473C43145; Fri, 19 May 2023 12:49:22 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216951] close_range(2) needs refreshing for glibc inclusion;
 closefrom(2) page missing
Date:   Fri, 19 May 2023 12:49:22 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEEDINFO
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status
Message-ID: <bug-216951-11311-YgkMubaQ3T@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216951-11311@https.bugzilla.kernel.org/>
References: <bug-216951-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216951

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |NEEDINFO

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
