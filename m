Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C92E96DBB3E
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 15:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229569AbjDHNsF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 09:48:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230014AbjDHNsD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 09:48:03 -0400
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D01AFE059
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 06:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=Fe33Zl6YQTNNcCuClARS2UaJ7t8J2AxqwNtdXWsCcPU=; b=KxzLj+3Q0x/CQUxLFKfpR8KrP/
        BaN0IbtpjrHR8LAMFn1NMT9NjnsOx/eycf5eTDLzlmjpoYjiuX3wuq/6rsAq187tNQxms234/QYqn
        J89NWhct2qcK5aDjpIDSU8qE+mJifrGENFhVIjUTjeddscr69LHuS+AoI6uIqqp9fYTytITi+gGI8
        Zq1Tsa/glglECpiV/kkJrD/19VQ+/nlEzhyNcNkIRpn5lo83XIhr4ftam/98xv3bJWfrJPisQyg4O
        4M2qfC9yTs1ZYl8zqWVUHU7bSfHB6024sTjL9VSqQsqQ5MSdyj84fhIkIxz1RWac9kMZ8VUoNBJkP
        C4WATIkg==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1pl8v7-00DffR-DG; Sat, 08 Apr 2023 13:47:57 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1pl8v5-00DXYi-FH; Sat, 08 Apr 2023 14:47:55 +0100
Date:   Sat, 8 Apr 2023 14:47:54 +0100
From:   Colin Watson <cjwatson@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
Subject: Re: Accessibility of man pages (was: Playground pager lsp(1))
Message-ID: <ZDFwisXkZNvthBc6@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
 <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
X-Debian-User: cjwatson
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Apr 08, 2023 at 03:02:59PM +0200, Alejandro Colomar wrote:
> Colin, I've had a feeling for a long time that compressed pages are
> not very useful.  These days, storage is cheap.  How would you feel
> about having the man pages installed uncompressed in Debian?  That
> would allow running text tools directly in /usr/share/man/.

I'm not personally all that bothered either way, but it's a
distribution-wide policy decision rather than something I'd decide on.
I suspect there are still some people who would push back against the
space cost.

> I've had to do that several times, and lucky me that I have the source
> code of the Linux man-pages checked out in my computers, but other
> users don't and they might have trouble finding for example which
> pages talk about RLIMIT_NOFILE.  The only way I know of is:

man -Kaw RLIMIT_NOFILE

(This looks at the page source rather than the rendered output, so
sometimes it over-reports if your search term matches a groff macro,
etc.  But that's true of your approach too.)

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
