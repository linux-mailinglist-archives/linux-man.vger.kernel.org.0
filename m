Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 446205590E0
	for <lists+linux-man@lfdr.de>; Fri, 24 Jun 2022 07:14:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229960AbiFXFJi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jun 2022 01:09:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbiFXFJi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jun 2022 01:09:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDF602BB0C
        for <linux-man@vger.kernel.org>; Thu, 23 Jun 2022 22:09:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 73EFF61827
        for <linux-man@vger.kernel.org>; Fri, 24 Jun 2022 05:09:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8760C341C8
        for <linux-man@vger.kernel.org>; Fri, 24 Jun 2022 05:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656047375;
        bh=gMbtLiz5tpwkpLNyTLVOQoMWaFtCZlft0KVqwhHmbEs=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=cYJm7jbFWcTrw0Bx4jqGVbLJMAI9AqgCNZ3tjbBALaLgzkpLXvn1AKCsjOIhqY8ef
         F0c6vqeIvqV45TtRkOWnuQzk0LrQJCBSSe1/3BqFprzkstsWcG6XQetU3S/7V7mJGL
         lqaM5OgbEfLX/vmUgGiNrUaoYn15JrF+R8GfeSSz6IjzzVg6zUKdUpNAD1b1vfgr5k
         xLwBmA3+RKlM/vxFqs6UiOOaVUEkhYOu16fHDLzhTKMDsG4NmiljFxKGqHjKQ8hmlz
         XwcBm0CASYRick6Yf5JL7xvz+mOBgN4+6m2PHWD3BQBK30oltuRMSs+ICheyivMh4T
         Rj7K5WgbsRvYQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 9312ECC13B4; Fri, 24 Jun 2022 05:09:35 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216168] updwtmp(3) doesn't mention need for _GNU_SOURCE for
 updwtmpx
Date:   Fri, 24 Jun 2022 05:09:35 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: sam@gentoo.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216168-11311-sZkuiBlSp2@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216168-11311@https.bugzilla.kernel.org/>
References: <bug-216168-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216168

--- Comment #2 from Sam James (sam@gentoo.org) ---
Sent patch to ML: https://marc.info/?l=3Dlinux-man&m=3D165603977710424&w=3D=
2.

Suppose the commit message should be more detailed but I'll wait for someon=
e to
tell me if this is even right first :)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
