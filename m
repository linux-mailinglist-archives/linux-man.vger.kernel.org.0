Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79428709717
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjESMJs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:09:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbjESMJn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:09:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A877E1AB
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:09:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 437FA65710
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:09:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A947BC433A0
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684498181;
        bh=n++1urQnxley0ZyySYWqBZbXo+tqJ/6b7x8gI3KKntQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Qc7fwxWY/0iPisDBMPgwmBAHPn3XfWAi/TvVBYJrtKOJfgG7sfWsDoW+HuFoHcTGJ
         Z9J8GWGB0uWBcJ5sKFzCncG9OaGugyfkzgw6g0kdCJi3+gmC32nAD2lClyx+dNcPNq
         ehWg5lR3h0yS4C3fJwvW6KtqZ0gcH/jhPu3QDQoU9M3W3xyo68DJVY5jUsDmnaGhkv
         LmQynwqwpibNYtwgZnad/b1Ce2i13x5HyTMNiXMZdPkYT76GX8Aj5fK4nbIScOjTEV
         wp8/XmytGe8zw7PNtMPEIWrcligzE28ohvadW6ozIzRPGN21ShSeIbgA+fDDXBulBs
         aVMxh3z39Us8A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 96F50C43141; Fri, 19 May 2023 12:09:41 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217059] Please document behaviour of iconv(3) when input is
 untranslatable
Date:   Fri, 19 May 2023 12:09:41 +0000
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
Message-ID: <bug-217059-11311-HVkgBfYPnP@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217059-11311@https.bugzilla.kernel.org/>
References: <bug-217059-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217059

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |NEEDINFO

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
