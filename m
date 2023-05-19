Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7B1B7096EF
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 13:57:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230412AbjESL5Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 07:57:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230362AbjESL5P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 07:57:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DCAD1B4
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 04:56:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AEF3665720
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 11:56:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20E4FC433A0
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 11:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684497414;
        bh=43peKpLJYTjQiW/9nnSevLNPi6MXRKsYPTNBRhJO7CU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=MXedd6Vtg3ZJSOXziC+KoA3fB8Gz+fFGBL3nqFl5GpxyoqG0WcC7/3lpVPv5SyeO4
         W8nREPB54vdsWP7FPL2HE08XhdFEHLIXLJ794BdeJhVpOT+3VCXX/eYzETXRagnqJO
         Ttcjc//hNKQySrytuvnXdpbrko3ou2jTfwqpo9UiJdBNkAncnPgOl7kFneHSRAusl1
         EOmcYd5EVUWUzBjN0u1MUwiMnsQZWAGJiV2pNuyRbm/Q/8koCFGUsajygaYJ1zt0+w
         M9jJZIhZhQWrgcoSVkKQufxDxuI2EcRAc43Fh6YOZ/A9Av/29DS0ewLa4APRpcNB66
         0TIx0xUujOUcw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 130FCC43145; Fri, 19 May 2023 11:56:54 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217164] proc(5) man page says that VmallocUsed is not
 calculated despite being calculated
Date:   Fri, 19 May 2023 11:56:53 +0000
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
Message-ID: <bug-217164-11311-XSn3hVhpFw@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217164-11311@https.bugzilla.kernel.org/>
References: <bug-217164-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217164

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |NEEDINFO

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
