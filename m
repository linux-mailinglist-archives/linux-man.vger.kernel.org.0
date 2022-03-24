Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FC9A4E62E0
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 13:01:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347318AbiCXMDL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Mar 2022 08:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241040AbiCXMDK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Mar 2022 08:03:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 181AFA7774
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 05:01:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 914F5619FE
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:01:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05B47C340F6
        for <linux-man@vger.kernel.org>; Thu, 24 Mar 2022 12:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648123298;
        bh=fW6eu203nZyOmYTT8QnR8iAmMiNJNqhkHLfbX5sh/3U=;
        h=From:To:Subject:Date:From;
        b=qOVjw6IgofFN8gElC6qFWnJERlw4IgCTyo/aMSvjEKsaq/pGqugfCl4ttgqlIwLum
         JkgyqwCohfEl4Xi4uvn3xacvnhortm89/IVst0AmpVuj4YD8DC2Kau15MAwktQhcR3
         pfx6mGG9KLGfJuijBoTJkbH9WzP0qUffyyvZJsNM9hBs21/KvT3Rcm1m2ln1xwL6IK
         T7ZAgxyHlHw0xznd7wxUTnLjkHL4G3T9PkugI0esRbXOL+7A/fy7aKW3UFwraTBqm3
         Mtn/N0RLpEEZ88gLiVFcY0FgLIK3knkbuTjCVehEHMqYYeFYbfZo3yBrl8deN7U+oA
         xdpecq6evbeZQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id E8862C05FD0; Thu, 24 Mar 2022 12:01:37 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215737] New: uri.7: DESCRIPTION: Character encoding: Reference
 to obsolete IETF RFCs 2718 and 2279
Date:   Thu, 24 Mar 2022 12:01:37 +0000
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
Message-ID: <bug-215737-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215737

            Bug ID: 215737
           Summary: uri.7: DESCRIPTION: Character encoding: Reference to
                    obsolete IETF RFCs 2718 and 2279
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

[uri(7)::DESCRIPTION::Character encoding] reads as:

```
   Character encoding
       URIs use a limited number of characters so that they  can
       be typed in and used in a variety of situations.

       The  following characters are reserved, that is, they may
       appear in a URI but their use is  limited  to  their  re-
       served  purpose  (conflicting data must be escaped before
       forming the URI):

                  ; / ? : @ & =3D + $ ,

       Unreserved characters may be included in  a  URI.   Unre-
       served  characters  include uppercase and lowercase Latin
       letters, decimal digits, and the following limited set of
       punctuation marks and symbols:

                  - _ . ! ~ * ' ( )

       All other characters must be escaped.  An  escaped  octet
       is encoded as a character triplet, consisting of the per-
       cent character "%" followed by the two hexadecimal digits
       representing  the  octet  code  (you can use uppercase or
       lowercase letters for the hexadecimal digits).  For exam-
       ple, a blank space must be escaped as "%20", a tab  char-
       acter  as  "%09", and the "&" as "%26".  Because the per-
       cent "%" character always has the reserved purpose of be-
       ing the escape indicator, it must be  escaped  as  "%25".
       It  is  common practice to escape space characters as the
       plus symbol (+) in query text; this practice  isn't  uni-
       formly  defined in the relevant RFCs (which recommend %20
       instead) but any tool  accepting  URIs  with  query  text
       should  be  prepared  for them.  A URI is always shown in
       its "escaped" form.

       Unreserved characters can be escaped without changing the
       semantics of the URI, but this should not be done  unless
       the  URI  is  being used in a context that does not allow
       the unescaped character to appear.  For example, "%7e" is
       sometimes used instead of "~" in an HTTP  URL  path,  but
       the two are equivalent for an HTTP URL.

       For  URIs  which  must  handle  characters outside the US
       ASCII character set, the HTML 4.01 specification (section
       B.2) and IETF RFC 2718 (section 2.2.5) recommend the fol-
       lowing approach:

       1.  translate the character sequences  into  UTF-8  (IETF
           RFC 2279)--see utf-8(7)--and then

       2.  use  the URI escaping mechanism, that is, use the %HH
           encoding for unsafe octets.
```

It refers to obsolete RFCs[1][2].  We should update the info there.


[1]: <https://www.rfc-editor.org/rfc/rfc2718>
[2]: <https://www.rfc-editor.org/rfc/rfc2279>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
