Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 068B84E636A
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 13:32:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243937AbiCXMdi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 08:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233678AbiCXMdi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 08:33:38 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4862972F9
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 05:32:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 859A6B8238C
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2484EC340F4
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648125124;
        bh=p3p6ZM6rlhVXeD5RSbP6TvpcT3H4xI9jYIXwXsmXHWU=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=nxOtDtQsAtFKyaEvnk0+XohhiIOHhZThe2yeXCe0NmB/bkojmLcgGC4WSYbgDwWcQ
         UE0MkXw3VZ66iyddcAoq3OVTFRsCnYsnhj9OWeHc8tZU3t1eeptgAgSe5GXeqOQnr1
         ZvYPdhjyhdYWBOpN0ykO0US8bqUdPZ1cc0PS+bC3jMWl4fCPIjXaeoxr8wFBw7HV/L
         zHg5kixq+HR5A7QSoSsdU1LsVpr0sqd7rpFSjasWFdwWWnzjnc+q/FZXc3tYO4s/X3
         iKpPGn5t0jrTgXJhsnEot+O1inFeWH/fEKpZ7+iGfVo3XySJUAbI1AbCfCMd5XqWjm
         IUb6W7hhMkf9w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 08DFBCAC6E2; Thu, 24 Mar 2022 12:32:04 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215735] uri.7: DESCRIPTION: Usage: news: Reference to obsolete
 IETF RFC 1036
Date:   Thu, 24 Mar 2022 12:32:03 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215735-11311-CbQaosdKoY@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215735-11311@https.bugzilla.kernel.org/>
References: <bug-215735-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215735

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Should check the following RFCs that replace it:

1036:
  <https://www.rfc-editor.org/rfc/rfc5536>
  <https://www.rfc-editor.org/rfc/rfc5537>
    <https://www.rfc-editor.org/rfc/rfc8315> (updates 5537)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
