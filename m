Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 852EE4E635C
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 13:29:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344182AbiCXM3m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 08:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350145AbiCXM3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 08:29:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD6922DD62
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 05:28:03 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 72DFA61A87
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:28:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8235C340F3
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648124882;
        bh=Ke0RW3U0XumT3yeaarCDVDrYWVgHWdMm4S++84LDpMM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=sfmiyVirDqUfaTESaEMrMzqcdkW01Kojrld4sdTXnDyzoK/K3L/n79L9bHXH0IElz
         mjoIpzO1OD1R29WFjMF8dT325qGSIkvkGsotJK6xf+UbBfOU5s2ugJURI/3zA2TGTV
         B21Y8oC6BPPHtntcmpr70q1GFTBjpK9LOcrTlxNl+LlrxwRqOaHMJ55BQFpXo3+peg
         dQ0AWcUqC8MhM33vhE/IxDoPP+9EMS2l/ohal0OUuNvYU5dY0lMXaLWQc+6tkTLLFV
         tVUro36UWVYzaffLv5Ho0rlg5DD+qOY0ZiSMqri/G5LnCxWxZQm0XzRZb6YIVqatg+
         rrnJZMxt3rzCA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id B9E08CAC6E2; Thu, 24 Mar 2022 12:28:02 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215738] uri.7: CONFORMING TO: Refers to obsolete IETF RFC 2396
Date:   Thu, 24 Mar 2022 12:28:02 +0000
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
Message-ID: <bug-215738-11311-1divy4eUUm@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215738-11311@https.bugzilla.kernel.org/>
References: <bug-215738-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215738

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Should check the following RFCs that replace it:

2396:
  <https://www.rfc-editor.org/rfc/rfc3986>
    <https://www.rfc-editor.org/rfc/rfc6874> (updates 3986)
    <https://www.rfc-editor.org/rfc/rfc8820> (updates 3986)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
