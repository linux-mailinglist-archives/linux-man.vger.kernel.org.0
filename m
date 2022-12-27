Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DA766567E9
	for <lists+linux-man@lfdr.de>; Tue, 27 Dec 2022 08:43:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbiL0Hnj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 02:43:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbiL0Hni (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 02:43:38 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9ACD3883
        for <linux-man@vger.kernel.org>; Mon, 26 Dec 2022 23:43:37 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 802C6B80E0D
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 07:43:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F0A4C433F1
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 07:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672127015;
        bh=1SanC/xlFiVrB7HgA3yYZQcEKqvhU0+8ZxXhmlbu1+4=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=YElaMvCL1cWOmwSPAjRi1xU319AcSJpy4iMF8VaRWZ18wwpTnExhqLSWXedjqos5H
         ikuTtzdlCWOo7/OnxEQys0Ze1kLadQqXLWlMUWRaliGuC8DO6QqEn/mHXcrbHvH532
         L2sU5cJ/ujDhRF4HfKnYf1bzQVVyY9TxHsBhwGN0ukOgaz3fYMxyEii2ap760GnhIU
         cmy9hLh8r8QDKhs1rYBWdr5PQ8pPTaTGOIekFwlCctItO+MfwOnY5FUa0KG0YdgOsD
         XRf/E/X4m3Vrxej0prP/L3GuAkiZlRwcNmXnJNRdgJCOZaYLFISoytlzTDAisfsXYA
         /JDGU59IzuDTg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 0C564C05FD2; Tue, 27 Dec 2022 07:43:35 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216852] indonesiae
Date:   Tue, 27 Dec 2022 07:43:34 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Spam
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aros@gmx.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: component version product
Message-ID: <bug-216852-11311-6TsIkmNpyy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216852-11311@https.bugzilla.kernel.org/>
References: <bug-216852-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216852

Artem S. Tashkinov (aros@gmx.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
          Component|man-pages                   |Spam
            Version|unspecified                 |2.5
            Product|Documentation               |Other

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
