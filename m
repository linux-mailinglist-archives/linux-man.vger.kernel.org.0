Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E58364966D
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 22:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbiLKVKP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 16:10:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiLKVKP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 16:10:15 -0500
Received: from mail.moria.de (in.ti-gw.moria.de [217.197.85.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C3D7B850
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 13:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=moria.de;
         s=20221124; h=From:Message-Id:References:In-Reply-To:Cc:Subject:To:Date:
        Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=A1lvkOMLwVf2m8PYgZrZLEFMiKqBGpkw9SXtNV5pqLg=; b=E8eOnHMGu4pnzTDaeNzlKvvO3E
        0RGVPEN7Lw/0jtauC6cDdt90WFgpBdhPJL/GujcHX/xYz4N/gdoFi95kvSrgPLDKrVe1E0xWDUVJD
        yme2sZSuBVLDCJ5YR6eP6lhuMLf4wuxu1S/soL93WQND1bT5YbgR5Z+SZAF37Uv4nWvvHALsty1ai
        R7Uoo7dRkMzWr9d6scwRP8mhypGNWaDfQfhaFEYnhsTpvBVMvPfx9hVljsoDsWYe6tXfktfwHoGBS
        AOlBPJFa8VNbN7EHhdaAPv26KvZX8NFglw8G8TyBmmCPrpmJ79xDV7T4FM5DDhvg6qIvvzEs/joNs
        f3wum42A==;
Received: from palantir.moria.de ([2001:67c:1407:e1::80]:43544 helo=palantir)
        by mail.moria.de with esmtps (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94 #2)
        id 1p4TaL-0008Bv-9b; Sun, 11 Dec 2022 22:10:09 +0100
Received: from michael by palantir with local (ID michael) (Exim 4.94 #2)
        id 1p4TaF-0002j0-7s; Sun, 11 Dec 2022 22:10:03 +0100
Date:   Sun, 11 Dec 2022 22:10:03 +0100
To:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: Ping^1: Chapters of the manual (was: Bug#1018737:
 /usr/bin/rst2man: rst2man: .TH 5th field shouldn't be empty)
Cc:     Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
In-Reply-To: <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com> <E1p4Rdx-0002PO-Kl@moria.de>
 <59fb70b0-f4b7-d257-117e-767135fa39c3@gmail.com>
User-Agent: mail v14.9.24
Message-Id: <E1p4TaF-0002j0-7s@moria.de>
From:   Michael Haardt <michael@moria.de>
X-Debug: DKIM none moria.de 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,SPF_HELO_PASS,
        SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Admittedly, it's hard to defend my proposal as _necessary_.  Especially after 
> the world has lived for decades with the ambiguity of having chapters as 
> sections and sections also as... sections.

Well, one are the volume sections and the other manpage sections. :)

Originally, Unix documentation was split into volumes, each taking many
heavy books or binders and a site typically had a big shelf or closet
holding those. In addition there was a documentation overview and a giant
permuted index.

One volume was the reference documentation, that's what we know as
manual pages, and those were also available online. There were no
chapters really. After yacc(1) came intro(2) and then all pages from (2)
in alphabetical order. No separation page or title and the intro pages
looked like all others. Hence .TH, so you could quickly browse through
the pages up to the top line of the page you were looking for. The
binders were labelled with volume and section on their back to speed up
finding something.

The Oxford dictionary defines chapter as "a separate section of a book,
usually with a number or title". Given the lack of separation I see why
they were just called sections, not chapters, and why the term chapter
was removed where it was used in the old days. No ambiguity or regression
there.

The other volumes were a collection of papers on various subsystems and
topics, often written using ms(7). Each Unix distribution extended them
to their desire. Those were not online, because they consumed more space
than the reference manual volume, so they are much less known.

> IMO, there's undoubtedly a reason to fix the regression, and reform the old 
> term.  However, the reason is not very strong, so it all depends on reaching an 
> agreement with all of man-db, mandoc(1), and groff(1).  That would probably have 
> the side-effect that we also have agreement with OpenBSD.  That would be a large 
> subset of the relevant parties.

If those agree, I won't object. That's not an area where I argue about
semantics of single words.

In addition, you could separate the sections into true chapters by making
sure the intro pages can be recognized as introduction, and provide an
chapter overview that links to all intro pages. Back then new users got
to know them from the printed versions, but that is decades ago.

Michael
