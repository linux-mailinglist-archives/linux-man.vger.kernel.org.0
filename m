Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 499F7701438
	for <lists+linux-man@lfdr.de>; Sat, 13 May 2023 05:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjEMDeh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 May 2023 23:34:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjEMDef (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 May 2023 23:34:35 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C71DA46B8
        for <linux-man@vger.kernel.org>; Fri, 12 May 2023 20:34:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 62C0B649C9
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 03:34:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7815C433A0
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 03:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683948872;
        bh=3MQz0CZVGlZBM2uL5uokr8PMH2vsJbRGzfk4oiZ/yV4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=blR77++jgADtVLFGkHnsYx57RgQFHRNzXuAUxZqGJaIJC5TDawL3LX+mCiUlUhoMP
         u7eUJVgEY+iv04ZnSyHnc6QrXXn8Bo+hJn2/yBWYW84KXWZjLwBH9F41Zv8C9ArFtj
         OkPXz7qgjiXQszx60VSj50+axrtfDuYWi0E/p/z67VI0an9crclTL+laQ1grIoRNlG
         SYDviDjOYIIt2DQ7P1e3S4XZ6m6bIeFnz7kaDJxQL0lCkM8bZYMe3bZXNbaY11S08L
         /JGdNAXZaXsVyuvMzjPcPjgZo/EO/xd6aMJ1IlA+xycl2R4al9UZjt/0+4uLlKIwFB
         34+e742V/+Hzg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id B5142C43165; Sat, 13 May 2023 03:34:32 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217435] man-pages using groff's new MR macro render incorrectly
 on man7.org/linux
Date:   Sat, 13 May 2023 03:34:32 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: arthur200126@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217435-11311-P6cr9p799n@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217435-11311@https.bugzilla.kernel.org/>
References: <bug-217435-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217435

--- Comment #1 from Mingye Wang (arthur200126@gmail.com) ---
man7.org is not affiliated with the Linux man-pages project. You will have =
more
luck reporting at https://github.com/mkerrisk/man-pages/issues.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
