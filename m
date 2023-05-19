Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE6D57096EE
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 13:57:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbjESL5N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 07:57:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbjESL5M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 07:57:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C9661716
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 04:56:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 19E1465718
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 11:56:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CF7C4339C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 11:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684497402;
        bh=poB2v9YMekJp9jEUlykVP50wz7gy6NoDLX1vDzo7ntU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=q+tESSOetoQw14KhGm6F11S3dZ/IJYcofXPSvrWiCVZz9jP6OECTbsF6FkaymBfcK
         Hbon3pZqHicTAJ+rzS454Q/gbgSrHqFzLT6D3OQCO8KPhZ4SFDpE8MNTmtYn9LOmDu
         7WXjLd+Me+rZ2p+ni4GSxpHVPxd37a7CdZmtTEKptdEu+CkOoebYTOf2PKtToq4geG
         Ave110y7d32yDCs3Om9CCxHI4GRNs+2yLH29ndF4Kw9k4ZX5Cx7g254Wku/PU8Xwtn
         xTKwZ4v0tnAxEtUHpQMJihtC4j1ysdQF1vdbawlZ8EoAIgIiKI5XLNNlLVxlc5fV4W
         i9ISyixwPUy0Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 65C98C43145; Fri, 19 May 2023 11:56:42 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217164] proc(5) man page says that VmallocUsed is not
 calculated despite being calculated
Date:   Fri, 19 May 2023 11:56:42 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217164-11311-tAxNyLnwvd@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217164-11311@https.bugzilla.kernel.org/>
References: <bug-217164-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217164

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Could you please send a patch according to the ./CONTRIBUTING file in
the repo?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
