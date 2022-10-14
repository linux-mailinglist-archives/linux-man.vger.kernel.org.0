Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A3C5FE8BC
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 08:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbiJNGPS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Oct 2022 02:15:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiJNGPR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Oct 2022 02:15:17 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 004C1895DA
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 23:15:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3CA15B82213
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 06:15:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9237C433B5
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 06:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665728112;
        bh=XfoziNY6uZq0eK0a3caWR+iXigmowaVzSwnyrJ4ycd8=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=KY1BG+9jqzcu0CCAVHQbfdpAV11dM1MWPREG3KumnLMvyGYZnFotE1rnopjyKubwX
         18C5677MKpZgaGUY6SAmaN9skgXOfkKL4MkZCgT96vkxLflciQL7K6sK1fj/5ZqFIO
         6s6Y2MmPZsOXDZSNmDlyY7wlVqyr3g3BDw+zgk1WiDcCAk5U6Bl3rIHXW3nzs/Ug5z
         E6Np5tKJh80tSDi8x1nY1iMPicpOdI9DbKljYND32oR6DkS4PLpPOolRWr4ZDBMfGc
         A5Bu8aPGx8eTcklaBq6Nz+qRiJ9Bn08ufrzcn5PkVACwgiTffs1SAVyJbzxeb/Wyc/
         webXn+5sZEliA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id BE3DFC433EA; Fri, 14 Oct 2022 06:15:12 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216584] Undocumented mount option subset=pid for proc
Date:   Fri, 14 Oct 2022 06:15:12 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linux@philippwendler.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216584-11311-hwBp76V6xq@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216584-11311@https.bugzilla.kernel.org/>
References: <bug-216584-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216584

--- Comment #1 from Philipp Wendler (linux@philippwendler.de) ---
Actually, skip my last paragraph, it seems this patch did not get merged ye=
t.
Last iteration I found is at
https://lore.kernel.org/all/cover.1626432185.git.legion@kernel.org/. But the
mount option does exist.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
