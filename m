Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A65C709820
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 15:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbjESNVO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 09:21:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231676AbjESNVN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 09:21:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FF0113A
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 06:21:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DBE9564061
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 13:21:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F6BCC4339E
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 13:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684502471;
        bh=OoLZ3EQqYTJhpeXDBtAsbYI9BLFLGYtMExw6it/KP04=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=RjfounjCmqh4zCgxtbfL13DAg5XqwIvE02B7fp7HOxllxDYZBYFuZpmkwY+BwRI++
         FEfTkyJKckkuaFdNmvc3oFIwyvIUBnDWf+q+57TsfHjtg0e1RfDvd7sPTS2yuKvwJp
         ZIEfxmU+qcPPcnLraERabLcIXOvqRNmNiCvnT9msULgx9zA9+RRWhV5/j94sWVH+s0
         CsTaCTQz9whAHdE9i2gqt7cTCY+UPpM4BgPIs3Gr1cpazjLSWFQ9Mnjfwo2Pq0pvhM
         btbQZ1Bc4hv/WYUkAuWJrQp3pZyCYJ7m4aBltvLMaXJ0Py988s4PdvbQLzcTJpK8YW
         bXN6U3DZWG7QA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 30A6CC43141; Fri, 19 May 2023 13:21:11 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216876] prototype for execveat() in the documentation appears
 wrong
Date:   Fri, 19 May 2023 13:21:10 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216876-11311-yfP7jSgg1s@https.bugzilla.kernel.org/>
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

--- Comment #2 from Alejandro Colomar (alx@kernel.org) ---
Fixed:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man2/ex=
ecveat.2?id=3D0c884c2c515d20c8ecf246eef5208dc748b98e65>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
