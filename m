Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A73463C606
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 18:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236563AbiK2RDH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 12:03:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236574AbiK2RCj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 12:02:39 -0500
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8803B6D975
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:00:18 -0800 (PST)
Received: from fbmtpc21.tugraz.at (fbmtpc21.tugraz.at [129.27.144.40])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4NM7qp5cYyz3wCX;
        Tue, 29 Nov 2022 18:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1669741207;
        bh=G27D5DVvK6dygmHCHO+wKu0a9cHg/zTqSphv8786wKs=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=Ceboo5OqkdW3rdUK1GLKqRp7fdqs68NtjOFBmaOF8KykWTekDboJs1SiuqzySDCSm
         uZYSqVHPVLCd/SEEtK0U/7OdUFyA6u1rE1GO8lf4jxEnMIx/cpCKtW8czCQJvsKlL9
         fz4j3ntG/vlSW8zSsZuV+KlAcJzdZI2wSdamxKaQ=
Message-ID: <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Michael Matz <matz@suse.de>, Alex Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Tue, 29 Nov 2022 18:00:06 +0100
In-Reply-To: <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
         <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
         <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
         <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
         <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
         <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
         <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
         <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
         <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
         <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
         <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
         <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
         <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
         <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
         <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
         <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
         <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
         <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
         <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
         <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUG-Backscatter-control: G/VXY7/6zeyuAY/PU2/0qw
X-Spam-Scanner: SpamAssassin 3.003001 
X-Spam-Score-relay: -1.9
X-Scanned-By: MIMEDefang 2.74 on 129.27.10.116
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am Dienstag, dem 29.11.2022 um 16:53 +0000 schrieb Jonathan Wakely:
> On Tue, 29 Nov 2022 at 16:49, Joseph Myers wrote:
> > 
> > On Tue, 29 Nov 2022, Michael Matz via Gcc wrote:
> > 
> > > like.  But I'm generally doubtful of this whole feature within C
> > > itself.
> > > It serves a purpose in documentation, so in man-pages it seems
> > > fine enough
> > > (but then still could use a different puncuator to not be
> > > confusable with
> > > C syntax).
> > 
> > In man-pages you don't need to invent syntax at all.  You can write
> > 
> > int f(char buf[n], int n);
> > 
> > and in the context of a man page it will be clear to readers what
> > is
> > meant,
> 
> Considerably more clear than new invented syntax IMHO.

True, but I think it would be a mistake to use code in
man pages which then does not work as expected (or even
is subtle wrong) in actual code.

Martin



