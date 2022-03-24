Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E49324E62FB
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 13:12:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239478AbiCXMNe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 08:13:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232151AbiCXMNd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 08:13:33 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A46A889E
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 05:12:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D5D11B82258
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:12:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 741BEC340F3
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648123919;
        bh=v8vh44+NqMzhPvwpHPR9Id1mRzSg88AZaro6yZIK+XA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=UEoD+VAQekNmtyhEeSmdTlVfb24I8r3GaxRc6xH+cPnqYta4PWpSS4XI83ih5oEN1
         lfF10nRIFdL8GSbQvPOeFpx+aIdYlpQNIN3wfvlrdm7gJBZ/tZqp4bNtJ7sFRQyjl6
         CgjuQmeajiwBvvr64H+h5sUGcHAKRgZ3ce7u6MAtOLyipA9SF4TvzO2pC42AZXNtXR
         4Me04+k0dyn0prjgONyxYBCbLqSDN+IJlTn43q84vQ5SfbPcojA0Drn+VUAFd37xBV
         in7/HDHyuTmY/AgYkw1jsf+1HgsLD7wpSZeOChhV90VrLNdqsGMmonlttJ8fzRqI0x
         GV0Mc1w6q114Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 52110CAC6E2; Thu, 24 Mar 2022 12:11:59 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215736] uri.7: DESCRIPTION: Usage: ldap: Reference to obsolete
 IETF RFCs 2251, 2253, 2254, and 2255
Date:   Thu, 24 Mar 2022 12:11:59 +0000
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
Message-ID: <bug-215736-11311-beaB2m7dMd@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215736-11311@https.bugzilla.kernel.org/>
References: <bug-215736-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215736

--- Comment #2 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Should check the following RFCs that replace them:

2251:
  <https://www.rfc-editor.org/rfc/rfc4510>
  <https://www.rfc-editor.org/rfc/rfc4511>
  <https://www.rfc-editor.org/rfc/rfc4513>
    <https://www.rfc-editor.org/rfc/rfc8996> (updates 4513)
  <https://www.rfc-editor.org/rfc/rfc4512>

2253:
  <https://www.rfc-editor.org/rfc/rfc4510>
  <https://www.rfc-editor.org/rfc/rfc4514>

2254:
  <https://www.rfc-editor.org/rfc/rfc4510>
  <https://www.rfc-editor.org/rfc/rfc4515>

2255:
  <https://www.rfc-editor.org/rfc/rfc4510>
  <https://www.rfc-editor.org/rfc/rfc4516>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
