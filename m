Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19A9B70971C
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:12:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjESMMx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:12:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbjESMMw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:12:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FEC3192
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:12:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2A5D165710
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:12:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93F28C4339C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684498370;
        bh=UGW1siLeJBuCO3TgLtTVH6ZeoCgUjHdg7/x5oRyberA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=DrtuBJm2wJevLOLNNA8LZ/YPm86sj4O8T6Qgn7tc2KKMXDxTKPntjUa/8Zg2plYxy
         rVKyNldXIU6WfUcQmujZhQMp960Ibehkf8T3Dv70Xpn1GvWAus19BJGj18YTke8x4I
         o+rpCRWNy/CcVtSC3ABpNxaMdWoZSuosSFuz7LN90eO8R5E4iTpdypSh0ETl8dP7ee
         R1joYPEfb44NXcT+TbFYClz5T3ceby61GOrjefYFZiVuxOwEXcfWhgdnKDa5XVuMG5
         HvT3nHkQpel7+RKHhpznYE+QRKI2h8Ug/IRVwALKTNuxyDeAHSo00KPWEORUTcWhOd
         Ga3DqtQsuQvIA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 84637C43145; Fri, 19 May 2023 12:12:50 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217001] Undocumented behavior of ptrace(2) when a seized
 process gets SIGCONT
Date:   Fri, 19 May 2023 12:12:50 +0000
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
Message-ID: <bug-217001-11311-M62aaY4DWy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217001-11311@https.bugzilla.kernel.org/>
References: <bug-217001-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217001

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |NEEDINFO

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
