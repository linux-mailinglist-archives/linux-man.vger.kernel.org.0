Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC9A628849
	for <lists+linux-man@lfdr.de>; Mon, 14 Nov 2022 19:26:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236784AbiKNS0p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Nov 2022 13:26:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236725AbiKNS0p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Nov 2022 13:26:45 -0500
Received: from esa3.mentor.iphmx.com (esa3.mentor.iphmx.com [68.232.137.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A372B256
        for <linux-man@vger.kernel.org>; Mon, 14 Nov 2022 10:26:43 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,164,1665475200"; 
   d="scan'208";a="86711818"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa3.mentor.iphmx.com with ESMTP; 14 Nov 2022 10:26:43 -0800
IronPort-SDR: iO/SnvsyBxH/wBo64OqFwR0qRZ6Bd2LsfBlIpHvm86ohXprqIbUkBgZmeE5DwdnM1TO2AcM3ZG
 K7KwfAHWfW5vmgGwxgeHoyik56rRwLwLoDmhhmoyKDrJjbbtIGlX6jScTwmg317lcYoL3/OdbY
 cAR6A6nLod6iMHxauwmk+C9oJ/87wJ1qnzLDqFPeDM8ECX8js3Qyq/YOTE+vucPxvKowpvqh/B
 aQeW1s42L1m0BFBaNK4M2SK+UlW4mn8y0Ut/u1b5sgXSdFss8GYxr9W2m0e3JkHkA0Epb+nBUa
 sH8=
Date:   Mon, 14 Nov 2022 18:26:37 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <fbac0ca9-97f5-6122-4335-610129555526@gmail.com>
Message-ID: <46d586c9-a3da-93fd-d67c-a0dfb24a3d17@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com> <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at> <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com> <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com> <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com> <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com> <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com> <fbac0ca9-97f5-6122-4335-610129555526@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-07.mgc.mentorg.com (139.181.222.7) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 14 Nov 2022, Alejandro Colomar via Gcc wrote:

> > To quote the convenor in WG14 reflector message 18575 (17 Nov
> > 2020) when I asked about its status, "The author asked me not to put those
> > on the agenda.  He will supply updated versions later.".
> 
> Since his email is not in the paper, would you mind forwarding him this
> suggestion of mine of renaming it to avoid confusion with string lengths?  Or
> maybe point him to the mailing list discussion[1]?
> 
> [1]:
> <https://lore.kernel.org/linux-man/20221110222540.as3jrjdzxsnot3zm@illithid/T/#m794ad2a3173a19099625ee1dec7ea11ab754513d>

I don't have his email address (I don't see any emails from him on the 
reflector since I joined it in 2001).

-- 
Joseph S. Myers
joseph@codesourcery.com
