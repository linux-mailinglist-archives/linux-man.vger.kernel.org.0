Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD77A628788
	for <lists+linux-man@lfdr.de>; Mon, 14 Nov 2022 18:53:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236151AbiKNRxK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Nov 2022 12:53:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237819AbiKNRwv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Nov 2022 12:52:51 -0500
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F7822B08
        for <linux-man@vger.kernel.org>; Mon, 14 Nov 2022 09:52:50 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,164,1665475200"; 
   d="scan'208";a="89822415"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa1.mentor.iphmx.com with ESMTP; 14 Nov 2022 09:52:49 -0800
IronPort-SDR: f/ij2G9YbM8O1QlyUdXEad2KD3q3McvwZTPaHbpPwSvKc1m0BdDWdpsKmenGZt3DAx/ZBxxQQm
 hqAJyW551/hwO6GMnzzj0fwIKHZWH+j4jKcmCZSFkpruFlW9tveI8703aDrFKLbylfbpCfLl/j
 3EcaSfZRvwB2sh4knn3CAdnXygc0zzY61OzxjrF2mc0jjmyfPVuYh3y5twRnBay+VKlAA96E0n
 l2AX7OP/TDe1kQ0hShA3Iepb09N7lDq08rxXg/K409UE5BV5t+Cdbi/rHDM3sJIpeJxSu2XbZy
 nNk=
Date:   Mon, 14 Nov 2022 17:52:44 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
Message-ID: <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com> <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at> <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com> <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com> <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com> <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at> <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: SVR-IES-MBX-08.mgc.mentorg.com (139.181.222.8) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 13 Nov 2022, Alejandro Colomar via Gcc wrote:

> Maybe allowing integral types and pointers would be enough.  However,
> foreseeing that the _Lengthof() proposal (BTW, which paper was it?) will
> succeed, and combining it with this one, _Lengthof(pointer) would ideally give
> the length of the array, so allowing pointers would conflict.

Do you mean N2529 Romero, New pointer-proof keyword to determine array 
length?  To quote the convenor in WG14 reflector message 18575 (17 Nov 
2020) when I asked about its status, "The author asked me not to put those 
on the agenda.  He will supply updated versions later.".

-- 
Joseph S. Myers
joseph@codesourcery.com
