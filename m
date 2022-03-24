Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1381C4E62B4
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 12:50:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349870AbiCXLvU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 07:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349864AbiCXLvU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 07:51:20 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6E3790249
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 04:49:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6532BB8222E
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:49:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29AA5C340F3
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648122586;
        bh=ciK1k7Xt8f1hCHKzCTIFXThbwiaNS/0BGrjTPNvdb/w=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=MO+ip3hhwHIbB8Q4CF48gZ9/JDekFvVGzDn+ZGyxoElZc2a+vySjvp4EyVI1BbOd7
         Xpzx2+04YgBn0ajx4OUcuirh0hoaAiA3214q1emQLPvUdzK+3colGBlLZOdV4O9DVS
         S1x0joqqvrK6o+F6RjflGH/FsdWqzCoL3JtymsMJXCpDuMFoEbO31f9iZ2YKZjAd+j
         jZ/jSn0neDgCJlDgKpcldiQU3pRJPpXpiKracp7Q5SAL4TCl8RFTHhOXsufOYnQfGl
         YiK5gT/Vym1aRCoZpAg5PhmrE4JmMmAKkDB64PxPWS3sHXTg2TbdBMFU3J6zVI7qOt
         H6HGJGhlZpZHw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 13840C05FD0; Thu, 24 Mar 2022 11:49:46 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215736] uri.7: DESCRIPTION: Usage: ldap: Reference to obsolete
 IETF RFCs 2251, 2253, 2254, and 2255
Date:   Thu, 24 Mar 2022 11:49:45 +0000
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
Message-ID: <bug-215736-11311-SU88V4bdf0@https.bugzilla.kernel.org/>
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

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
            Summary|uri.7: DESCRIPTION: Usage:  |uri.7: DESCRIPTION: Usage:
                   |ldap: Reference to obsolete |ldap: Reference to obsolete
                   |IETF RFC 2255               |IETF RFCs 2251, 2253, 2254,
                   |                            |and 2255

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
More references to obsolete RFCs[2][3][4] in the same ldap entry:

```
       dn          the LDAP Distinguished Name, which identifies
                   the  base  object  of  the  LDAP  search (see
                   RFC 2253             <http://www.ietf.org/rfc
                   /rfc2253.txt>  section 3).

       attributes  a  comma-separated  list  of attributes to be
                   returned; see  RFC 2251  section  4.1.5.   If
                   omitted, all attributes should be returned.

       scope       specifies  the scope of the search, which can
                   be one of "base" (for a base object  search),
                   "one" (for a one-level search), or "sub" (for
                   a  subtree  search).   If  scope  is omitted,
                   "base" is assumed.

       filter      specifies the search filter  (subset  of  en-
                   tries  to  return).   If omitted, all entries
                   should    be    returned.     See    RFC 2254
                   <http://www.ietf.org/rfc/rfc2254.txt>    sec-
                   tion 4.
```

[2]: <https://www.rfc-editor.org/rfc/rfc2253>
[3]: <https://www.rfc-editor.org/rfc/rfc2251>
[4]: <https://www.rfc-editor.org/rfc/rfc2254>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
