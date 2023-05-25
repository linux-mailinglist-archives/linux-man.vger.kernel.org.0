Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD5BF710B2A
	for <lists+linux-man@lfdr.de>; Thu, 25 May 2023 13:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241005AbjEYLgB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 May 2023 07:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240869AbjEYLfE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 May 2023 07:35:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E9041B9
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 04:34:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AFA6D64504
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 11:34:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD2DC4339B
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 11:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685014453;
        bh=ohtO9ypQCk61wtubFl0YOf+J+Wx5YwMz8g7rBWoe4MU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=hJgSdJ+yUeg2lXIJl3VSp5wu0LYqKY6W901YNynSbvB7ZKhT4OHQq86lBfYXt5ptz
         vA1qEPlGFKjBcJ74sI1i/nuH663sA1rzSFm/aKWksAbXvYqRp5PZO7jB2rwM3jtuMH
         RJFZVtA6Y5a31sTBiLcSI7ZwZ1RQyjRO/0KnPdAMvKm9DEdbJDfNCdLYvKW3lS5/6m
         b4siY4Vt+Xwk263SF79GmDppZMDQo8maqRGf3eDdugTRQvoWtD7EWtEj4IqtlU1lUS
         P2KibCN/uGKvEtHQIqkFLwiLQc8K0jR9HMm/whq/A0ELE1sQsJkmp8vtgQtGwXRgrk
         FXSLBkWv9epvQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id DBD5CC43141; Thu, 25 May 2023 11:34:12 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214885] random.{4,7} [man-pages 5.13] do not reflect changes to
 /dev/random semantics since kernel 5.6
Date:   Thu, 25 May 2023 11:34:12 +0000
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
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-214885-11311-OF0ptbiFet@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214885-11311@https.bugzilla.kernel.org/>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214885

Mingye Wang (arthur200126@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |arthur200126@gmail.com

--- Comment #1 from Mingye Wang (arthur200126@gmail.com) ---
Ha, can confirm. Was putting my nose through these things starting with
https://words.filippo.io/dispatches/linux-csprng/.

Things to change:

## random.7

* We should remove the concept of a "blocking pool".
* GRND_RANDOM is no longer a thing. Remove the two rows.

filippo also questions the wisdom of recommending people to roll their own
PRNG, now that the ChaCha stuff is much faster. I don't know.

filippo reports that 5.4 (commit
https://github.com/torvalds/linux/commit/50ee7529ec4500c88f8664560770a7a1b6=
5db72b)
has some magic to get entropy from jitter. We should document this behavior=
 so
people know blocking will not be that bad.

## random.4

Yep, that's gonna be painful. I recommend adding a sub section for "pre-5.6
behavior".

## getrandom.2

Removal of GRND_RANDOM shall be noted.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
