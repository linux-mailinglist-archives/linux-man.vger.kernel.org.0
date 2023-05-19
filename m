Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EA1970971B
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 14:12:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbjESMMr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 08:12:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbjESMMq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 08:12:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 670FA192
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 05:12:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E8AA265667
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:12:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D4A6C4339E
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 12:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684498364;
        bh=69aPspUONUDfilb2B3jL4Q7E2oTm7AhDiekUJhX/phs=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=AW9S4PL9yr1LiDeTs2nQ1GX3spI/A58eqlnJkzglH6dK+5UBv7ycRCLk6sel9RQfA
         UyC+rY9FaU32iZ/y+mND4pOgRV5VpF4Xb/fXfhRb3jg7wO6lWI43p3L7sVJ3QCdEs2
         Ja3dq3vQv0B8topdZ4o8Mexy9qcNtQoy1F9e9PCO5/gq5LqD+/yIKwBvS1Ib6DcnNn
         v6se8xhZCPH7j3T5Sr5u0lFJYnsvYlvBGSgurtjfUw0xiA4kOOkX+fGRtCxXUdufU0
         AZ7sMF7Lw3ulATCaX3JPRDO4iN03UWcjWcWmvKGFQb8g30xfCrKAhe0CjG5kRx1zX7
         iTLyk4CswXC3g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 32D1EC43141; Fri, 19 May 2023 12:12:44 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217001] Undocumented behavior of ptrace(2) when a seized
 process gets SIGCONT
Date:   Fri, 19 May 2023 12:12:43 +0000
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
Message-ID: <bug-217001-11311-3mFk4pSZz1@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217001-11311@https.bugzilla.kernel.org/>
References: <bug-217001-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217001

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Would you please send a patch according to the ./CONTRIBUTING file in the
repo?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
