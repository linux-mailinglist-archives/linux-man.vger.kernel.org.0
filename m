Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D62264A17E
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 14:41:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232884AbiLLNlE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 08:41:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232880AbiLLNkg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 08:40:36 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C1B813F36
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 05:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=Qzj49BaUQ02jcbBW1Uq2DbmX40CdS4QPTqEzH8o65V0=; b=e8ujUCMjlNTLkUYRM6ghKVTBSW
        JwQ6kPRWrs46nQb2SNZLVFVq0olRi1++/1Nf7TH4QfuseVqTEIemnh6Z4ydU0l4IazVtJLxDtnRS6
        CLqlHPNibRVdtH1wqsqJCyr93d4lnCZkQkVyMT6KNDabet+BkE1RePHoDJckC3wF53ATTOmTtQWvy
        cxhips9iWeY4Cgp50p2R9dEGE4PotH3lLq4SdBf0w9HFOrdLj2/UYJdKBu01teCorhjKMscrKkPxz
        sq//67phLyHq9XP5N6wQDmjFDRi8gnNpIUov2tCHTkfZibankVoGpujb2uPO/lL+eNrHdCQtwgn3P
        e7YX8beQ==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1p4j28-000foJ-JU; Mon, 12 Dec 2022 13:39:52 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1p4j26-0040FM-KA; Mon, 12 Dec 2022 13:39:50 +0000
Date:   Mon, 12 Dec 2022 13:39:45 +0000
From:   Colin Watson <cjwatson@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Michael Haardt <michael@moria.de>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
Subject: Re: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
 rst2man: .TH 5th field shouldn't be empty)
Message-ID: <Y5cvIUuBIx2RptPP@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Michael Haardt <michael@moria.de>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
X-Debian-User: cjwatson
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Sorry for the delay; a succession of business travel, holidays, and
Covid have together eaten up much of my time recently.]

On Thu, Nov 17, 2022 at 01:28:12AM +0100, Alejandro Colomar wrote:
> On 11/17/22 01:06, G. Branden Robinson wrote:
> > I think the adoption of the term (sub)chapter has a potential benefit in
> > that it removes a terminological collision with (sub)sections as
> > subdivisions of individual man pages (man: SH, SS; mdoc: Sh, Ss).
> >
> > If this terminological reform is adopted, I think it should be done
> > across all of (1) Linux man-pages, (2) groff, (3) mandoc, and (4)
> > man-db.  If we can't speak with one voice on this then I think it's
> > better not to undertake that reform at all, to avoid frustrating the
> > discoverabilty of man pages.
> >
> > Possibly the biggest barrier to this is the mnemonic and documentation
> > of the man(1) '-s' option.  In man-db man, '-C' and '-c' are both
> > already in use.
> 
> That can be documented as a historical detail in the documentation of the
> option itself, which makes sense, as to avoid programmers that have heard of
> sections to try to grep section and find nothing.
> 
> > Probably a good idea to loop Colin Watson in on this proposal of yours,
> > which is strictly speaking severable from the below.
> 
> Yes, especially since part of the discussion is in linux-man@ (I'm not sure
> if he reads it; I think not) and not in groff@ (which he reads, AFAIK).  So,
> I'll merge the 2 discussions about this by forwarding the 2 most interesting
> other emails below.

I'm not subscribed to linux-man@, and while I am technically subscribed
to groff@ I read it very infrequently these days, so thanks for
explicitly copying me in.

> So, does it make sense to all of us to start using the term chapter for
> divisions of the man-pages single volume, so that the manual pages in Linux
> are organized from now on in chapters 1 to 9 instead of sections 1 to 9?

I find myself relatively agnostic on this whole discussion.  There are
good reasons for reform, and also some good reasons to wonder whether
the grass will in fact be greener on the other side (given the necessity
to keep many bits of "section" terminology around in things like
man(1)'s option handling and the man-db configuration file more or less
indefinitely).

I'm not going to veto it, but I also have no great enthusiasm for the
upheaval.  If the community consensus is for it to happen, then I'd ask
that somebody who is enthusiastic about it put the work into the various
necessary updates to man-db's code and documentation and send an
appropriate merge request.

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
