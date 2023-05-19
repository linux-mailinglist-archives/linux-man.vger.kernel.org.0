Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76A55709823
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 15:23:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231485AbjESNXM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 09:23:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbjESNXL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 09:23:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BD2134
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 06:23:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6B5E86134B
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 13:23:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64DAC433A0
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 13:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684502589;
        bh=h6vp65dYLrd3LFvMrErqL9esUZRBYyQdGqJVJLXo6a4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=O1uR3me4i/lllcftc/QWNJu9YXMMAbTPbNA6k5t6nJmtxKySf+CZx6GAKXlqZaQjF
         LwVoJ3ueD7G4TmEsCbgR9bwA9P3uzMnUG+79XoVWF1weuHY4zvYKjpkdHOmu1R4h+q
         1Ioq0bNKgUleoA+IWM1WOvuseW/zxcJcKUyghz62IGkhzQoCgY7ilKyUnzOTuUpMbc
         j2lmk8JtectL9qb+sKSjgTcmor+WXWwPo8Cv5nTkWtNPG9oMglpgsH6GLQZEWIpjFO
         OpDaJXbiOd5McrcS1co3uz4jdyUUt6wwj9SrhDkTbRCfbO0m2nPXVtX67xPdjSrDwV
         1taLLzzONHHow==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id B37BCC43145; Fri, 19 May 2023 13:23:09 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216876] prototype for execveat() in the documentation appears
 wrong
Date:   Fri, 19 May 2023 13:23:09 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: DOCUMENTED
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-216876-11311-uRtZf4ZNBW@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216876-11311@https.bugzilla.kernel.org/>
References: <bug-216876-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216876

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |DOCUMENTED

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
