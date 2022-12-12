Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F8BA64A2CE
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 15:06:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232762AbiLLOGZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 09:06:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232727AbiLLOGX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 09:06:23 -0500
X-Greylist: delayed 520 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 12 Dec 2022 06:06:21 PST
Received: from fester.cwi.nl (fester.cwi.nl [192.16.191.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CFE9E0C0
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 06:06:21 -0800 (PST)
Received: from localhost (86-83-142-118.fixed.kpn.net [86.83.142.118])
        (authenticated bits=0)
        by fester.cwi.nl (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 2BCDv5fF000833
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Mon, 12 Dec 2022 14:57:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cwi.nl; s=default;
        t=1670853426; bh=aDaxEYe0ig1esf1UOVOa0+5UwVpEnMI6weg0rWc9lsI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=od2tnzwHwGN4EY/RbD0VAkuT1WkgJ++4cnsKM5CJet4qrYnMvEv8jssXmOHhQ5f1K
         x6kVNTP2h4rjF+1BB3QWiSTueQxNT8KLYpWTFkCkfVWWKCNryq4kqO6UmaUSPOTZiw
         NlmZ3iTMnMbGX63n1NDLyN8BMIa2zR778jKdE/Q0=
Date:   Mon, 12 Dec 2022 14:57:05 +0100
From:   "Andries E. Brouwer" <aeb@cwi.nl>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Michael Haardt <michael@moria.de>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
Message-ID: <20221212135705.GA138593@if>
References: <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
 <20221212131922.e37ltilm6qv4invd@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221212131922.e37ltilm6qv4invd@illithid>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Dec 12, 2022 at 07:19:22AM -0600, G. Branden Robinson wrote:

> The 4.2BSD provenance is particularly valuable, in that it illustrates
> how the terminology was retained

Earlier I replied and showed a snapshot of the history.
Contemporary:

https://www.freebsd.org/cgi/man.cgi
All Sections

https://man.openbsd.org
All Sections

A random Oracle man page for SunOS:
man pages section 2: System Calls

https://developer.apple.com/documentation/os/reading_unix_manual_pages
"Section 1 of the man pages covers command-line tools, section 2 covers system calls, section 3 covers user-space libraries, and so on."

Etc.

It may be true that there was historical use of "chapter", but
all common places today have "section".

Andries
