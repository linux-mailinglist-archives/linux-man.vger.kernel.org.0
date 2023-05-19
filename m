Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24098709710
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjESMJe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:09:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjESMJd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:09:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BE19128
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:09:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 41D2F65667
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:09:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E973C4339C
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684498171;
        bh=4RT+7b6zign3CKdt8487EZoNKX4YmAtO6izR18R5R+U=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=uSPKHcVkk1nI7wDmO2p16rqlVWs6A7wZ2zcPwIHn2iIfDFZ2z2TQBY7NPwLzj4biG
         T2RasFysAUpXje8uqOZ7dj53faSWTExcZNlMj9Wv7/JQmQ++mzfxhu0wZUXEbQWnKS
         asGdTs7zRHId2QFBVAOtf/4Z7adZ2HnRGZTIQ1ifpcYxKzLlwkwhlEWj+tC3SeRQN0
         q56fXSugCi6acxOezsrw6kQBdkV7iN3E4Mwi0h7FbiSDgLP+oxRhkmrSHNhUTM03Ao
         +GgtCuIpq37dQzesxqH0id+QijeoZH5iMX0LzK589XBJfbBsVDVw6ABX4gCwx5HffT
         dY7Fz+ncjoMNw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 82D66C43142; Fri, 19 May 2023 12:09:31 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217059] Please document behaviour of iconv(3) when input is
 untranslatable
Date:   Fri, 19 May 2023 12:09:31 +0000
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
Message-ID: <bug-217059-11311-biaHncNH9r@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Would you mind sending a patch according to the ./CONTRIBUTING file in
the repo?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
