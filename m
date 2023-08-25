Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E00E6788BC1
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 16:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244382AbjHYOcE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 10:32:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343835AbjHYOcD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 10:32:03 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE60E7F
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 07:31:56 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1qZXqs-003day-07;
        Fri, 25 Aug 2023 16:31:55 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qZXqr-0014BZ-Dj; Fri, 25 Aug 2023 16:31:53 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qZXqr-009aPS-6V; Fri, 25 Aug 2023 16:31:53 +0200
Date:   Fri, 25 Aug 2023 16:31:53 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Vetter <jubalh@iodoru.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff in openSUSE
Message-ID: <ZOi7WeZcJUxuPokX@asta-kit.de>
References: <4a600a55-a68c-1c7a-42cb-403e2f51aed0@kernel.org>
 <2c5edf3e-9e8a-fa7e-410b-8b805bd97461@iodoru.org>
 <961d519a-78d3-25e3-dde8-75d5e0e2fe16@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <961d519a-78d3-25e3-dde8-75d5e0e2fe16@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Alejandro Colomar wrote on Fri, Aug 25, 2023 at 02:56:15PM +0200:
> On 2023-08-25 14:05, Michael Vetter wrote:

>> # conflicts with mandoc
>> mkdir man7mp
>> mv man7/man.7 man7mp/man.7mp

Creating a subdirectory for the Linux Man Pages Project sounds
like a bad idea to me.  I would expect that to confuse users
because the Linux Man Pages Project is arguably the most important
documentation on Linux, so relegating even part of that to a
subdirectory feels at least surprising.

> Since you use man-db as your primary man(1) implementation --or I
> thought you do--, having man(7) provided by mandoc makes no sense.
> You should have groff's groff_man(7) be your man(7) --maybe via a
> link page (.so), or via a symlink--.

As the upstream maintainer of the mandoc(1) toolkit, i concur.

The man(7) manual page included in the mandoc toolkit documents
how mandoc implements the man(7) language.  That is only useful
for operating systems regarding man(7) as an obsolete historical
language, which isn't the case for Linux because Linux still
sticks to the 1979 tradition of using man(7) for most manual pages
and even supports writing new manual pages in man(7) - even though
i understand that Alejandro is now also willing to accept new
manual pages written in the younger mdoc(7) language which is more
powerful, easier to write, and less susceptible to compatibility
problems nowadays.

If you want to install the mandoc version of the man(7) manual page
on openSUSE - which may occasionally be useful for very experienced
manual page users on openSUSE who wonder what exactly mandoc implements -,
you should probably pick a different name like mandoc_man(7) by
assigning to the MANM_MAN configuration variable in configure.local
as documented in configure.local.example, for example by adding a
line similar to this to configure.local:

  # Some distributions may want to avoid naming conflicts among manuals.
  # If you want to change the names of installed section 7 manual pages,
  # the following alternative names are suggested.
  # The suffix ".7" will automatically be appended.
  # It is possible to set only one or a few of these variables,
  # there is no need to copy the whole block.

  MANM_MAN="mandoc_man"           # default is "man"

Yours,
  Ingo

-- 
Ingo Schwarze             <schwarze@usta.de>
http://www.openbsd.org/   <schwarze@openbsd.org>
http://mandoc.bsd.lv/     <schwarze@mandoc.bsd.lv>
