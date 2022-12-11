Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8212D649601
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 20:15:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiLKTPZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 14:15:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiLKTPY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 14:15:24 -0500
X-Greylist: delayed 563 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 11 Dec 2022 11:15:22 PST
Received: from mail.moria.de (in.ti-gw.moria.de [217.197.85.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 794C7DF0F
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 11:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=moria.de;
         s=20221124; h=From:Message-Id:References:In-Reply-To:Cc:Subject:To:Date:
        Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=3Jv17BDFB0myHBRiHDAqiJadi7PtCxO3DY74Sg2sIac=; b=bnmp4A5qMacpj3b/e38EtiaWUD
        60UyLhUyJzHiX4I2KqIjd4PELM2W6Uknr9yywGXmjIjSP3WgnPPPjDA+IZu3JktOuYHP2Mi/kbjqY
        gjehH8PC/nI3NQWwS0chW+ngoLdQAYmRwxWiSTPIu5pyWmwZGv8xu2xOy7WJHSBhemPBsjztUR8xR
        Q8NO52t2DlZ1/VXN0pRBiXHBM7J1LhYbGfbZPk+WcGdEOaFUWZ0UmUxuLY5dSxZFDT4iBZNGFQYBN
        qpoAgshaeXYJLGenGE5XquaY5LeggeB5ZB7vntZkNLRCb500Xo7LN1j4gaHAcz7GdmBWe1yiXQA6m
        19MVSIDA==;
Received: from palantir.moria.de ([2001:67c:1407:e1::80]:55558 helo=palantir)
        by mail.moria.de with esmtps (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94 #2)
        id 1p4Re5-00083u-1w; Sun, 11 Dec 2022 20:05:53 +0100
Received: from michael by palantir with local (ID michael) (Exim 4.94 #2)
        id 1p4Rdx-0002PO-Kl; Sun, 11 Dec 2022 20:05:45 +0100
Date:   Sun, 11 Dec 2022 20:05:45 +0100
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
In-Reply-To: <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
 <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
User-Agent: mail v14.9.24
Message-Id: <E1p4Rdx-0002PO-Kl@moria.de>
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

I just checked what is easily available to me:

v7 calls them sections in intro pages, but chapters in man(1) and man(7).

Celerity Computing UNIX (looks like a BSD port) calls them sections in
intro pages and man(7), but chapter in manv(7) (dtroff version of man(7)).

SunOS 4.1.1 calls them sections everywhere.

HP-UX 11.11 calls them sections everywhere.

Given the changes it looks like you are not the first person to note an
inconsistency here, but I see a majority calling them sections and
getting rid of the term chapter over time.

Now all of the above is commercially obsolete by now and Linux
dominates, but I don't see a good reason to break an established term
and instead suggest to follow the above and s/chapter/section/g.

Michael
