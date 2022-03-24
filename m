Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09B7F4E62A4
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 12:46:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239148AbiCXLs0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 07:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235457AbiCXLsZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 07:48:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2EE1A1461
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 04:46:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7D135619D3
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA5C340F3
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648122412;
        bh=Lf0p6mACLJtk5up0IcLSrDhwyZm2iXp20EI5K/a9fHM=;
        h=From:To:Subject:Date:From;
        b=a4XjLtr9FSiTET7iuawo9il9veYE6M7HH3Q+qBdibimTNMvuWwyc1oBo6JVmpXAEg
         CiK/gvh8p+irxwikQt83Xe5SitQKRakFCOudys4iQlzLU4RQTgUmbU5nbZ7dcoPimh
         7WHm7KixZB4VychhLavw/6yrmDoOPvv/Tya11YohWKxayvHrxQ/9N/yamZCFt0ssSb
         at5q1Pc1jaqYZURQSt2KmP86+HIL3SIGn4xaXx1clEw6xTEhiRA6ILPsM2TzZlY4oy
         XcZyye1o4WALXmQ0ZdU58tKqHgN5NlwRsLux9SR5pe4hVqzAFWOjAzPU44251cOT8H
         h7DPS5asX5EbQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C1CB1CAC6E2; Thu, 24 Mar 2022 11:46:52 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215736] New: uri.7: DESCRIPTION: Usage: ldap: Reference to
 obsolete IETF RFC 2255
Date:   Thu, 24 Mar 2022 11:46:52 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
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
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215736-11311@https.bugzilla.kernel.org/>
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

            Bug ID: 215736
           Summary: uri.7: DESCRIPTION: Usage: ldap: Reference to obsolete
                    IETF RFC 2255
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: alx.manpages@gmail.com
        Regression: No

uri(7)::DESCRIPTION::Usage::ldap reads as:

```
       ldap - Lightweight Directory Access Protocol

       ldap://hostport
       ldap://hostport/
       ldap://hostport/dn
       ldap://hostport/dn?attributes
       ldap://hostport/dn?attributes?scope
       ldap://hostport/dn?attributes?scope?filter
       ldap://hostport/dn?attributes?scope?filter?extensions

       This scheme supports queries to the Lightweight Directory
       Access  Protocol (LDAP), a protocol for querying a set of
       servers for hierarchically organized information (such as
       people   and   computing   resources).    See    RFC 2255
       <http://www.ietf.org/rfc/rfc2255.txt>   for more informa-
       tion on the LDAP URL scheme.  The components of this  URL
       are:

       [...]
```

It refers to an obsolete RFC[1].  We should update the info there.


[1]: <https://www.rfc-editor.org/rfc/rfc2255>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
