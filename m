Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F66D4E62B2
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 12:50:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344584AbiCXLvu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 07:51:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242622AbiCXLvt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 07:51:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 655F590249
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 04:50:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 091F4619C5
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:50:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F596C340EE
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648122617;
        bh=2FcSsh7IKnaSajcGx5nkbNVNDpg+jKI6SJrYzihyqQ8=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=RYBAdA/xOka2Br4WRpO3NUyKuTdDqSbS1SUIhmai4TeJbf+DEMmwRqarmPhXwOhdQ
         7dTdWHmkK5ncf10ezECu433nFaNGWUwXRYHYQHR7p6FWFMG4giuH/BkoMkuVUqYe/7
         tvdYsjR8YAWyUSJ6lR3w/GggXADBeVCIfBpbZdxjRnC+uQ4MQpqotueia9do32e2tv
         u+eLlsHOSKlvlt0ylD9LGXu9LYiyDjLB1SNBZmEoNLkP+znuA601Kgiz1D8C3mx6Bk
         ZM6Sr6aIxnLuQpkzOGscCTcJoeT62F0XvttSxuNTtTpGa5gfBgdovvia0iYhs2h3Lo
         Am0AcAi5g1xtA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 596DBCAC6E2; Thu, 24 Mar 2022 11:50:17 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215735] uri.7: DESCRIPTION: Usage: news: Reference to obsolete
 IETF RFC 1036
Date:   Thu, 24 Mar 2022 11:50:17 +0000
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
X-Bugzilla-Changed-Fields: short_desc
Message-ID: <bug-215735-11311-2rxkYdomNR@https.bugzilla.kernel.org/>
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

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
            Summary|uri.7: DESCRIPTION: Usage:  |uri.7: DESCRIPTION: Usage:
                   |news: Mention to obsolete   |news: Reference to obsolete
                   |IETF RFC 1036               |IETF RFC 1036

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
