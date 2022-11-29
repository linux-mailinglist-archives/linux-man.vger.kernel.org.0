Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59BC563C5C1
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 17:55:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236435AbiK2Qzo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 11:55:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236436AbiK2QzJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 11:55:09 -0500
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2042362057
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 08:50:13 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,203,1665475200"; 
   d="scan'208";a="88488013"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 29 Nov 2022 08:49:16 -0800
IronPort-SDR: DV3r/ZlGVcWB4LgVXjRLZ1NrOZCq4w67g34l+ldHNAgjSAujPYaxddAAaa3NBfcdXrIOPaIYg+
 53yUEz00AGmRANdNOPFkNB7Jt/BRGTkzFIuDsWBbF962VkocwksMhV9yGFNjZYvrXYmontevA0
 zPoD6yZeOqHdG6hpL9Fh+4aEvbrw2miX3TqQuHMAtBFFsqieweCG0snUsTulXlY5/ubO2tny95
 z96wNqk5bxBUbLn3IaKfuOFuxQwL1OmweYadDktUjExJmm+9eJq6vAwbUAjCuvQ3NkxP/nJx1g
 TPs=
Date:   Tue, 29 Nov 2022 16:49:11 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Michael Matz <matz@suse.de>
CC:     Alex Colomar <alx.manpages@gmail.com>,
        Martin Uecker <uecker@tugraz.at>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
Message-ID: <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com> <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com> <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at> <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com> <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at> <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com> <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 29 Nov 2022, Michael Matz via Gcc wrote:

> like.  But I'm generally doubtful of this whole feature within C itself.  
> It serves a purpose in documentation, so in man-pages it seems fine enough 
> (but then still could use a different puncuator to not be confusable with 
> C syntax).

In man-pages you don't need to invent syntax at all.  You can write

int f(char buf[n], int n);

and in the context of a man page it will be clear to readers what is 
meant, though such a syntax would be problematic in actual C source files 
because of issues with circular dependencies between parameters and with n 
already being declared in an outer scope.

-- 
Joseph S. Myers
joseph@codesourcery.com
