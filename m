Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 491926DA8FE
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 08:35:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbjDGGfr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 02:35:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjDGGfq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 02:35:46 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADAF3C3D
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 23:35:44 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pkfhC-0001l2-Uh; Fri, 07 Apr 2023 02:35:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=ejCzAqrhfBzyjgyY5y4WnNyZrvNTq5Sjpye6KBY8ZNc=; b=OxjNah9pGusWworffJP7
        8uFKtwkmv4jW2wAlepRzzxHuDEfaGxJq8OCTS1E76MihYW6CRpfXYNMZobnPa4QajbSMEldrjAUel
        5a+5Fu4Ub2KRWnC82RRGVqmfR/60XgCdzkGCje4tO9bO3iKn6BimNRlZRuSUWDYhbGkIXmSIhgu7K
        9kBjcTWLpZSKVz2x2cFBLn0YGyrbgIRvyD0k3RCrLR58nEL1uuRZ/ijCKKjwcI5yn5KlYE8oBku9f
        QCdU27CukJ2xFUZjx9xkOAdJUVZk2j9cJyZyqeEm/wgL5RX7UN25MWmK85n9fvZe0JCVIajJrvlLc
        0ZAL3K0YWsf3EA==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pkfhC-0002QQ-Dl; Fri, 07 Apr 2023 02:35:38 -0400
Date:   Fri, 07 Apr 2023 09:36:10 +0300
Message-Id: <83fs9cp5b9.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     alx.manpages@gmail.com, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
In-Reply-To: <20230407021822.3grfnenicwjhdive@illithid>
        (g.branden.robinson@gmail.com)
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
MIME-version: 1.0
Content-type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Date: Thu, 6 Apr 2023 21:18:22 -0500
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
> 	linux-man@vger.kernel.org, help-texinfo@gnu.org
> 
> > Hmm, now that I think, it's probably an issue of coordinating man(1)
> > and less(1).  I sometimes wish that when I resize a window where I'm
> > reading a man page, it would reformat the page from source.
> 
> Seems like it shouldn't be impossible to me, but what I imagine would
> require a little reëngineering of man(1), perhaps to spawn a little
> custom program to manage zcat/nroff pipeline it constructs.  This little
> program's sole job could be to be aware of this pipeline and listen for
> SIGWINCH; if it happens, kill the rest of the pipeline and reëxecute it.

This should be possible, but it flies in the face of the feature
whereby formatted man pages are kept for future perusal, which is
therefore faster: if the formatted pages reflect the particular size
of the pager's window, it is meaningless to cache them.

>   ... Run the command 'sudo make uninstall'.  (If you successfully used
>   'make install', simply run 'make uninstall'.)  At a minimum, some
>   directories not particular to groff, like 'bin' and (depending on
>   configuration) an X11 'app-defaults' directory will remain, as will
>   one plain file called 'dir', created by GNU Texinfo's 'install-info'
>   command.  (As of this writing, 'install-info' offers no provision for
>   removing an effectively empty 'dir' file, and groff does not attempt
>   to parse this file to determine whether it can be safely removed.)
>   All other groff artifacts will be deleted from the installation
>   hierarchy.
> 
> Any chance 'install-info' could get savvy as noted above?  (Maybe it
> already has--I'm running 6.7.0.)

Why does it make sense to do that?  An "empty" DIR file is not really
empty: it has instructions at its beginning, which are important for
newbies.  Also, on well-maintained system, DIR will rarely become
empty, and if it does, it will soon enough become non-empty again,
since all the Info manuals installed on the system should be mentioned
there, and why would we want to imagine a system which has no Info
manuals at all, not even an Info manual that describes how to use Info
(which comes with the Texinfo distribution)?

So I think Groff should remove that paragraph from its instructions,
because (IMO) it is misleading and unnecessary.

Of course, mine is not the authoritative opinion about how the Texinfo
project should develop its programs, it is just one opinion.  So wait
for Gavin to chime in.
