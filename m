Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69CCF6238E4
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 02:34:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229861AbiKJBe0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 20:34:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbiKJBeZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 20:34:25 -0500
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 09 Nov 2022 17:34:24 PST
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5508F1E3FA
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 17:34:24 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,152,1665475200"; 
   d="scan'208";a="86523672"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa4.mentor.iphmx.com with ESMTP; 09 Nov 2022 17:33:21 -0800
IronPort-SDR: /CSXM/85bf/VqMKBkhZkWF4WtmJlt5kt3i8gZRftQsBha87wsc6JnF47ZX8Sz5xd96mFt3HT1U
 mT/oxK4uvM4d5P881Jg/ZvlBySDCXsj/aEqBqjq6y/+ICy9rcdKPo2mIJhvicrahqXbwoxmO0b
 MNc0ZWJRuHSHK8zR/aJP8yvqj5wJsWcCKTQP3UqTAHR/dlp1IN5NVQ86vYpo7UdEZjpMJo3YoF
 Y1dxiRulQsumQZmLiDCkOTFklKTv8+96r5ZY0yz0vsTRj3+nnqUwWWMdEhqB19m1pSMvd+1TiK
 +BA=
Date:   Thu, 10 Nov 2022 01:33:15 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
Message-ID: <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <Ywn7jMtB5ppSW0PB@asta-kit.de> <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com> <YwoXTGD8ljB8Gg6s@asta-kit.de> <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com> <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com> <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com> <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com> <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at> <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at> <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
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

On Thu, 10 Nov 2022, Alejandro Colomar via Gcc wrote:

> I've shown the three kinds of prototypes that have been changed:
> 
> -  Normal VLA; nothing fancy except for the '.'.
> -  Complex size expressions.
> -  'void *' VLAs (assuming GNU conventions: sizeof(void *)==1).

That doesn't cover any of the tricky issues with such proposals, such as 
the choice of which entity is referred to by the parameter name when there 
are multiple nested parameter lists that use the same parameter name, or 
when the identifier is visible from an outer scope (including in 
particular the case where it's declared as a typedef name in an outer 
scope).

-- 
Joseph S. Myers
joseph@codesourcery.com
